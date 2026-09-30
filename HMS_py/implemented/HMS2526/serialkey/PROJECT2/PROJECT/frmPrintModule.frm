VERSION 5.00
Begin VB.Form frmPrintModule
  Caption = "Printing Parameters"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 7605
  ClientHeight = 3045
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7605
    Height = 450
    TabIndex = 11
  End
  Begin MSFlexGrid FGPoint
    Left = 8070
    Top = 1695
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGRest
    Left = 8985
    Top = 2160
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGHelp
    Left = 8145
    Top = 1215
    Width = 6720
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4005
    Top = 3105
    Width = 4950
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4005
    Top = 2790
    Width = 1035
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 10
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4005
    Top = 3420
    Width = 4965
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
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
  Begin Label Label1
    Caption = "(F)OM / (P)OS"
    Index = 16
    ForeColor = &HC00000&
    Left = 5055
    Top = 2805
    Width = 1275
    Height = 240
    TabIndex = 6
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
  Begin Label LblName
    Caption = "Module Description"
    Index = 1
    ForeColor = &HC00000&
    Left = 1935
    Top = 3450
    Width = 1830
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
  Begin Label LblName
    Caption = "Department Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1935
    Top = 3120
    Width = 1725
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
  Begin Label LblName
    Caption = "Module Type"
    Index = 2
    ForeColor = &HC00000&
    Left = 1935
    Top = 2775
    Width = 1230
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
End

Attribute VB_Name = "frmPrintModule"


Private Sub TopCtrl1_UnknownEvent_A 'E7EDEC
  'Data Table: 44D8A4
  Dim var_94 As TextBox
  loc_E7ED88: On Error Goto loc_E7EDE4
  loc_E7EDAE: Call Proc_99_29_E7D274(Proc_5_1_100EC1C("ADD", Me))
  loc_E7EDB9: Call Proc_99_30_EB3558(global_52)
  loc_E7EDC9: Set var_8C = Me.Txt
  loc_E7EDCF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_E7EDD7: var_94.SetFocus
  loc_E7EDE3: Exit Sub
  loc_E7EDE4: ' Referenced from: E7ED88
  loc_E7EDE4: Proc_6_60_E63754(var_94)
  loc_E7EDE9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC00FC
  'Data Table: 44D8A4
  loc_EC0064: On Error Goto loc_EC00F4
  loc_EC009E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC00AD:   Set var_110 = Me
  loc_EC00C4:   Call Proc_99_29_E7D274(Proc_5_1_100EC1C("INI", var_110))
  loc_EC00CF:   Call Proc_99_33_EBA838(global_52)
  loc_EC00D4:   Call Proc_99_31_10473DC()
  loc_EC00DC: Else
  loc_EC00E2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC00EA:   Call var_110.SetFocus
  loc_EC00F3: End If
  loc_EC00F3: Exit Sub
  loc_EC00F4: ' Referenced from: EC0064
  loc_EC00F4: Proc_6_60_E63754()
  loc_EC00F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1125560
  'Data Table: 44D8A4
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim var_B0 As String
  Dim unk_44D8C0 As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_A8 As String
  Dim Me As Recordset15
  Dim var_D4 As Variant
  loc_1125218: On Error Goto loc_1125512
  loc_1125247: Set var_A0 = Me.Txt
  loc_112524D: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A4, var_A8, "Select Code From PrintMast Where SITE_CODE='" & MemVar_1F95078 & "' AND Code='")
  loc_1125255: var_D4 = var_A4.Tag
  loc_112525E: var_B0 = -1 & var_A8
  loc_112526E: unk_44D8C0.Execute var_B0 & "'", var_D8, 
  loc_1125279: Set var_98 = var_D8
  loc_112529B: var_DC = var_98.RecordCount
  loc_11252A9: If (var_DC > 0) Then
  loc_11252F4:   var_FC = CVar("Select Count(*) from PrinterSetup Where SITE_CODE='" & MemVar_1F95078 & "' AND ModCode='") & var_98.Fields.Item(0).Value 
  loc_11252FD:   var_11C = var_FC & "'" 
  loc_112530B:   unk_44D8C0.Execute CStr(var_11C), var_13C, -1
  loc_1125372:   If (var_D8.Fields.Item(0).Value > 0) Then
  loc_1125396:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_FC, var_11C)
  loc_11253A6:     Exit Sub
  loc_11253A7:   End If
  loc_11253A7: End If
  loc_11253DE: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_11253EA:   unk_44D8C0.BeginTrans var_DC
  loc_1125400:   var_94 = Me.Bookmark 'Variant
  loc_112544C:   var_FC = "Delete From PrintMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1125450:   var_9C = CStr(var_FC)
  loc_112545A:   unk_44D8C0.Execute var_9C, var_11C, -1
  loc_112547C:   unk_44D8C0.CommitTrans
  loc_1125481:   Call Proc_99_28_11E1070(var_D8)
  loc_1125491:   Me.Requery -1
  loc_11254B1:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11254BE:     Me.Bookmark = var_94
  loc_11254C6:   Else
  loc_11254DA:     If (Me.EOF = 0) Then
  loc_11254E3:       Me.MoveLast
  loc_11254E8:     End If
  loc_11254E8:   End If
  loc_11254E8:   Call Proc_99_31_10473DC(var_D8)
  loc_1125509:   Proc_5_0_1107AD0(&HFF, Me)
  loc_1125511: End If
  loc_1125511: Exit Sub
  loc_1125512: ' Referenced from: 1125218
  loc_1125518: unk_44D8C0.RollbackTrans
  loc_1125525: Set var_A0 = Err()
  loc_112552B: Call 0.Method_arg_2C (var_9C, global_52)
  loc_112554C: MsgBox(CVar(var_9C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_112555F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EDF19C
  'Data Table: 44D8A4
  Dim var_94 As TextBox
  loc_EDF0E0: On Error Goto loc_EDF193
  loc_EDF106: Call Proc_99_29_E7D274(Proc_5_1_100EC1C("EDIT", Me))
  loc_EDF11F: Set var_8C = Me.Txt
  loc_EDF125: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EDF138: global_96 = var_94.Text
  loc_EDF153: Set var_8C = Me.Txt
  loc_EDF159: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EDF161: var_94.Enabled = False
  loc_EDF178: Set var_8C = Me.Txt
  loc_EDF17E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EDF186: var_94.SetFocus
  loc_EDF192: Exit Sub
  loc_EDF193: ' Referenced from: EDF0E0
  loc_EDF193: Proc_6_60_E63754(global_52)
  loc_EDF198: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E177BC
  'Data Table: 44D8A4
  loc_E177B1: Me.Global.Unload Me
  loc_E177B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F243F8
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_10C As Variant
  loc_F242F8: On Error Goto loc_F24393
  loc_F24304: var_88 = Me.RecordCount
  loc_F24312: If (var_88 <= 0) Then
  loc_F24336:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F24346:   Exit Sub
  loc_F24347: End If
  loc_F2434D: MemVar_1F95120 = Me
  loc_F24361: FAFind.FindRecSet = global_52
  loc_F2436C: var_110 = "700,4200,800,0,0,0,2000"
  loc_F24372: Proc_6_126_F1C850(var_110)
  loc_F2438D: Call 0.Method_arg_2B0 (1)
  loc_F24392: Exit Sub
  loc_F24393: ' Referenced from: F242F8
  loc_F2439B: Set var_10C = Err()
  loc_F243A1: Call 0.Method_arg_1C (var_88)
  loc_F243B2: If (var_88 <> 0) Then
  loc_F243BD:   Set var_10C = Err()
  loc_F243C3:   Call 0.Method_arg_2C (var_110)
  loc_F243E4:   MsgBox(CVar(var_110), &H40, "Validation", var_E8, var_108)
  loc_F243F7: End If
  loc_F243F7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E320A8
  'Data Table: 44D8A4
  loc_E32098: Proc_5_0_1107AD0(&HFF, Me)
  loc_E320A0: Call Proc_99_31_10473DC(global_52)
  loc_E320A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31E08
  'Data Table: 44D8A4
  loc_E31DF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31E00: Call Proc_99_31_10473DC(global_52)
  loc_E31E05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31E68
  'Data Table: 44D8A4
  loc_E31E58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31E60: Call Proc_99_31_10473DC(global_52)
  loc_E31E65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31EC8
  'Data Table: 44D8A4
  loc_E31EB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31EC0: Call Proc_99_31_10473DC(global_52)
  loc_E31EC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2333C
  'Data Table: 44D8A4
  Dim Me As Recordset15
  loc_E23323: Me.Requery -1
  loc_E23333: Me.Requery -1
  loc_E23338: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '126C6C4
  'Data Table: 44D8A4
  Dim var_AC As String
  Dim var_E0 As Variant
  Dim unk_44D8C0 As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_D0 As String
  Dim Me As Recordset15
  Dim var_F8 As String
  Dim var_10C As Variant
  Dim var_C0 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_130 As TextBox
  Dim var_154 As Variant
  Dim var_1BC As Variant
  Dim var_18C As Variant
  Dim var_FC As String
  Dim arg_DFF As Double
  loc_126C190: On Error Goto loc_126C66F
  loc_126C197: var_86 = CByte(0) 'Byte
  loc_126C1A6: Set var_A0 = Me.Txt
  loc_126C1AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_126C1D5: If (Proc_6_27_EA61EC(var_A4, "Name") = 0) Then
  loc_126C1DF:   Call Txt_GotFocus()
  loc_126C1E4:   Exit Sub
  loc_126C1E5: End If
  loc_126C1F0: Set var_A0 = Me.Txt
  loc_126C1F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_126C21F: If (Proc_6_27_EA61EC(var_A4, "Outlet Name") = 0) Then
  loc_126C229:   Call Txt_GotFocus()
  loc_126C22E:   Exit Sub
  loc_126C22F: End If
  loc_126C232: Call Proc_99_32_10CF944(var_AE, CInt(1))
  loc_126C23D: If (var_AE = &HFF) Then
  loc_126C240:   Exit Sub
  loc_126C241: End If
  loc_126C245: Set var_A0 = Me.TopCtrl1
  loc_126C24B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_126C264: If (CStr(var_A4) = "Add") Then
  loc_126C26D:   var_E0 = 0
  loc_126C28C:   unk_44D8C0.Execute "Select iif(IsNull(Max(val(Code))),1,Max(val(Code))+1)AS MyCode From Printmast", var_C0, -1
  loc_126C294:   var_A0 = var_A0.Fields
  loc_126C29C:   var_E0 = var_A4.Item(var_A4)
  loc_126C2A4:   var_A8 = var_A8.Value
  loc_126C2B3:   global_92 = CStr(var_F0)
  loc_126C2CD: Else
  loc_126C2EA:   var_A4 = Me.Fields.Item("Code")
  loc_126C301:   global_92 = CStr(var_A4.Value)
  loc_126C312: End If
  loc_126C31B: unk_44D8C0.BeginTrans var_F4
  loc_126C324: var_86 = CByte(1) 'Byte
  loc_126C32C: Set var_A0 = Me.TopCtrl1
  loc_126C332: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F0)
  loc_126C34B: If (CStr() = "Add") Then
  loc_126C362:   var_AC = "Insert Into PrintMast(Code,MOduleDescription,RestCode,ModType,Site_Code,U_EntDt,U_AE)" & " Values('"
  loc_126C384:   Set var_A0 = Me.Txt
  loc_126C38A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_FC, CVar(var_AC & global_92 & "',"))
  loc_126C392:   var_270 = var_A4.Text
  loc_126C3A0:   Proc_6_17_EAAE40(var_F0, CVar(var_FC))
  loc_126C3A8:   var_11C = -1 & var_F0 
  loc_126C3B1:   var_12C = var_11C & ",'" 
  loc_126C3C3:   Set var_A8 = Me.Txt
  loc_126C3C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_130, var_134)
  loc_126C3D1:   var_12C = var_130.Tag
  loc_126C3DC:   var_154 = var_274 & CVar(var_134) 
  loc_126C3F4:   Set var_168 = Me.Txt
  loc_126C3FA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_16C)
  loc_126C409:   Proc_6_17_EAAE40(var_18C, CVar(var_16C))
  loc_126C43F:   Proc_6_7_F26918(var_21C, Date)
  loc_126C45E:   unk_44D8C0.Execute CStr(var_154 & "'," & var_18C & ",'" & CVar(MemVar_1F95070) & "'," & var_21C & ",'A')"), , 
  loc_126C4A7: Else
  loc_126C4C5:   Set var_A0 = Me.Txt
  loc_126C4CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, "UPDATE PrintMast SET RestCode='")
  loc_126C4D3:   var_1BC = var_A4.Tag
  loc_126C4DC:   var_F8 = -1 & var_AC
  loc_126C4E3:   var_10C = CVar(var_AC & global_92 & "',ModuleDescription=") 'String
  loc_126C4F1:   Set var_A8 = Me.Txt
  loc_126C4F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_130)
  loc_126C506:   Proc_6_17_EAAE40(var_F0, CVar(var_130))
  loc_126C50E:   var_11C = var_10C & var_F0 
  loc_126C512:   var_D0 = ",ModType="
  loc_126C526:   Set var_168 = Me.Txt
  loc_126C52C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_16C)
  loc_126C53B:   Proc_6_17_EAAE40(var_154, CVar(var_16C))
  loc_126C570:   unk_44D8C0.Execute CStr(var_11C & var_D0 & var_154 & " WHERE Code='" & CVar(global_92) & "'"), var_274, 
  loc_126C5A6: End If
  loc_126C5AC: unk_44D8C0.CommitTrans
  loc_126C5B5: var_86 = CByte(0) 'Byte
  loc_126C5B9: Call Proc_99_28_11E1070()
  loc_126C5C9: Me.Requery -1
  loc_126C5F6: Me.Find "Code='" & global_92 & "'", 0, 1
  loc_126C606: Set var_A0 = Me.TopCtrl1
  loc_126C60C: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D0)
  loc_126C625: If (CStr() = "Add") Then
  loc_126C628:   Call TopCtrl1_UnknownEvent_A()
  loc_126C62D:   Exit Sub
  loc_126C62E: End If
  loc_126C643: var_AC = "INI"
  loc_126C651: Call Proc_99_29_E7D274(Proc_5_1_100EC1C(var_AC, Me))
  loc_126C65C: Call Proc_99_33_EBA838(global_52)
  loc_126C661: Call Proc_99_31_10473DC()
  loc_126C66B: Set var_94 = Nothing
  loc_126C66E: Exit Sub
  loc_126C66F: ' Referenced from: 126C190
  loc_126C678: If (CInt(var_86) = 1) Then
  loc_126C681:   unk_44D8C0.RollbackTrans
  loc_126C686: End If
  loc_126C68E: Set var_A0 = Err()
  loc_126C694: Call 0.Method_arg_2C (var_AC)
  loc_126C6AD: MsgBox(CVar(var_AC), &H10, var_F0, var_10C, var_11C)
  loc_126C6C0: Exit Sub
  loc_126C6C1: arg_DFF = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11CB970
  'Data Table: 44D8A4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_A0 As String
  loc_11CB51A: Set var_88 = Me.Txt
  loc_11CB520: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11CB52E: Proc_6_74_E23240(var_8C)
  loc_11CB53A: Call Proc_99_33_EBA838(var_8C)
  loc_11CB542: var_92 = Index
  loc_11CB54D: If (var_92 = CInt(0)) Then
  loc_11CB567:   If (Me.RecordCount > 0) Then
  loc_11CB575:     Set var_8C = Me.FGPoint
  loc_11CB58D:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_11CB59B:   End If
  loc_11CB5E9:   Set var_88 = Me.Txt
  loc_11CB5EF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11CB5F7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11CB60F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11CB61F:     Set var_88 = Me.Txt
  loc_11CB625:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CB62D:     var_8C.Tag = vbNullString
  loc_11CB639:     Exit Sub
  loc_11CB63A:   End If
  loc_11CB647:   Set var_88 = Me.Txt
  loc_11CB64D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CB655:   var_A0 = var_8C.Text
  loc_11CB667:   var_B0 = "Name"
  loc_11CB6A2:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11CB6AB:     Me.MoveFirst
  loc_11CB6CE:     Set var_88 = Me.Txt
  loc_11CB6D4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_11CB6DC:     0 = var_8C.Text
  loc_11CB6F5:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_11CB70A:   End If
  loc_11CB70D: Else
  loc_11CB715:   If (var_92 = CInt(1)) Then
  loc_11CB723:     Set var_88 = Me.Txt
  loc_11CB729:     Call 0.Method_Txt_GotFocus0 (CInt(2))
  loc_11CB752:     If (Trim(CVar(var_8C)) = "FOM") Then
  loc_11CB774:       Me.Filter = CVar("Code='" & MemVar_1F95078 & "FOM" & "'")
  loc_11CB786:     Else
  loc_11CB78D:       var_A0 = "Code<>'" & MemVar_1F95078
  loc_11CB7A5:       Me.Filter = CVar(var_A0 & "FOM" & "'")
  loc_11CB7B4:     End If
  loc_11CB7CB:     If (Me.RecordCount > 0) Then
  loc_11CB7D9:       Set var_8C = Me.FGPoint
  loc_11CB7F1:       Proc_6_137_1192FDC(Me.DGRest, global_68, Index)
  loc_11CB7FF:     End If
  loc_11CB84D:     Set var_88 = Me.Txt
  loc_11CB853:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11CB85B:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11CB873:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11CB883:       Set var_88 = Me.Txt
  loc_11CB889:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CB891:       var_8C.Tag = vbNullString
  loc_11CB89D:       Exit Sub
  loc_11CB89E:     End If
  loc_11CB8AB:     Set var_88 = Me.Txt
  loc_11CB8B1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CB8B9:     var_A0 = var_8C.Text
  loc_11CB8CB:     var_B0 = "Name"
  loc_11CB906:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11CB90F:       Me.MoveFirst
  loc_11CB932:       Set var_88 = Me.Txt
  loc_11CB938:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_11CB940:       0 = var_8C.Text
  loc_11CB959:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_11CB96E:     End If
  loc_11CB96E:   End If
  loc_11CB96E: End If
  loc_11CB96E: Exit Sub
  loc_11CB96F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10C8078
  'Data Table: 44D8A4
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10C7D9A: If (CLng(Shift) = &H1B) Then
  loc_10C7D9D:   Call Proc_99_33_EBA838()
  loc_10C7DA2:   Exit Sub
  loc_10C7DA3: End If
  loc_10C7DA6: var_88 = KeyCode
  loc_10C7DB1: If (var_88 = CInt(0)) Then
  loc_10C7DD1:   Set var_9C = Me.FGPoint
  loc_10C7DDC:   Set var_98 = Nothing
  loc_10C7E0A:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_10C7E79:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10C7E9F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 1)
  loc_10C7EAD:   End If
  loc_10C7EB0: Else
  loc_10C7EB8:   If (var_88 = CInt(1)) Then
  loc_10C7ED8:     Set var_9C = Me.FGPoint
  loc_10C7EE3:     Set var_98 = Nothing
  loc_10C7F11:     Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_68, Shift, 0, 1)
  loc_10C7F80:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10C7F87:       Set var_98 = Me.DGRest
  loc_10C7FA6:       Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10C7FB4:     End If
  loc_10C7FB4:   End If
  loc_10C7FB4: End If
  loc_10C7FEF: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_10C8005:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_10C800E:     Proc_6_76_E533C8(Shift, arg_14, 0, var_98)
  loc_10C8013:   End If
  loc_10C8031:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_10C803A:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_10C803F:   End If
  loc_10C805D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10C8068:     Call Txt_Validate(KeyCode)
  loc_10C8070:     Call Proc_99_34_E91288(KeyCode, 0)
  loc_10C8075:   End If
  loc_10C8075: End If
  loc_10C8075: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1017664
  'Data Table: 44D8A4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_101744E: Proc_6_133_E7FB08(var_94)
  loc_1017463: If (CInt(var_94) = &HD) Then
  loc_1017468:   arg_10 = 0
  loc_101746B: End If
  loc_101746E: Proc_6_58_E06050(arg_10, arg_10)
  loc_1017476: var_96 = KeyAscii
  loc_1017481: If (var_96 = CInt(1)) Then
  loc_10174A0:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10174CD:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_10174FF:     Proc_6_138_106E830(Me.DGRest, global_68, KeyAscii, Me.FGPoint)
  loc_101750D:   End If
  loc_1017510: Else
  loc_1017518:   If (var_96 = CInt(0)) Then
  loc_1017537:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_1017564:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_101757E:       Set var_A8 = Me.FGPoint
  loc_1017596:       Proc_6_138_106E830(Me.DGHelp, global_56, KeyAscii, var_A8, 0)
  loc_10175A4:     End If
  loc_10175A7:   Else
  loc_10175AF:     If (var_96 = CInt(2)) Then
  loc_10175DB:       If (Ucase(Chr(CLng(arg_10))) = "F") Then
  loc_10175EB:         Set var_9C = Me.Txt
  loc_10175F1:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "FOM", 0)
  loc_10175F9:         var_A8.Text = var_96
  loc_1017608:       Else
  loc_1017631:         If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_1017641:           Set var_9C = Me.Txt
  loc_1017647:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "POS")
  loc_101764F:           var_A8.Text = arg_10
  loc_101765B:         End If
  loc_101765B:       End If
  loc_101765D:       arg_10 = 0
  loc_1017660:     End If
  loc_1017660:   End If
  loc_1017660: End If
  loc_1017660: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F47C
  'Data Table: 44D8A4
  loc_E4F45A: Set var_88 = Me.Txt
  loc_E4F460: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F46E: Proc_6_73_E23294(var_8C)
  loc_E4F47A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1225A74
  'Data Table: 44D8A4
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_E4 As Variant
  Dim unk_44D8C0 As Connection15
  loc_1225583: var_86 = Cancel
  loc_122558E: If (var_86 = CInt(0)) Then
  loc_1225594:   Call Proc_99_32_10CF944(var_88)
  loc_122559F:   If (var_88 = &HFF) Then
  loc_12255A4:     arg_10 = &HFF
  loc_12255A7:     Exit Sub
  loc_12255A8:   End If
  loc_12255F6:   Set var_94 = Me.Txt
  loc_12255FC:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1225604:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_122561C:   If (arg_10 Or (var_9C = vbNullString)) Then
  loc_122562C:     Set var_94 = Me.Txt
  loc_1225632:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_122563A:     var_98.Tag = vbNullString
  loc_1225646:     Exit Sub
  loc_1225647:   End If
  loc_1225683:   Set var_B0 = Me.Txt
  loc_1225689:   Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_1225691:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12256C4:   var_98 = Me.Fields.Item("Code")
  loc_12256D5:   var_9C = CStr(var_98.Value)
  loc_12256E3:   Set var_B0 = Me.Txt
  loc_12256E9:   Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_12256F1:   var_B4.Tag = var_9C
  loc_122570A: Else
  loc_1225712:   If (var_86 = CInt(1)) Then
  loc_1225763:     Set var_94 = Me.Txt
  loc_1225769:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1225771:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1225789:     If (var_86 Or (var_9C = vbNullString)) Then
  loc_1225799:       Set var_94 = Me.Txt
  loc_122579F:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12257A7:       var_98.Tag = vbNullString
  loc_12257B3:       Exit Sub
  loc_12257B4:     End If
  loc_12257EF:     Set var_B0 = Me.Txt
  loc_12257F5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12257FD:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_122584E:     Set var_B0 = Me.Txt
  loc_1225854:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_122585C:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_122588F:     var_98 = Me.Fields.Item("ShortName")
  loc_12258A6:     global_120 = CStr(var_98.Value)
  loc_12258BA:   Else
  loc_12258C2:     If (var_86 = CInt(2)) Then
  loc_12258CF:       Set var_94 = Me.Txt
  loc_12258D5:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_1225910:       If (Ucase(Left(CVar(var_98), 1)) = "F") Then
  loc_1225920:         Set var_94 = Me.Txt
  loc_1225926:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_122592E:         var_98.Text = "FOM"
  loc_122593D:       Else
  loc_1225947:         Set var_94 = Me.Txt
  loc_122594D:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1225988:         If (Ucase(Left(CVar(var_98), 1)) = "P") Then
  loc_1225998:           Set var_94 = Me.Txt
  loc_122599E:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12259A6:           var_98.Text = "POS"
  loc_12259B2:         End If
  loc_12259B2:       End If
  loc_12259CF:       Set var_94 = Me.Txt
  loc_12259D5:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, "SELECT ModuleName as Code, ModuleDescription as Name FROM PrintFormats WHERE MOduleName='", var_164)
  loc_12259EC:       var_E4 = -1 & Trim(CVar(var_98)) 
  loc_1225A16:       unk_44D8C0.Execute CStr(Ucase(Left(CVar(var_98), 1)) & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_B0, var_98
  loc_1225A27:       Set global_56 = var_B0
  loc_1225A51:       CVarUnk
  loc_1225A56:       VerifyVarObj
  loc_1225A5C:       Set var_94 = Me.DGHelp
  loc_1225A62:       LateIdStAd
  loc_1225A70:     End If
  loc_1225A70:   End If
  loc_1225A70: End If
  loc_1225A70: Exit Sub
End Sub

Private Sub Form_Load() '1104224
  'Data Table: 44D8A4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_44D8C0 As Connection15
  Dim unk_44D8C8 As Connection15
  loc_1103EF8: On Error Goto loc_11041E0
  loc_1103F02: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1103F15: Set var_88 = Me.Txt
  loc_1103F1B: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1103F3A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1103F56: Set var_B4 = Me.Txt
  loc_1103F5C: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1103F77: Set var_88 = Me.Txt
  loc_1103F7D: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1103F95: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1103FA4: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1103FC0: Set var_88 = Me.TopCtrl1
  loc_1103FC6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AED*")
  loc_1103FD4: Call 0.Method_arg_50 (var_C4)
  loc_1103FDC: var_D4 = CVar(var_C4) 'String
  loc_1103FE4: Set var_88 = Me.TopCtrl1
  loc_1103FEA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_1104003: Set var_88 = Me.Txt
  loc_1104009: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1104028: Me.DGRest.Left = CVar(var_8C.Left)
  loc_1104044: Set var_B4 = Me.Txt
  loc_110404A: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_110406B: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1104083: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1104092: Me.DGRest.Top = CVar(var_8C.Left)
  loc_11040C8: unk_44D8C0.Execute "SELECT ModuleName as Code, ModuleDescription as Name FROM  PrintFormats WHERE SITE_CODE='" & MemVar_1F95078 & "'", var_D4, -1
  loc_11040F7: CVarUnk
  loc_11040FC: VerifyVarObj
  loc_1104102: Set var_88 = Me.DGHelp
  loc_1104108: LateIdStAd
  loc_1104116: Call Proc_99_28_11E1070(var_88, Me.Txt)
  loc_1104136: var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestType in ('FOM','Outlet','Room Service') Order by Name"
  loc_110413F: unk_44D8C8.Execute var_D8, var_D4, -1
  loc_110416E: CVarUnk
  loc_1104173: VerifyVarObj
  loc_1104179: Set var_88 = Me.DGRest
  loc_110417F: LateIdStAd
  loc_1104199: Set var_88 = Me
  loc_11041A2: var_C4 = "INI"
  loc_11041B0: Call Proc_99_29_E7D274(Proc_5_1_100EC1C(var_C4, var_88, global_52, var_88), var_88)
  loc_11041C4: Call 0.Method_arg_160 (var_88, var_88)
  loc_11041D2: Call 0.Method_arg_164 (var_88)
  loc_11041DA: Call Proc_99_31_10473DC(var_88)
  loc_11041DF: Exit Sub
  loc_11041E0: ' Referenced from: 1103EF8
  loc_11041E8: Set var_88 = Err()
  loc_11041EE: Call 0.Method_arg_2C (var_C4)
  loc_110420F: MsgBox(CVar(var_C4), &H40, "Information", var_FC, var_11C)
  loc_1104222: Exit Sub
  loc_1104223: Exit Sub
End Sub

Private Sub Form_Resize() 'ED56E8
  'Data Table: 44D8A4
  Dim var_8C As Label
  loc_ED5646: Call 0.Method_arg_50 (var_88)
  loc_ED5658: Me.LblFormCaption.Caption = var_88
  loc_ED5671: Me.LblFormCaption.Left = CDbl(0)
  loc_ED567D: Set var_A0 = Me.TopCtrl1
  loc_ED5683: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED5690: Set var_8C = Me.TopCtrl1
  loc_ED5696: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED56B0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED56CB: Call 0.Method_arg_100 (var_B8)
  loc_ED56DD: Me.LblFormCaption.Width = var_B8
  loc_ED56E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C248
  'Data Table: 44D8A4
  loc_E6C1F7: Set global_52 = Nothing
  loc_E6C209: Set global_60 = Nothing
  loc_E6C21B: Set global_64 = Nothing
  loc_E6C22D: Set global_68 = Nothing
  loc_E6C23F: Set global_56 = Nothing
  loc_E6C246: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AAE0
  'Data Table: 44D8A4
  loc_E8AA7C: On Error Goto loc_E8AA9C
  loc_E8AA93: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8AA9B: Exit Sub
  loc_E8AA9C: ' Referenced from: E8AA7C
  loc_E8AAA4: Set var_88 = Err()
  loc_E8AAAA: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AACB: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AADE: Exit Sub
  loc_E8AADF: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F38E74
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38D6B: Me.DGRest.Visible = False
  loc_F38D8A: If (Me.RecordCount > 0) Then
  loc_F38DC9:   Set var_B4 = Me.Txt
  loc_F38DCF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F38DD7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F38E0A:   var_B0 = Me.Fields.Item("Code")
  loc_F38E29:   Set var_B4 = Me.Txt
  loc_F38E2F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F38E37:   var_B8.Tag = CStr(var_B0.Value)
  loc_F38E4D: End If
  loc_F38E58: Set var_A8 = Me.Txt
  loc_F38E5E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F38E66: var_B0.SetFocus
  loc_F38E72: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA8834
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  loc_EA87B4: Set var_88 = Me.DGRest
  loc_EA87DE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA87E6: Set var_BC = Me.DGRest
  loc_EA8822: Proc_6_138_106E830(Me.DGRest, global_68, CInt(1), Me.FGPoint)
  loc_EA8830: Exit Sub
  loc_EA8831: DGRest.DispID_1B = var_A8
End Sub

Private Sub DGHelp_UnknownEvent_9 'F39C34
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39B2B: Me.DGHelp.Visible = False
  loc_F39B4A: If (Me.RecordCount > 0) Then
  loc_F39B89:   Set var_B4 = Me.Txt
  loc_F39B8F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39B97:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F39BCA:   var_B0 = Me.Fields.Item("Code")
  loc_F39BE9:   Set var_B4 = Me.Txt
  loc_F39BEF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39BF7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F39C0D: End If
  loc_F39C18: Set var_A8 = Me.Txt
  loc_F39C1E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F39C26: var_B0.SetFocus
  loc_F39C32: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA7E40
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  loc_EA7DC0: Set var_88 = Me.DGHelp
  loc_EA7DEA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7DF2: Set var_BC = Me.DGHelp
  loc_EA7E2E: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA7E3C: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63968
  'Data Table: 44D8A4
  loc_E63938: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E6393B:   Call DGRest_UnknownEvent_9()
  loc_E63940: End If
  loc_E6395C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E6395F:   Call DGHelp_UnknownEvent_9()
  loc_E63964: End If
  loc_E63964: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EE8580
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EE84D2: On Error Goto loc_EE853B
  loc_EE84DB: Me.MoveFirst
  loc_EE84F5: var_8C = "code='" & MyValue
  loc_EE8505: Me.Find var_8C & "'", 0, 1
  loc_EE852D: Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_EE8535: Call Proc_99_31_10473DC(0)
  loc_EE853A: Exit Sub
  loc_EE853B: ' Referenced from: EE84D2
  loc_EE8543: Set var_A8 = Err()
  loc_EE8549: Call 0.Method_arg_2C (var_8C)
  loc_EE856A: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EE857D: Exit Sub
  loc_EE857E: Exit Sub
End Sub

Public Sub Proc_99_27_FBDDB0(arg_C) 'FBDDB0
  'Data Table: 44D8A4
  Dim var_8C As Recordset15
  loc_FBDBFD: Set var_8C = arg_C 
  loc_FBDC25: var_8C.Fields.Append "Code", &HC8, 5
  loc_FBDC51: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_FBDC7D: var_8C.Fields.Append "ModuleDescription", &HC8, &H32
  loc_FBDCA9: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_FBDCD5: var_8C.Fields.Append "Site_Code", &HC8, 2
  loc_FBDD01: var_8C.Fields.Append "U_EntDt", 7, 0
  loc_FBDD2D: var_8C.Fields.Append "U_AE", &HC8, 1
  loc_FBDD59: var_8C.Fields.Append "Restaurant", &HC8, &H32
  loc_FBDD69: var_8C.CursorType = 3
  loc_FBDD76: var_8C.LockType = 3
  loc_FBDD95: var_8C.Open var_A0, var_B0, -1
  loc_FBDD9C: Set var_8C = Nothing 
  loc_FBDDA3: Set var_88 = arg_C 
  loc_FBDDA7: Proc_99_27_FBDDB0 = -1
End Sub

Public Sub Proc_99_28_11E1070
  'Data Table: 44D8A4
  Dim var_90 As String
  Dim var_88 As Recordset15
  Dim var_BC As Recordset15
  Dim var_A4 As String
  Dim var_8C As Fields15
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_CC As String
  Dim var_D4 As Variant
  Dim var_D8 As Variant
  Dim unk_44D8C8 As Connection15
  Dim var_118 As Field20
  loc_11E0C32: Call Proc_99_27_FBDDB0(New)
  loc_11E0C3D: Set global_52 = var_8C
  loc_11E0C68: Me.Connection15.Execute "SELECT * From PrintMast WHERE SITE_CODE='" & MemVar_1F95078 & "'", var_B4, -1
  loc_11E0C73: Set var_88 = var_8C
  loc_11E0C83: ' Referenced from: 11E1064
  loc_11E0C92: If Not(var_88.EOF) Then
  loc_11E0C9B:   Set var_BC = global_52 
  loc_11E0CAA:   var_BC.AddNew var_A4, var_CC
  loc_11E0CBE:   var_8C = var_88.Fields
  loc_11E0CFA:   var_BC.Fields.Item("Code").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Item("Code")), var_8C))
  loc_11E0D5A:   var_BC.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_11E0DBA:   var_BC.Fields.Item("ModuleDescription").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModuleDescription"))))
  loc_11E0E1A:   var_BC.Fields.Item("RestCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RestCode"))))
  loc_11E0E7A:   var_BC.Fields.Item("Site_Code").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Site_Code"))))
  loc_11E0ECA:   var_F8 = Format(CVar(var_88.Fields.Item("U_EntDt")), "dd/MMM/yyyy")
  loc_11E0EF2:   var_BC.Fields.Item("U_EntDt").Value = var_F8
  loc_11E0F31:   var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), 1)) 'String
  loc_11E0F38:   var_CC = "U_AE"
  loc_11E0F44:   var_D4 = var_BC.Fields
  loc_11E0F4C:   var_D8 = var_D4.Item(var_CC)
  loc_11E0F54:   var_D8.Value = var_E8
  loc_11E0F8B:   var_A4 = "RestCode"
  loc_11E0F97:   var_8C = var_88.Fields
  loc_11E0FB0:   var_90 = Proc_6_38_E69628(CVar(var_8C.Item(var_A4)), "Select Max(Name) From Depart Where Code='", var_E8, -1, var_D4, var_D8)
  loc_11E0FD2:   unk_44D8C8.Execute 0 & "SELECT * From PrintMast WHERE SITE_CODE='" & MemVar_1F95078 & "' And LogSite_Code='" & MemVar_1F95078 & "'", var_118, var_F8
  loc_11E0FDA:   1 = var_D4.Fields
  loc_11E0FE2:    = var_D8.Item(var_8C)
  loc_11E0FEA:    = var_118.Value
  loc_11E101A:   var_BC.Fields.Item("Restaurant").Value = CVar(Proc_6_38_E69628(var_F8))
  loc_11E1051:   var_BC.Update var_A4, var_CC
  loc_11E1058:   Set var_BC = Nothing 
  loc_11E105F:   var_88.MoveNext
  loc_11E1064:   GoTo loc_11E0C83
  loc_11E1067: End If
  loc_11E106C: Set var_88 = Nothing
  loc_11E106F: Exit Sub
End Sub

Public Sub Proc_99_29_E7D274(arg_C) 'E7D274
  'Data Table: 44D8A4
  Dim var_98 As TextBox
  loc_E7D222: Set var_8C = Me.Txt
  loc_E7D228: Call 0.Method_Proc_99_29_E7D274C (var_8E, var_86)
  loc_E7D238: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7D24E:   Set var_8C = Me.Txt
  loc_E7D254:   Call 0.Method_Proc_99_29_E7D2740 (CInt(var_86), var_98)
  loc_E7D25C:   var_98.Enabled = arg_C
  loc_E7D26B: Next var_92 'Byte
  loc_E7D271: Exit Sub
End Sub

Public Sub Proc_99_30_EB3558
  'Data Table: 44D8A4
  Dim var_98 As TextBox
  loc_EB34C2: global_96 = vbNullString
  loc_EB34CC: global_120 = vbNullString
  loc_EB34DE: Set var_8C = Me.Txt
  loc_EB34E4: Call 0.Method_Proc_99_30_EB3558C (var_8E, var_86)
  loc_EB34F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB350A:   Set var_8C = Me.Txt
  loc_EB3510:   Call 0.Method_Proc_99_30_EB35580 (CInt(var_86), var_98)
  loc_EB3518:   var_98.Text = vbNullString
  loc_EB3534:   Set var_8C = Me.Txt
  loc_EB353A:   Call 0.Method_Proc_99_30_EB35580 (CInt(var_86), var_98)
  loc_EB3542:   var_98.Tag = vbNullString
  loc_EB3551: Next var_92 'Byte
  loc_EB3557: Exit Sub
End Sub

Public Sub Proc_99_31_10473DC
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_C0 As String
  Dim var_AC As TextBox
  loc_1047190: On Error Goto loc_1047397
  loc_1047199: Proc_183_45_E5CCA8(global_52)
  loc_10471B5: If (Me.RecordCount <= 0) Then
  loc_10471B8:   Call Proc_99_30_EB3558()
  loc_10471C0: Else
  loc_10471FC:   Set var_A8 = Me.Txt
  loc_1047202:   Call 0.Method_Proc_99_31_10473DC0 (CInt(2), var_AC)
  loc_104720A:   var_AC.Text = CStr(Me.Fields.Item("ModType").Value)
  loc_104725C:   Set var_A8 = Me.Txt
  loc_1047262:   Call 0.Method_Proc_99_31_10473DC0 (CInt(0), var_AC)
  loc_104726A:   var_AC.Text = CStr(Me.Fields.Item("ModuleDescription").Value)
  loc_10472BC:   Set var_A8 = Me.Txt
  loc_10472C2:   Call 0.Method_Proc_99_31_10473DC0 (CInt(0), var_AC)
  loc_10472CA:   var_AC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1047319:   Set var_A8 = Me.Txt
  loc_104731F:   Call 0.Method_Proc_99_31_10473DC0 (CInt(1), var_AC)
  loc_1047327:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Restaurant")))
  loc_1047366:   var_C0 = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1047374:   Set var_A8 = Me.Txt
  loc_104737A:   Call 0.Method_Proc_99_31_10473DC0 (CInt(1), var_AC)
  loc_1047382:   var_AC.Tag = var_C0
  loc_1047396: End If
  loc_1047396: Exit Sub
  loc_1047397: ' Referenced from: 1047190
  loc_104739F: Set var_90 = Err()
  loc_10473A5: Call 0.Method_arg_2C (var_C0)
  loc_10473C6: MsgBox(CVar(var_C0), &H40, "Information", var_F0, var_110)
  loc_10473D9: Exit Sub
End Sub

Public Sub Proc_99_32_10CF944
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_EC As Variant
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim unk_44D8C0 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_10CF68B: If (Me.RecordCount = 0) Then
  loc_10CF68E:   Proc_99_32_10CF944 = 
  loc_10CF694: End If
  loc_10CF698: Set var_90 = Me.TopCtrl1
  loc_10CF69E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10CF6A6: var_A4 = CStr()
  loc_10CF6B7: If (var_A4 = "Add") Then
  loc_10CF6C0:   var_EC = 0
  loc_10CF6E7:   Set var_90 = Me.Txt
  loc_10CF6ED:   Call 0.Method_Proc_99_32_10CF9440 (CInt(1), var_A8, var_A4, "Select Count(*) From PrintMast Where restcode='", var_A0, -1)
  loc_10CF716:   Set var_B0 = Me.Txt
  loc_10CF71C:   Call 0.Method_Proc_99_32_10CF9440 (CInt(0), var_B4, var_B8, var_DC & var_A4 & "' and ModuleDescription='")
  loc_10CF724:   var_EC = var_B4.Text
  loc_10CF73D:   unk_44D8C0.Execute var_F0 & var_B8 & "'", var_100, 
  loc_10CF745:    = var_A8.Tag.Fields
  loc_10CF74D:    = var_DC.Item()
  loc_10CF755:    = var_F0.Value
  loc_10CF78C:   If (var_100 > 0) Then
  loc_10CF79A:     var_100 = "Information"
  loc_10CF7AA:     var_A0 = "Duplicate Name"
  loc_10CF7B0:     MsgBox(var_A0, &H40, var_100, var_120, var_140)
  loc_10CF7CB:     Set var_90 = Me.Txt
  loc_10CF7D1:     Call 0.Method_Proc_99_32_10CF9440 (CInt(0))
  loc_10CF7D9:     var_A8.SetFocus
  loc_10CF7EA:     Proc_99_32_10CF944 = &HFF
  loc_10CF7F0:   End If
  loc_10CF7F3: Else
  loc_10CF7F9:   var_EC = 0
  loc_10CF820:   Set var_90 = Me.Txt
  loc_10CF826:   Call 0.Method_Proc_99_32_10CF9440 (CInt(1), var_A8, var_A4, "Select Count(*) From PrintMast Where restcode='", var_A0, -1)
  loc_10CF84F:   Set var_B0 = Me.Txt
  loc_10CF855:   Call 0.Method_Proc_99_32_10CF9440 (CInt(0), var_B4, var_B8, var_DC & var_A4 & "' and ModuleDescription='")
  loc_10CF85D:   var_EC = var_B4.Text
  loc_10CF887:   unk_44D8C0.Execute var_F0 & var_B8 & "' And ModuleDescription<>'" & global_96 & "'", var_100, var_A8
  loc_10CF88F:    = var_A8.Tag.Fields
  loc_10CF897:    = var_DC.Item()
  loc_10CF89F:    = var_F0.Value
  loc_10CF8DA:   If (var_100 > 0) Then
  loc_10CF8FE:     MsgBox("Duplicate Name", &H40, "Information", var_120, var_140)
  loc_10CF919:     Set var_90 = Me.Txt
  loc_10CF91F:     Call 0.Method_Proc_99_32_10CF9440 (CInt(0))
  loc_10CF927:     var_A8.SetFocus
  loc_10CF938:     Proc_99_32_10CF944 = &HFF
  loc_10CF93E:   End If
  loc_10CF93E: End If
  loc_10CF93E: Proc_99_32_10CF944 = var_A8
End Sub

Public Sub Proc_99_33_EBA838
  'Data Table: 44D8A4
  loc_EBA7B0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBA7C2:   Me.DGHelp.Visible = False
  loc_EBA7CA: End If
  loc_EBA7E6: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EBA7F8:   Me.DGRest.Visible = False
  loc_EBA800: End If
  loc_EBA81C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBA82E:   Me.FGPoint.Visible = False
  loc_EBA836: End If
  loc_EBA836: Exit Sub
End Sub

Public Sub Proc_99_34_E91288(arg_C) 'E91288
  'Data Table: 44D8A4
  Dim var_10C As TextBox
  loc_E9121C: Call Proc_99_33_EBA838()
  loc_E91258: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9125B:   Call TopCtrl1_UnknownEvent_16()
  loc_E91263: Else
  loc_E9126D:   Set var_108 = Me.Txt
  loc_E91273:   Call 0.Method_Proc_99_34_E912880 (arg_C)
  loc_E9127B:   var_10C.SetFocus
  loc_E91287: End If
  loc_E91287: Exit Sub
End Sub

Public Sub Proc_99_35_F53BD8(arg_C) 'F53BD8
  'Data Table: 44D8A4
  Dim var_124 As Integer
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim unk_44D8C0 As Connection15
  Dim var_110 As Recordset15
  Dim var_114 As Fields15
  Dim var_128 As Field20
  Dim var_148 As Variant
  loc_F53AED: var_124 = 0
  loc_F53B03: var_B8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,2,1) ='"
  loc_F53B22: unk_44D8C0.Execute CStr(var_B8 & Left(arg_C, 1) & "'"), var_10C, -1
  loc_F53B2A: var_110 = var_110.Fields
  loc_F53B32: var_124 = var_114.Item(var_114)
  loc_F53B3A: var_128 = var_128.Value
  loc_F53B8F: var_E8 = (Left(MemVar_1F95070, 1) + Left(arg_C, 1))
  loc_F53BBB: var_148 = (1 + Format(CStr(var_138), "000"))
  loc_F53BC0: var_88 = CStr(var_148)
  loc_F53BD2: Proc_99_35_F53BD8 = 1
End Sub
