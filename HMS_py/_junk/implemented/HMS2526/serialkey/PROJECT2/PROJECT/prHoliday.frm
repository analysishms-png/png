VERSION 5.00
Begin VB.Form prHoliday
  Caption = "HoliDay Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "prHoliday.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7350
  ClientHeight = 2175
  BeginProperty Font
    Name = "MS Sans Serif"
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
    Width = 7350
    Height = 450
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 3180
    Top = 1905
    Width = 5805
    Height = 285
    TabIndex = 1
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
    ForeColor = &HFF0000&
    Left = 3180
    Top = 1590
    Width = 1425
    Height = 285
    TabIndex = 0
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 0
    Top = 3360
    Width = 2880
    Height = 255
    TabIndex = 7
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3375
    Top = 3360
    Width = 2790
    Height = 285
    TabIndex = 6
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
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
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 5
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
  Begin Label Label1
    Caption = "Remarks"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2280
    Top = 1920
    Width = 825
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
  Begin Label Label1
    Caption = "Date "
    Index = 0
    ForeColor = &HFF0000&
    Left = 2280
    Top = 1605
    Width = 495
    Height = 240
    TabIndex = 2
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

Attribute VB_Name = "prHoliday"


Private Sub TopCtrl1_UnknownEvent_A 'EAABF4
  'Data Table: 43503C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAAB68: On Error Goto loc_EAABEE
  loc_EAAB78: Me.LblUser.Caption = vbNullString
  loc_EAAB8D: Me.LblLDt.Caption = vbNullString
  loc_EAABB8: Call Proc_316_25_E7B4C4(Proc_5_1_100EC1C("ADD", Me))
  loc_EAABC3: Call Proc_316_23_EAE890(global_52)
  loc_EAABD3: Set var_88 = Me.Txt
  loc_EAABD9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAABE1: var_94.SetFocus
  loc_EAABED: Exit Sub
  loc_EAABEE: ' Referenced from: EAAB68
  loc_EAABEE: Proc_6_60_E63754(var_94)
  loc_EAABF3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA01D8
  'Data Table: 43503C
  loc_EA0160: On Error Goto loc_EA01D1
  loc_EA019A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EA01C0:   Call Proc_316_25_E7B4C4(Proc_5_1_100EC1C("INI", Me))
  loc_EA01CB:   Call Proc_316_24_1135C70(global_52)
  loc_EA01D0: End If
  loc_EA01D0: Exit Sub
  loc_EA01D1: ' Referenced from: EA0160
  loc_EA01D1: Proc_6_60_E63754()
  loc_EA01D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1441038
  'Data Table: 43503C
  Dim var_C0 As Variant
  Dim var_16C As Variant
  Dim var_110 As Variant
  Dim var_134 As String
  Dim unk_435049 As Connection15
  Dim var_158 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_AC As Fields15
  Dim var_B0 As Field20
  Dim var_E0 As Variant
  Dim var_A4 As Recordset15
  Dim var_154 As Variant
  Dim var_264 As Double
  Dim var_270 As Double
  Dim var_1C8 As Integer
  Dim var_1B4 As Variant
  Dim var_278 As Double
  Dim var_24C As Variant
  Dim var_25C As Variant
  loc_1440584: On Error Goto loc_1440FE9
  loc_1440595: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1440598:   Exit Sub
  loc_1440599: End If
  loc_14405A4: Set var_AC = Me.Txt
  loc_14405AA: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0))
  loc_14405BE: var_E0 = "MMMyyyy"
  loc_14405CE: var_F0 = Format(CVar(var_B0), var_E0)
  loc_14405D9: var_16C = 0
  loc_14405F7: var_110 = "Select count(*) from salary where mth_year='" & var_F0 
  loc_144060E: unk_435049.Execute CStr(var_110 & "'"), var_154, -1
  loc_1440616: var_158 = var_158.Fields
  loc_144061E: var_16C = var_15C.Item(var_15C)
  loc_1440626: var_170 = var_170.Value
  loc_1440655: If (var_180 > 0) Then
  loc_1440671:   MsgBox("Sorry! You Can't Delete This Record, Salary Already Created", &H40, var_E0, var_F0, var_110)
  loc_1440681:   Exit Sub
  loc_1440682: End If
  loc_144068D: var_E0 = "Delete Entry !"
  loc_14406B9: If (MsgBox("Are You Sure To Delete This ? ", &H114, var_E0, var_F0, var_110) = 6) Then
  loc_14406C5:   unk_435049.BeginTrans var_1A4
  loc_14406DB:   var_94 = Me.Bookmark 'Variant
  loc_14406FC:   Set var_AC = Me.Txt
  loc_1440702:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, "Select * from employee where joining_date<=", var_1B4, -1)
  loc_1440711:   Proc_6_7_F26918(var_E0, CVar(var_B0), var_170, var_180)
  loc_1440731:   Set var_158 = Me.Txt
  loc_1440737:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_15C, 1 & var_E0 & " and (Resign_date is null or resign_date>=")
  loc_1440746:   Proc_6_7_F26918(var_154, CVar(var_15C))
  loc_1440765:   unk_435049.Execute CStr(1 & var_154 & ")"), var_B0, 
  loc_1440770:   Set var_A8 = var_170
  loc_1440794:   ' Referenced from: 1440EDC
  loc_14407A6:   If Not(Me.Recordset15.EOF) Then
  loc_14407DE:     Set var_158 = Me.Txt
  loc_14407E4:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0))
  loc_1440832:     var_180 = "Select * from attendence where Emp_Code='" & Me.Recordset15.Fields.Item("Code").Value & "' and mth_Year='" & Format(CVar(var_15C), "MMMyyyy") 
  loc_1440849:     unk_435049.Execute CStr(var_180 & "'"), var_1B4, -1
  loc_1440854:     Set var_A4 = var_170
  loc_144088E:     If (var_A4.RecordCount > 0) Then
  loc_14408A8:       var_B0 = var_A4.Fields.Item("ATTN_STR")
  loc_14408CD:       Set var_AC = Me.Txt
  loc_14408D3:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0)
  loc_1440994:       If (Ucase(Format(CVar(var_B0), "DDD")) = Ucase(Left(Format(CVar(Proc_6_38_E69628(CVar(Me.Txt.Fields.Item("OffDay")), 1)), var_180), 3))) Then
  loc_14409A2:         Set var_AC = Me.Txt
  loc_14409A8:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, 1, 1)
  loc_14409DD:         var_264 = Val(CStr(Format(CVar(var_B0), "dd")))
  loc_1440A32:         Set var_1E0 = Me.Txt
  loc_1440A38:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1E4, 1)
  loc_1440A6D:         var_270 = Val(CStr(Format(CVar(var_1E4), "dd")))
  loc_1440A8B:         var_1D8 = Mid(CVar(var_A4.Fields.Item("ATTN_STR")), CLng(((CDbl(2) * var_270) - CDbl(1))), 2)
  loc_1440A9B:         Set var_1EC = Me.Txt
  loc_1440AA1:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1F0, var_270, 1)
  loc_1440AD6:         var_278 = Val(CStr(Format(CVar(var_1F0), "dd")))
  loc_1440AF0:         var_110 = Left(Proc_6_38_E69628(CVar(var_B0), var_A4.Fields, 1), CLng(((CDbl(2) * var_264) - CDbl(2))))
  loc_1440B23:         var_24C = CVar(Replace(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ATTN_STR")), var_264, 1, 1), CStr(var_1D8), "SS", CLng(((CDbl(2) * var_278) - CDbl(1))), 1, 1)) 'String
  loc_1440B26:         var_25C = (Ucase(Format(CVar(var_B0), "DDD")) + var_24C)
  loc_1440B2B:         var_A0 = CStr(var_25C)
  loc_1440B70:       Else
  loc_1440B7B:         Set var_AC = Me.Txt
  loc_1440B81:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, var_278, 1)
  loc_1440BB6:         var_264 = Val(CStr(Format(CVar(var_B0), "dd")))
  loc_1440BF3:         var_170 = var_A4.Fields
  loc_1440C0B:         Set var_1E0 = Me.Txt
  loc_1440C11:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1E4, 1)
  loc_1440C46:         var_270 = Val(CStr(Format(CVar(var_1E4), "dd")))
  loc_1440C49:         var_1C8 = 2
  loc_1440C64:         var_1D8 = Mid(CVar(var_170.Item("ATTN_STR")), CLng(((CDbl(2) * var_270) - CDbl(1))), var_1C8)
  loc_1440C74:         Set var_1EC = Me.Txt
  loc_1440C7A:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1F0, var_270, 1)
  loc_1440CAF:         var_278 = Val(CStr(Format(CVar(var_1F0), "dd")))
  loc_1440CC9:         var_110 = Left(var_A0, CLng(((CDbl(2) * var_264) - CDbl(2))))
  loc_1440CFC:         var_24C = CVar(Replace(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ATTN_STR")), var_264, 1, 1), CStr(var_1D8), "PP", CLng(((CDbl(2) * var_278) - CDbl(1))), 1, 1)) 'String
  loc_1440CFF:         var_25C = (Ucase(Format(CVar(var_B0), "DDD")) + var_24C)
  loc_1440D04:         var_A0 = CStr(var_25C)
  loc_1440D46:       End If
  loc_1440D51:       Set var_AC = Me.Txt
  loc_1440D57:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, var_278, 1, 1)
  loc_1440D6B:       var_E0 = "MMMyyyy"
  loc_1440DD4:       var_154 = CVar("Update Attendence set Attn_Str='" & var_A0 & "' Where mth_Year='") & Format(CVar(var_B0), var_E0) & "' And Emp_Code='" 
  loc_1440DDB:       var_1A0 = var_154 & Me.Txt.Fields.Item("Code").Value 
  loc_1440DF2:       unk_435049.Execute CStr(var_1A0 & "'"), var_1C8, -1
  loc_1440E20:     End If
  loc_1440E3D:     Set var_AC = Me.Txt
  loc_1440E43:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, "Delete From Attend Where V_Date=", var_1A0, -1, var_170, var_170)
  loc_1440E52:     Proc_6_7_F26918(var_E0, CVar(var_B0), 1, 1)
  loc_1440E63:     var_110 = 1 & var_E0 & " And Emp_Code='" 
  loc_1440EA1:     var_134 = CStr(var_110 & Me.Txt.Fields.Item("Code").Value & "'")
  loc_1440EAB:     unk_435049.Execute var_134, 1, 1
  loc_1440ED7:     Me.Recordset15.MoveNext
  loc_1440EDC:     GoTo loc_1440794
  loc_1440EDF:   End If
  loc_1440EF6:   var_AC = Me.Fields
  loc_1440F06:   var_C0 = CVar(var_AC.Item("SearchCode")) 'Address
  loc_1440F0D:   Proc_6_7_F26918(var_E0, var_C0)
  loc_1440F15:   var_F0 = "Delete From Holiday Where VDate=" & var_E0 
  loc_1440F3F:   unk_435049.Execute CStr(var_F0), var_C0, -1
  loc_1440F50:   unk_435049.CommitTrans
  loc_1440F60:   Me.Requery -1
  loc_1440F80:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1440F8D:     Me.Bookmark = var_94
  loc_1440F95:   Else
  loc_1440FA9:     If (Me.EOF = 0) Then
  loc_1440FB2:       Me.MoveLast
  loc_1440FB7:     End If
  loc_1440FB7:   End If
  loc_1440FB7:   Call Proc_316_24_1135C70(var_AC)
  loc_1440FD8:   Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_1440FE0: End If
  loc_1440FE5: Set var_A4 = Nothing
  loc_1440FE8: Exit Sub
  loc_1440FE9: ' Referenced from: 1440584
  loc_1440FEF: unk_435049.RollbackTrans
  loc_1440FFC: Set var_AC = Err()
  loc_1441002: Call 0.Method_arg_2C (var_134, 0)
  loc_1441023: MsgBox(CVar(var_134), &H10, " Deletion Message", var_F0, var_110)
  loc_1441036: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F14E38
  'Data Table: 43503C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F14D40: On Error Goto loc_F14E2F
  loc_F14D51: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F14D54:   Exit Sub
  loc_F14D55: End If
  loc_F14D78: Call Proc_316_25_E7B4C4(Proc_5_1_100EC1C("EDIT", Me))
  loc_F14D91: Set var_8C = Me.Txt
  loc_F14D97: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F14DAA: global_56 = var_94.Text
  loc_F14DC5: Set var_8C = Me.Txt
  loc_F14DCB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F14DD3: var_94.Enabled = False
  loc_F14DEA: Set var_8C = Me.Txt
  loc_F14DF0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F14DF8: var_94.SetFocus
  loc_F14E11: Me.LblUser.Caption = vbNullString
  loc_F14E26: Me.LblLDt.Caption = vbNullString
  loc_F14E2E: Exit Sub
  loc_F14E2F: ' Referenced from: F14D40
  loc_F14E2F: Proc_6_60_E63754(global_52)
  loc_F14E34: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C538
  'Data Table: 43503C
  loc_E1C52D: Me.Global.Unload Me
  loc_E1C535: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF2D1C
  'Data Table: 43503C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EF2C50: On Error Goto loc_EF2D16
  loc_EF2C6A: If (Me.RecordCount <= 0) Then
  loc_EF2C73:   var_B8 = "Information"
  loc_EF2C8E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF2C9E:   Exit Sub
  loc_EF2C9F: End If
  loc_EF2CA7: If (MemVar_1F953B0 = "S") Then
  loc_EF2CB1:   var_10C = "Select VDate as SearchCode,Convert(Varchar(11),vdate,103) as Holiday, convert(varchar(50),Remarks,103) as Remarks From Holiday where (LOGSITE_CODE='" & MemVar_1F95078
  loc_EF2CB8:   MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') Order by VDate"
  loc_EF2CC2: Else
  loc_EF2CCA:   If (MemVar_1F953B0 = "A") Then
  loc_EF2CDB:     MemVar_1F950E4 = "Select VDate as SearchCode,vdate as Holiday, Remarks From Holiday where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by VDate"
  loc_EF2CE2:   End If
  loc_EF2CE2: End If
  loc_EF2CE8: MemVar_1F95120 = Me
  loc_EF2CF5: Proc_6_126_F1C850("2000,2000", MemVar_1F950E4)
  loc_EF2D10: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF2D15: Exit Sub
  loc_EF2D16: ' Referenced from: EF2C50
  loc_EF2D16: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EF2D1B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E048
  'Data Table: 43503C
  loc_E3E038: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E040: Call Proc_316_24_1135C70(global_52)
  loc_E3E045: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C188
  'Data Table: 43503C
  Dim var_3B01 As Double
  loc_E3C178: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C180: Call Proc_316_24_1135C70(global_52)
  loc_E3C185: Exit Sub
  loc_E3C186: var_3B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DF28
  'Data Table: 43503C
  loc_E3DF18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DF20: Call Proc_316_24_1135C70(global_52)
  loc_E3DF25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C308
  'Data Table: 43503C
  loc_E3C2F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C300: Call Proc_316_24_1135C70(global_52)
  loc_E3C305: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10082C0
  'Data Table: 43503C
  Dim Me As Recordset15
  Dim unk_435049 As Connection15
  Dim var_CC As String
  Dim var_D2 As Integer
  Dim var_B4 As Variant
  loc_10080C0: On Error Goto loc_10082B7
  loc_10080CC: var_A4 = Me.RecordCount
  loc_10080DA: If (var_A4 <= 0) Then
  loc_10080DD:   Exit Sub
  loc_10080DE: End If
  loc_10080E1: var_88 = "Select H.*, H.VDate as SearchCode From Holiday H Order by VDate"
  loc_10080EC: If (var_88 = vbNullString) Then
  loc_10080EF:   Exit Sub
  loc_10080F0: End If
  loc_1008106: unk_435049.Execute var_88, var_C4, -1
  loc_1008130: Set var_C8 = var_C8 
  loc_100813C: var_D2 = CreateFieldDefFile(var_C8, MemVar_1F950B4 & "\Holiday.ttx")
  loc_1008146: Set var_9C = var_C8
  loc_100814C: var_B4 = CVar(var_D2) 'Integer
  loc_100814F: var_98 = var_B4 'Variant
  loc_100816B: var_CC = MemVar_1F950B4 & "\Holiday.RPT"
  loc_1008174: Call 0.Method_arg_1C (var_CC, var_B4, var_C8)
  loc_100817F: MemVar_1F951E8 = var_C8
  loc_100819A: Call 0.Method_arg_90 (var_C8, var_A4, var_9E, 1)
  loc_10081A2: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_10081AE: For var_D6 =  To CInt(var_A4): var_C8 = var_D6 'Integer
  loc_10081C7:   Call 0.Method_arg_90 (var_C8, CLng(var_9E))
  loc_10081CF:   Call 0.Method_arg_20 (var_DC)
  loc_10081D7:   Call 0.Method_arg_30 (var_CC)
  loc_10081F1:   If (var_CC = "Title") Then
  loc_1008207:     Call 0.Method_arg_90 (var_C8, CLng(var_9E))
  loc_100820F:     Call 0.Method_arg_20 (var_DC)
  loc_1008217:     Call 0.Method_arg_38 ("'Holiday List'")
  loc_1008223:   End If
  loc_1008226: Next var_D6 'Integer
  loc_1008244: Call 0.Method_arg_64 (var_C8, CVar(var_9C))
  loc_100824C: Call 0.Method_arg_2C (var_F0)
  loc_100825A: Call 0.Method_arg_150 (var_100)
  loc_1008265: Call 0.Method_arg_50 (var_CC)
  loc_100826F: Set var_DC = Nothing
  loc_1008289: Set var_C8 = MemVar_1F951E8 
  loc_1008295: Proc_6_99_1484404(var_C8, 0, var_CC)
  loc_10082A0: MemVar_1F951E8 = var_C8
  loc_10082B3: Set var_9C = Nothing
  loc_10082B6: Exit Sub
  loc_10082B7: ' Referenced from: 10080C0
  loc_10082B7: Proc_6_60_E63754(&HFF)
  loc_10082BC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1492A20
  'Data Table: 43503C
  Dim var_8A As Integer
  Dim unk_435049 As Connection15
  Dim var_B4 As String
  Dim var_EC As String
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_A8 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_B0 As Fields15
  Dim var_140 As Variant
  Dim var_260 As Double
  Dim var_194 As Fields15
  Dim var_1E4 As String
  Dim var_26C As Double
  Dim var_1C4 As Variant
  Dim var_190 As Variant
  Dim var_274 As Double
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_120 As Variant
  Dim var_1D4 As Variant
  Dim Me As Recordset15
  loc_1491E0C: On Error Goto loc_1492A02
  loc_1491E1A: Set var_A8 = Me.Txt
  loc_1491E20: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1491E49: If (Proc_6_27_EA61EC(var_AC, "Date") = 0) Then
  loc_1491E4C:   Exit Sub
  loc_1491E4D: End If
  loc_1491E58: Set var_A8 = Me.Txt
  loc_1491E5E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1491E87: If (Proc_6_27_EA61EC(var_AC, "Remarks") = 0) Then
  loc_1491E8A:   Exit Sub
  loc_1491E8B: End If
  loc_1491E8E: Call Proc_316_22_F8C530(var_B6)
  loc_1491E99: If (var_B6 = &HFF) Then
  loc_1491E9C:   Exit Sub
  loc_1491E9D: End If
  loc_1491EAB: unk_435049.BeginTrans var_BC
  loc_1491EB4: Set var_A8 = Me.TopCtrl1
  loc_1491EBA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(&HFF)
  loc_1491ED3: If (CStr(var_AC) = "Add") Then
  loc_1491EF3:   Set var_A8 = Me.Txt
  loc_1491EF9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, "Select * from employee where joining_date<=")
  loc_1491F08:   Proc_6_7_F26918(var_DC, CVar(var_AC), var_190)
  loc_1491F10:   var_FC = -1 & var_DC 
  loc_1491F28:   Set var_B0 = Me.Txt
  loc_1491F2E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1491F3D:   Proc_6_7_F26918(var_140, CVar(var_120))
  loc_1491F5C:   unk_435049.Execute CStr(var_FC & " and (Resign_date is null or resign_date>=" & var_140 & ")"), var_194, 
  loc_1491F67:   Set var_9C = var_194
  loc_1491F8B:   ' Referenced from: 14926E5
  loc_1491F9D:   If Not(Me.Recordset15.EOF) Then
  loc_1491FD5:     Set var_B0 = Me.Txt
  loc_1491FDB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1492029:     var_150 = "Select * from attendence where Emp_Code='" & Me.Recordset15.Fields.Item("Code").Value & "' and mth_Year='" & Format(CVar(var_120), "MMMyyyy") 
  loc_1492040:     unk_435049.Execute CStr(var_150 & "'"), var_190, -1
  loc_149204B:     Set var_A0 = var_194
  loc_1492088:     If (Me.Recordset15.RecordCount > 0) Then
  loc_14920A5:       var_AC = Me.Recordset15.Fields.Item("ATTN_STR")
  loc_14920CA:       Set var_A8 = Me.Txt
  loc_14920D0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1492191:       If (Ucase(Format(CVar(var_AC), "DDD")) = Ucase(Left(Format(CVar(Proc_6_38_E69628(CVar(Me.Txt.Fields.Item("OffDay")), 1)), var_150), 3))) Then
  loc_149219F:         Set var_A8 = Me.Txt
  loc_14921A5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, 1, 1)
  loc_14921DA:         var_260 = Val(CStr(Format(CVar(var_AC), "dd")))
  loc_1492235:         Set var_1DC = Me.Txt
  loc_149223B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, 1)
  loc_1492270:         var_26C = Val(CStr(Format(CVar(var_1E0), "dd")))
  loc_149228E:         var_1D4 = Mid(CVar(Me.Recordset15.Fields.Item("ATTN_STR")), CLng(((CDbl(2) * var_26C) - CDbl(1))), 2)
  loc_149229E:         Set var_1E8 = Me.Txt
  loc_14922A4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_26C, 1)
  loc_14922D9:         var_274 = Val(CStr(Format(CVar(var_1EC), "dd")))
  loc_14922F3:         var_11C = Left(Proc_6_38_E69628(CVar(var_AC), Me.Recordset15.Fields, 1), CLng(((CDbl(2) * var_260) - CDbl(2))))
  loc_1492326:         var_248 = CVar(Replace(Proc_6_38_E69628(CVar(Me.Txt.Fields.Item("ATTN_STR")), var_260, 1, 1), CStr(var_1D4), "SS", CLng(((CDbl(2) * var_274) - CDbl(1))), 1, 1)) 'String
  loc_1492329:         var_258 = (Ucase(Format(CVar(var_AC), "DDD")) + var_248)
  loc_149232E:         var_A4 = CStr(var_258)
  loc_1492373:       Else
  loc_149237E:         Set var_A8 = Me.Txt
  loc_1492384:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_274, 1)
  loc_14923B9:         var_260 = Val(CStr(Format(CVar(var_AC), "dd")))
  loc_14923FC:         var_194 = Me.Recordset15.Fields
  loc_1492414:         Set var_1DC = Me.Txt
  loc_149241A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, 1)
  loc_149244F:         var_26C = Val(CStr(Format(CVar(var_1E0), "dd")))
  loc_1492452:         var_1C4 = 2
  loc_149246D:         var_1D4 = Mid(CVar(var_194.Item("ATTN_STR")), CLng(((CDbl(2) * var_26C) - CDbl(1))), var_1C4)
  loc_149247D:         Set var_1E8 = Me.Txt
  loc_1492483:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_26C, 1)
  loc_14924A7:         var_22C = Format(CVar(var_1EC), "dd")
  loc_14924B8:         var_274 = Val(CStr(var_22C))
  loc_14924D2:         var_11C = Left(var_A4, CLng(((CDbl(2) * var_260) - CDbl(2))))
  loc_1492505:         var_248 = CVar(Replace(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ATTN_STR")), var_260, 1, 1), CStr(var_1D4), "HH", CLng(((CDbl(2) * var_274) - CDbl(1))), 1, 1)) 'String
  loc_1492508:         var_258 = (Ucase(Format(CVar(var_AC), "DDD")) + var_248)
  loc_149250D:         var_A4 = CStr(var_258)
  loc_149254F:       End If
  loc_149255A:       Set var_A8 = Me.Txt
  loc_1492560:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_274, 1, 1)
  loc_1492574:       var_DC = "MMMyyyy"
  loc_14925DD:       var_140 = CVar("Update Attendence set Attn_Str='" & var_A4 & "' Where mth_Year='") & Format(CVar(var_AC), var_DC) & "' And Emp_Code='" 
  loc_14925E4:       var_170 = var_140 & Me.Txt.Fields.Item("Code").Value 
  loc_14925F1:       var_1E4 = CStr(var_170 & "'")
  loc_14925FB:       unk_435049.Execute var_1E4, var_1C4, -1
  loc_1492629:     End If
  loc_1492646:     Set var_A8 = Me.Txt
  loc_149264C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, "Delete From Attend Where V_Date=", var_170, -1, var_194, var_194)
  loc_149265B:     Proc_6_7_F26918(var_DC, CVar(var_AC), 1, 1)
  loc_149268D:     var_120 = Me.Txt.Fields.Item("Code")
  loc_14926B4:     unk_435049.Execute CStr(1 & var_DC & " And Emp_Code='" & var_120.Value & "'"), 1, 1
  loc_14926E0:     Me.Recordset15.MoveNext
  loc_14926E5:     GoTo loc_1491F8B
  loc_14926E8:   End If
  loc_14926EF:   var_B4 = "Insert Into Holiday(" & "VDate,Remarks,sITE_cODE,U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_1492704:   Set var_A8 = Me.Txt
  loc_149270A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1492712:   var_CC = CVar(var_AC) 'Address
  loc_1492719:   Proc_6_7_F26918(var_DC, var_CC)
  loc_149272A:   var_130 = CVar(var_B4 & " Values(") & var_DC & ",'" 
  loc_149273C:   Set var_B0 = Me.Txt
  loc_1492742:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, var_1E4)
  loc_149274A:   var_130 = var_120.Text
  loc_1492768:   var_190 = var_120 & CVar(var_1E4) & "','" & CVar(MemVar_1F95070) 
  loc_1492793:   Proc_6_8_EB1974(var_22C)
  loc_14927BC:   var_98 = CStr(CVar(Proc_6_14_EF402C(var_190 & "','" & CVar(MemVar_1F950C8) & "',")) & var_22C & ",'A','" & CVar(MemVar_1F95078) & "')")
  loc_1492808:   unk_435049.Execute var_98, var_CC, -1
  loc_1492816: Else
  loc_149282D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4)
  loc_1492835:   "Update Holiday Set Remarks='" = var_AC.Text
  loc_149285B:   var_CC = CVar(Proc_6_14_EF402C(CVar(Me.Txt & var_B4 & "',U_Name='" & MemVar_1F950C8 & "',U_EntDt="))) 'String
  loc_1492861:   Proc_6_8_EB1974(var_DC)
  loc_149286D:   var_EC = ",U_AE='E',Site_Code='"
  loc_1492894:   Set var_B0 = Me.Txt
  loc_149289A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_14928A9:   Proc_6_7_F26918(var_190, CVar(var_120))
  loc_1492905:   unk_435049.Execute CStr(var_CC & var_DC & var_EC & CVar(MemVar_1F95070) & "' Where VDate=" & var_190 & vbNullString), var_CC, -1
  loc_1492910: End If
  loc_1492916: unk_435049.CommitTrans
  loc_1492929: Set var_A8 = Me.Txt
  loc_149292F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_149294B: var_8A = 0
  loc_1492959: Me.Requery -1
  loc_1492983: Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1492993: Set var_A8 = Me.TopCtrl1
  loc_1492999: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_EC)
  loc_14929B2: If (CStr(var_8A) = "Add") Then
  loc_14929B5:   Call TopCtrl1_UnknownEvent_A()
  loc_14929BA:   Exit Sub
  loc_14929BB: End If
  loc_14929C7: Set var_A8 = Me
  loc_14929DE: Call Proc_316_25_E7B4C4(Proc_5_1_100EC1C("INI", var_A8), global_52)
  loc_14929EE: Set var_88 = Nothing
  loc_14929F6: Set var_A0 = Nothing
  loc_14929FE: Set var_9C = Nothing
  loc_1492A01: Exit Sub
  loc_1492A02: ' Referenced from: 1491E0C
  loc_1492A08: If (var_8A = &HFF) Then
  loc_1492A11:   unk_435049.RollbackTrans
  loc_1492A16: End If
  loc_1492A16: Proc_6_60_E63754(var_A8)
  loc_1492A1B: Exit Sub
  loc_1492A1C: Exit Sub
End Sub

Private Sub Form_Load() 'F1AF98
  'Data Table: 43503C
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F1AE98: On Error Goto loc_F1AF92
  loc_F1AEAA: Me.LblUser.Left = CDbl(13500)
  loc_F1AEC1: Me.LblUser.Top = CDbl(7800)
  loc_F1AED8: Me.LblLDt.Top = CDbl(8160)
  loc_F1AEEF: Me.LblLDt.Left = CDbl(13500)
  loc_F1AEFE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F1AF1F: Me.Recordset15.CursorLocation = 3
  loc_F1AF49: var_A0 = CVar("Select H.*, H.VDate as SearchCode From Holiday H where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Vdate") 'String
  loc_F1AF53: Me.Open var_A0, CVar(MemVar_1F95044), 2
  loc_F1AF81: Call Proc_316_25_E7B4C4(Proc_5_1_100EC1C("INI", Me, New), 3)
  loc_F1AF8C: Call Proc_316_24_1135C70(-1)
  loc_F1AF91: Exit Sub
  loc_F1AF92: ' Referenced from: F1AE98
  loc_F1AF92: Proc_6_60_E63754()
  loc_F1AF97: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2358
  'Data Table: 43503C
  Dim var_8C As Label
  loc_ED22B6: Call 0.Method_arg_50 (var_88)
  loc_ED22C8: Me.LblFormCaption.Caption = var_88
  loc_ED22E1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED22ED: Set var_A0 = Me.TopCtrl1
  loc_ED22F3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED2300: Set var_8C = Me.TopCtrl1
  loc_ED2306: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED2320: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED233B: Call 0.Method_arg_100 (var_B8)
  loc_ED234D: Me.LblFormCaption.Width = var_B8
  loc_ED2355: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0C6B4
  'Data Table: 43503C
  loc_E0C6AB: Set global_52 = Nothing
  loc_E0C6B2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F07330
  'Data Table: 43503C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim KeyCode As Integer
  loc_F07244: On Error Goto loc_F07329
  loc_F0724A: var_86 = KeyCode
  loc_F07257: If Not (var_86 = CInt(&HD)) Then
  loc_F07264:   If Not (var_86 = CInt(&H28)) Then
  loc_F07271:     If (var_86 = CInt(&H26)) Then
  loc_F07274:     End If
  loc_F07274:   End If
  loc_F07277:   var_88 = KeyCode
  loc_F07284:   If Not (var_88 = CInt(&H28)) Then
  loc_F07291:     If (var_88 = CInt(&H26)) Then
  loc_F07294:     End If
  loc_F07294:   End If
  loc_F0729A:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_F072A9:   If TypeOf var_8C Is arg_1 Then
  loc_F072B2:     Call 0.Method_arg_1E8 (var_8C)
  loc_F072BA:     var_9C = var_8C.index
  loc_F072CD:     Call Txt_Validate(CInt(var_9C))
  loc_F072D8:   End If
  loc_F072F5:   If (Proc_6_106_10BD9E0(Me, KeyCode, Shift) = &HFF) Then
  loc_F072FF:     Call Proc_316_27_ED2260(CInt(1), 0)
  loc_F07304:   End If
  loc_F07306:   KeyCode = 0
  loc_F0730C: Else
  loc_F07320:   Proc_6_88_FE8F6C(Me, KeyCode, Shift, 0)
  loc_F07328: End If
  loc_F07328: Exit Sub
  loc_F07329: ' Referenced from: F07244
  loc_F07329: Proc_6_60_E63754(KeyCode, var_9C)
  loc_F0732E: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E53D74
  'Data Table: 43503C
  loc_E53D4E: Set var_88 = Me.Txt
  loc_E53D54: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E53D62: Proc_6_74_E23240(var_8C)
  loc_E53D6E: Call Proc_316_26_DFE3C8(var_8C)
  loc_E53D73: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E0A8E4
  'Data Table: 43503C
  loc_E0A8DA: If (CLng(Shift) = &H1B) Then
  loc_E0A8DD:   Call Proc_316_26_DFE3C8()
  loc_E0A8E2:   Exit Sub
  loc_E0A8E3: End If
  loc_E0A8E3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E243F4
  'Data Table: 43503C
  loc_E243DA: Proc_6_133_E7FB08(var_94)
  loc_E243EC: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E243F1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E486CC
  'Data Table: 43503C
  loc_E486AA: Set var_88 = Me.Txt
  loc_E486B0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E486BE: Proc_6_73_E23294(var_8C)
  loc_E486CA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FD01F4
  'Data Table: 43503C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_A0 As TextBox
  loc_FD0033: var_86 = Cancel
  loc_FD003E: If (var_86 = CInt(0)) Then
  loc_FD004C:   Set var_8C = Me.Txt
  loc_FD0052:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FD005A:   var_98 = "Date"
  loc_FD007B:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_FD0088:     Set var_8C = Me.Txt
  loc_FD008E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FD0096:     var_90.SetFocus
  loc_FD00A4:     arg_10 = &HFF
  loc_FD00A7:     Exit Sub
  loc_FD00A8:   End If
  loc_FD00B6:   Set var_8C = Me.Txt
  loc_FD00BC:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_FD00C4:   arg_10 = var_90.Text
  loc_FD00DB:   If (var_98 = vbNullString) Then
  loc_FD00F1:     Set var_8C = Me.Txt
  loc_FD00F7:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FD00FF:     var_90.Text = CStr(MemVar_1F950EC)
  loc_FD0111:   Else
  loc_FD011C:     Set var_8C = Me.Txt
  loc_FD0122:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FD0143:     Set var_9C = Me.Txt
  loc_FD0149:     Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_FD0151:     var_A0.Text = Proc_6_33_15125B8(var_90)
  loc_FD0164:   End If
  loc_FD0167:   Call Proc_316_22_F8C530(var_A2)
  loc_FD0172:   If (var_A2 = &HFF) Then
  loc_FD0177:     arg_10 = &HFF
  loc_FD017A:     Exit Sub
  loc_FD017B:   End If
  loc_FD017E: Else
  loc_FD0186:   If (var_86 = CInt(1)) Then
  loc_FD0194:     Set var_8C = Me.Txt
  loc_FD019A:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD01C3:     If (Proc_6_27_EA61EC(var_90, "Remarks") = 0) Then
  loc_FD01D0:       Set var_8C = Me.Txt
  loc_FD01D6:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FD01DE:       var_90.SetFocus
  loc_FD01EC:       arg_10 = &HFF
  loc_FD01EF:       Exit Sub
  loc_FD01F0:     End If
  loc_FD01F0:   End If
  loc_FD01F0: End If
  loc_FD01F0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94F78
  'Data Table: 43503C
  Dim Me As Recordset15
  loc_E94F06: On Error Goto loc_E94F6F
  loc_E94F0F: Me.MoveFirst
  loc_E94F39: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94F61: Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_E94F69: Call Proc_316_24_1135C70(0)
  loc_E94F6E: Exit Sub
  loc_E94F6F: ' Referenced from: E94F06
  loc_E94F6F: Proc_6_60_E63754(var_A0)
  loc_E94F74: Exit Sub
End Sub

Public Sub Proc_316_22_F8C530
  'Data Table: 43503C
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim unk_435049 As Connection15
  Dim var_FC As Recordset15
  Dim var_100 As Fields15
  Dim var_114 As Field20
  Dim var_A4 As TextBox
  loc_F8C3F8: Set var_8C = Me.TopCtrl1
  loc_F8C3FE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F8C417: If (CStr() = "Add") Then
  loc_F8C444:   var_C4 = CVar("Select Count(*) From Holiday Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and VDate=") 'String
  loc_F8C452:   Set var_8C = Me.Txt
  loc_F8C458:   Call 0.Method_Proc_316_22_F8C5300 (CInt(0), var_A4, var_C4, var_F8, -1)
  loc_F8C467:   Proc_6_7_F26918(var_B4, CVar(var_A4), var_FC, var_100)
  loc_F8C46F:   var_D4 = 0 & var_B4 
  loc_F8C47D:   unk_435049.Execute CStr(var_D4), var_114, var_124
  loc_F8C485:    = var_FC.Fields
  loc_F8C48D:    = var_100.Item()
  loc_F8C495:    = var_114.Value
  loc_F8C4C6:   If (var_124 > 0) Then
  loc_F8C4EA:     MsgBox("Duplicate Holiday ", &H40, "Information", var_C4, var_D4)
  loc_F8C505:     Set var_8C = Me.Txt
  loc_F8C50B:     Call 0.Method_Proc_316_22_F8C5300 (CInt(0))
  loc_F8C513:     var_A4.SetFocus
  loc_F8C524:     Proc_316_22_F8C530 = &HFF
  loc_F8C52A:   End If
  loc_F8C52A: End If
  loc_F8C52A: Proc_316_22_F8C530 = var_A4
End Sub

Public Sub Proc_316_23_EAE890
  'Data Table: 43503C
  Dim var_98 As TextBox
  loc_EAE802: global_56 = vbNullString
  loc_EAE814: Set var_8C = Me.Txt
  loc_EAE81A: Call 0.Method_Proc_316_23_EAE890C (var_8E, var_86)
  loc_EAE82A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAE840:   Set var_8C = Me.Txt
  loc_EAE846:   Call 0.Method_Proc_316_23_EAE8900 (CInt(var_86), var_98)
  loc_EAE84E:   var_98.Text = vbNullString
  loc_EAE86A:   Set var_8C = Me.Txt
  loc_EAE870:   Call 0.Method_Proc_316_23_EAE8900 (CInt(var_86), var_98)
  loc_EAE878:   var_98.Tag = vbNullString
  loc_EAE887: Next var_92 'Byte
  loc_EAE88D: Exit Sub
End Sub

Public Sub Proc_316_24_1135C70
  'Data Table: 43503C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_A4 As Fields15
  loc_113592C: On Error Goto loc_1135C69
  loc_1135946: If (Me.RecordCount > 0) Then
  loc_1135985:   Set var_A4 = Me.Txt
  loc_113598B:   Call 0.Method_Proc_316_24_1135C700 (CInt(0), var_A8)
  loc_1135993:   var_A8.Text = CStr(Me.Fields.Item("VDate").Value)
  loc_11359E5:   Set var_A4 = Me.Txt
  loc_11359EB:   Call 0.Method_Proc_316_24_1135C700 (CInt(1), var_A8)
  loc_11359F3:   var_A8.Text = CStr(Me.Fields.Item("Remarks").Value)
  loc_1135AB2:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1135AFA:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_1135BDB:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_1135C23:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_1135C5E: Else
  loc_1135C5E:   Call Proc_316_23_EAE890()
  loc_1135C63: End If
  loc_1135C63: Call Proc_316_26_DFE3C8()
  loc_1135C68: Exit Sub
  loc_1135C69: ' Referenced from: 113592C
  loc_1135C69: Proc_6_60_E63754()
  loc_1135C6E: Exit Sub
End Sub

Public Sub Proc_316_25_E7B4C4(arg_C) 'E7B4C4
  'Data Table: 43503C
  Dim var_98 As TextBox
  loc_E7B472: Set var_8C = Me.Txt
  loc_E7B478: Call 0.Method_Proc_316_25_E7B4C4C (var_8E, var_86)
  loc_E7B488: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B49E:   Set var_8C = Me.Txt
  loc_E7B4A4:   Call 0.Method_Proc_316_25_E7B4C40 (CInt(var_86), var_98)
  loc_E7B4AC:   var_98.Enabled = arg_C
  loc_E7B4BB: Next var_92 'Byte
  loc_E7B4C1: Exit Sub
End Sub

Public Sub Proc_316_26_DFE3C8
  'Data Table: 43503C
  loc_DFE3C4: Exit Sub
End Sub

Public Sub Proc_316_27_ED2260
  'Data Table: 43503C
  loc_ED21C0: Call Proc_316_26_DFE3C8()
  loc_ED21D0: Set var_88 = Me.Txt
  loc_ED21D6: Call 0.Method_Proc_316_27_ED22600 (CInt(0))
  loc_ED21FF: If (Proc_6_27_EA61EC(var_8C, "Date") = 0) Then
  loc_ED2202:   Exit Sub
  loc_ED2203: End If
  loc_ED223A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED223D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED2245: Else
  loc_ED224B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED2253:   Call var_88.SetFocus
  loc_ED225C: End If
  loc_ED225C: Exit Sub
End Sub
