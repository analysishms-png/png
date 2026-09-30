VERSION 5.00
Begin VB.Form VoucherSundrySetting
  Caption = "Voucher Sundry Setting"
  BackColor = &HC5EFEE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11595
  ClientHeight = 7185
  Begin DataGrid DGVType
    Left = 3165
    Top = 3300
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGRevenue
    Left = 2295
    Top = 2430
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 765
    Width = 1425
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin DataGrid DGSundry
    Left = 2790
    Top = 5565
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 493
    Width = 3510
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
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
    BackColor = &HFDF4B5&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 2205
    Width = 8790
    Height = 4275
    TabIndex = 4
  End
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 7890
    Top = 450
    Width = 3885
    Height = 510
    TabIndex = 10
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
  Begin Label LblName
    Caption = "App.Date"
    Index = 1
    ForeColor = &H0&
    Left = 225
    Top = 765
    Width = 855
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet"
    Index = 0
    ForeColor = &H0&
    Left = 225
    Top = 495
    Width = 510
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "VoucherSundrySetting"

Private MasterFormExit As Integer
Private global_68 As Integer
Private global_70 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'E80D2C
  'Data Table: 48CC30
  Dim var_94 As TextBox
  loc_E80CC8: On Error Goto loc_E80D24
  loc_E80CEE: Call Proc_82_52_E79384(Proc_5_1_100EC1C("ADD", Me))
  loc_E80CF9: Call Proc_82_50_F29C80(global_72)
  loc_E80D09: Set var_8C = Me.Txt
  loc_E80D0F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E80D17: var_94.SetFocus
  loc_E80D23: Exit Sub
  loc_E80D24: ' Referenced from: E80CC8
  loc_E80D24: Proc_6_60_E63754(var_94)
  loc_E80D29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18E98
  'Data Table: 48CC30
  loc_E18E8D: Me.Global.Unload Me
  loc_E18E95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E37568
  'Data Table: 48CC30
  loc_E37558: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37560: Call Proc_82_51_13DD4F4(global_72)
  loc_E37565: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3BF48
  'Data Table: 48CC30
  loc_E3BF38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BF40: Call Proc_82_51_13DD4F4(global_72)
  loc_E3BF45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3BFA8
  'Data Table: 48CC30
  loc_E3BF98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BFA0: Call Proc_82_51_13DD4F4(global_72)
  loc_E3BFA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E37388
  'Data Table: 48CC30
  loc_E37378: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37380: Call Proc_82_51_13DD4F4(global_72)
  loc_E37385: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14DC9D0
  'Data Table: 48CC30
  Dim var_EC As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim var_14C As String
  Dim var_16C As Variant
  Dim var_15C As Variant
  Dim unk_48CC57 As Connection15
  Dim var_A0 As Variant
  Dim var_19C As Variant
  Dim var_11C As Variant
  Dim var_23C As MSHFlexGrid
  Dim var_18C As Variant
  Dim var_1F0 As Variant
  Dim var_240 As MSHFlexGrid
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_358 As Variant
  Dim var_378 As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_490 As Variant
  Dim var_4B0 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_684 As Variant
  Dim var_6A4 As Variant
  Dim var_718 As Variant
  Dim var_738 As Variant
  Dim var_7AC As Variant
  Dim var_7CC As Variant
  Dim var_884 As Variant
  Dim var_918 As Variant
  Dim var_A28 As Variant
  Dim var_A48 As Variant
  Dim var_A8 As String
  Dim var_224 As String
  Dim var_13C As Variant
  Dim var_1BC As Variant
  Dim var_210 As Variant
  Dim var_3BC As Variant
  Dim var_59C As Variant
  Dim var_77C As Variant
  Dim var_968 As Variant
  Dim var_AC0 As String
  Dim var_238 As TextBox
  Dim Me As Recordset15
  loc_14DBD7C: On Error Goto loc_14DC97D
  loc_14DBD83: var_86 = CByte(0) 'Byte
  loc_14DBD92: Set var_9C = Me.Txt
  loc_14DBD98: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_14DBDC1: If (Proc_6_27_EA61EC(var_A0, "Voucher Type") = 0) Then
  loc_14DBDCB:   Call Txt_GotFocus()
  loc_14DBDD0:   Exit Sub
  loc_14DBDD1: End If
  loc_14DBDDC: Set var_9C = Me.Txt
  loc_14DBDE2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_14DBDEA: var_A8 = "App. Date"
  loc_14DBE0B: If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_14DBE15:   Call Txt_GotFocus()
  loc_14DBE1A:   Exit Sub
  loc_14DBE1B: End If
  loc_14DBE1E: Call Proc_82_46_FCAD64(var_AA, CInt(1))
  loc_14DBE29: If (var_AA = &HFF) Then
  loc_14DBE2C:   Exit Sub
  loc_14DBE2D: End If
  loc_14DBE4E: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14DBE58: For var_10C = 1 To var_DC: var_98 = var_10C 'Variant
  loc_14DBE63:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14DBE6B:   var_EC = CVar(CLng(3)) 'Long
  loc_14DBEA7:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14DBEAF:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DBEB7:     var_EC = CVar(CLng(1)) 'Long
  loc_14DBEF3:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14DBEFB:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DBF03:       var_EC = CVar(CLng(3)) 'Long
  loc_14DBF4A:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14DBF67:       Set var_9C = Me.FGrid
  loc_14DBF78:       Exit Sub
  loc_14DBF79:     End If
  loc_14DBF7E:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DBF86:     var_EC = CVar(CLng(4)) 'Long
  loc_14DBFC2:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14DBFCA:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DBFD2:       var_EC = CVar(CLng(3)) 'Long
  loc_14DC019:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14DC036:       Set var_9C = Me.FGrid
  loc_14DC047:       Exit Sub
  loc_14DC048:     End If
  loc_14DC04D:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC055:     var_EC = CVar(CLng(6)) 'Long
  loc_14DC091:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14DC099:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC0A1:       var_EC = CVar(CLng(3)) 'Long
  loc_14DC0E8:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14DC105:       Set var_9C = Me.FGrid
  loc_14DC116:       Exit Sub
  loc_14DC117:     End If
  loc_14DC117:   End If
  loc_14DC11A: Next var_10C 'Variant
  loc_14DC129: unk_48CC57.BeginTrans var_1C0
  loc_14DC132: var_86 = CByte(1) 'Byte
  loc_14DC157: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14DC161: For var_1E0 = 1 To var_DC: var_98 = var_1E0 'Variant
  loc_14DC16C:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC174:   var_EC = CVar(CLng(2)) 'Long
  loc_14DC194:   var_13C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14DC19C:   var_14C = vbNullString
  loc_14DC1AB:   var_16C = CVar(CLng(var_98)) 'Long
  loc_14DC1BC:   Set var_A0 = Me.FGrid
  loc_14DC201:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_A0.TextMatrix)))) <> vbNullString)) Then
  loc_14DC209:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC211:     var_EC = CVar(CLng(&HB)) 'Long
  loc_14DC22B:     var_12C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14DC231:     var_13C = Trim(var_12C)
  loc_14DC24D:     If (var_13C = vbNullString) Then
  loc_14DC255:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC25D:       var_EC = CVar(CLng(&HB)) 'Long
  loc_14DC262:       var_14C = "+"
  loc_14DC26C:       Set var_9C = Me.FGrid
  loc_14DC272:       LateIdCallSt
  loc_14DC27D:     End If
  loc_14DC28B:     Set var_9C = Me.Txt
  loc_14DC291:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_22C, var_9C, vbNullString, var_EC, var_CC)
  loc_14DC299:     var_EC = var_A0.Tag
  loc_14DC2AF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_238, var_CC, var_16C)
  loc_14DC2BE:     Proc_6_7_F26918(var_12C, CVar(var_238), (var_13C <> vbNullString))
  loc_14DC2C8:     var_DC = CVar(CLng(var_98)) 'Long
  loc_14DC2D0:     var_11C = CVar(CLng(2)) 'Long
  loc_14DC2F0:     var_18C = CVar(CLng(var_98)) 'Long
  loc_14DC2F8:     var_1F0 = CVar(CLng(1)) 'Long
  loc_14DC301:     Set var_240 = Me.FGrid
  loc_14DC322:     var_2A4 = CVar(CLng(var_98)) 'Long
  loc_14DC32A:     var_2C4 = CVar(CLng(4)) 'Long
  loc_14DC34A:     var_358 = CVar(CLng(var_98)) 'Long
  loc_14DC352:     var_378 = CVar(CLng(5)) 'Long
  loc_14DC372:     var_3EC = CVar(CLng(var_98)) 'Long
  loc_14DC37A:     var_40C = CVar(CLng(6)) 'Long
  loc_14DC3AE:     var_490 = CVar(CLng(var_98)) 'Long
  loc_14DC3B6:     var_4B0 = CVar(CLng(8)) 'Long
  loc_14DC3EA:     var_534 = CVar(CLng(var_98)) 'Long
  loc_14DC3F2:     var_554 = CVar(CLng(7)) 'Long
  loc_14DC41C:     var_5CC = CVar(CLng(var_98)) 'Long
  loc_14DC424:     var_5EC = CVar(CLng(9)) 'Long
  loc_14DC44E:     var_684 = CVar(CLng(var_98)) 'Long
  loc_14DC456:     var_6A4 = CVar(CLng(&HF)) 'Long
  loc_14DC476:     var_718 = CVar(CLng(var_98)) 'Long
  loc_14DC47E:     var_738 = CVar(CLng(&HA)) 'Long
  loc_14DC49E:     var_7AC = CVar(CLng(var_98)) 'Long
  loc_14DC4A6:     var_7CC = CVar(CLng(&HB)) 'Long
  loc_14DC4DD:     var_884 = Me.FGrid.TextMatrix)
  loc_14DC505:     var_918 = Me.FGrid.TextMatrix)
  loc_14DC533:     Proc_6_7_F26918(var_9E8, Date, var_918, CVar(CLng(&HC)), CVar(CLng(var_98)), var_884, CVar(CLng(&HE)), CVar(CLng(var_98)))
  loc_14DC53D:     var_A28 = CVar(CLng(var_98)) 'Long
  loc_14DC545:     var_A48 = CVar(CLng(&H10)) 'Long
  loc_14DC588:     var_A8 = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_14DC58F:     var_224 = var_A8 & "RevCode,Nature,CalcSign,SysYN,Grp,"
  loc_14DC5C5:     var_210 = CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14DC60A:     var_3BC = var_210 & "'," & CVar(Val(CStr(var_240.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14DC63E:     var_59C = var_3BC & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14DC683:     var_77C = var_59C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14DC6C4:     var_968 = var_77C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_884)) & "','" & Left(CVar(CStr(var_918)), 1) & "'," 
  loc_14DC704:     var_AC0 = CStr(var_968 & "'" & CVar(MemVar_1F950C8) & "'," & var_9E8 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "')")
  loc_14DC70E:     unk_48CC57.Execute var_AC0, var_AE0, -1
  loc_14DC7E4:   End If
  loc_14DC7E7: Next var_1E0 'Variant
  loc_14DC7F3: unk_48CC57.CommitTrans
  loc_14DC7FC: var_86 = CByte(0) 'Byte
  loc_14DC80B: Set var_23C = Me.Txt
  loc_14DC811: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_14DC824: Set var_9C = Me.Txt
  loc_14DC82A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_14DC83A: var_12C = CVar(var_A0.Tag) 'String
  loc_14DC850: Set var_A4 = Me.Txt
  loc_14DC856: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_238, var_224)
  loc_14DC85E: 5 = var_238.Tag
  loc_14DC86B: var_BC = Space((var_12C - Len(var_224)))
  loc_14DC873: var_13C = (var_240 + CVar(var_238))
  loc_14DC877: var_CC = "**"
  loc_14DC87C: var_15C = (CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") + var_CC)
  loc_14DC8A7: var_210 = (1 + Format(CVar(var_240), "dd/mm/yyyy"))
  loc_14DC8E8: Me.Requery -1
  loc_14DC915: Me.Find "SearchCode ='" & CStr(var_210) & "'", 0, 1
  loc_14DC925: Set var_9C = Me.TopCtrl1
  loc_14DC92B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_14DC940: If (1 = "Add") Then
  loc_14DC943:   Call TopCtrl1_UnknownEvent_11()
  loc_14DC948:   Exit Sub
  loc_14DC949: End If
  loc_14DC95E: var_A8 = "INI"
  loc_14DC96C: Call Proc_82_52_E79384(Proc_5_1_100EC1C(var_A8, Me), global_72)
  loc_14DC977: Call Proc_82_51_13DD4F4(CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14DC97C: Exit Sub
  loc_14DC97D: ' Referenced from: 14DBD7C
  loc_14DC986: If (CInt(var_86) = 1) Then
  loc_14DC98F:   unk_48CC57.RollbackTrans
  loc_14DC994: End If
  loc_14DC99C: Set var_9C = Err()
  loc_14DC9A2: Call 0.Method_arg_2C (var_A8)
  loc_14DC9BB: MsgBox(CVar(var_A8), &H10, var_12C, CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',"), CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14DC9CE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EE8A9C
  'Data Table: 48CC30
  loc_EE89E0: On Error Goto loc_EE8A95
  loc_EE8A1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE8A40:   Call Proc_82_52_E79384(Proc_5_1_100EC1C("INI", Me))
  loc_EE8A53:   Set var_10C = Me.TopCtrl1
  loc_EE8A59:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(True)
  loc_EE8A6A:   Set var_10C = Me.TopCtrl1
  loc_EE8A70:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_EE8A81:   Set var_10C = Me.TopCtrl1
  loc_EE8A87:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_EE8A8F:   Call Proc_82_51_13DD4F4(global_72)
  loc_EE8A94: End If
  loc_EE8A94: Exit Sub
  loc_EE8A95: ' Referenced from: EE89E0
  loc_EE8A95: Proc_6_60_E63754()
  loc_EE8A9A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB33A4
  'Data Table: 48CC30
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB3314: On Error Goto loc_EB339E
  loc_EB332E: If (Me.RecordCount <= 0) Then
  loc_EB3337:   var_B8 = "Information"
  loc_EB3352:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3362:   Exit Sub
  loc_EB3363: End If
  loc_EB3366: MemVar_1F950E4 = "Select (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by SP.AppDate,VT.Description"
  loc_EB3370: MemVar_1F95120 = Me
  loc_EB337D: Proc_6_126_F1C850("2000,1000,1000,2000,2000,2000,2000")
  loc_EB3398: Call 0.Method_arg_2B0 (1)
  loc_EB339D: Exit Sub
  loc_EB339E: ' Referenced from: EB3314
  loc_EB339E: Proc_6_60_E63754(var_B8)
  loc_EB33A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E42158
  'Data Table: 48CC30
  Dim Me As Recordset15
  loc_E4212F: Me.Requery -1
  loc_E4213F: Me.Requery -1
  loc_E4214F: Me.Requery -1
  loc_E42154: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '102B2B0
  'Data Table: 48CC30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  loc_102B08B: Me.DGSundry.Visible = False
  loc_102B0AA: If (Me.RecordCount > 0) Then
  loc_102B0C0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102B0C8:   var_E4 = CVar(CLng(2)) 'Long
  loc_102B0FB:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_102B103:   Set var_128 = Me.FGrid
  loc_102B109:   LateIdCallSt
  loc_102B138:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102B140:   var_E4 = CVar(CLng(3)) 'Long
  loc_102B173:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_102B181:   LateIdCallSt
  loc_102B1E8:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_114, CVar(CLng(&HA)))) 'String
  loc_102B1F0:   Set var_128 = Me.FGrid
  loc_102B1F6:   LateIdCallSt
  loc_102B223:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102B22B:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_102B24D:   var_B0 = Me.Fields.Item("SysYN")
  loc_102B25E:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_102B266:   Set var_128 = Me.FGrid
  loc_102B26C:   LateIdCallSt
  loc_102B288: End If
  loc_102B293: Set var_A8 = Me.TxtGrid
  loc_102B299: Call 0.Method_DGSundry_UnknownEvent_90 (CInt(3), var_B0, var_128, var_114, var_E4, var_A4, var_128)
  loc_102B2A1: var_B0.SetFocus
  loc_102B2AD: Exit Sub
End Sub

Private Sub Form_Load() '111B788
  'Data Table: 48CC30
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_111B428: On Error Goto loc_111B781
  loc_111B443: Proc_6_23_DFC5B8(Me, 7590)
  loc_111B455: Set var_88 = Me.TopCtrl1
  loc_111B45B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_111B469: Call 0.Method_arg_50 (var_B0)
  loc_111B479: Set var_88 = Me.TopCtrl1
  loc_111B47F: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000F(CVar(var_B0))
  loc_111B488: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_111B4A1: Set global_76 = New 
  loc_111B4B3: Me.TopCtrl1.CursorLocation = 3
  loc_111B4DB: Me.Open "Select ShortName as Code,Name,Code as DCOde From Depart Where ShortName='PURC' Order by Name", CVar(MemVar_1F95044), 3
  loc_111B4E9: CVarUnk
  loc_111B4EE: VerifyVarObj
  loc_111B4F4: Set var_88 = Me.DGVType
  loc_111B4FA: LateIdStAd
  loc_111B524: Me.DGVType.CursorLocation = 3
  loc_111B54C: Me.Open "Select Code,Name,Nature,SysYN From SundryMast Order By Name", CVar(MemVar_1F95044), 3
  loc_111B55A: CVarUnk
  loc_111B55F: VerifyVarObj
  loc_111B565: Set var_88 = Me.DGSundry
  loc_111B56B: LateIdStAd
  loc_111B595: Me.DGSundry.CursorLocation = 3
  loc_111B5BD: Me.Open "Select Code,Name,DeskCode,Type From RevMast Where FlagType Is Null And FieldType<>'P' Order By Name", CVar(MemVar_1F95044), 3
  loc_111B5CB: CVarUnk
  loc_111B5D0: VerifyVarObj
  loc_111B5D6: Set var_88 = Me.DGRevenue
  loc_111B5DC: LateIdStAd
  loc_111B606: Me.DGRevenue.CursorLocation = 3
  loc_111B622: var_9C = "Select DISTINCT (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP Where V_Type in (Select ShortName From Depart Where ShortName='PURC') Order By (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))"
  loc_111B62E: Me.Open "Select Code,Name,DeskCode,Type From RevMast Where FlagType Is Null And FieldType<>'P' Order By Name", CVar(MemVar_1F95044), 3
  loc_111B656: Call Proc_82_52_E79384(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me, New, 1), -1, Me, New)
  loc_111B669: Set var_88 = Me.TopCtrl1
  loc_111B66F: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(True)
  loc_111B680: Set var_88 = Me.TopCtrl1
  loc_111B686: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_111B69D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_111B6A5: Call Proc_82_45_12DFA64(1, -1)
  loc_111B6AA: Call Proc_82_51_13DD4F4(Me.TopCtrl1)
  loc_111B6B5: Call 0.Method_Me0 (var_E4)
  loc_111B6C1: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111B6CA: Set var_88 = Me.TopCtrl1
  loc_111B6D0: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010005(False)
  loc_111B6EA: Me.FGrid.Left = CVar(CDbl(0))
  loc_111B6F8: Call 0.Method_Me0 (var_E4)
  loc_111B704: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111B713: Me.FGrid.Width = CVar(CDbl(0))
  loc_111B72E: Me.FGrid.Top = CVar(CDbl(1340))
  loc_111B740: var_C0 = Me.FGrid.Top
  loc_111B74F: Call 0.Method_Me8 (var_E4, var_C0)
  loc_111B762: var_9C = CVar(((var_E4 - CDbl(400)) - CDbl(var_C0))) 'Single
  loc_111B771: Me.FGrid.Height = CVar(CDbl(1340))
  loc_111B780: Exit Sub
  loc_111B781: ' Referenced from: 111B428
  loc_111B781: Proc_6_60_E63754(global_76)
  loc_111B786: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E673AC
  'Data Table: 48CC30
  loc_E67363: Set global_76 = Nothing
  loc_E67375: Set global_72 = Nothing
  loc_E67387: Set global_80 = Nothing
  loc_E67399: Set global_84 = Nothing
  loc_E673A5: MasterFormExit = 0
  loc_E673A8: Exit Sub
End Sub

Private Sub Form_Activate() 'E49F98
  'Data Table: 48CC30
  loc_E49F68: On Error Goto loc_E49F92
  loc_E49F6F: Set var_88 = Me.TopCtrl1
  loc_E49F75: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E49F8A: If (CLng(CInt()) = &H2D) Then
  loc_E49F8D:   Call TopCtrl1_UnknownEvent_1D()
  loc_E49F92:   ' Referenced from: E49F68
  loc_E49F92: End If
  loc_E49F92: Proc_6_60_E63754()
  loc_E49F97: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2746C
  'Data Table: 48CC30
  loc_E27451: If (MasterFormExit = &HFF) Then
  loc_E27461:   Me.Global.Unload Me
  loc_E27469: End If
  loc_E27469: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E281FC
  'Data Table: 48CC30
  loc_E281D4: On Error Goto loc_E281F4
  loc_E281EB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E281F3: Exit Sub
  loc_E281F4: ' Referenced from: E281D4
  loc_E281F4: Proc_6_60_E63754(Shift)
  loc_E281F9: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F3E7D4
  'Data Table: 48CC30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E6CB: Me.DGVType.Visible = False
  loc_F3E6EA: If (Me.RecordCount > 0) Then
  loc_F3E729:   Set var_B4 = Me.Txt
  loc_F3E72F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E737:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3E76A:   var_B0 = Me.Fields.Item("Code")
  loc_F3E789:   Set var_B4 = Me.Txt
  loc_F3E78F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E797:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E7AD: End If
  loc_F3E7B8: Set var_A8 = Me.Txt
  loc_F3E7BE: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F3E7C6: var_B0.SetFocus
  loc_F3E7D2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FB9B74
  'Data Table: 48CC30
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FB99E2: Set var_88 = Me.Txt
  loc_FB99E8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FB99F6: Proc_6_74_E23240(var_8C)
  loc_FB9A02: Call Proc_82_53_EBAACC(var_8C)
  loc_FB9A0A: var_92 = Index
  loc_FB9A15: If (var_92 = CInt(0)) Then
  loc_FB9A66:   Set var_88 = Me.Txt
  loc_FB9A6C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FB9A74:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FB9A8C:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FB9A8F:     Exit Sub
  loc_FB9A90:   End If
  loc_FB9A9D:   Set var_88 = Me.Txt
  loc_FB9AA3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FB9AAB:   var_A0 = var_8C.Text
  loc_FB9AB3:   var_D4 = CVar(var_A0) 'String
  loc_FB9AF8:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FB9B01:     Me.MoveFirst
  loc_FB9B26:     Set var_88 = Me.Txt
  loc_FB9B2C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name=")
  loc_FB9B34:     0 = var_8C.Text
  loc_FB9B42:     Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_FB9B58:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_FB9B70:   End If
  loc_FB9B70: End If
  loc_FB9B70: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F70410
  'Data Table: 48CC30
  Dim var_98 As DataGrid
  loc_F702EE: If (CLng(Shift) = &H1B) Then
  loc_F702F1:   Call Proc_82_53_EBAACC()
  loc_F702F6:   Exit Sub
  loc_F702F7: End If
  loc_F70305: If (KeyCode = CInt(0)) Then
  loc_F70320:   Set var_9C = Nothing
  loc_F7032B:   Set var_98 = Nothing
  loc_F70359:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_F7036D: End If
  loc_F7039E: Set var_98 = Me.DGRevenue
  loc_F703C3: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_F703DB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F703E4:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F703E9:   End If
  loc_F703FE:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F70407:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F7040C:   End If
  loc_F7040C: End If
  loc_F7040C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E08310
  'Data Table: 48CC30
  Dim var_86 As Integer
  loc_E08303: Proc_6_58_E06050(arg_10)
  loc_E0830B: var_86 = KeyAscii
  loc_E0830E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA57F0
  'Data Table: 48CC30
  loc_EA5782: If (KeyCode = CInt(0)) Then
  loc_EA57A1:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA57B5:     var_A4 = "Name"
  loc_EA57D9:     Proc_6_68_12A2818(Me.DGVType, Me.Txt, KeyCode, global_76)
  loc_EA57EC:   End If
  loc_EA57EC: End If
  loc_EA57EC: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A4DC
  'Data Table: 48CC30
  loc_E4A4BA: Set var_88 = Me.Txt
  loc_E4A4C0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A4CE: Proc_6_73_E23294(var_8C)
  loc_E4A4DA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '110D024
  'Data Table: 48CC30
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_C8 As TextBox
  loc_110CCDF: var_86 = Cancel
  loc_110CCEA: If (var_86 = CInt(0)) Then
  loc_110CCF8:   Set var_8C = Me.Txt
  loc_110CCFE:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110CD06:   var_98 = "Voucher Type"
  loc_110CD27:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_110CD35:     Set var_8C = Me.Txt
  loc_110CD3B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110CD43:     var_90.SetFocus
  loc_110CD51:     arg_10 = &HFF
  loc_110CD54:     Exit Sub
  loc_110CD55:   End If
  loc_110CDA3:   Set var_8C = Me.Txt
  loc_110CDA9:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_110CDB1:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_110CDC9:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_110CDD9:     Set var_8C = Me.Txt
  loc_110CDDF:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110CDE7:     var_90.Text = vbNullString
  loc_110CE00:     Set var_8C = Me.Txt
  loc_110CE06:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110CE0E:     var_90.Tag = vbNullString
  loc_110CE27:     Me.LblDepart.Caption = vbNullString
  loc_110CE32:   Else
  loc_110CE6D:     Set var_94 = Me.Txt
  loc_110CE73:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110CE7B:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110CECC:     Set var_94 = Me.Txt
  loc_110CED2:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110CEDA:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_110CF0A:     var_90 = Me.Fields.Item("Name")
  loc_110CF28:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_90))
  loc_110CF3A:     Call Proc_82_55_12CCF28(var_86)
  loc_110CF3F:   End If
  loc_110CF42: Else
  loc_110CF4A:   If (var_86 = CInt(1)) Then
  loc_110CF58:     Set var_8C = Me.Txt
  loc_110CF5E:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_110CF87:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_110CF95:       Set var_8C = Me.Txt
  loc_110CF9B:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_110CFA3:       var_90.SetFocus
  loc_110CFB1:       arg_10 = &HFF
  loc_110CFB4:       Exit Sub
  loc_110CFB5:     End If
  loc_110CFBF:     Set var_8C = Me.Txt
  loc_110CFC5:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110CFE5:     Set var_B4 = Me.Txt
  loc_110CFEB:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_110CFF3:     var_C8.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_110D018:     Me.FGrid.Col = CVar(CLng(1))
  loc_110D020:   End If
  loc_110D020: End If
  loc_110D020: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103E5B8
  'Data Table: 48CC30
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103E377: Me.DGRevenue.Visible = False
  loc_103E396: If (Me.RecordCount > 0) Then
  loc_103E3AC:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103E3B4:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103E3E7:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103E3EF:   Set var_128 = Me.FGrid
  loc_103E3F5:   LateIdCallSt
  loc_103E424:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103E42C:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103E45F:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103E467:   Set var_128 = Me.FGrid
  loc_103E46D:   LateIdCallSt
  loc_103E4C8:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103E4DE:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103E4E6:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103E4EB:     var_F4 = "+"
  loc_103E4F5:     Set var_B0 = Me.FGrid
  loc_103E4FB:     LateIdCallSt
  loc_103E510:   Else
  loc_103E54F:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103E565:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103E56D:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103E572:       var_F4 = "-"
  loc_103E57C:       Set var_B0 = Me.FGrid
  loc_103E582:       LateIdCallSt
  loc_103E594:     End If
  loc_103E594:   End If
  loc_103E594: End If
  loc_103E59D: Set var_A8 = Me.TxtGrid
  loc_103E5A3: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103E5AB: var_B0.SetFocus
  loc_103E5B7: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E371C
  'Data Table: 48CC30
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E32A4: Call Proc_82_53_EBAACC()
  loc_11E32BC: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E32D7: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E32E0: Set var_BC = Me.FGrid
  loc_11E3316: Set var_104 = Me.TxtGrid
  loc_11E331C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E3324: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E3355: var_110 = CLng(Me.FGrid.Col)
  loc_11E3365: If (var_110 = CLng(3)) Then
  loc_11E3377:   Set var_A8 = Me.TxtGrid
  loc_11E337D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E3385:   var_BC.MaxLength = var_110
  loc_11E33D2:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E33D5:     Exit Sub
  loc_11E33D6:   End If
  loc_11E33E9:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E33F1:   var_DC = CVar(CLng(3)) 'Long
  loc_11E3424:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E342D:     Me.MoveFirst
  loc_11E3445:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E344D:     var_DC = CVar(CLng(2)) 'Long
  loc_11E3456:     Set var_BC = Me.FGrid
  loc_11E346D:     Proc_6_17_EAAE40(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E3496:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E34C6:     If (Me.EOF = &HFF) Then
  loc_11E34CF:       Me.MoveFirst
  loc_11E34D4:     End If
  loc_11E34D4:   End If
  loc_11E34D7: Else
  loc_11E34DE:   If Not (var_110 = CLng(7)) Then
  loc_11E34E8:     If (var_110 = CLng(9)) Then
  loc_11E34EB:     End If
  loc_11E34FA:     Set var_A8 = Me.TxtGrid
  loc_11E3500:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E3508:     var_BC.MaxLength = var_DC
  loc_11E351D:     If (global_70 = 0) Then
  loc_11E3528:       var_10C = "{Home}+{End}"
  loc_11E352E:       Proc_303_0_FBACC8(CStr("Code=" & var_128), 0)
  loc_11E3536:     End If
  loc_11E3539:   Else
  loc_11E3540:     If (var_110 = CLng(4)) Then
  loc_11E3552:       Set var_A8 = Me.TxtGrid
  loc_11E3558:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E3560:       var_BC.MaxLength = var_94
  loc_11E356F:     Else
  loc_11E3576:       If (var_110 = CLng(5)) Then
  loc_11E3588:         Set var_A8 = Me.TxtGrid
  loc_11E358E:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E3596:         var_BC.MaxLength = &H32
  loc_11E35A5:       Else
  loc_11E35AC:         If (var_110 = CLng(&HD)) Then
  loc_11E35BE:           Set var_A8 = Me.TxtGrid
  loc_11E35C4:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E35CC:           var_BC.MaxLength = &H32
  loc_11E3619:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E361C:             Exit Sub
  loc_11E361D:           End If
  loc_11E3630:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3638:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E366B:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E3674:             Me.MoveFirst
  loc_11E36B4:             Proc_6_17_EAAE40(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E36DD:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E370D:             If (Me.EOF = &HFF) Then
  loc_11E3716:               Me.MoveFirst
  loc_11E371B:             End If
  loc_11E371B:           End If
  loc_11E371B:         End If
  loc_11E371B:       End If
  loc_11E371B:     End If
  loc_11E371B:   End If
  loc_11E371B: End If
  loc_11E371B: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13BA6FC
  'Data Table: 48CC30
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13B9D8C: On Error Goto loc_13BA6F6
  loc_13B9D99: If (CLng(Shift) = &H1B) Then
  loc_13B9DA9:   Set var_88 = Me.TxtGrid
  loc_13B9DAF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B9DC9:   Set var_94 = Me.TxtGrid
  loc_13B9DCF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13B9DD7:   var_98.Text = var_8C.Tag
  loc_13B9DF3:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13B9DF8:   Call Proc_82_53_EBAACC(arg_14)
  loc_13B9E01:   Set var_88 = Me.FGrid
  loc_13B9E1E:   Set var_88 = Me.TxtGrid
  loc_13B9E24:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B9E2C:   var_8C.Visible = False
  loc_13B9E38:   Exit Sub
  loc_13B9E39: End If
  loc_13B9E4C: var_AC = CLng(Me.FGrid.Col)
  loc_13B9E5C: If (var_AC = CLng(1)) Then
  loc_13B9E69:   If (CLng(Shift) = &HD) Then
  loc_13B9E72:     Call Proc_82_49_1507CFC(KeyCode, var_AE)
  loc_13B9E7D:     If (var_AE = &HFF) Then
  loc_13B9E8B:       Set var_98 = Me.TxtGrid
  loc_13B9EB4:       Set var_8C = var_98
  loc_13B9EC3:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13B9ED3:     End If
  loc_13B9ED3:   End If
  loc_13B9ED6: Else
  loc_13B9EDD:   If (var_AC = CLng(3)) Then
  loc_13B9EEC:     Set var_88 = Me.TxtGrid
  loc_13B9EF2:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13B9EFA:     3 = var_8C.Left
  loc_13B9F11:     Me.DGSundry.Left = CVar(var_B8)
  loc_13B9F2B:     Set var_94 = Me.TxtGrid
  loc_13B9F31:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13B9F39:     0 = var_98.Height
  loc_13B9F4A:     Set var_88 = Me.TxtGrid
  loc_13B9F50:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13B9F58:     var_AC = var_8C.Top
  loc_13B9F64:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13B9F73:     Me.DGSundry.Top = CVar(var_B8)
  loc_13B9F9D:     Set var_98 = Nothing
  loc_13B9FD6:     Proc_6_69_134A630(Me.DGSundry, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13B9FF4:     If (CLng(Shift) = &HD) Then
  loc_13B9FFD:       Call Proc_82_49_1507CFC(KeyCode, var_AE, 1, Nothing)
  loc_13BA008:       If (var_AE = &HFF) Then
  loc_13BA04E:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13BA05E:       End If
  loc_13BA05E:     End If
  loc_13BA061:   Else
  loc_13BA068:     If (var_AC = CLng(4)) Then
  loc_13BA0AB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13BA0B4:         Call Proc_82_49_1507CFC(KeyCode, var_AE, 0, 4)
  loc_13BA0BF:         If (var_AE = &HFF) Then
  loc_13BA105:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13BA115:         End If
  loc_13BA115:       End If
  loc_13BA118:     Else
  loc_13BA11F:       If (var_AC = CLng(5)) Then
  loc_13BA162:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13BA16B:           Call Proc_82_49_1507CFC(KeyCode, var_AE, 5, 0)
  loc_13BA176:           If (var_AE = &HFF) Then
  loc_13BA1BC:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13BA1CC:           End If
  loc_13BA1CC:         End If
  loc_13BA1CF:       Else
  loc_13BA1D6:         If (var_AC = CLng(6)) Then
  loc_13BA219:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13BA222:             Call Proc_82_49_1507CFC(KeyCode, var_AE, 6, 0)
  loc_13BA22D:             If (var_AE = &HFF) Then
  loc_13BA273:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13BA283:             End If
  loc_13BA283:           End If
  loc_13BA286:         Else
  loc_13BA28D:           If (var_AC = CLng(7)) Then
  loc_13BA2D0:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13BA2D9:               Call Proc_82_49_1507CFC(KeyCode, var_AE, 7, 0)
  loc_13BA2E4:               If (var_AE = &HFF) Then
  loc_13BA32A:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13BA33A:               End If
  loc_13BA33A:             End If
  loc_13BA33D:           Else
  loc_13BA344:             If Not (var_AC = CLng(8)) Then
  loc_13BA34E:               If (var_AC = CLng(&H10)) Then
  loc_13BA351:               End If
  loc_13BA391:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13BA39A:                 Call Proc_82_49_1507CFC(KeyCode, var_AE, &HC, 0)
  loc_13BA3A5:                 If (var_AE = &HFF) Then
  loc_13BA3EB:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13BA3FB:                 End If
  loc_13BA3FB:               End If
  loc_13BA3FE:             Else
  loc_13BA405:               If (var_AC = CLng(9)) Then
  loc_13BA448:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13BA451:                   Call Proc_82_49_1507CFC(KeyCode, var_AE, 9, 0)
  loc_13BA45C:                   If (var_AE = &HFF) Then
  loc_13BA4A2:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13BA4B2:                   End If
  loc_13BA4B2:                 End If
  loc_13BA4B5:               Else
  loc_13BA4BC:                 If (var_AC = CLng(&HC)) Then
  loc_13BA4FF:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13BA508:                     Call Proc_82_49_1507CFC(KeyCode, var_AE, &HC, 0)
  loc_13BA513:                     If (var_AE = &HFF) Then
  loc_13BA521:                       Set var_98 = Me.TxtGrid
  loc_13BA54A:                       Set var_8C = var_98
  loc_13BA559:                       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13BA569:                     End If
  loc_13BA569:                   End If
  loc_13BA56C:                 Else
  loc_13BA573:                   If (var_AC = CLng(&HD)) Then
  loc_13BA582:                     Set var_88 = Me.TxtGrid
  loc_13BA588:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13BA590:                     0 = var_8C.Left
  loc_13BA5A7:                     Me.DGRevenue.Left = CVar(var_B8)
  loc_13BA5C1:                     Set var_94 = Me.TxtGrid
  loc_13BA5C7:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BA5CF:                     var_98 = var_98.Height
  loc_13BA5E0:                     Set var_88 = Me.TxtGrid
  loc_13BA5E6:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BA5EE:                     0 = var_8C.Top
  loc_13BA5FA:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BA609:                     Me.DGRevenue.Top = CVar(var_B8)
  loc_13BA633:                     Set var_98 = Nothing
  loc_13BA66C:                     Proc_6_69_134A630(Me.DGRevenue, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13BA68A:                     If (CLng(Shift) = &HD) Then
  loc_13BA693:                       Call Proc_82_49_1507CFC(KeyCode, var_AE, 1, Nothing)
  loc_13BA69E:                       If (var_AE = &HFF) Then
  loc_13BA6E6:                         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13BA6F6:                       End If
  loc_13BA6F6:                     End If
  loc_13BA6F6:                   End If
  loc_13BA6F6:                 End If
  loc_13BA6F6:               End If
  loc_13BA6F6:             End If
  loc_13BA6F6:           End If
  loc_13BA6F6:         End If
  loc_13BA6F6:       End If
  loc_13BA6F6:       ' Referenced from: 13B9D8C
  loc_13BA6F6:     End If
  loc_13BA6F6:   End If
  loc_13BA6F6: End If
  loc_13BA6F6: Proc_6_60_E63754(CByte(1), 0, 0)
  loc_13BA6FB: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '116FFE4
  'Data Table: 48CC30
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_116FC1B: Proc_6_58_E06050(arg_10)
  loc_116FC2C: If (KeyAscii = 0) Then
  loc_116FC42:   var_A0 = CLng(Me.FGrid.Col)
  loc_116FC52:   If (var_A0 = CLng(3)) Then
  loc_116FC71:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_116FC78:       Set var_AC = Me.TxtGrid
  loc_116FC83:       var_A4 = "Name"
  loc_116FC9E:       Proc_6_89_1470B00(var_AC, KeyAscii, global_80, arg_10)
  loc_116FCAD:     End If
  loc_116FCB0:   Else
  loc_116FCB7:     If Not (var_A0 = CLng(9)) Then
  loc_116FCC1:       If (var_A0 = CLng(7)) Then
  loc_116FCC4:       End If
  loc_116FCCE:       Set var_8C = Me.TxtGrid
  loc_116FCD4:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_116FCEF:       Proc_6_42_129B55C(var_AC, arg_10, 8, 2)
  loc_116FCFE:     Else
  loc_116FD05:       If (var_A0 = CLng(5)) Then
  loc_116FD0B:         var_B4 = arg_10
  loc_116FD17:         If Not (&H39 > var_B4 > &H31) Then
  loc_116FD20:           If Not (var_B4 = &H2B) Then
  loc_116FD29:             If Not (var_B4 = &H2D) Then
  loc_116FD32:               If Not (var_B4 = 8) Then
  loc_116FD3B:                 If (var_B4 = &H30) Then
  loc_116FD3E:                 End If
  loc_116FD3E:               End If
  loc_116FD3E:             End If
  loc_116FD3E:           End If
  loc_116FD41:         Else
  loc_116FD43:           arg_10 = 0
  loc_116FD46:         End If
  loc_116FD49:       Else
  loc_116FD50:         If (var_A0 = CLng(6)) Then
  loc_116FD60:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_116FD70:             Set var_8C = Me.TxtGrid
  loc_116FD76:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_116FD7E:             var_AC.Text = var_B4
  loc_116FD8C:             arg_10 = 0
  loc_116FD92:           Else
  loc_116FD9F:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_116FDAF:               Set var_8C = Me.TxtGrid
  loc_116FDB5:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_116FDBD:               var_AC.Text = 0
  loc_116FDCB:               arg_10 = 0
  loc_116FDD1:             Else
  loc_116FDDE:               Set var_8C = Me.TxtGrid
  loc_116FDE4:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116FDEC:               var_AC.Text = arg_10
  loc_116FDFA:               arg_10 = 0
  loc_116FDFD:             End If
  loc_116FDFD:           End If
  loc_116FE00:         Else
  loc_116FE07:           If Not (var_A0 = CLng(8)) Then
  loc_116FE11:             If (var_A0 = CLng(&HC)) Then
  loc_116FE14:             End If
  loc_116FE21:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_116FE31:               Set var_8C = Me.TxtGrid
  loc_116FE37:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_116FE3F:               var_AC.Text = arg_10
  loc_116FE4D:               arg_10 = 0
  loc_116FE53:             Else
  loc_116FE60:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_116FE70:                 Set var_8C = Me.TxtGrid
  loc_116FE76:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_116FE7E:                 var_AC.Text = arg_10
  loc_116FE8C:                 arg_10 = 0
  loc_116FE92:               Else
  loc_116FE9F:                 Set var_8C = Me.TxtGrid
  loc_116FEA5:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116FEAD:                 var_AC.Text = arg_10
  loc_116FEBB:                 arg_10 = 0
  loc_116FEBE:               End If
  loc_116FEBE:             End If
  loc_116FEC1:           Else
  loc_116FEC8:             If (var_A0 = CLng(&H10)) Then
  loc_116FEF4:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_116FF04:                 Set var_8C = Me.TxtGrid
  loc_116FF0A:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_116FF12:                 var_AC.Text = arg_10
  loc_116FF20:                 arg_10 = 0
  loc_116FF26:               Else
  loc_116FF4F:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_116FF5F:                   Set var_8C = Me.TxtGrid
  loc_116FF65:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_116FF6D:                   var_AC.Text = arg_10
  loc_116FF7B:                   arg_10 = 0
  loc_116FF7E:                 End If
  loc_116FF7E:               End If
  loc_116FF81:             Else
  loc_116FF88:               If (var_A0 = CLng(&HD)) Then
  loc_116FFA7:                 If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_116FFD4:                   Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_84, arg_10, "Name")
  loc_116FFE3:                 End If
  loc_116FFE3:               End If
  loc_116FFE3:             End If
  loc_116FFE3:           End If
  loc_116FFE3:         End If
  loc_116FFE3:       End If
  loc_116FFE3:     End If
  loc_116FFE3:   End If
  loc_116FFE3: End If
  loc_116FFE3: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FB97A8
  'Data Table: 48CC30
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FB95F8: On Error Goto loc_FB97A1
  loc_FB960E: var_9C = CLng(Me.FGrid.Col)
  loc_FB961E: If (var_9C = CLng(3)) Then
  loc_FB9644:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FB9652:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9666:     var_A4 = "Name"
  loc_FB9681:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_80, Shift)
  loc_FB9690:   End If
  loc_FB9693: Else
  loc_FB969A:   If Not (var_9C = CLng(6)) Then
  loc_FB96A4:     If Not (var_9C = CLng(8)) Then
  loc_FB96AE:       If Not (var_9C = CLng(&HC)) Then
  loc_FB96B8:         If Not (var_9C = CLng(5)) Then
  loc_FB96C2:           If (var_9C = CLng(&H10)) Then
  loc_FB96C5:           End If
  loc_FB96C5:         End If
  loc_FB96C5:       End If
  loc_FB96C5:     End If
  loc_FB96CB:     If (Shift <> &HD) Then
  loc_FB96D4:       Call TxtGrid_KeyPress(KeyCode)
  loc_FB96D9:     End If
  loc_FB96DC:   Else
  loc_FB96E3:     If (var_9C = CLng(&HD)) Then
  loc_FB9709:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FB9717:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9746:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_84, Shift, "Name", &HFF)
  loc_FB9755:       End If
  loc_FB9758:     Else
  loc_FB975F:       If (var_9C = CLng(5)) Then
  loc_FB9765:         var_AA = Shift
  loc_FB9771:         If Not (&H39 > var_AA > &H31) Then
  loc_FB977A:           If Not (var_AA = &H2B) Then
  loc_FB9783:             If Not (var_AA = &H2D) Then
  loc_FB978C:               If Not (var_AA = 8) Then
  loc_FB9795:                 If (var_AA = &H30) Then
  loc_FB9798:                 End If
  loc_FB9798:               End If
  loc_FB9798:             End If
  loc_FB9798:           End If
  loc_FB979B:         Else
  loc_FB979D:           Shift = 0
  loc_FB97A0:         End If
  loc_FB97A0:       End If
  loc_FB97A0:     End If
  loc_FB97A0:   End If
  loc_FB97A0: End If
  loc_FB97A0: Exit Sub
  loc_FB97A1: ' Referenced from: FB95F8
  loc_FB97A1: Proc_6_60_E63754(Shift, var_AA, 0, Shift)
  loc_FB97A6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21704
  'Data Table: 48CC30
  Dim arg_10 As Integer
  loc_E216EC: If (Cancel = 0) Then
  loc_E216F5:   Call Proc_82_49_1507CFC(Cancel, var_88)
  loc_E216FE:   arg_10 = Not(var_88)
  loc_E21701: End If
  loc_E21701: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E852A8
  'Data Table: 48CC30
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E8524B: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E8525E: Set var_A8 = Me.TxtGrid
  loc_E85264: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8526C: var_AC.Visible = False
  loc_E85286: Set var_A8 = Me.TxtGrid
  loc_E8528C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85294: var_AC.MaxLength = 0
  loc_E852A0: Call Proc_82_53_EBAACC()
  loc_E852A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E665D8
  'Data Table: 48CC30
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66594: Set var_88 = Me.TxtGrid
  loc_E6659A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E665B4: If (var_8C.Visible = 0) Then
  loc_E665CD:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E665D5: End If
  loc_E665D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E910
  'Data Table: 48CC30
  loc_E1E907: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E90F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFED44
  'Data Table: 48CC30
  loc_DFED3C: Call Proc_82_48_E37080()
  loc_DFED41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '12373E4
  'Data Table: 48CC30
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_1236EBC: Set var_88 = Me.TopCtrl1
  loc_1236EC2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1236F12: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1236F1B:   Call Form_KeyDown(Cancel, arg_10)
  loc_1236F20: End If
  loc_1236F24: Set var_88 = Me.TopCtrl1
  loc_1236F2A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1236F3F: If ( = "Browse") Then
  loc_1236F42:   Exit Sub
  loc_1236F43: End If
  loc_1236F60: var_D8 = Me.FGrid.Rows
  loc_1236FB7: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_D8) - 1))))) Then
  loc_1236FCD:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1236FDD:   var_DC = "+{Tab}"
  loc_1236FE3:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1236FED:   Cancel = 0
  loc_1236FF3: Else
  loc_1236FFD:   var_B8 = Me.FGrid.Rows
  loc_123704A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_1237060:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1237076:     Proc_303_0_FBACC8("{Tab}", 0, var_B8)
  loc_1237080:     Cancel = 0
  loc_12370BA:     If (MsgBox("Save Record ?", 4, "Save Data", var_D8, var_118) = 6) Then
  loc_12370BD:       Call TopCtrl1_UnknownEvent_19()
  loc_12370C2:     End If
  loc_12370C2:   End If
  loc_12370C2: End If
  loc_12370C8: global_68 = Cancel
  loc_12370EE: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1237112: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1237128:   var_11C = CLng(Me.FGrid.Col)
  loc_1237138:   If (var_11C = CLng(3)) Then
  loc_123714E:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237156:     var_F8 = CVar(CLng(3)) 'Long
  loc_123715B:     var_12C = vbNullString
  loc_1237165:     Set var_E0 = Me.FGrid
  loc_123716B:     LateIdCallSt
  loc_1237190:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237198:     var_F8 = CVar(CLng(2)) 'Long
  loc_123719D:     var_12C = vbNullString
  loc_12371A7:     Set var_E0 = Me.FGrid
  loc_12371AD:     LateIdCallSt
  loc_12371D2:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12371DA:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_12371DF:     var_12C = vbNullString
  loc_12371E9:     Set var_E0 = Me.FGrid
  loc_12371EF:     LateIdCallSt
  loc_1237214:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123721C:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_1237221:     var_12C = vbNullString
  loc_123722B:     Set var_E0 = Me.FGrid
  loc_1237231:     LateIdCallSt
  loc_1237246:   Else
  loc_123724D:     If Not (var_11C = CLng(1)) Then
  loc_1237257:       If Not (var_11C = CLng(4)) Then
  loc_1237261:         If Not (var_11C = CLng(5)) Then
  loc_123726B:           If Not (var_11C = CLng(6)) Then
  loc_1237275:             If Not (var_11C = CLng(7)) Then
  loc_123727F:               If Not (var_11C = CLng(8)) Then
  loc_1237289:                 If Not (var_11C = CLng(9)) Then
  loc_1237293:                   If Not (var_11C = CLng(&HC)) Then
  loc_123729D:                     If (var_11C = CLng(&H10)) Then
  loc_12372A0:                     End If
  loc_12372A0:                   End If
  loc_12372A0:                 End If
  loc_12372A0:               End If
  loc_12372A0:             End If
  loc_12372A0:           End If
  loc_12372A0:         End If
  loc_12372A0:       End If
  loc_12372B3:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12372CB:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12372D0:       var_12C = vbNullString
  loc_12372DA:       Set var_E4 = Me.FGrid
  loc_12372E0:       LateIdCallSt
  loc_12372FB:     Else
  loc_1237302:       If (var_11C = CLng(&HD)) Then
  loc_1237318:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237320:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_1237325:         var_12C = vbNullString
  loc_123732F:         Set var_E0 = Me.FGrid
  loc_1237335:         LateIdCallSt
  loc_123735A:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237362:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_1237367:         var_12C = vbNullString
  loc_1237371:         Set var_E0 = Me.FGrid
  loc_1237377:         LateIdCallSt
  loc_123739C:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12373A4:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_12373A9:         var_12C = vbNullString
  loc_12373B3:         Set var_E0 = Me.FGrid
  loc_12373B9:         LateIdCallSt
  loc_12373CB:       End If
  loc_12373CB:     End If
  loc_12373CB:   End If
  loc_12373CB: End If
  loc_12373D1: If (Cancel = &HD) Then
  loc_12373D9:   global_70 = 0
  loc_12373DC: End If
  loc_12373DE: Cancel = 0
  loc_12373E1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E13390
  'Data Table: 48CC30
  loc_E13381: Call FGrid_UnknownEvent_C()
  loc_E1338B: global_70 = 0
  loc_E1338E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1184F88
  'Data Table: 48CC30
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_1184BAC: Set var_88 = Me.TopCtrl1
  loc_1184BB2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1184BC7: If ( = "Browse") Then
  loc_1184BCA:   Exit Sub
  loc_1184BCB: End If
  loc_1184BCF: Set var_88 = Me.TopCtrl1
  loc_1184BD5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1184BEA: If ( = "Browse") Then
  loc_1184BED:   Exit Sub
  loc_1184BEE: End If
  loc_1184C01: var_BC = CLng(Me.FGrid.Col)
  loc_1184C11: If Not (var_BC = CLng(3)) Then
  loc_1184C1B:   If Not (var_BC = CLng(4)) Then
  loc_1184C25:     If Not (var_BC = CLng(&HD)) Then
  loc_1184C2F:       If Not (var_BC = CLng(6)) Then
  loc_1184C39:         If Not (var_BC = CLng(8)) Then
  loc_1184C43:           If Not (var_BC = CLng(&HC)) Then
  loc_1184C4D:             If (var_BC = CLng(&H10)) Then
  loc_1184C50:             End If
  loc_1184C50:           End If
  loc_1184C50:         End If
  loc_1184C50:       End If
  loc_1184C50:     End If
  loc_1184C50:   End If
  loc_1184C54:   Set var_D4 = Me.FGrid
  loc_1184C78:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1184CA5:   Set var_C4 = var_D4
  loc_1184CB7:   Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_1184CDF:   Set var_88 = Me.TxtGrid
  loc_1184CE5:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_1184CED:   0 = var_C4.Text
  loc_1184D06:   If (Len(var_C0) <= 1) Then
  loc_1184D15:     Set var_88 = Me.TxtGrid
  loc_1184D1B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_1184D23:     var_DA = var_C4.Text
  loc_1184D34:     Set var_C8 = Me.TxtGrid
  loc_1184D3A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_1184D42:     var_D4.Text = var_C0
  loc_1184D55:   End If
  loc_1184D61:   Set var_88 = Me.TxtGrid
  loc_1184D67:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1184D81:   Set var_C8 = Me.TxtGrid
  loc_1184D87:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_1184D8F:   var_D4.SelStart = Len(var_C4.Text)
  loc_1184DA5: Else
  loc_1184DAC:   If (var_BC = CLng(5)) Then
  loc_1184DED:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1184E02:   Else
  loc_1184E09:     If Not (var_BC = CLng(1)) Then
  loc_1184E13:       If Not (var_BC = CLng(9)) Then
  loc_1184E1D:         If (var_BC = CLng(7)) Then
  loc_1184E20:         End If
  loc_1184E20:       End If
  loc_1184E24:       Set var_D4 = Me.FGrid
  loc_1184E48:       var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1184E51:       var_DA = Asc(var_C0)
  loc_1184E75:       Set var_C4 = var_D4
  loc_1184E87:       Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, &HFF, var_DA)
  loc_1184EAF:       Set var_88 = Me.TxtGrid
  loc_1184EB5:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, 0, var_DA)
  loc_1184EBD:       0 = var_C4.Text
  loc_1184ED6:       If (Len(var_C0) <= 1) Then
  loc_1184EE5:         Set var_88 = Me.TxtGrid
  loc_1184EEB:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_1184EF3:         Cancel = var_C4.Text
  loc_1184F04:         Set var_C8 = Me.TxtGrid
  loc_1184F0A:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4, var_C0)
  loc_1184F12:         var_D4.Text = 0
  loc_1184F25:       End If
  loc_1184F31:       Set var_88 = Me.TxtGrid
  loc_1184F37:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1184F51:       Set var_C8 = Me.TxtGrid
  loc_1184F57:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_1184F5F:       var_D4.SelStart = Len(var_C4.Text)
  loc_1184F72:     End If
  loc_1184F72:   End If
  loc_1184F72: End If
  loc_1184F7C: If (CLng(Cancel) <> &HD) Then
  loc_1184F84:   global_70 = &HFF
  loc_1184F87: End If
  loc_1184F87: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1000AE8
  'Data Table: 48CC30
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_10008F0: Set var_90 = Me.TopCtrl1
  loc_10008F6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_100090B: If ( = "Browse") Then
  loc_100090E:   Exit Sub
  loc_100090F: End If
  loc_1000913: Set var_90 = Me.TopCtrl1
  loc_1000919: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_100092E: If ( = "Edit") Then
  loc_1000931:   Exit Sub
  loc_1000932: End If
  loc_100094F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1000952:   Exit Sub
  loc_1000953: End If
  loc_1000964: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1000986:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10009C0:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10009E2:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10009F8:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1000A01:         Set var_114 = Me.FGrid
  loc_1000A1C:       Else
  loc_1000A2F:         Me.FGrid.Rows = 1
  loc_1000A55:         var_B0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(1)))) 'String
  loc_1000A5D:         Set var_114 = Me.FGrid
  loc_1000A8A:         Me.FGrid.FixedRows = 1
  loc_1000A92:       End If
  loc_1000A92:     End If
  loc_1000A95:   Else
  loc_1000AB6:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1000AC6:   End If
  loc_1000ACA:   Set var_90 = Me.FGrid
  loc_1000ADB: End If
  loc_1000AE0: Set var_8C = Nothing
  loc_1000AE3: Exit Sub
  loc_1000AE4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E7D0
  'Data Table: 48CC30
  loc_E1E7C7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1E7CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E8C0
  'Data Table: 48CC30
  loc_E1E8B7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E8BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41FC0
  'Data Table: 48CC30
  Dim var_8C As TextBox
  loc_E41F94: Call Proc_82_53_EBAACC()
  loc_E41FA4: Set var_88 = Me.TxtGrid
  loc_E41FAA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41FB2: var_8C.Visible = False
  loc_E41FBE: Exit Sub
End Sub

Public Function MasterFormExitGet() '48D7D4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48D7E3
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48D7F2
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48D801
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E960B8
  'Data Table: 48CC30
  Dim Me As Recordset15
  loc_E96046: On Error Goto loc_E960AF
  loc_E9604F: Me.MoveFirst
  loc_E96079: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E960A1: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E960A9: Call Proc_82_51_13DD4F4(0)
  loc_E960AE: Exit Sub
  loc_E960AF: ' Referenced from: E96046
  loc_E960AF: Proc_6_60_E63754(var_A0)
  loc_E960B4: Exit Sub
End Sub

Public Sub Proc_82_45_12DFA64
  'Data Table: 48CC30
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_12DF3A4: On Error Goto loc_12DFA5D
  loc_12DF3B5: Set var_88 = Me.Txt
  loc_12DF3BB: Call 0.Method_Proc_82_45_12DFA640 (CInt(0), var_8C)
  loc_12DF3DA: Me.DGVType.Left = CVar(var_8C.Left)
  loc_12DF3F6: Set var_B4 = Me.Txt
  loc_12DF3FC: Call 0.Method_Proc_82_45_12DFA640 (CInt(0), var_B8)
  loc_12DF417: Set var_88 = Me.Txt
  loc_12DF41D: Call 0.Method_Proc_82_45_12DFA640 (CInt(0), var_8C)
  loc_12DF425: var_90 = var_8C.Top
  loc_12DF435: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_12DF444: Me.DGVType.Top = CVar(var_8C.Left)
  loc_12DF45C: Call 0.Method_Me0 (var_90)
  loc_12DF468: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DF477: Me.FGrid.Width = CVar(var_8C.Left)
  loc_12DF485: Call 0.Method_Me8 (var_90)
  loc_12DF491: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DF4A0: Me.FGrid.Height = CVar(var_8C.Left)
  loc_12DF4AC: Set var_C4 = Me.FGrid
  loc_12DF4BB: var_C4.Cols = &H11
  loc_12DF4CC: var_C4.Rows = 1
  loc_12DF4E5: global_60 = CStr(CLng(var_C4.BackColor))
  loc_12DF4EF: var_A0 = 0
  loc_12DF4F8: var_E8 = &H64
  loc_12DF504: LateIdCallSt
  loc_12DF50F: var_A0 = CVar(CLng(1)) 'Long
  loc_12DF514: var_E8 = &H159
  loc_12DF520: LateIdCallSt
  loc_12DF528: var_A0 = 0
  loc_12DF534: var_E8 = CVar(CLng(1)) 'Long
  loc_12DF539: var_108 = "Sn."
  loc_12DF542: LateIdCallSt
  loc_12DF54D: var_A0 = CVar(CLng(1)) 'Long
  loc_12DF558: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF55F: LateIdCallSt
  loc_12DF56A: var_A0 = CVar(CLng(2)) 'Long
  loc_12DF56F: var_E8 = 0
  loc_12DF57B: LateIdCallSt
  loc_12DF586: var_A0 = CVar(CLng(3)) 'Long
  loc_12DF58B: var_E8 = &H5DC
  loc_12DF597: LateIdCallSt
  loc_12DF59F: var_A0 = 0
  loc_12DF5AB: var_E8 = CVar(CLng(3)) 'Long
  loc_12DF5B0: var_108 = "Sundry Name"
  loc_12DF5B9: LateIdCallSt
  loc_12DF5C4: var_A0 = CVar(CLng(3)) 'Long
  loc_12DF5CF: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF5D6: LateIdCallSt
  loc_12DF5E1: var_A0 = CVar(CLng(4)) 'Long
  loc_12DF5E6: var_E8 = &H640
  loc_12DF5F2: LateIdCallSt
  loc_12DF5FA: var_A0 = 0
  loc_12DF606: var_E8 = CVar(CLng(4)) 'Long
  loc_12DF60B: var_108 = "Display Name"
  loc_12DF614: LateIdCallSt
  loc_12DF61F: var_A0 = CVar(CLng(4)) 'Long
  loc_12DF62A: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF631: LateIdCallSt
  loc_12DF63C: var_A0 = CVar(CLng(5)) 'Long
  loc_12DF641: var_E8 = &H6D6
  loc_12DF64D: LateIdCallSt
  loc_12DF655: var_A0 = 0
  loc_12DF661: var_E8 = CVar(CLng(5)) 'Long
  loc_12DF666: var_108 = "Cal. Formula"
  loc_12DF66F: LateIdCallSt
  loc_12DF67A: var_A0 = CVar(CLng(5)) 'Long
  loc_12DF685: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF68C: LateIdCallSt
  loc_12DF697: var_A0 = CVar(CLng(5)) 'Long
  loc_12DF6A2: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF6A9: LateIdCallSt
  loc_12DF6B4: var_A0 = CVar(CLng(6)) 'Long
  loc_12DF6B9: var_E8 = &H226
  loc_12DF6C5: LateIdCallSt
  loc_12DF6CD: var_A0 = 0
  loc_12DF6D9: var_E8 = CVar(CLng(6)) 'Long
  loc_12DF6DE: var_108 = "P/A"
  loc_12DF6E7: LateIdCallSt
  loc_12DF6F2: var_A0 = CVar(CLng(6)) 'Long
  loc_12DF6FD: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF704: LateIdCallSt
  loc_12DF70F: var_A0 = CVar(CLng(7)) 'Long
  loc_12DF714: var_E8 = &H320
  loc_12DF720: LateIdCallSt
  loc_12DF728: var_A0 = 0
  loc_12DF734: var_E8 = CVar(CLng(7)) 'Long
  loc_12DF739: var_108 = "Value"
  loc_12DF742: LateIdCallSt
  loc_12DF74D: var_A0 = CVar(CLng(7)) 'Long
  loc_12DF758: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF75F: LateIdCallSt
  loc_12DF76A: var_A0 = CVar(CLng(7)) 'Long
  loc_12DF775: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF77C: LateIdCallSt
  loc_12DF787: var_A0 = CVar(CLng(8)) 'Long
  loc_12DF78C: var_E8 = 0
  loc_12DF798: LateIdCallSt
  loc_12DF7A0: var_A0 = 0
  loc_12DF7AC: var_E8 = CVar(CLng(8)) 'Long
  loc_12DF7B1: var_108 = "ROff"
  loc_12DF7BA: LateIdCallSt
  loc_12DF7C5: var_A0 = CVar(CLng(8)) 'Long
  loc_12DF7D0: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF7D7: LateIdCallSt
  loc_12DF7E2: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DF7E7: var_E8 = &H320
  loc_12DF7F3: LateIdCallSt
  loc_12DF7FB: var_A0 = 0
  loc_12DF807: var_E8 = CVar(CLng(&H10)) 'Long
  loc_12DF80C: var_108 = "A/M"
  loc_12DF815: LateIdCallSt
  loc_12DF820: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DF82B: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF832: LateIdCallSt
  loc_12DF83D: var_A0 = CVar(CLng(9)) 'Long
  loc_12DF842: var_E8 = 0
  loc_12DF84E: LateIdCallSt
  loc_12DF856: var_A0 = 0
  loc_12DF862: var_E8 = CVar(CLng(9)) 'Long
  loc_12DF867: var_108 = "Limit"
  loc_12DF870: LateIdCallSt
  loc_12DF87B: var_A0 = CVar(CLng(9)) 'Long
  loc_12DF886: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF88D: LateIdCallSt
  loc_12DF898: var_A0 = CVar(CLng(9)) 'Long
  loc_12DF8A3: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF8AA: LateIdCallSt
  loc_12DF8B5: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12DF8BA: var_E8 = 0
  loc_12DF8C6: LateIdCallSt
  loc_12DF8CE: var_A0 = 0
  loc_12DF8DA: var_E8 = CVar(CLng(&HA)) 'Long
  loc_12DF8DF: var_108 = "Nature"
  loc_12DF8E8: LateIdCallSt
  loc_12DF8F3: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12DF8FE: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF905: LateIdCallSt
  loc_12DF910: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12DF915: var_E8 = 0
  loc_12DF921: LateIdCallSt
  loc_12DF929: var_A0 = 0
  loc_12DF935: var_E8 = CVar(CLng(&HB)) 'Long
  loc_12DF93A: var_108 = "+/-"
  loc_12DF943: LateIdCallSt
  loc_12DF94E: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12DF959: var_E8 = CVar(CInt(4)) 'Integer
  loc_12DF960: LateIdCallSt
  loc_12DF96B: var_A0 = CVar(CLng(&HE)) 'Long
  loc_12DF970: var_E8 = 0
  loc_12DF97C: LateIdCallSt
  loc_12DF987: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12DF98C: var_E8 = &H258
  loc_12DF998: LateIdCallSt
  loc_12DF9A0: var_A0 = 0
  loc_12DF9AC: var_E8 = CVar(CLng(&HC)) 'Long
  loc_12DF9B1: var_108 = "Bold"
  loc_12DF9BA: LateIdCallSt
  loc_12DF9C5: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12DF9D0: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF9D7: LateIdCallSt
  loc_12DF9E2: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12DF9E7: var_E8 = &H9C4
  loc_12DF9F3: LateIdCallSt
  loc_12DF9FB: var_A0 = 0
  loc_12DFA07: var_E8 = CVar(CLng(&HD)) 'Long
  loc_12DFA0C: var_108 = "Revenue Charge"
  loc_12DFA15: LateIdCallSt
  loc_12DFA20: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12DFA2B: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFA32: LateIdCallSt
  loc_12DFA3D: var_A0 = CVar(CLng(&HF)) 'Long
  loc_12DFA42: var_E8 = 0
  loc_12DFA4E: LateIdCallSt
  loc_12DFA58: Set var_C4 = Nothing 
  loc_12DFA5C: Exit Sub
  loc_12DFA5D: ' Referenced from: 12DF3A4
  loc_12DFA5D: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4, var_108)
  loc_12DFA62: Exit Sub
End Sub

Public Sub Proc_82_46_FCAD64
  'Data Table: 48CC30
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_48CC57 As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FCABFF: If (Me.RecordCount = 0) Then
  loc_FCAC02:   Proc_82_46_FCAD64 = 
  loc_FCAC08: End If
  loc_FCAC43: Set var_94 = Me.Txt
  loc_FCAC49: Call 0.Method_Proc_82_46_FCAD640 (CInt(0), var_98, var_9C, "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (V_Type='", var_130, -1)
  loc_FCAC61: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FCAC6F: Set var_A8 = Me.Txt
  loc_FCAC75: Call 0.Method_Proc_82_46_FCAD640 (CInt(1), var_AC, var_DC)
  loc_FCAC84: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FCAC8C: var_EC = var_14C & var_CC 
  loc_FCACA3: unk_48CC57.Execute CStr(var_EC & ")"), var_15C, 
  loc_FCACAB:  = var_98.Tag.Fields
  loc_FCACB3:  = var_138.Item()
  loc_FCACBB:  = var_14C.Value
  loc_FCACF8: If (var_15C > 0) Then
  loc_FCAD1C:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FCAD37:   Set var_94 = Me.Txt
  loc_FCAD3D:   Call 0.Method_Proc_82_46_FCAD640 (CInt(0))
  loc_FCAD45:   var_98.SetFocus
  loc_FCAD56:   Proc_82_46_FCAD64 = &HFF
  loc_FCAD5C: End If
  loc_FCAD5C: Proc_82_46_FCAD64 = var_98
End Sub

Public Sub Proc_82_47_11580AC(arg_C, arg_10) '11580AC
  'Data Table: 48CC30
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_178 As Boolean
  Dim var_9A As Integer
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_1157D10: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1157D19: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_1157D33: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_1157D54: var_C4 = "+"
  loc_1157D6E: var_118 = Left(var_98, 1)
  loc_1157D76: var_E4 = "-"
  loc_1157D8D: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1157DAE:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_1157DBE:   Proc_82_47_11580AC = &HFF
  loc_1157DC4: End If
  loc_1157DDC: var_C4 = "+"
  loc_1157DF6: var_118 = Right(var_98, 1)
  loc_1157DFE: var_E4 = "-"
  loc_1157E15: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1157E36:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1157E46:   Proc_82_47_11580AC = &HFF
  loc_1157E4C: End If
  loc_1157E4E: var_86 = 0
  loc_1157E51: ' Referenced from: 11580A0
  loc_1157E5B: If (Len(var_98) > 0) Then
  loc_1157E60:   var_A2 = 0
  loc_1157E75:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1157E8B:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1157EA7:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1157EC5:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1157EDB:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1157EF7:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_1157EFE:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1157F2E:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1157F35:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1157F3E:   var_9A = CInt(var_188)
  loc_1157F5E:   If (var_9A = 0) Then
  loc_1157F64:     var_A0 = var_98
  loc_1157F6A:   Else
  loc_1157F7C:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_1157F85:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1157F8B:   End If
  loc_1157F96:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1157F9F:     var_148 = CVar(var_A0) 'String
  loc_1157FA7:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1157FE5:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1157FEA:       var_A2 = &HFF
  loc_1157FED:       Exit For
  loc_1157FF0:     End If
  loc_1157FF3:   Next var_18C 'Integer
  loc_1157FF8:   ' Referenced from: 1157FED
  loc_1157FFE:   If (var_A2 = 0) Then
  loc_115800C:     var_F8 = Trim(var_A0)
  loc_115802F:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_1158038:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_1158041:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_1158045:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_1158060:     Proc_82_47_11580AC = &HFF
  loc_1158066:   End If
  loc_115806C:   If (var_9A = 0) Then
  loc_1158072:     var_98 = vbNullString
  loc_1158078:   Else
  loc_115808D:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_1158096:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11580A0:   End If
  loc_11580A0:   GoTo loc_1157E51
  loc_11580A3: End If
  loc_11580A3: Proc_82_47_11580AC = 
End Sub

Public Sub Proc_82_48_E37080
  'Data Table: 48CC30
  loc_E37060: Set var_88 = Me.TopCtrl1
  loc_E37066: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3707B: If ( = "Browse") Then
  loc_E3707E:   Exit Sub
  loc_E3707F: End If
  loc_E3707F: Exit Sub
End Sub

Public Sub Proc_82_49_1507CFC(arg_C) '1507CFC
  'Data Table: 48CC30
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_138 As MSHFlexGrid
  Dim var_170 As Variant
  loc_1506E3B: var_A0 = CLng(Me.FGrid.Col)
  loc_1506E4B: If (var_A0 = CLng(3)) Then
  loc_1506E6E:   var_A6 = Me.EOF
  loc_1506E9C:   Set var_8C = Me.TxtGrid
  loc_1506EA2:   Call 0.Method_Proc_82_49_1507CFC0 (arg_C, var_AC, var_B0)
  loc_1506EAA:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1506EC2:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1506ED8:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506EE0:     var_E0 = CVar(CLng(3)) 'Long
  loc_1506EE5:     var_100 = vbNullString
  loc_1506EEF:     Set var_AC = Me.FGrid
  loc_1506EF5:     LateIdCallSt
  loc_1506F1A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506F22:     var_E0 = CVar(CLng(2)) 'Long
  loc_1506F27:     var_100 = vbNullString
  loc_1506F31:     Set var_AC = Me.FGrid
  loc_1506F37:     LateIdCallSt
  loc_1506F5C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506F64:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1506F69:     var_100 = vbNullString
  loc_1506F73:     Set var_AC = Me.FGrid
  loc_1506F79:     LateIdCallSt
  loc_1506F9E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506FA6:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_1506FAB:     var_100 = vbNullString
  loc_1506FB5:     Set var_AC = Me.FGrid
  loc_1506FBB:     LateIdCallSt
  loc_1506FD0:   Else
  loc_1506FD3:     Call Proc_82_54_FC3388(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_1506FDE:     If (var_A6 = 0) Then
  loc_1506FE6:       Proc_82_49_1507CFC = 0
  loc_1506FEC:     End If
  loc_1506FFF:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507007:     var_F0 = CVar(CLng(3)) 'Long
  loc_150703A:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1507042:     Set var_138 = Me.FGrid
  loc_1507048:     LateIdCallSt
  loc_1507077:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150707F:     var_F0 = CVar(CLng(2)) 'Long
  loc_15070B2:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_15070BA:     Set var_138 = Me.FGrid
  loc_15070C0:     LateIdCallSt
  loc_15070EF:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15070F7:     var_F0 = CVar(CLng(4)) 'Long
  loc_150712A:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1507138:     LateIdCallSt
  loc_150719F:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_15071A7:     Set var_138 = Me.FGrid
  loc_15071AD:     LateIdCallSt
  loc_15071DA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15071E2:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_1507215:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_150721D:     Set var_138 = Me.FGrid
  loc_1507223:     LateIdCallSt
  loc_150723F:   End If
  loc_1507252:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150725A:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_150725F:   var_100 = "Manual"
  loc_1507269:   Set var_AC = Me.FGrid
  loc_150726F:   LateIdCallSt
  loc_150729A:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_150729F:   var_E0 = 1
  loc_15072AC:   Set var_AC = Me.FGrid
  loc_15072BD:   var_B0 = CStr(var_AC.TextMatrix))
  loc_15072D6:   If (var_B0 <> vbNullString) Then
  loc_15072D9:     var_C0 = vbNullString
  loc_15072E3:     Set var_8C = Me.FGrid
  loc_15072F4:   End If
  loc_15072F7: Else
  loc_15072FE:   If Not (var_A0 = CLng(1)) Then
  loc_1507308:     If (var_A0 = CLng(4)) Then
  loc_150730B:     End If
  loc_1507347:     Set var_8C = Me.TxtGrid
  loc_150734D:     Call 0.Method_Proc_82_49_1507CFC0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_1507355:     var_E0 = var_AC.Text
  loc_150735D:     var_134 = CVar(var_B0) 'String
  loc_1507365:     Set var_13C = Me.FGrid
  loc_150736B:     LateIdCallSt
  loc_150738C:   Else
  loc_1507393:     If (var_A0 = CLng(5)) Then
  loc_15073D3:       Set var_8C = Me.TxtGrid
  loc_15073D9:       Call 0.Method_Proc_82_49_1507CFC0 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_15073E1:       var_C0 = var_AC.Text
  loc_15073E9:       var_134 = CVar(var_B0) 'String
  loc_15073F1:       Set var_13C = Me.FGrid
  loc_15073F7:       LateIdCallSt
  loc_1507434:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_150744A:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507453:         Set var_AC = Me.FGrid
  loc_1507462:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1507467:         var_100 = vbNullString
  loc_1507471:         Set var_114 = Me.FGrid
  loc_1507477:         LateIdCallSt
  loc_1507494:         Proc_82_49_1507CFC = &HFF
  loc_150749A:       End If
  loc_15074A7:       Set var_8C = Me.TxtGrid
  loc_15074AD:       Call 0.Method_Proc_82_49_1507CFC0 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_15074B5:       var_13C = var_AC.Text
  loc_15074CC:       If (var_B0 <> vbNullString) Then
  loc_150750A:         Call Proc_82_47_11580AC(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_1507523:         If (var_13E = &HFF) Then
  loc_1507528:           var_86 = 0
  loc_150753E:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507547:           Set var_AC = Me.FGrid
  loc_1507556:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_150755B:           var_100 = vbNullString
  loc_150756B:           LateIdCallSt
  loc_1507583:           Proc_82_49_1507CFC = Me.FGrid
  loc_1507589:         End If
  loc_1507589:       End If
  loc_150758C:     Else
  loc_1507593:       If Not (var_A0 = CLng(8)) Then
  loc_150759D:         If (var_A0 = CLng(&HC)) Then
  loc_15075A0:         End If
  loc_15075DC:         Set var_8C = Me.TxtGrid
  loc_15075E2:         Call 0.Method_Proc_82_49_1507CFC0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_15075EA:         var_C0 = var_AC.Text
  loc_1507600:         LateIdCallSt
  loc_150762B:         Set var_8C = Me.TxtGrid
  loc_1507631:         Call 0.Method_Proc_82_49_1507CFC0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_1507639:         var_13E = var_AC.Text
  loc_1507650:         If (var_B0 = vbNullString) Then
  loc_1507666:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150766F:           Set var_AC = Me.FGrid
  loc_150767E:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1507683:           var_100 = "No"
  loc_150768D:           Set var_114 = Me.FGrid
  loc_1507693:           LateIdCallSt
  loc_15076AB:         End If
  loc_15076AE:       Else
  loc_15076B5:         If (var_A0 = CLng(&H10)) Then
  loc_15076BC:           Set var_114 = Me.FGrid
  loc_15076F4:           Set var_8C = Me.TxtGrid
  loc_15076FA:           Call 0.Method_Proc_82_49_1507CFC0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1507702:           var_E0 = var_AC.Text
  loc_1507718:           LateIdCallSt
  loc_1507743:           Set var_8C = Me.TxtGrid
  loc_1507749:           Call 0.Method_Proc_82_49_1507CFC0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1507751:           var_C0 = var_AC.Text
  loc_1507768:           If (var_B0 = vbNullString) Then
  loc_150777E:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507787:             Set var_AC = Me.FGrid
  loc_1507796:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_150779B:             var_100 = "Manual"
  loc_15077A5:             Set var_114 = Me.FGrid
  loc_15077AB:             LateIdCallSt
  loc_15077C3:           End If
  loc_15077C6:         Else
  loc_15077CD:           If (var_A0 = CLng(6)) Then
  loc_15077D4:             Set var_114 = Me.FGrid
  loc_150780C:             Set var_8C = Me.TxtGrid
  loc_1507812:             Call 0.Method_Proc_82_49_1507CFC0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_150781A:             var_E0 = var_AC.Text
  loc_1507830:             LateIdCallSt
  loc_150785B:             Set var_8C = Me.TxtGrid
  loc_1507861:             Call 0.Method_Proc_82_49_1507CFC0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1507869:             var_C0 = var_AC.Text
  loc_1507880:             If (var_B0 = vbNullString) Then
  loc_1507896:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150789F:               Set var_AC = Me.FGrid
  loc_15078AE:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_15078B3:               var_100 = "Amt"
  loc_15078BD:               Set var_114 = Me.FGrid
  loc_15078C3:               LateIdCallSt
  loc_15078DB:             End If
  loc_15078DE:           Else
  loc_15078E5:             If Not (var_A0 = CLng(9)) Then
  loc_15078EF:               If (var_A0 = CLng(7)) Then
  loc_15078F2:               End If
  loc_15078FE:               Set var_8C = Me.TxtGrid
  loc_1507904:               Call 0.Method_Proc_82_49_1507CFC0 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_150790C:               var_C0 = var_AC.Text
  loc_150792F:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507947:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1507974:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_150797C:               Set var_13C = Me.FGrid
  loc_1507982:               LateIdCallSt
  loc_15079AC:             Else
  loc_15079B3:               If (var_A0 = CLng(&HD)) Then
  loc_1507A04:                 Set var_8C = Me.TxtGrid
  loc_1507A0A:                 Call 0.Method_Proc_82_49_1507CFC0 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_1507A12:                 1 = var_AC.Text
  loc_1507A2A:                 If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1507A40:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507A48:                   var_E0 = CVar(CLng(&HF)) 'Long
  loc_1507A4D:                   var_100 = vbNullString
  loc_1507A57:                   Set var_AC = Me.FGrid
  loc_1507A5D:                   LateIdCallSt
  loc_1507A82:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507A8A:                   var_E0 = CVar(CLng(&HD)) 'Long
  loc_1507A8F:                   var_100 = vbNullString
  loc_1507A99:                   Set var_AC = Me.FGrid
  loc_1507A9F:                   LateIdCallSt
  loc_1507AC4:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507ACC:                   var_E0 = CVar(CLng(&HB)) 'Long
  loc_1507AD1:                   var_100 = vbNullString
  loc_1507ADB:                   Set var_AC = Me.FGrid
  loc_1507AE1:                   LateIdCallSt
  loc_1507AF6:                 Else
  loc_1507B09:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507B11:                   var_F0 = CVar(CLng(&HF)) 'Long
  loc_1507B44:                   var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1507B4C:                   Set var_138 = Me.FGrid
  loc_1507B52:                   LateIdCallSt
  loc_1507B81:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507B89:                   var_F0 = CVar(CLng(&HD)) 'Long
  loc_1507BBC:                   var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1507BC4:                   Set var_138 = Me.FGrid
  loc_1507BCA:                   LateIdCallSt
  loc_1507C25:                   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_1507C3B:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507C43:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1507C48:                     var_100 = "+"
  loc_1507C52:                     Set var_AC = Me.FGrid
  loc_1507C58:                     LateIdCallSt
  loc_1507C6D:                   Else
  loc_1507CAC:                     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_1507CC2:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1507CCA:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_1507CCF:                       var_100 = "-"
  loc_1507CD9:                       Set var_AC = Me.FGrid
  loc_1507CDF:                       LateIdCallSt
  loc_1507CF1:                     End If
  loc_1507CF1:                   End If
  loc_1507CF1:                 End If
  loc_1507CF1:               End If
  loc_1507CF1:             End If
  loc_1507CF1:           End If
  loc_1507CF1:         End If
  loc_1507CF1:       End If
  loc_1507CF1:     End If
  loc_1507CF1:   End If
  loc_1507CF1: End If
  loc_1507CF6: Proc_82_49_1507CFC = &HFF
End Sub

Public Sub Proc_82_50_F29C80
  'Data Table: 48CC30
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F29B82: Set var_8C = Me.Txt
  loc_F29B88: Call 0.Method_Proc_82_50_F29C80C (var_8E, var_86)
  loc_F29B98: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F29BAE:   Set var_8C = Me.Txt
  loc_F29BB4:   Call 0.Method_Proc_82_50_F29C800 (CInt(var_86), var_98)
  loc_F29BBC:   var_98.Text = vbNullString
  loc_F29BD8:   Set var_8C = Me.Txt
  loc_F29BDE:   Call 0.Method_Proc_82_50_F29C800 (CInt(var_86), var_98)
  loc_F29BE6:   var_98.Tag = vbNullString
  loc_F29BF5: Next var_92 'Byte
  loc_F29C08: Me.LblDepart.Caption = vbNullString
  loc_F29C23: Me.FGrid.Rows = 1
  loc_F29C40: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F29C48: Set var_98 = Me.FGrid
  loc_F29C77: Me.FGrid.FixedRows = 1
  loc_F29C7F: Exit Sub
End Sub

Public Sub Proc_82_51_13DD4F4
  'Data Table: 48CC30
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_48CC57 As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As TextBox
  Dim var_120 As Label
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  loc_13DCB24: On Error Goto loc_13DD4EC
  loc_13DCB3E: If (Me.RecordCount > 0) Then
  loc_13DCB41:   Call Proc_82_50_F29C80()
  loc_13DCB53:   var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_13DCB9C:   unk_48CC57.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_13DCBA7:   Set var_88 = var_120
  loc_13DCBD5:   If (var_88.RecordCount > 0) Then
  loc_13DCC0E:     Set var_120 = Me.Txt
  loc_13DCC14:     Call 0.Method_Proc_82_51_13DD4F40 (CInt(0), var_124)
  loc_13DCC1C:     var_124.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("V_Type")))
  loc_13DCC66:     Set var_120 = Me.Txt
  loc_13DCC6C:     Call 0.Method_Proc_82_51_13DD4F40 (CInt(0), var_124)
  loc_13DCC74:     var_124.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_13DCCC1:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_13DCCC4:     End If
  loc_13DCCF9:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_13DCD5D:     Set var_120 = Me.Txt
  loc_13DCD63:     Call 0.Method_Proc_82_51_13DD4F40 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_13DCD6B:     var_124.Text = 1
  loc_13DCD87:     var_8A = 1
  loc_13DCD9D:     Me.FGrid.Rows = 1
  loc_13DCDA5:     ' Referenced from: 13DD463
  loc_13DCDB4:     If Not(var_88.EOF) Then
  loc_13DCDB7:       var_A4 = vbNullString
  loc_13DCDC1:       Set var_94 = Me.FGrid
  loc_13DCDD6:       Set var_12C = Me.FGrid
  loc_13DCDDD:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_13DCDE5:       var_10C = CVar(CLng(1)) 'Long
  loc_13DCE15:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13DCE1C:       LateIdCallSt
  loc_13DCE6B:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(2)))) 'String
  loc_13DCE72:       LateIdCallSt
  loc_13DCEBD:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(var_8A)))) 'String
  loc_13DCEC4:       LateIdCallSt
  loc_13DCF0F:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DCF16:       LateIdCallSt
  loc_13DCF61:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DCF68:       LateIdCallSt
  loc_13DCFA9:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DCFB1:       var_15C = CVar(CLng(6)) 'Long
  loc_13DCFE7:       var_17C = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_12C, "Per", FGrid.DispID_10000) = "P"), "Per", "Amt"))) 'String
  loc_13DCFEE:       LateIdCallSt
  loc_13DD06B:       LateIdCallSt
  loc_13DD0A9:       var_190 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_13DD0B0:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DD0B8:       var_15C = CVar(CLng(8)) 'Long
  loc_13DD0EE:       var_17C = CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))) 'String
  loc_13DD0F5:       LateIdCallSt
  loc_13DD172:       LateIdCallSt
  loc_13DD1C1:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_13DD1C8:       LateIdCallSt
  loc_13DD213:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(9)))) 'String
  loc_13DD21A:       LateIdCallSt
  loc_13DD26C:       LateIdCallSt
  loc_13DD2A6:       var_190 = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_12C, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_12C, var_D8)), CVar(CLng(var_8A)))
  loc_13DD2F2:       LateIdCallSt
  loc_13DD34C:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_12C, CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_13DD353:       LateIdCallSt
  loc_13DD39E:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DD3A5:       LateIdCallSt
  loc_13DD3E6:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DD3EE:       var_15C = CVar(CLng(&H10)) 'Long
  loc_13DD41B:       var_11C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoManual")), var_12C, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_13DD424:       var_17C = CVar(CStr(var_11C)) 'String
  loc_13DD42B:       LateIdCallSt
  loc_13DD44E:       Set var_12C = Nothing 
  loc_13DD458:       var_8A = (var_8A + 1)
  loc_13DD45E:       var_88.MoveNext
  loc_13DD463:       GoTo loc_13DCDA5
  loc_13DD466:     End If
  loc_13DD466:   End If
  loc_13DD466:   var_A4 = 0
  loc_13DD470:   Set var_94 = Me.FGrid
  loc_13DD49D:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13DD4A0:     var_A4 = "1"
  loc_13DD4AA:     Set var_94 = Me.FGrid
  loc_13DD4BB:   End If
  loc_13DD4BB:   var_A4 = 1
  loc_13DD4CE:   Me.FGrid.FixedRows = var_A4
  loc_13DD4D9: Else
  loc_13DD4D9:   Call Proc_82_50_F29C80(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_12C, var_17C)
  loc_13DD4DE: End If
  loc_13DD4DE: Call Proc_82_53_EBAACC(var_15C, var_13C, var_12C)
  loc_13DD4E8: Set var_88 = Nothing
  loc_13DD4EB: Exit Sub
  loc_13DD4EC: ' Referenced from: 13DCB24
  loc_13DD4EC: Proc_6_60_E63754(var_17C, var_15C)
  loc_13DD4F1: Exit Sub
End Sub

Public Sub Proc_82_52_E79384(arg_C) 'E79384
  'Data Table: 48CC30
  Dim var_98 As TextBox
  loc_E79332: Set var_8C = Me.Txt
  loc_E79338: Call 0.Method_Proc_82_52_E79384C (var_8E, var_86)
  loc_E79348: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7935E:   Set var_8C = Me.Txt
  loc_E79364:   Call 0.Method_Proc_82_52_E793840 (CInt(var_86), var_98)
  loc_E7936C:   var_98.Enabled = arg_C
  loc_E7937B: Next var_92 'Byte
  loc_E79381: Exit Sub
End Sub

Public Sub Proc_82_53_EBAACC
  'Data Table: 48CC30
  loc_EBAA44: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBAA56:   Me.DGVType.Visible = False
  loc_EBAA5E: End If
  loc_EBAA7A: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EBAA8C:   Me.DGRevenue.Visible = False
  loc_EBAA94: End If
  loc_EBAAB0: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EBAAC2:   Me.DGSundry.Visible = False
  loc_EBAACA: End If
  loc_EBAACA: Exit Sub
End Sub

Public Sub Proc_82_54_FC3388
  'Data Table: 48CC30
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC320B: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FC3210:   var_92 = 3 'Byte
  loc_FC3214: End If
  loc_FC321D: Set var_98 = Me.TxtGrid
  loc_FC3223: Call 0.Method_Proc_82_54_FC33880 (0, var_B0)
  loc_FC3246: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC327A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC329E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC32A1:     GoTo loc_FC3373
  loc_FC32A4:   End If
  loc_FC32A8:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC32D2:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC32DC:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC3311:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC3335:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC334E:     Set var_98 = Me.TxtGrid
  loc_FC3354:     Call 0.Method_Proc_82_54_FC33880 (0, var_B0, CVar(CLng(var_92)))
  loc_FC335C:     var_B0.SetFocus
  loc_FC336D:     Proc_82_54_FC3388 = 0
  loc_FC3373:     ' Referenced from: FC32A1
  loc_FC3373:   End If
  loc_FC3376: Next var_D4 'Integer
  loc_FC3380: Proc_82_54_FC3388 = &HFF
End Sub

Public Sub Proc_82_55_12CCF28
  'Data Table: 48CC30
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim unk_48CC57 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Field20
  Dim var_118 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_E8 As Variant
  Dim var_178 As Variant
  loc_12CC8B0: On Error Goto loc_12CCF22
  loc_12CC8C0: Set var_B0 = Me.FGrid
  loc_12CC8C6: var_B0.Rows = 1
  loc_12CC8D0: var_8A = 1
  loc_12CC8EE: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF LEFT JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " Order By SNo "
  loc_12CC8F7: unk_48CC57.Execute var_B8, var_C8, -1
  loc_12CC902: Set var_88 = var_B0
  loc_12CC926: If (var_88.RecordCount > 0) Then
  loc_12CC929:   ' Referenced from: 12CCE7E
  loc_12CC938:   If Not(var_88.EOF) Then
  loc_12CC93B:     var_9C = vbNullString
  loc_12CC945:     Set var_B0 = Me.FGrid
  loc_12CC95A:     Set var_D4 = Me.FGrid
  loc_12CC961:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12CC969:     var_F8 = CVar(CLng(1)) 'Long
  loc_12CC999:     var_118 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12CC9A0:     LateIdCallSt
  loc_12CC9EF:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(2)))) 'String
  loc_12CC9F6:     LateIdCallSt
  loc_12CCA41:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_12CCA48:     LateIdCallSt
  loc_12CCA93:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_12CCA9A:     LateIdCallSt
  loc_12CCAB0:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12CCAEC:     LateIdCallSt
  loc_12CCB26:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_D4, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_D4, var_118)), var_AC)
  loc_12CCB2D:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_12CCB35:     var_158 = CVar(CLng(6)) 'Long
  loc_12CCB6B:     var_178 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12CCB72:     LateIdCallSt
  loc_12CCBEF:     LateIdCallSt
  loc_12CCC2D:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12CCC34:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_12CCC3C:     var_158 = CVar(CLng(8)) 'Long
  loc_12CCC72:     var_178 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12CCC79:     LateIdCallSt
  loc_12CCCF6:     LateIdCallSt
  loc_12CCD45:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12CCD4C:     LateIdCallSt
  loc_12CCD97:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(9)))) 'String
  loc_12CCD9E:     LateIdCallSt
  loc_12CCDDF:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_12CCDE7:     var_158 = CVar(CLng(&HC)) 'Long
  loc_12CCE1D:     var_178 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_D4, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12CCE24:     LateIdCallSt
  loc_12CCE49:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12CCE51:     var_E8 = CVar(CLng(&H10)) 'Long
  loc_12CCE56:     var_108 = "Manual"
  loc_12CCE5F:     LateIdCallSt
  loc_12CCE69:     Set var_D4 = Nothing 
  loc_12CCE73:     var_8A = (var_8A + 1)
  loc_12CCE79:     var_88.MoveNext
  loc_12CCE7E:     GoTo loc_12CC929
  loc_12CCE81:   End If
  loc_12CCE94:   Me.FGrid.FixedRows = 1
  loc_12CCE9C: End If
  loc_12CCEA2: If (var_8A = 1) Then
  loc_12CCEB8:   Me.FGrid.Rows = 1
  loc_12CCED5:   var_118 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12CCEDD:   Set var_D8 = Me.FGrid
  loc_12CCEF9:   var_9C = 1
  loc_12CCF0C:   Me.FGrid.FixedRows = var_9C
  loc_12CCF14: End If
  loc_12CCF14: Call Proc_82_53_EBAACC(FGrid.DispID_10000, var_118, var_8A, var_D4, var_108, var_E8, var_9C)
  loc_12CCF1E: Set var_88 = Nothing
  loc_12CCF21: Exit Sub
  loc_12CCF22: ' Referenced from: 12CC8B0
  loc_12CCF22: Proc_6_60_E63754(var_D4, var_178, var_158)
  loc_12CCF27: Exit Sub
End Sub
