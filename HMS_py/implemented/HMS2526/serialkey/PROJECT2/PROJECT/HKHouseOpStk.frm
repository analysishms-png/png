VERSION 5.00
Begin VB.Form HKHouseOpStk
  Caption = "House Keeping Op. Stock Entry"
  BackColor = &HC1BCE2&
  ForeColor = &H40&
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
  ClientWidth = 9015
  ClientHeight = 4755
  LockControls = -1  'True
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9015
    Height = 450
    TabIndex = 16
  End
  Begin DataGrid DGItem
    Left = 285
    Top = 4395
    Width = 7020
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 4
    Left = 5355
    Top = 750
    Width = 2940
    Height = 225
    Visible = 0   'False
    TabIndex = 15
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
    Left = 1110
    Top = 490
    Width = 2865
    Height = 240
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
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
    Left = 5355
    Top = 490
    Width = 1200
    Height = 240
    TabIndex = 13
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
    Index = 2
    Left = 7050
    Top = 490
    Width = 1245
    Height = 240
    TabIndex = 14
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
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1050
    Top = 2985
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 3
    Left = 1110
    Top = 750
    Width = 3540
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin DataGrid DGRoom
    Left = 5325
    Top = 4095
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1215
    Width = 8280
    Height = 2805
    TabIndex = 1
  End
  Begin DataGrid DGVType
    Left = 975
    Top = 4095
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H404040&
    Left = 4005
    Top = 505
    Width = 585
    Height = 210
    TabIndex = 10
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
    Caption = "V.Type "
    Index = 4
    ForeColor = &H404040&
    Left = 105
    Top = 505
    Width = 660
    Height = 210
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
    ForeColor = &H404040&
    Left = 6615
    Top = 505
    Width = 390
    Height = 210
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
    ForeColor = &H404040&
    Left = 4620
    Top = 490
    Width = 645
    Height = 240
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
  Begin Label Label1
    Caption = "DocID"
    Index = 12
    ForeColor = &H404040&
    Left = 4710
    Top = 750
    Width = 555
    Height = 210
    Visible = 0   'False
    TabIndex = 6
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
    Caption = "Department"
    Index = 0
    ForeColor = &H404040&
    Left = 105
    Top = 750
    Width = 990
    Height = 210
    TabIndex = 5
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
End

Attribute VB_Name = "HKHouseOpStk"

Private MasterFormExit As Integer
Private global_108 As Integer
Private global_110 As Integer
Private global_96 As Integer

Private Sub TopCtrl1_UnknownEvent_A '1006944
  'Data Table: 49C7D8
  Dim var_B8 As Variant
  Dim unk_49C7F4 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C8 As TextBox
  loc_1006744: On Error Goto loc_100693C
  loc_100676A: Call Proc_35_50_EF6248(Proc_5_1_100EC1C("ADD", Me))
  loc_1006775: Call Proc_35_49_F3093C(global_68)
  loc_100678C: var_B4 = DateAdd("D", CDbl(&HFF), MemVar_1F950F4)
  loc_10067A9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_B8)
  loc_10067B1: var_B8.Text = CStr(var_B4)
  loc_10067EA: unk_49C7F4.Execute "Select Description,V_Type From Voucher_Type Where V_tYPE='" & global_120 & "'", var_B4, -1
  loc_10067F5: Set var_88 = Me.Txt
  loc_1006819: If (var_88.RecordCount > 0) Then
  loc_1006855:   Set var_C4 = Me.Txt
  loc_100685B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_1006863:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_1006893:   var_B8 = var_88.Fields.Item("V_Type")
  loc_10068B2:   Set var_C4 = Me.Txt
  loc_10068B8:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_10068C0:   var_C8.Tag = CStr(var_B8.Value)
  loc_10068E2:   Call Txt_Validate(CInt(0))
  loc_10068E7: End If
  loc_10068F4: Set var_90 = Me.Txt
  loc_10068FA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B8, 0)
  loc_1006902: var_B8.Enabled = False
  loc_1006919: Set var_90 = Me.Txt
  loc_100691F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_1006927: var_B8.SetFocus
  loc_1006938: Set var_88 = Nothing
  loc_100693B: Exit Sub
  loc_100693C: ' Referenced from: 1006744
  loc_100693C: Proc_6_60_E63754(var_90)
  loc_1006941: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0F58
  'Data Table: 49C7D8
  loc_EA0EE0: On Error Goto loc_EA0F51
  loc_EA0F1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0F40:   Call Proc_35_50_EF6248(Proc_5_1_100EC1C("INI", Me))
  loc_EA0F4B:   Call Proc_35_47_13A1D90(global_68)
  loc_EA0F50: End If
  loc_EA0F50: Exit Sub
  loc_EA0F51: ' Referenced from: EA0EE0
  loc_EA0F51: Proc_6_60_E63754()
  loc_EA0F56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10B4554
  'Data Table: 49C7D8
  Dim unk_49C7F4 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B42AC: On Error Goto loc_10B4504
  loc_10B42E6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10B42F2:   unk_49C7F4.BeginTrans var_118
  loc_10B4308:   var_94 = Me.Bookmark 'Variant
  loc_10B4354:   var_F4 = "Delete From STOCK Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B4362:   unk_49C7F4.Execute CStr(var_F4), var_114, -1
  loc_10B43AD:   var_160 = 0
  loc_10B43C0:   var_158 = 0
  loc_10B43CB:   var_154 = 0
  loc_10B43DE:   var_14C = 0
  loc_10B43E9:   var_148 = 0
  loc_10B43FC:   var_140 = 0
  loc_10B443C:   var_124 = "STOCK"
  loc_10B4445:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B4473:   unk_49C7F4.CommitTrans
  loc_10B4483:   Me.Requery -1
  loc_10B44A3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B44B0:     Me.Bookmark = var_94
  loc_10B44B8:   Else
  loc_10B44CC:     If (Me.EOF = 0) Then
  loc_10B44D5:       Me.MoveLast
  loc_10B44DA:     End If
  loc_10B44DA:   End If
  loc_10B44DA:   Call Proc_35_47_13A1D90(var_140, 0, var_148, var_14C)
  loc_10B44FB:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_10B4503: End If
  loc_10B4503: Exit Sub
  loc_10B4504: ' Referenced from: 10B42AC
  loc_10B450A: unk_49C7F4.RollbackTrans
  loc_10B4517: Set var_11C = Err()
  loc_10B451D: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B453E: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10B4551: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EDA4E0
  'Data Table: 49C7D8
  Dim var_98 As TextBox
  loc_EDA42C: On Error Goto loc_EDA4D9
  loc_EDA452: Call Proc_35_50_EF6248(Proc_5_1_100EC1C("EDIT", Me))
  loc_EDA46A: Set var_90 = Me.Txt
  loc_EDA470: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_EDA478: var_98.Enabled = False
  loc_EDA491: Set var_90 = Me.Txt
  loc_EDA497: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_EDA49F: var_98.Enabled = False
  loc_EDA4B6: Set var_90 = Me.Txt
  loc_EDA4BC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_EDA4C4: var_98.SetFocus
  loc_EDA4D0: Exit Sub
  loc_EDA4D6: Set var_88 = Nothing
  loc_EDA4D9: ' Referenced from: EDA42C
  loc_EDA4D9: Proc_6_60_E63754(global_68)
  loc_EDA4DE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18EE4
  'Data Table: 49C7D8
  loc_E18ED9: Me.Global.Unload Me
  loc_E18EE1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB53F0
  'Data Table: 49C7D8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EB5360: On Error Goto loc_EB53EA
  loc_EB537A: If (Me.RecordCount <= 0) Then
  loc_EB5383:   var_B8 = "Information"
  loc_EB539E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB53AE:   Exit Sub
  loc_EB53AF: End If
  loc_EB53B9: var_10C = "Select Distinct Docid as SearchCode,V.Description As VType,S.VNo as VrNo,S.VDate as V_Date,R.Name as Depart From ((STOCK S Left Join Voucher_Type V On S.VType=V.V_Type) Left Join Depart R On S.RestCode=R.Code) Where V.V_Type='" & global_120
  loc_EB53C0: MemVar_1F950E4 = var_10C & "' Order By S.Docid"
  loc_EB53CD: MemVar_1F95120 = Me
  loc_EB53E4: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB53E9: Exit Sub
  loc_EB53EA: ' Referenced from: EB5360
  loc_EB53EA: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EB53EF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36EA8
  'Data Table: 49C7D8
  loc_E36E98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36EA0: Call Proc_35_47_13A1D90(global_68)
  loc_E36EA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36F68
  'Data Table: 49C7D8
  loc_E36F58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36F60: Call Proc_35_47_13A1D90(global_68)
  loc_E36F65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36FC8
  'Data Table: 49C7D8
  loc_E36FB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36FC0: Call Proc_35_47_13A1D90(global_68)
  loc_E36FC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37028
  'Data Table: 49C7D8
  loc_E37018: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37020: Call Proc_35_47_13A1D90(global_68)
  loc_E37025: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFE360
  'Data Table: 49C7D8
  loc_DFE35C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3F1B0
  'Data Table: 49C7D8
  Dim Me As Recordset15
  loc_E3F187: Me.Requery -1
  loc_E3F197: Me.Requery -1
  loc_E3F1A7: Me.Requery -1
  loc_E3F1AC: Exit Sub
  loc_E3F1AF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '152CD7C
  'Data Table: 49C7D8
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_144 As String
  Dim var_148 As String
  Dim unk_49C7F4 As Connection15
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_150 As Variant
  Dim Me As Recordset15
  Dim var_8A As Integer
  Dim var_1C8 As Variant
  Dim var_738 As Double
  Dim var_1E0 As TextBox
  Dim var_264 As TextBox
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_428 As Variant
  Dim var_448 As Variant
  Dim var_750 As Double
  Dim var_758 As Double
  Dim var_680 As Variant
  Dim var_6A0 As Variant
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim var_1D4 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_204 As Variant
  Dim var_2D0 As Variant
  Dim var_490 As Variant
  Dim var_6E8 As Variant
  Dim var_88 As Recordset15
  Dim var_1E4 As String
  loc_152BF08: On Error Goto loc_152CD5F
  loc_152BF16: Set var_A0 = Me.Txt
  loc_152BF1C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_152BF45: If (Proc_6_27_EA61EC(var_A4, "Voucher Date") = 0) Then
  loc_152BF48:   Exit Sub
  loc_152BF49: End If
  loc_152BF54: Set var_A0 = Me.Txt
  loc_152BF5A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_152BF83: If (Proc_6_27_EA61EC(var_A4, "Voucher No") = 0) Then
  loc_152BF86:   Exit Sub
  loc_152BF87: End If
  loc_152BF92: Set var_A0 = Me.Txt
  loc_152BF98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_152BFC1: If (Proc_6_27_EA61EC(var_A4, "Depart") = 0) Then
  loc_152BFC4:   Exit Sub
  loc_152BFC5: End If
  loc_152BFC5: var_BC = 1
  loc_152BFCE: var_DC = 1
  loc_152BFEC: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152BFF2: var_11C = Trim(var_10C)
  loc_152C00E: If (var_11C = vbNullString) Then
  loc_152C02A:   MsgBox("Fill Item Name ", 0, var_10C, var_11C, var_13C)
  loc_152C04D:   Me.FGrid.Row = 1
  loc_152C059:   Set var_A0 = Me.FGrid
  loc_152C07D:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_152C085:   Exit Sub
  loc_152C086: End If
  loc_152C086: var_BC = 1
  loc_152C08F: var_DC = 3
  loc_152C0AD: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152C0B3: var_11C = Trim(var_10C)
  loc_152C0CF: If (var_11C = vbNullString) Then
  loc_152C0E5:   var_FC = "Item Detail Required "
  loc_152C0EB:   MsgBox(var_FC, 0, var_10C, var_11C, var_13C)
  loc_152C10E:   Me.FGrid.Row = 1
  loc_152C11A:   Set var_A0 = Me.FGrid
  loc_152C12F:   var_BC = CVar(CLng("14737632")) 'Long
  loc_152C13E:   Me.FGrid.CellBackColor = var_BC
  loc_152C146:   Exit Sub
  loc_152C147: End If
  loc_152C14A: Call Proc_35_48_1090340(var_13E, FGrid.DispID_8001, var_DC, var_BC)
  loc_152C155: If (var_13E = 0) Then
  loc_152C158:   Exit Sub
  loc_152C159: End If
  loc_152C164: Set var_A0 = Me.TxtGrid
  loc_152C16A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, 0, FGrid.DispID_8001)
  loc_152C172: var_A4.Visible = var_DC
  loc_152C17E: Call Proc_35_51_EBEDD4(var_BC)
  loc_152C187: Set var_A0 = Me.TopCtrl1
  loc_152C18D: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_A4)
  loc_152C195: var_AC = CStr()
  loc_152C1A6: If (var_AC = "Add") Then
  loc_152C1D6:   Set var_A0 = Me.Txt
  loc_152C1DC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Select Count(*) From STOCK Where DocID='", var_FC, -1)
  loc_152C1E4:   var_A8 = var_A4.Text
  loc_152C1FD:   unk_49C7F4.Execute var_14C & var_AC & "'", 0, var_150
  loc_152C20D:    = var_14C.Item()
  loc_152C215:    = var_150.Value
  loc_152C242:   If (var_A8.Fields > 0) Then
  loc_152C24B:     Call Proc_35_53_106B808(MemVar_1F95044)
  loc_152C25E:     Set var_A0 = Me.Txt
  loc_152C264:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_152C26C:     var_A4.Text = var_AC
  loc_152C27B:     Exit Sub
  loc_152C27C:   End If
  loc_152C27F: Else
  loc_152C29C:   var_A4 = Me.Fields.Item("DocID")
  loc_152C2A4:   var_FC = var_A4.Value
  loc_152C2AD:   var_AC = CStr(var_FC)
  loc_152C2B3:   global_84 = var_AC
  loc_152C2C4: End If
  loc_152C2D2: unk_49C7F4.BeginTrans var_154
  loc_152C2F5: Set var_A0 = Me.Txt
  loc_152C2FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Delete From STOCK Where DocID='", var_FC)
  loc_152C303: -1 = var_A4.Text
  loc_152C313: var_148 = var_A8 & var_AC & "'"
  loc_152C31C: unk_49C7F4.Execute var_148, &HFF, var_AC
  loc_152C35B: For var_158 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_158 'Integer
  loc_152C365:   var_BC = CVar(CLng(var_92)) 'Long
  loc_152C36D:   var_DC = CVar(CLng(6)) 'Long
  loc_152C387:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152C3B4:   Set var_A4 = Me.FGrid
  loc_152C3C5:   var_AC = CStr(var_A4.TextMatrix))
  loc_152C3F3:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_AC)) <> CDbl(0))) Then
  loc_152C404:     Set var_A0 = Me.Txt
  loc_152C40A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, CVar(CLng(var_92)))
  loc_152C412:     (Trim(var_10C) <> vbNullString) = var_A4.Text
  loc_152C425:     Set var_A8 = Me.Txt
  loc_152C42B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_14C, var_148)
  loc_152C433:     var_DC = var_14C.Text
  loc_152C440:     var_738 = Val(var_148)
  loc_152C44E:     Set var_150 = Me.Txt
  loc_152C454:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D8, var_738)
  loc_152C463:     Proc_6_7_F26918(var_10C, CVar(var_1D8))
  loc_152C476:     Set var_1DC = Me.Txt
  loc_152C47C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, var_1E4)
  loc_152C484:     var_BC = var_1E0.Tag
  loc_152C4A9:     Set var_260 = Me.Txt
  loc_152C4AF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_264)
  loc_152C4C0:     var_178 = CVar(CLng(var_92)) 'Long
  loc_152C4C8:     var_198 = CVar(CLng(0)) 'Long
  loc_152C4F1:     var_300 = CVar(CLng(var_92)) 'Long
  loc_152C4F9:     var_320 = CVar(CLng(6)) 'Long
  loc_152C518:     var_394 = CVar(CLng(var_92)) 'Long
  loc_152C520:     var_3B4 = CVar(CLng(2)) 'Long
  loc_152C53F:     var_428 = CVar(CLng(var_92)) 'Long
  loc_152C547:     var_448 = CVar(CLng(3)) 'Long
  loc_152C59A:     var_750 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_152C5CB:     var_758 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_152C5DC:     Proc_6_7_F26918(var_640, Date, var_758, CVar(CLng(5)), CVar(CLng(var_92)), var_750, CVar(CLng(4)), CVar(CLng(var_92)))
  loc_152C5E5:     var_680 = CVar(CLng(var_92)) 'Long
  loc_152C5ED:     var_6A0 = CVar(CLng(5)) 'Long
  loc_152C626:     var_144 = "Insert Into Stock(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,Qtyrec,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_AC
  loc_152C62D:     var_1CC = var_144 & "',"
  loc_152C662:     var_204 = CVar(var_1CC & CStr(var_738) & ",") & var_10C & ",'" & CVar(var_1E4) & "','" 
  loc_152C6A6:     var_2D0 = var_204 & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" & CVar(var_264.Tag) & "','','',''," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_152C6E2:     var_490 = var_2D0 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_152C741:     var_6E8 = var_490 & "," & CVar(var_750) & "," & CVar(var_758) & ",'" & CVar(MemVar_1F950C8) & "'," & var_640 & ",'A'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_152C758:     unk_49C7F4.Execute CStr(var_6E8 & ")"), var_72C, -1
  loc_152C7FE:   End If
  loc_152C801: Next var_158 'Integer
  loc_152C80A: Set var_A0 = Me.TopCtrl1
  loc_152C810: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_152C829: If (CStr() = "Add") Then
  loc_152C840:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_152C866:   Set var_A0 = Me.Txt
  loc_152C86C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_1CC, var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_152C874:   var_1C8 = var_A4.Tag
  loc_152C87D:   var_1D4 = -1 & var_1CC
  loc_152C884:   var_11C = CVar(var_1CC & CStr(var_738) & "' And VP.Date_From<=") 'String
  loc_152C895:   Set var_A8 = Me.Txt
  loc_152C89B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_14C, var_1E4)
  loc_152C8A3:   var_11C = var_14C.Text
  loc_152C8B1:   Proc_6_7_F26918(var_10C, CVar(var_1E4))
  loc_152C8D0:   unk_49C7F4.Execute CStr(var_150 & var_10C & " Order By VP.Date_From DESC"), , 
  loc_152C8DB:   Set var_88 = var_150
  loc_152C91F:   If (var_88.RecordCount > 0) Then
  loc_152C930:     Set var_A0 = Me.Txt
  loc_152C936:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_152C94B:     var_738 = Val(var_A4.Text)
  loc_152C960:     var_A8 = var_88.Fields
  loc_152C970:     var_FC = var_A8.Item("V_Type").Value
  loc_152C99B:     Proc_6_7_F26918(var_1C8, CVar(var_88.Fields.Item("Date_From")))
  loc_152C9B5:     var_144 = CStr(var_738)
  loc_152C9D5:     var_1E4 = "Update Voucher_Prefix Set Start_Srl_No=" & var_144 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_152CA00:     unk_49C7F4.Execute CStr(CVar(var_1E4 & "') and V_Type='") & var_FC & "' and Date_From=" & var_1C8), var_204, -1
  loc_152CA3A:   End If
  loc_152CA3A: End If
  loc_152CA3E: Set var_A0 = Me.TopCtrl1
  loc_152CA44: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_1DC)
  loc_152CA5D: If (CStr(var_738) = "Add") Then
  loc_152CA83:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_152CA93:   Call 0.Method_arg_50 (var_144, var_AC & "' AND ENAME='", var_FC, -1, var_A0)
  loc_152CAA3:   var_1D0 = var_A4 & var_144 & "' "
  loc_152CAAC:   unk_49C7F4.Execute var_1D0, 0, var_A8
  loc_152CAB4:   var_10C = var_A0.Fields
  loc_152CABC:    = var_A4.Item()
  loc_152CAC4:    = var_A8.Value
  loc_152CAF1:   If (var_10C > 0) Then
  loc_152CB12:     Set var_A0 = Me.Txt
  loc_152CB18:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_152CB20:     var_FC = var_A4.Text
  loc_152CB29:     var_144 = -1 & var_AC
  loc_152CB47:     Call 0.Method_arg_50 (var_1D0, var_144 & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_152CB60:     unk_49C7F4.Execute var_A8 & var_1D0 & "'  ", , 
  loc_152CB87:   Else
  loc_152CBAB:     Call 0.Method_arg_50 (var_144, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_204)
  loc_152CBB4:     var_1CC = -1 & var_144
  loc_152CBBB:     var_1D4 = var_144 & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_152CBCC:     Set var_A0 = Me.Txt
  loc_152CBD2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_1D0)
  loc_152CBDA:     var_1D4 = var_A4.Text
  loc_152CC09:     Proc_6_7_F26918(var_10C, Date)
  loc_152CC15:     var_BC = ",'A','"
  loc_152CC3B:     unk_49C7F4.Execute CStr(CVar(var_A8 & var_1D0 & "','" & MemVar_1F95070 & "',") & var_10C & var_BC & CVar(MemVar_1F95078) & "')"), , 
  loc_152CC73:   End If
  loc_152CC73: End If
  loc_152CC79: unk_49C7F4.CommitTrans
  loc_152CC80: var_8A = 0
  loc_152CC91: Set var_A0 = Me.Txt
  loc_152CC97: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_152CCB3: var_8A = 0
  loc_152CCC1: Me.Requery -1
  loc_152CCEB: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_152CCFB: Set var_A0 = Me.TopCtrl1
  loc_152CD01: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_BC)
  loc_152CD1A: If (CStr(var_8A) = "Add") Then
  loc_152CD1D:   Call TopCtrl1_UnknownEvent_A()
  loc_152CD22:   Exit Sub
  loc_152CD23: End If
  loc_152CD46: Call Proc_35_50_EF6248(Proc_5_1_100EC1C("INI", Me), global_68)
  loc_152CD51: Call Proc_35_47_13A1D90(var_8A)
  loc_152CD5B: Set var_88 = Nothing
  loc_152CD5E: Exit Sub
  loc_152CD5F: ' Referenced from: 152BF08
  loc_152CD65: If (var_8A = &HFF) Then
  loc_152CD6E:   unk_49C7F4.RollbackTrans
  loc_152CD73: End If
  loc_152CD73: Proc_6_60_E63754()
  loc_152CD78: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F5A118
  'Data Table: 49C7D8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F59FF8: On Error Goto loc_F5A112
  loc_F5A00A: Me.DGRoom.Visible = False
  loc_F5A029: If (Me.RecordCount > 0) Then
  loc_F5A068:   Set var_B4 = Me.Txt
  loc_F5A06E:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_F5A076:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5A0A9:   var_B0 = Me.Fields.Item("Code")
  loc_F5A0C8:   Set var_B4 = Me.Txt
  loc_F5A0CE:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_F5A0D6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5A0EC: End If
  loc_F5A0F7: Set var_A8 = Me.Txt
  loc_F5A0FD: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3))
  loc_F5A105: var_B0.SetFocus
  loc_F5A111: Exit Sub
  loc_F5A112: ' Referenced from: F59FF8
  loc_F5A112: Proc_6_60_E63754(var_B0)
  loc_F5A117: Exit Sub
End Sub

Private Sub Form_Load() '1213AE0
  'Data Table: 49C7D8
  Dim var_C4 As Variant
  Dim var_88 As String
  Dim unk_49C7F4 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_120 As Variant
  loc_1213620: On Error Goto loc_1213AD9
  loc_1213633: global_128 = MemVar_1F951C0
  loc_121363D: global_132 = MemVar_1F951C4
  loc_1213647: var_C4 = 0
  loc_1213667: var_88 = "Select 'O'+Depart.ShortName From Depart Where Code='" & MemVar_1F951BC
  loc_1213677: unk_49C7F4.Execute var_88 & "'", var_AC, -1
  loc_121367F: var_B0 = var_B0.Fields
  loc_1213687: var_C4 = var_B4.Item(var_B4)
  loc_121368F: var_C8 = var_C8.Value
  loc_121369E: global_120 = CStr(var_D8)
  loc_12136C5: Set global_56 = New 
  loc_12136D7: Me.Recordset15.CursorLocation = 3
  loc_1213704: var_AC = CVar("Select V_Type As Code,Description As Name,NCat From Voucher_Type Where V_TYPE='" & global_120 & "' Order by Description") 'String
  loc_121370E: Me.Open var_AC, CVar(MemVar_1F95044), 3
  loc_1213722: CVarUnk
  loc_1213727: VerifyVarObj
  loc_121372D: Set var_B0 = Me.DGVType
  loc_1213733: LateIdStAd
  loc_1213758: If (Me.RecordCount <= 0) Then
  loc_1213774:   MsgBox("House Keeping Not Configured for selected Department", 0, var_D8, var_100, var_120)
  loc_1213784: End If
  loc_121378E: Set global_60 = New 
  loc_12137A0: Me.CursorLocation = 3
  loc_12137BC: var_9C = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code WHERE I.TYPE IN ('Store Item','Consumables') AND IG.TYPE IN ('Store Item','Consumables') And I.ItemType='Store' Order by I.Name"
  loc_12137C8: Me.Open var_9C, CVar(MemVar_1F95044), 3
  loc_12137D6: CVarUnk
  loc_12137DB: VerifyVarObj
  loc_12137E1: Set var_B0 = Me.DGItem
  loc_12137E7: LateIdStAd
  loc_1213811: Me.DGItem.CursorLocation = 3
  loc_1213847: CVarUnk
  loc_121384C: VerifyVarObj
  loc_1213858: LateIdStAd
  loc_1213870: Set global_68 = New 
  loc_1213882: Me.DGRoom.CursorLocation = 3
  loc_12138A8: var_88 = "Select Distinct S.DocId as SearchCode,S.DocID From STOCK S WHERE VTYPE='" & global_120
  loc_12138AF: var_AC = CVar(var_88 & "' Order by Docid") 'String
  loc_12138B9: elect R.Code ,R.Name As Name From Depart R where R.RestType in ('House Keeping')Order by R.Name", CVar(MemVar_1F95044), 3 var_AC, CVar(MemVar_1F95044), 3
  loc_12138E9: Call 0.Method_arg_50 (var_88, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_AC, -1, Me.DGRoom, var_B4, 0, var_C8)
  loc_1213910: unk_49C7F4.Execute var_D8 & var_88 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_1213918: var_B0 = var_B0.Fields
  loc_1213920: 1 = var_B4.Item(New)
  loc_1213928: -1 = var_C8.Value
  loc_1213955: If (var_D8 > 0) Then
  loc_1213990:   Call 0.Method_arg_50 (var_88, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_AC, -1, var_B0, var_B4, 0)
  loc_12139B7:   unk_49C7F4.Execute var_C8 & var_88 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_D8, "SearchCode='"
  loc_12139BF:   0 = var_B0.Fields
  loc_12139C7:   var_13C = var_B4.Item(1)
  loc_12139CF:    = var_C8.Value
  loc_12139EE:   Me.Find CStr(var_D8 & "'"), , 
  loc_1213A16: End If
  loc_1213A2D: If (Me.RecordCount > 0) Then
  loc_1213A44:   If (Me.EOF = &HFF) Then
  loc_1213A4D:     Me.MoveLast
  loc_1213A52:   End If
  loc_1213A52: End If
  loc_1213A75: Call Proc_35_50_EF6248(Proc_5_1_100EC1C("INI", Me))
  loc_1213A92: Set var_B0 = Me
  loc_1213A98: Proc_6_23_DFC5B8(var_B0, 4950)
  loc_1213AA9: Call 0.Method_arg_160 (var_B0, 8595)
  loc_1213AB7: Call 0.Method_arg_164 (var_B0)
  loc_1213ABF: Call Proc_35_44_1180018(global_68)
  loc_1213AC4: Call Proc_35_47_13A1D90()
  loc_1213AD3: Call 0.Method_arg_64 (CLng(global_132))
  loc_1213AD8: Exit Sub
  loc_1213AD9: ' Referenced from: 1213620
  loc_1213AD9: Proc_6_60_E63754()
  loc_1213ADE: Exit Sub
End Sub

Private Sub Form_Resize() 'E5CE8C
  'Data Table: 49C7D8
  loc_E5CE7A: Proc_6_135_12AA86C(var_A8, Me, "DU")
  loc_E5CE88: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E794B8
  'Data Table: 49C7D8
  loc_E7945F: Set global_64 = Nothing
  loc_E79471: Set global_60 = Nothing
  loc_E79483: Set global_56 = Nothing
  loc_E79495: Set global_72 = Nothing
  loc_E794A7: Set global_68 = Nothing
  loc_E794B3: MasterFormExit = 0
  loc_E794B6: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2612C
  'Data Table: 49C7D8
  loc_E26111: If (MasterFormExit = &HFF) Then
  loc_E26121:   Me.Global.Unload Me
  loc_E26129: End If
  loc_E26129: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E36C08
  'Data Table: 49C7D8
  loc_E36BDC: On Error Goto loc_E36C00
  loc_E36BF7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E36BFF: Exit Sub
  loc_E36C00: ' Referenced from: E36BDC
  loc_E36C00: Proc_6_60_E63754(Shift)
  loc_E36C05: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD5228
  'Data Table: 49C7D8
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD506C: On Error Goto loc_FD5220
  loc_FD507E: Me.DGVType.Visible = False
  loc_FD509D: If (Me.RecordCount > 0) Then
  loc_FD50EF:   Set var_CC = Me.Txt
  loc_FD50F5:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD50FD:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD5155:   Set var_B4 = Me.DGVType
  loc_FD516C:   Set var_CC = Me.Txt
  loc_FD5172:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD517A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD51CE:   global_100 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD51DF: End If
  loc_FD51FD: Set var_B0 = Me.Txt
  loc_FD5203: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD520B: var_B4.SetFocus
  loc_FD521F: Exit Sub
  loc_FD5220: ' Referenced from: FD506C
  loc_FD5220: Proc_6_60_E63754(var_B4)
  loc_FD5225: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10F5120
  'Data Table: 49C7D8
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_10F4E0A: Set var_88 = Me.Txt
  loc_10F4E10: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10F4E1E: Proc_6_74_E23240(var_8C)
  loc_10F4E2A: Call Proc_35_51_EBEDD4(var_8C)
  loc_10F4E32: var_92 = Index
  loc_10F4E3D: If (var_92 = CInt(0)) Then
  loc_10F4E53:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_10F4EAC:   Set var_88 = Me.Txt
  loc_10F4EB2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_10F4EBA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10F4ED2:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_10F4ED5:     Exit Sub
  loc_10F4ED6:   End If
  loc_10F4EE3:   Set var_88 = Me.Txt
  loc_10F4EE9:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F4EF1:   var_C0 = var_8C.Text
  loc_10F4EF9:   var_D4 = CVar(var_C0) 'String
  loc_10F4F3E:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F4F47:     Me.MoveFirst
  loc_10F4F6C:     Set var_88 = Me.Txt
  loc_10F4F72:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F4F7A:     0 = var_8C.Text
  loc_10F4F88:     Proc_6_17_EAAE40(var_D4, CVar(var_C0))
  loc_10F4F9E:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F4FB6:   End If
  loc_10F4FB9: Else
  loc_10F4FC1:   If (var_92 = CInt(3)) Then
  loc_10F5012:     Set var_88 = Me.Txt
  loc_10F5018:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F5038:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10F503B:       Exit Sub
  loc_10F503C:     End If
  loc_10F5049:     Set var_88 = Me.Txt
  loc_10F504F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F5057:     var_C0 = var_8C.Text
  loc_10F505F:     var_D4 = CVar(var_C0) 'String
  loc_10F50A4:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F50AD:       Me.MoveFirst
  loc_10F50D2:       Set var_88 = Me.Txt
  loc_10F50D8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F50E0:       0 = var_8C.Text
  loc_10F50EE:       Proc_6_17_EAAE40(var_D4, CVar(var_C0))
  loc_10F5104:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F511C:     End If
  loc_10F511C:   End If
  loc_10F511C: End If
  loc_10F511C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '103574C
  'Data Table: 49C7D8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  loc_103551E: If (CLng(Shift) = &H1B) Then
  loc_1035521:   Call Proc_35_51_EBEDD4()
  loc_1035526:   Exit Sub
  loc_1035527: End If
  loc_103552A: var_86 = KeyCode
  loc_1035535: If (var_86 = CInt(0)) Then
  loc_1035550:   Set var_9C = Nothing
  loc_103555B:   Set var_98 = Nothing
  loc_1035589:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_10355A0: Else
  loc_10355A8:   If (var_86 = CInt(3)) Then
  loc_10355C3:     Set var_9C = Nothing
  loc_10355FC:     Proc_6_69_134A630(Me.DGRoom, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1035610:   End If
  loc_1035610: End If
  loc_1035641: Set var_98 = Me.DGRoom
  loc_1035666: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_103567E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1035687:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_103568C:   End If
  loc_1035690:   Set var_8C = Me.TopCtrl1
  loc_1035696:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_98)
  loc_10356B8:   If ((CStr(var_9C) = "Add") And (KeyCode <> CInt(0))) Then
  loc_10356D0:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10356D9:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10356DE:     End If
  loc_10356E1:   Else
  loc_10356E5:     Set var_8C = Me.TopCtrl1
  loc_10356EB:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(0)
  loc_103570D:     If ((CStr(var_86) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1035725:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_103572E:         Proc_6_76_E533C8(Shift)
  loc_1035733:       End If
  loc_1035733:     End If
  loc_1035733:   End If
  loc_1035748:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_103574B:   End If
  loc_103574B: End If
  loc_103574B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F752E4
  'Data Table: 49C7D8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F751A0: On Error Goto loc_F752DE
  loc_F751A6: Proc_6_58_E06050(arg_10)
  loc_F751AE: var_86 = KeyAscii
  loc_F751B9: If (var_86 = CInt(0)) Then
  loc_F751D8:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F751EE:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F751FD:     Set var_B8 = Me.Txt
  loc_F75208:     var_B0 = "Name"
  loc_F75223:     Proc_6_89_1470B00(var_B8, KeyAscii, global_56, arg_10)
  loc_F75232:   End If
  loc_F75235: Else
  loc_F7523D:   If (var_86 = CInt(1)) Then
  loc_F7524A:     Set var_8C = Me.Txt
  loc_F75250:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_F7526B:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_F7527A:   Else
  loc_F75282:     If (var_86 = CInt(3)) Then
  loc_F752A1:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F752CE:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_F752DD:       End If
  loc_F752DD:     End If
  loc_F752DD:   End If
  loc_F752DD: End If
  loc_F752DD: Exit Sub
  loc_F752DE: ' Referenced from: F751A0
  loc_F752DE: Proc_6_60_E63754(0, 0)
  loc_F752E3: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE60C
  'Data Table: 49C7D8
  Dim var_86 As Integer
  loc_DFE607: var_86 = KeyCode
  loc_DFE60A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50114
  'Data Table: 49C7D8
  loc_E500F2: Set var_88 = Me.Txt
  loc_E500F8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50106: Proc_6_73_E23294(var_8C)
  loc_E50112: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '146F204
  'Data Table: 49C7D8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_160 As TextBox
  Dim var_184 As Variant
  Dim var_18C As TextBox
  Dim var_1B0 As Variant
  Dim var_130 As String
  Dim unk_49C7F4 As Connection15
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_CC As Variant
  loc_146E640: On Error Goto loc_146F1FD
  loc_146E646: var_8E = Cancel
  loc_146E651: If (var_8E = CInt(0)) Then
  loc_146E65F:   Set var_94 = Me.Txt
  loc_146E665:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146E66D:   var_A0 = "Voucher Type"
  loc_146E68E:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_146E69C:     Set var_94 = Me.Txt
  loc_146E6A2:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146E6AA:     var_98.SetFocus
  loc_146E6B8:     arg_10 = &HFF
  loc_146E6BB:     Exit Sub
  loc_146E6BC:   End If
  loc_146E70A:   Set var_94 = Me.Txt
  loc_146E710:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146E718:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146E730:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146E740:     Set var_94 = Me.Txt
  loc_146E746:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146E74E:     var_98.Text = vbNullString
  loc_146E767:     Set var_94 = Me.Txt
  loc_146E76D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146E775:     var_98.Tag = vbNullString
  loc_146E787:     global_100 = vbNullString
  loc_146E78E:   Else
  loc_146E7C9:     Set var_9C = Me.Txt
  loc_146E7CF:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146E7D7:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146E828:     Set var_9C = Me.Txt
  loc_146E82E:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146E836:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_146E869:     var_98 = Me.Fields.Item("NCat")
  loc_146E880:     global_100 = CStr(var_98.Value)
  loc_146E895:     Set var_94 = Me.TopCtrl1
  loc_146E89B:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_8E)
  loc_146E8B4:     If (CStr() = "Add") Then
  loc_146E8C2:       If (global_116 = "Automatic") Then
  loc_146E8D2:         Set var_94 = Me.Txt
  loc_146E8D8:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146E8E0:         var_98.Enabled = False
  loc_146E8EF:       Else
  loc_146E8FC:         Set var_94 = Me.Txt
  loc_146E902:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146E90A:         var_98.Enabled = True
  loc_146E921:         Set var_94 = Me.Txt
  loc_146E927:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_146E92F:         var_98.SetFocus
  loc_146E93B:       End If
  loc_146E93B:     End If
  loc_146E93B:   End If
  loc_146E93F:   Set var_94 = Me.TopCtrl1
  loc_146E945:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_98)
  loc_146E94D:   var_A0 = CStr()
  loc_146E95E:   If (var_A0 = "Add") Then
  loc_146E967:     Call Proc_35_53_106B808(MemVar_1F95044)
  loc_146E97A:     Set var_94 = Me.Txt
  loc_146E980:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146E988:     var_98.Text = var_A0
  loc_146E997:   End If
  loc_146E99A: Else
  loc_146E9A2:   If (var_8E = CInt(1)) Then
  loc_146E9B0:     Set var_94 = Me.Txt
  loc_146E9B6:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146E9BE:     var_A0 = "Vr. No"
  loc_146E9DF:     If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_146E9ED:       Set var_94 = Me.Txt
  loc_146E9F3:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146E9FB:       var_98.SetFocus
  loc_146EA09:       arg_10 = &HFF
  loc_146EA0C:       Exit Sub
  loc_146EA0D:     End If
  loc_146EA1B:     Set var_94 = Me.Txt
  loc_146EA21:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_146EA29:     arg_10 = var_98.Text
  loc_146EA41:     If (CDbl(var_A0) = CDbl(0)) Then
  loc_146EA5D:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_10C, var_12C)
  loc_146EA77:       Set var_94 = Me.Txt
  loc_146EA7D:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146EA85:       var_98.SetFocus
  loc_146EA93:       arg_10 = &HFF
  loc_146EA96:       Exit Sub
  loc_146EA97:     End If
  loc_146EA9B:     Set var_94 = Me.TopCtrl1
  loc_146EAA1:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(arg_10)
  loc_146EABA:     If (CStr(var_A0) = "Add") Then
  loc_146EAE2:       Set var_94 = Me.Txt
  loc_146EAE8:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146EB0F:       Set var_9C = Me.Txt
  loc_146EB15:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_138)
  loc_146EB1D:       5 = var_BC.Tag
  loc_146EB2A:       var_CC = Space((CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_98.Tag) - Len(var_138)))
  loc_146EB32:       var_10C = ( + "Vr. No Can Not Be 0")
  loc_146EB46:       var_12C = Space((5 - Len(global_92)))
  loc_146EB4E:       var_148 = (var_10C + var_12C)
  loc_146EB5B:       var_158 = (var_148 + CVar(global_92))
  loc_146EB72:       Set var_15C = Me.Txt
  loc_146EB78:       Call 0.Method_Txt_Validate0 (CInt(1), var_160, var_164)
  loc_146EB80:       8 = var_160.Text
  loc_146EB8D:       var_174 = Space((var_158 - Len(var_164)))
  loc_146EB95:       var_184 = ( + var_174)
  loc_146EBA7:       Set var_188 = Me.Txt
  loc_146EBAD:       Call 0.Method_Txt_Validate0 (CInt(1), var_18C)
  loc_146EBC0:       var_1B0 = (var_184 + CVar(var_18C.Text))
  loc_146EC19:       Set var_94 = Me.Txt
  loc_146EC1F:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146EC27:       var_98.Text = CStr(var_1B0)
  loc_146EC43:       Me.LblVPrefix.Caption = global_92
  loc_146EC4B:     End If
  loc_146EC4F:     Set var_94 = Me.TopCtrl1
  loc_146EC55:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_146EC5D:     var_A0 = CStr()
  loc_146EC6E:     If (var_A0 = "Add") Then
  loc_146EC9E:       Set var_94 = Me.Txt
  loc_146ECA4:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, "Select Count(*) From STOCK Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_146ECB5:       var_130 = var_BC & var_A0
  loc_146ECC5:       unk_49C7F4.Execute var_130 & "'", 0, var_15C
  loc_146ECD5:        = var_BC.Item()
  loc_146ECDD:        = var_15C.Value
  loc_146ED0A:       If (var_98.Text.Fields > 0) Then
  loc_146ED13:         Call 0.Method_arg_50 (var_A0)
  loc_146ED34:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_10C, var_12C)
  loc_146ED4A:         Call Proc_35_53_106B808(MemVar_1F95044)
  loc_146ED5A:         If (var_A0 = vbNullString) Then
  loc_146ED67:           Set var_94 = Me.Txt
  loc_146ED6D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146ED75:           var_98.SetFocus
  loc_146ED83:           arg_10 = &HFF
  loc_146ED86:           Exit Sub
  loc_146ED87:         End If
  loc_146ED8D:         Call Proc_35_53_106B808(MemVar_1F95044, var_A0)
  loc_146EDA0:         Set var_94 = Me.Txt
  loc_146EDA6:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_146EDAE:         var_98.Text = arg_10
  loc_146EDBF:         arg_10 = &HFF
  loc_146EDC2:         Exit Sub
  loc_146EDC3:       End If
  loc_146EDC3:     End If
  loc_146EDC6:   Else
  loc_146EDCE:     If (var_8E = CInt(2)) Then
  loc_146EDDF:       Set var_94 = Me.Txt
  loc_146EDE5:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_146EDED:       arg_10 = var_98.Text
  loc_146EE03:       var_10C = Len(Trim(CVar(var_A0)))
  loc_146EE1D:       If (var_10C = 0) Then
  loc_146EE33:         Set var_94 = Me.Txt
  loc_146EE39:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_146EE41:         var_98.Text = CStr(MemVar_1F950EC)
  loc_146EE53:       Else
  loc_146EE5D:         Set var_94 = Me.Txt
  loc_146EE63:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146EE83:         Set var_BC = Me.Txt
  loc_146EE89:         Call 0.Method_Txt_Validate0 (Cancel, var_15C)
  loc_146EE91:         var_15C.Text = Proc_6_33_15125B8(var_98)
  loc_146EEA4:       End If
  loc_146EEB1:       Set var_94 = Me.Txt
  loc_146EEB7:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146EEBF:       var_A0 = var_98.Text
  loc_146EEDA:       Set var_9C = Me.Txt
  loc_146EEE0:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_130)
  loc_146EEE8:       (CDate(var_A0) >= MemVar_1F950F4) = var_BC.Text
  loc_146EF0A:       If Not((var_A0 And (CDate(var_130) <= MemVar_1F950FC))) Then
  loc_146EF2E:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_146EF48:         Set var_94 = Me.Txt
  loc_146EF4E:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_146EF56:         var_98.SetFocus
  loc_146EF64:         arg_10 = &HFF
  loc_146EF67:         Exit Sub
  loc_146EF68:       End If
  loc_146EF6C:       Set var_94 = Me.TopCtrl1
  loc_146EF72:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(arg_10)
  loc_146EF7A:       var_A0 = CStr(var_98)
  loc_146EF90:       Set var_98 = Me.Txt
  loc_146EF96:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_146EFBF:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_146EFC8:         Call Proc_35_53_106B808(MemVar_1F95044)
  loc_146EFDB:         Set var_94 = Me.Txt
  loc_146EFE1:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146EFE9:         var_98.Text = var_A0
  loc_146EFF8:       End If
  loc_146EFFB:     Else
  loc_146F003:       If (var_8E = CInt(3)) Then
  loc_146F011:         Set var_94 = Me.Txt
  loc_146F017:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146F01F:         var_A0 = "Depart"
  loc_146F040:         If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_146F04E:           Set var_94 = Me.Txt
  loc_146F054:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146F05C:           var_98.SetFocus
  loc_146F06A:           arg_10 = &HFF
  loc_146F06D:           Exit Sub
  loc_146F06E:         End If
  loc_146F0BC:         Set var_94 = Me.Txt
  loc_146F0C2:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146F0CA:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146F0E2:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146F0F2:           Set var_94 = Me.Txt
  loc_146F0F8:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146F100:           var_98.Text = vbNullString
  loc_146F119:           Set var_94 = Me.Txt
  loc_146F11F:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146F127:           var_98.Tag = vbNullString
  loc_146F136:         Else
  loc_146F171:           Set var_9C = Me.Txt
  loc_146F177:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146F17F:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146F1C3:           var_A0 = CStr(Me.Fields.Item("Code").Value)
  loc_146F1D0:           Set var_9C = Me.Txt
  loc_146F1D6:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146F1DE:           var_BC.Tag = var_A0
  loc_146F1F4:         End If
  loc_146F1F4:       End If
  loc_146F1F4:     End If
  loc_146F1F4:   End If
  loc_146F1F4: End If
  loc_146F1F9: Set var_88 = Nothing
  loc_146F1FC: Exit Sub
  loc_146F1FD: ' Referenced from: 146E640
  loc_146F1FD: Proc_6_60_E63754(var_A0)
  loc_146F202: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10F27A8
  'Data Table: 49C7D8
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Recordset15
  loc_10F249A: Set var_88 = Me.TxtGrid
  loc_10F24A0: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_10F24AE: Proc_6_74_E23240(var_8C)
  loc_10F24BA: Call Proc_35_51_EBEDD4(var_8C)
  loc_10F24CB: If (Index = 0) Then
  loc_10F24E4:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_10F24FF:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F2508:   Set var_8C = Me.FGrid
  loc_10F253E:   Set var_108 = Me.TxtGrid
  loc_10F2544:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10F254C:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_10F258D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10F259D:     Set var_90 = Me.TxtGrid
  loc_10F25A3:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_10F25AB:     var_114 = var_108.Height
  loc_10F25BD:     Set var_88 = Me.TxtGrid
  loc_10F25C3:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118)
  loc_10F25CB:     var_A4 = var_8C.Top
  loc_10F25D7:     var_A4 = CVar((var_118 + var_11C)) 'Single
  loc_10F25E6:     Me.DGItem.Top = var_A4
  loc_10F2605:     Set var_88 = Me.TxtGrid
  loc_10F260B:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_10F262A:     Me.DGItem.Left = CVar(var_8C.Left)
  loc_10F2679:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10F267C:       Exit Sub
  loc_10F267D:     End If
  loc_10F2683:     Me.MoveFirst
  loc_10F269B:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F26A3:     var_E4 = CVar(CLng(6)) 'Long
  loc_10F26AC:     Set var_8C = Me.FGrid
  loc_10F26B2:     var_D4 = var_8C.TextMatrix)
  loc_10F26E7:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_10F2717:     If (Me.EOF = &HFF) Then
  loc_10F2720:       Me.MoveFirst
  loc_10F2725:     End If
  loc_10F272E:     CVarUnk
  loc_10F2733:     VerifyVarObj
  loc_10F2739:     Set var_88 = Me.DGItem
  loc_10F273F:     LateIdStAd
  loc_10F2750:   Else
  loc_10F2757:     If (var_114 = CLng(3)) Then
  loc_10F276F:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_60)
  loc_10F2777:       var_8C.MaxLength = var_138
  loc_10F278C:       If (global_110 = 0) Then
  loc_10F2797:         var_110 = "{Home}+{End}"
  loc_10F279D:         Proc_303_0_FBACC8(CStr(var_D4), 0, var_D4)
  loc_10F27A5:       End If
  loc_10F27A5:     End If
  loc_10F27A5:   End If
  loc_10F27A5: End If
  loc_10F27A5: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10D4F3C
  'Data Table: 49C7D8
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10D4C48: If (KeyCode = 0) Then
  loc_10D4C55:   If (CLng(Shift) = &H1B) Then
  loc_10D4C65:     Set var_8C = Me.TxtGrid
  loc_10D4C6B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10D4C85:     Set var_98 = Me.TxtGrid
  loc_10D4C8B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10D4C93:     var_9C.Text = var_90.Tag
  loc_10D4CAF:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10D4CB4:     Call Proc_35_51_EBEDD4(arg_14)
  loc_10D4CBD:     Set var_8C = Me.FGrid
  loc_10D4CDA:     Set var_8C = Me.TxtGrid
  loc_10D4CE0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10D4CE8:     var_90.Visible = FGrid.DispID_8001
  loc_10D4CF4:     Exit Sub
  loc_10D4CF5:   End If
  loc_10D4D08:   var_B0 = CLng(Me.FGrid.Col)
  loc_10D4D18:   If (var_B0 = CLng(1)) Then
  loc_10D4D33:     Set var_9C = Nothing
  loc_10D4D6C:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_10D4D8A:     If (CLng(Shift) = &HD) Then
  loc_10D4D93:       Call Proc_35_46_12B37B8(KeyCode, var_B2, 1, Nothing)
  loc_10D4D9E:       If (var_B2 = &HFF) Then
  loc_10D4DE4:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 3, 0)
  loc_10D4DF4:       End If
  loc_10D4DF4:     End If
  loc_10D4DF7:   Else
  loc_10D4DFE:     If (var_B0 = CLng(2)) Then
  loc_10D4E0B:       If (CLng(Shift) = &HD) Then
  loc_10D4E14:         Call Proc_35_46_12B37B8(KeyCode, var_B2, 3, 0)
  loc_10D4E1F:         If (var_B2 = &HFF) Then
  loc_10D4E6C:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, CByte((CInt(3) + 1)), 0)
  loc_10D4E7C:         End If
  loc_10D4E7C:       End If
  loc_10D4E7F:     Else
  loc_10D4E86:       If (var_B0 = CLng(3)) Then
  loc_10D4EC9:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_10D4ED2:           Call Proc_35_46_12B37B8(KeyCode, var_B2, 0, 0)
  loc_10D4EDD:           If (var_B2 = &HFF) Then
  loc_10D4F2A:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, CByte((CInt(3) + 1)), 0)
  loc_10D4F3A:           End If
  loc_10D4F3A:         End If
  loc_10D4F3A:       End If
  loc_10D4F3A:     End If
  loc_10D4F3A:   End If
  loc_10D4F3A: End If
  loc_10D4F3A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F0179C
  'Data Table: 49C7D8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim arg_60FF As Integer
  loc_F016C3: Proc_6_58_E06050(arg_10)
  loc_F016D4: If (KeyAscii = 0) Then
  loc_F016EA:   var_A0 = CLng(Me.FGrid.Col)
  loc_F016FA:   If (var_A0 = CLng(1)) Then
  loc_F01719:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F01720:       Set var_AC = Me.TxtGrid
  loc_F0172B:       var_A4 = "Name"
  loc_F01746:       Proc_6_89_1470B00(var_AC, KeyAscii, global_60, arg_10)
  loc_F01755:     End If
  loc_F01758:   Else
  loc_F0175F:     If (var_A0 = CLng(3)) Then
  loc_F0176C:       Set var_8C = Me.TxtGrid
  loc_F01772:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F0178D:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F01799:     End If
  loc_F01799:   End If
  loc_F01799: End If
  loc_F01799: Exit Sub
  loc_F0179A: arg_60FF = 0
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDB608
  'Data Table: 49C7D8
  loc_EDB554: On Error Goto loc_EDB5FF
  loc_EDB563: If (KeyCode = 0) Then
  loc_EDB589:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EDB5AF:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EDB5C0:       Call TxtGrid_KeyDown(KeyCode, global_108)
  loc_EDB5EF:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "Name")
  loc_EDB5FE:     End If
  loc_EDB5FE:   End If
  loc_EDB5FE: End If
  loc_EDB5FE: Exit Sub
  loc_EDB5FF: ' Referenced from: EDB554
  loc_EDB5FF: Proc_6_60_E63754(&HFF, 0)
  loc_EDB604: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2276C
  'Data Table: 49C7D8
  Dim arg_10 As Integer
  loc_E22754: If (Cancel = 0) Then
  loc_E2275D:   Call Proc_35_46_12B37B8(Cancel, var_88)
  loc_E22766:   arg_10 = Not(var_88)
  loc_E22769: End If
  loc_E22769: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A9CC8
  'Data Table: 49C7D8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  loc_10A9A13: Me.DGItem.Visible = False
  loc_10A9A32: If (Me.RecordCount > 0) Then
  loc_10A9A6F:   Set var_B4 = Me.TxtGrid
  loc_10A9A75:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A9A7D:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_10A9AA6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A9AAE:   var_EC = CVar(CLng(1)) 'Long
  loc_10A9AE1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A9AE9:   Set var_B8 = Me.FGrid
  loc_10A9AEF:   LateIdCallSt
  loc_10A9B1E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A9B26:   var_EC = CVar(CLng(6)) 'Long
  loc_10A9B59:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A9B67:   LateIdCallSt
  loc_10A9B8D:   var_10C = Me.FGrid.Row
  loc_10A9BCE:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_10C)), Me.FGrid, var_11C, CVar(CLng(2)))) 'String
  loc_10A9BDC:   LateIdCallSt
  loc_10A9C00:   var_11C = Me.FGrid.Row
  loc_10A9C30:   var_B0 = Me.Fields.Item("LPurRate")
  loc_10A9C3F:   Proc_6_39_E7D3A0(var_10C, CVar(var_B0), CVar(CLng(4)), CVar(CLng(var_11C)), Me.FGrid, var_11C)
  loc_10A9C48:   var_13C = CVar(CStr(var_10C)) 'String
  loc_10A9C50:   Set var_B8 = Me.FGrid
  loc_10A9C56:   LateIdCallSt
  loc_10A9C72: End If
  loc_10A9C7E: Set var_A8 = Me.TxtGrid
  loc_10A9C84: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_13E, var_B8, var_13C)
  loc_10A9C8C: var_A4 = var_B0.Visible
  loc_10A9C9E: If (var_13E = &HFF) Then
  loc_10A9CAA:   Set var_A8 = Me.TxtGrid
  loc_10A9CB0:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10A9CB8:   var_B0.SetFocus
  loc_10A9CC4: End If
  loc_10A9CC4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA3278
  'Data Table: 49C7D8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA3213: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_80)) Then
  loc_EA3229:   Me.FGrid.Col = 1
  loc_EA3231: End If
  loc_EA3244: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA3257: Set var_88 = Me.TxtGrid
  loc_EA325D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA3265: var_BC.Visible = False
  loc_EA3271: Call Proc_35_51_EBEDD4()
  loc_EA3276: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A158
  'Data Table: 49C7D8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A114: Set var_88 = Me.TxtGrid
  loc_E6A11A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A134: If (var_8C.Visible = 0) Then
  loc_E6A14D:   Me.FGrid.BackColorSel = CVar(CLng(global_80))
  loc_E6A155: End If
  loc_E6A155: Exit Sub
  loc_E6A156: DOC
End Sub

Private Sub FGrid_UnknownEvent_9 'E00474
  'Data Table: 49C7D8
  loc_E0046C: Call Proc_35_45_E40C34()
  loc_E00471: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11408B0
  'Data Table: 49C7D8
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
  loc_1140528: Set var_88 = Me.TopCtrl1
  loc_114052E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1140573: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_114057C:   Call Form_KeyDown(Cancel, arg_10)
  loc_1140581: End If
  loc_1140585: Set var_88 = Me.TopCtrl1
  loc_114058B: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_11405A4: If (CStr() = "Browse") Then
  loc_11405A7:   Exit Sub
  loc_11405A8: End If
  loc_114061C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1140635:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_1140645:   var_9C = "+{Tab}"
  loc_114064B:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1140655:   Cancel = 0
  loc_114065B: Else
  loc_1140665:   var_B0 = Me.FGrid.Rows
  loc_11406B2:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11406CB:     Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_11406D8:     Call Proc_35_52_F0CFF8(0, var_B0, Cancel)
  loc_11406DD:   End If
  loc_11406DD: End If
  loc_11406E3: global_108 = Cancel
  loc_1140709: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_114072D: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1140743:   var_EC = CLng(Me.FGrid.Col)
  loc_1140753:   If (var_EC = CLng(1)) Then
  loc_1140769:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1140781:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1140786:     var_11C = vbNullString
  loc_1140790:     Set var_B4 = Me.FGrid
  loc_1140796:     LateIdCallSt
  loc_11407C1:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11407C9:     var_FC = CVar(CLng(6)) 'Long
  loc_11407CE:     var_11C = vbNullString
  loc_11407D8:     Set var_A0 = Me.FGrid
  loc_11407DE:     LateIdCallSt
  loc_1140803:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114080B:     var_FC = CVar(CLng(3)) 'Long
  loc_1140810:     var_11C = vbNullString
  loc_114081A:     Set var_A0 = Me.FGrid
  loc_1140820:     LateIdCallSt
  loc_1140835:   Else
  loc_114083C:     If (var_EC = CLng(3)) Then
  loc_1140852:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114086A:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_114086F:       var_11C = vbNullString
  loc_1140879:       Set var_B4 = Me.FGrid
  loc_114087F:       LateIdCallSt
  loc_1140897:     End If
  loc_1140897:   End If
  loc_1140897: End If
  loc_114089D: If (Cancel = &HD) Then
  loc_11408A5:   global_110 = 0
  loc_11408A8: End If
  loc_11408AA: Cancel = 0
  loc_11408AD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F0A0
  'Data Table: 49C7D8
  loc_E0F091: Call FGrid_UnknownEvent_C()
  loc_E0F09B: global_110 = 0
  loc_E0F09E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1014DA0
  'Data Table: 49C7D8
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1014B90: Set var_88 = Me.TopCtrl1
  loc_1014B96: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1014BAF: If (CStr() = "Browse") Then
  loc_1014BB2:   Exit Sub
  loc_1014BB3: End If
  loc_1014BC6: var_A0 = CLng(Me.FGrid.Col)
  loc_1014BD6: If (var_A0 = CLng(1)) Then
  loc_1014BDD:   Set var_C4 = Me.FGrid
  loc_1014C01:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1014C2E:   Set var_B4 = var_C4
  loc_1014C40:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1014C68:   Set var_88 = Me.TxtGrid
  loc_1014C6E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1014C76:   0 = var_B4.Text
  loc_1014C8F:   If (Len(var_9C) <= 1) Then
  loc_1014C9E:     Set var_88 = Me.TxtGrid
  loc_1014CA4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1014CAC:     var_CA = var_B4.Text
  loc_1014CBD:     Set var_B8 = Me.TxtGrid
  loc_1014CC3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014CCB:     var_C4.Text = var_9C
  loc_1014CDE:   End If
  loc_1014CEA:   Set var_88 = Me.TxtGrid
  loc_1014CF0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1014D0A:   Set var_B8 = Me.TxtGrid
  loc_1014D10:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014D18:   var_C4.SelStart = Len(var_B4.Text)
  loc_1014D2E: Else
  loc_1014D35:   If (var_A0 = CLng(3)) Then
  loc_1014D76:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1014D88:   End If
  loc_1014D88: End If
  loc_1014D92: If (CLng(Cancel) <> &HD) Then
  loc_1014D9A:   global_110 = &HFF
  loc_1014D9D: End If
  loc_1014D9D: Exit Sub
  loc_1014D9E: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_D 'FEE3F0
  'Data Table: 49C7D8
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FEE218: Set var_90 = Me.TopCtrl1
  loc_FEE21E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEE237: If (CStr() = "Browse") Then
  loc_FEE23A:   Exit Sub
  loc_FEE23B: End If
  loc_FEE258: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEE25B:   Exit Sub
  loc_FEE25C: End If
  loc_FEE26D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FEE28F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEE2C9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FEE2EB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEE301:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEE30A:         Set var_118 = Me.FGrid
  loc_FEE325:       Else
  loc_FEE338:         Me.FGrid.Rows = 1
  loc_FEE35E:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FEE366:         Set var_118 = Me.FGrid
  loc_FEE393:         Me.FGrid.FixedRows = 1
  loc_FEE39B:       End If
  loc_FEE39B:     End If
  loc_FEE39E:   Else
  loc_FEE3BF:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FEE3CF:   End If
  loc_FEE3D3:   Set var_90 = Me.FGrid
  loc_FEE3E4: End If
  loc_FEE3E9: Set var_8C = Nothing
  loc_FEE3EC: Exit Sub
  loc_FEE3ED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40D00
  'Data Table: 49C7D8
  Dim var_8C As TextBox
  loc_E40CD4: Call Proc_35_51_EBEDD4()
  loc_E40CE4: Set var_88 = Me.TxtGrid
  loc_E40CEA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40CF2: var_8C.Visible = False
  loc_E40CFE: Exit Sub
End Sub

Public Function MasterFormExitGet() '49D418
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '49D427
  MasterFormExit = Value
End Sub

Public Sub FindMove(mDocId) 'E77418
  'Data Table: 49C7D8
  Dim Me As Recordset15
  loc_E773C2: Me.MoveFirst
  loc_E773EC: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E7740C: If (Me.EOF = 0) Then
  loc_E7740F:   Call Proc_35_47_13A1D90(var_9C)
  loc_E77414: End If
  loc_E77414: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96AC8
  'Data Table: 49C7D8
  Dim Me As Recordset15
  loc_E96A56: On Error Goto loc_E96ABF
  loc_E96A5F: Me.MoveFirst
  loc_E96A89: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96AB1: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E96AB9: Call Proc_35_47_13A1D90(0)
  loc_E96ABE: Exit Sub
  loc_E96ABF: ' Referenced from: E96A56
  loc_E96ABF: Proc_6_60_E63754(var_A0)
  loc_E96AC4: Exit Sub
End Sub

Public Sub Proc_35_44_1180018
  'Data Table: 49C7D8
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_117FC4E: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_117FC69: Me.FGrid.Top = CVar(CDbl(1500))
  loc_117FC84: Me.FGrid.Height = CVar(CDbl(2800))
  loc_117FC9F: Me.FGrid.Width = CVar(CDbl(8280))
  loc_117FCBA: Me.DGItem.Left = CVar(CDbl(3000))
  loc_117FCD5: Me.DGItem.Top = CVar(CDbl(1000))
  loc_117FCEB: Set var_A8 = Me.Txt
  loc_117FCF1: Call 0.Method_Proc_35_44_11800180 (CInt(3), var_AC)
  loc_117FD10: Me.DGRoom.Left = CVar(var_AC.Left)
  loc_117FD2C: Set var_B4 = Me.Txt
  loc_117FD32: Call 0.Method_Proc_35_44_11800180 (CInt(3), var_B8)
  loc_117FD4D: Set var_A8 = Me.Txt
  loc_117FD53: Call 0.Method_Proc_35_44_11800180 (CInt(3), var_AC)
  loc_117FD6B: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_117FD7A: Me.DGRoom.Top = CVar(var_AC.Left)
  loc_117FD9A: Set var_A8 = Me.Txt
  loc_117FDA0: Call 0.Method_Proc_35_44_11800180 (CInt(0), var_AC)
  loc_117FDBF: Me.DGVType.Left = CVar(var_AC.Left)
  loc_117FDDB: Set var_B4 = Me.Txt
  loc_117FDE1: Call 0.Method_Proc_35_44_11800180 (CInt(0), var_B8)
  loc_117FDFC: Set var_A8 = Me.Txt
  loc_117FE02: Call 0.Method_Proc_35_44_11800180 (CInt(0), var_AC)
  loc_117FE1A: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_117FE29: Me.DGVType.Top = CVar(var_AC.Left)
  loc_117FE3F: Set var_C4 = Me.FGrid
  loc_117FE56: global_80 = CStr(CLng(var_C4.BackColor))
  loc_117FE6C: var_C4.Cols = 7
  loc_117FE74: var_94 = CVar(CLng(0)) 'Long
  loc_117FE79: var_E8 = &HFA
  loc_117FE85: LateIdCallSt
  loc_117FE8D: var_94 = 0
  loc_117FE99: var_E8 = CVar(CLng(1)) 'Long
  loc_117FE9E: var_108 = "Item Name"
  loc_117FEA7: LateIdCallSt
  loc_117FEB2: var_94 = CVar(CLng(1)) 'Long
  loc_117FEBD: var_E8 = CVar(CInt(1)) 'Integer
  loc_117FEC4: LateIdCallSt
  loc_117FECF: var_94 = CVar(CLng(1)) 'Long
  loc_117FED4: var_E8 = &H122A
  loc_117FEE0: LateIdCallSt
  loc_117FEE8: var_94 = 0
  loc_117FEF4: var_E8 = CVar(CLng(2)) 'Long
  loc_117FEF9: var_108 = "Unit"
  loc_117FF02: LateIdCallSt
  loc_117FF0D: var_94 = CVar(CLng(2)) 'Long
  loc_117FF18: var_E8 = CVar(CInt(1)) 'Integer
  loc_117FF1F: LateIdCallSt
  loc_117FF2A: var_94 = CVar(CLng(2)) 'Long
  loc_117FF2F: var_E8 = &H578
  loc_117FF3B: LateIdCallSt
  loc_117FF43: var_94 = 0
  loc_117FF4F: var_E8 = CVar(CLng(3)) 'Long
  loc_117FF54: var_108 = "Qty"
  loc_117FF5D: LateIdCallSt
  loc_117FF68: var_94 = CVar(CLng(3)) 'Long
  loc_117FF73: var_E8 = CVar(CInt(7)) 'Integer
  loc_117FF7A: LateIdCallSt
  loc_117FF85: var_94 = CVar(CLng(3)) 'Long
  loc_117FF90: var_E8 = CVar(CInt(7)) 'Integer
  loc_117FF97: LateIdCallSt
  loc_117FFA2: var_94 = CVar(CLng(3)) 'Long
  loc_117FFA7: var_E8 = &H578
  loc_117FFB3: LateIdCallSt
  loc_117FFBE: var_94 = CVar(CLng(4)) 'Long
  loc_117FFC3: var_E8 = 0
  loc_117FFCF: LateIdCallSt
  loc_117FFDA: var_94 = CVar(CLng(5)) 'Long
  loc_117FFDF: var_E8 = 0
  loc_117FFEB: LateIdCallSt
  loc_117FFF6: var_94 = CVar(CLng(6)) 'Long
  loc_117FFFB: var_E8 = 0
  loc_1180007: LateIdCallSt
  loc_1180011: Set var_C4 = Nothing 
  loc_1180015: Exit Sub
End Sub

Public Sub Proc_35_45_E40C34
  'Data Table: 49C7D8
  loc_E40C10: Set var_88 = Me.TopCtrl1
  loc_E40C16: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E40C2F: If (CStr() = "Browse") Then
  loc_E40C32:   Exit Sub
  loc_E40C33: End If
  loc_E40C33: Exit Sub
End Sub

Public Sub Proc_35_46_12B37B8(arg_C) '12B37B8
  'Data Table: 49C7D8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_12B31B0: If (arg_C = 0) Then
  loc_12B31C6:   var_AC = CLng(Me.FGrid.Col)
  loc_12B31D6:   If (var_AC = CLng(1)) Then
  loc_12B31F9:     var_B2 = Me.EOF
  loc_12B3227:     Set var_98 = Me.TxtGrid
  loc_12B322D:     Call 0.Method_Proc_35_46_12B37B80 (arg_C, var_B8, var_BC)
  loc_12B3235:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_12B324D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_12B3263:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B326B:       var_EC = CVar(CLng(1)) 'Long
  loc_12B3270:       var_10C = vbNullString
  loc_12B327A:       Set var_B8 = Me.FGrid
  loc_12B3280:       LateIdCallSt
  loc_12B32A5:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B32AD:       var_EC = CVar(CLng(6)) 'Long
  loc_12B32B2:       var_10C = vbNullString
  loc_12B32BC:       Set var_B8 = Me.FGrid
  loc_12B32C2:       LateIdCallSt
  loc_12B32E7:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B32EF:       var_EC = CVar(CLng(2)) 'Long
  loc_12B32F4:       var_10C = vbNullString
  loc_12B32FE:       Set var_B8 = Me.FGrid
  loc_12B3304:       LateIdCallSt
  loc_12B3329:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3331:       var_EC = CVar(CLng(4)) 'Long
  loc_12B3336:       var_10C = vbNullString
  loc_12B3340:       Set var_B8 = Me.FGrid
  loc_12B3346:       LateIdCallSt
  loc_12B335B:     Else
  loc_12B335E:       Call Proc_35_55_FC02B4(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_12B3369:       If (var_B2 = 0) Then
  loc_12B3371:         Proc_35_46_12B37B8 = 0
  loc_12B3377:       End If
  loc_12B3390:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3398:       var_EC = CVar(CLng(6)) 'Long
  loc_12B33B2:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_12B33D0:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B33D8:       var_150 = CVar(CLng(6)) 'Long
  loc_12B33F2:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_12B345D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_12B3474:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_12B3490:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3498:         var_FC = CVar(CLng(1)) 'Long
  loc_12B34CB:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12B34D3:         Set var_164 = Me.FGrid
  loc_12B34D9:         LateIdCallSt
  loc_12B3508:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3510:         var_FC = CVar(CLng(6)) 'Long
  loc_12B3543:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12B354B:         Set var_164 = Me.FGrid
  loc_12B3551:         LateIdCallSt
  loc_12B3580:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3588:         var_FC = CVar(CLng(2)) 'Long
  loc_12B35B2:         var_12C = Me.Fields.Item("Unit").Value
  loc_12B35BB:         var_140 = CVar(CStr(var_12C)) 'String
  loc_12B35C3:         Set var_164 = Me.FGrid
  loc_12B35C9:         LateIdCallSt
  loc_12B35E9:         var_CC = CVar(CLng(var_92)) 'Long
  loc_12B35FB:         var_A8 = CVar(CStr(var_92)) 'String
  loc_12B3603:         Set var_98 = Me.FGrid
  loc_12B3609:         LateIdCallSt
  loc_12B3621:         var_140 = Me.FGrid.Row
  loc_12B362A:         var_DC = CVar(CLng(var_140)) 'Long
  loc_12B3632:         var_FC = CVar(CLng(4)) 'Long
  loc_12B363A:         var_CC = "LPurRate"
  loc_12B3649:         var_98 = Me.Fields
  loc_12B3651:         var_B8 = var_98.Item(var_CC)
  loc_12B3660:         Proc_6_39_E7D3A0(var_12C, CVar(var_B8), var_FC, var_DC, var_98, CVar(var_B8), CVar(CLng(0)))
  loc_12B3669:         var_174 = CVar(CStr(var_12C)) 'String
  loc_12B3671:         Set var_164 = Me.FGrid
  loc_12B3677:         LateIdCallSt
  loc_12B3693:       End If
  loc_12B3693:     End If
  loc_12B3693:     Call Proc_35_56_F7407C(var_164, var_174, var_CC, var_164, var_140)
  loc_12B369B:   Else
  loc_12B36A2:     If (var_AC = CLng(3)) Then
  loc_12B36AF:       Set var_98 = Me.TxtGrid
  loc_12B36B5:       Call 0.Method_Proc_35_46_12B37B80 (arg_C, var_B8, var_FC)
  loc_12B36CD:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_12B36D4:         var_BC = CStr(0)
  loc_12B36E1:         Set var_98 = Me.TxtGrid
  loc_12B36E7:         Call 0.Method_Proc_35_46_12B37B80 (arg_C, var_B8, var_BC)
  loc_12B36EF:         var_B8.Text = var_DC
  loc_12B36FE:       End If
  loc_12B370B:       Set var_98 = Me.TxtGrid
  loc_12B3711:       Call 0.Method_Proc_35_46_12B37B80 (arg_C, var_B8, var_BC)
  loc_12B3719:       var_164 = var_B8.Text
  loc_12B3731:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3749:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12B3783:       LateIdCallSt
  loc_12B37A7:       Call Proc_35_56_F7407C(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_12B37AC:     End If
  loc_12B37AC:   End If
  loc_12B37AC: End If
  loc_12B37B1: Proc_35_46_12B37B8 = &HFF
End Sub

Public Sub Proc_35_47_13A1D90
  'Data Table: 49C7D8
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_49C7F4 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Field20
  Dim var_144 As TextBox
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_15C As Variant
  Dim var_120 As Variant
  loc_13A14A4: On Error Goto loc_13A1D88
  loc_13A14BE: If (Me.RecordCount > 0) Then
  loc_13A1500:   var_DC = "Select S.*,D.NAME AS RestName From STOCK S LEFT JOIN DEPART D ON D.CODE=S.RESTCODE Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_13A1517:   unk_49C7F4.Execute CStr(var_DC & "'"), var_120, -1
  loc_13A153F:   Set var_128 = var_124 
  loc_13A157C:   Set var_124 = Me.Txt
  loc_13A1582:   Call 0.Method_Proc_35_47_13A1D900 (CInt(4), var_12C)
  loc_13A158A:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_13A15BA:   var_AC = var_128.Fields.Item("vType")
  loc_13A15C2:   var_BC = var_AC.Value
  loc_13A15CB:   var_100 = CStr(var_BC)
  loc_13A15D9:   Set var_124 = Me.Txt
  loc_13A15DF:   Call 0.Method_Proc_35_47_13A1D900 (CInt(0), var_12C)
  loc_13A15E7:   var_12C.Tag = var_100
  loc_13A162A:   Set var_98 = Me.Txt
  loc_13A1630:   Call 0.Method_Proc_35_47_13A1D900 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_13A1638:   var_124 = var_AC.Tag
  loc_13A1651:   unk_49C7F4.Execute var_12C & var_100 & "'", 0, var_138
  loc_13A1661:    = var_12C.Item(var_124)
  loc_13A1669:    = var_138.Value
  loc_13A1678:   global_100 = CStr(var_124.Fields)
  loc_13A16C8:   Set var_98 = Me.Txt
  loc_13A16CE:   Call 0.Method_Proc_35_47_13A1D900 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_13A16EF:   unk_49C7F4.Execute var_12C & var_100 & "'", 0, var_138
  loc_13A16FF:    = var_12C.Item()
  loc_13A1707:    = var_138.Value
  loc_13A171E:   Set var_140 = Me.Txt
  loc_13A1724:   Call 0.Method_Proc_35_47_13A1D900 (CInt(0), var_144)
  loc_13A172C:   var_144.Text = CStr(var_AC.Tag.Fields)
  loc_13A178D:   Set var_124 = Me.Txt
  loc_13A1793:   Call 0.Method_Proc_35_47_13A1D900 (CInt(1), var_12C)
  loc_13A179B:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_13A1803:   Set var_124 = Me.Txt
  loc_13A1809:   Call 0.Method_Proc_35_47_13A1D900 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_13A1811:   var_12C.Text = 1
  loc_13A1863:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_13A18AD:   Set var_124 = Me.Txt
  loc_13A18B3:   Call 0.Method_Proc_35_47_13A1D900 (CInt(3), var_12C)
  loc_13A18BB:   var_12C.Tag = Proc_6_38_E69628(CVar(var_128.Fields.Item("RestCode")))
  loc_13A190B:   Call 0.Method_Proc_35_47_13A1D900 (CInt(3), var_12C)
  loc_13A1913:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("RestName")))
  loc_13A1929:   Set var_128 = Nothing 
  loc_13A193C:   Me.FGrid.Redraw = False
  loc_13A1957:   Me.FGrid.Rows = 1
  loc_13A1961:   var_8E = 1
  loc_13A1971:   var_CC = "Select S1.*,I.name as ItemName From STOCK S1 Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store' Where S1.DocId='"
  loc_13A19BA:   unk_49C7F4.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13A19C5:   Set var_88 = Me.Txt
  loc_13A19F3:   If (var_88.RecordCount > 0) Then
  loc_13A19F6:     ' Referenced from: 13A1CBF
  loc_13A1A05:     If Not(var_88.EOF) Then
  loc_13A1A08:       var_A8 = vbNullString
  loc_13A1A12:       Set var_98 = Me.FGrid
  loc_13A1A27:       Set var_14C = Me.FGrid
  loc_13A1A2E:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_13A1A36:       var_110 = CVar(CLng(0)) 'Long
  loc_13A1A66:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13A1A6D:       LateIdCallSt
  loc_13A1A87:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_13A1A8F:       var_110 = CVar(CLng(6)) 'Long
  loc_13A1ABF:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_13A1AC6:       LateIdCallSt
  loc_13A1B15:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_14C, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_13A1B1C:       LateIdCallSt
  loc_13A1B4E:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_13A1B56:       var_15C = CVar(CLng(3)) 'Long
  loc_13A1B8A:       LateIdCallSt
  loc_13A1BD9:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_8E)), var_14C, CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))), 1, 1)) 'String
  loc_13A1BE0:       LateIdCallSt
  loc_13A1C29:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("Rate")), CVar(CLng(4)), CVar(CLng(var_8E)), var_14C, var_DC)
  loc_13A1C39:       LateIdCallSt
  loc_13A1C84:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("Amount")), CVar(CLng(5)), CVar(CLng(var_8E)), var_14C, CVar(CStr(var_DC)))
  loc_13A1C8D:       var_FC = CVar(CStr(var_DC)) 'String
  loc_13A1C94:       LateIdCallSt
  loc_13A1CAA:       Set var_14C = Nothing 
  loc_13A1CB4:       var_8E = (var_8E + 1)
  loc_13A1CBA:       var_88.MoveNext
  loc_13A1CBF:       GoTo loc_13A19F6
  loc_13A1CC2:     End If
  loc_13A1CD5:     Me.FGrid.FixedRows = 1
  loc_13A1CDD:   End If
  loc_13A1CEB:   Me.FGrid.Redraw = True
  loc_13A1CF9:   If (var_8E = 1) Then
  loc_13A1D0F:     Me.FGrid.Rows = 1
  loc_13A1D35:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8E, var_14C, var_FC, var_15C))) 'String
  loc_13A1D3D:     Set var_AC = Me.FGrid
  loc_13A1D6A:     Me.FGrid.FixedRows = 1
  loc_13A1D72:   End If
  loc_13A1D75: Else
  loc_13A1D75:   Call Proc_35_49_F3093C(FGrid.DispID_10000, var_BC, var_EC, var_14C)
  loc_13A1D7A: End If
  loc_13A1D7A: Call Proc_35_51_EBEDD4(var_DC, var_14C)
  loc_13A1D84: Set var_88 = Nothing
  loc_13A1D87: Exit Sub
  loc_13A1D88: ' Referenced from: 13A14A4
  loc_13A1D88: Proc_6_60_E63754(var_DC)
  loc_13A1D8D: Exit Sub
End Sub

Public Sub Proc_35_48_1090340
  'Data Table: 49C7D8
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_49C7F4 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_10900B9: Set var_9C = Me.TopCtrl1
  loc_10900BF: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(&HFF)
  loc_10900C7: var_B0 = CStr()
  loc_10900D8: If (var_B0 = "Add") Then
  loc_1090108:   Set var_9C = Me.Txt
  loc_109010E:   Call 0.Method_Proc_35_48_10903400 (CInt(4), var_B4, var_B0, "Select Count(*) From STOCK Where DocID='", var_AC, -1)
  loc_109012F:   unk_49C7F4.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_109013F:    = var_D4.Item()
  loc_1090147:    = var_E8.Value
  loc_1090174:   If (var_B4.Text.Fields > 0) Then
  loc_109017D:     Call 0.Method_arg_50 (var_B0)
  loc_109019E:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_10901B4:     Call Proc_35_53_106B808(MemVar_1F95044)
  loc_10901C7:     Set var_9C = Me.Txt
  loc_10901CD:     Call 0.Method_Proc_35_48_10903400 (CInt(4), var_B4)
  loc_10901D5:     var_B4.Text = var_B0
  loc_10901E9:     Proc_35_48_1090340 = 0
  loc_10901EF:   End If
  loc_10901EF: End If
  loc_1090214: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_109021E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1090226:   var_108 = CVar(CLng(6)) 'Long
  loc_1090246:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1090262:   If CBool(var_118 <> vbNullString) Then
  loc_1090269:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1090271:     var_108 = CVar(CLng(3)) 'Long
  loc_10902A1:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_10902C9:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_10902EF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10902FB:       Set var_9C = Me.FGrid
  loc_109031F:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_109032C:       Proc_35_48_1090340 = 0
  loc_1090332:     End If
  loc_1090332:   End If
  loc_1090335: Next var_12C 'Integer
  loc_109033A: Proc_35_48_1090340 = 
End Sub

Public Sub Proc_35_49_F3093C
  'Data Table: 49C7D8
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F30835: Me.LblVPrefix.Caption = vbNullString
  loc_F3084B: Set var_8C = Me.Txt
  loc_F30851: Call 0.Method_Proc_35_49_F3093CC (var_8E, var_86)
  loc_F30861: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F30877:   Set var_8C = Me.Txt
  loc_F3087D:   Call 0.Method_Proc_35_49_F3093C0 (CInt(var_86), var_98)
  loc_F30885:   var_98.Text = vbNullString
  loc_F308A1:   Set var_8C = Me.Txt
  loc_F308A7:   Call 0.Method_Proc_35_49_F3093C0 (CInt(var_86), var_98)
  loc_F308AF:   var_98.Tag = vbNullString
  loc_F308BE: Next var_92 'Byte
  loc_F308D7: Me.FGrid.Rows = 1
  loc_F308FD: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F30905: Set var_98 = Me.FGrid
  loc_F30932: Me.FGrid.FixedRows = 1
  loc_F3093A: Exit Sub
End Sub

Public Sub Proc_35_50_EF6248(arg_C) 'EF6248
  'Data Table: 49C7D8
  Dim var_98 As TextBox
  loc_EF617E: Set var_8C = Me.Txt
  loc_EF6184: Call 0.Method_Proc_35_50_EF6248C (var_8E, var_86)
  loc_EF6194: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF61AA:   Set var_8C = Me.Txt
  loc_EF61B0:   Call 0.Method_Proc_35_50_EF62480 (CInt(var_86), var_98)
  loc_EF61B8:   var_98.Enabled = arg_C
  loc_EF61C7: Next var_92 'Byte
  loc_EF61DA: Set var_8C = Me.Txt
  loc_EF61E0: Call 0.Method_Proc_35_50_EF62480 (CInt(4), var_98)
  loc_EF61E8: var_98.Enabled = False
  loc_EF6201: Set var_8C = Me.Txt
  loc_EF6207: Call 0.Method_Proc_35_50_EF62480 (CInt(2), var_98)
  loc_EF620F: var_98.Enabled = False
  loc_EF622A: Set var_8C = Me.Txt
  loc_EF6230: Call 0.Method_Proc_35_50_EF62480 (global_96, var_98)
  loc_EF6238: var_98.Enabled = False
  loc_EF6244: Exit Sub
End Sub

Public Sub Proc_35_51_EBEDD4
  'Data Table: 49C7D8
  loc_EBED4C: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBED5E:   Me.DGVType.Visible = False
  loc_EBED66: End If
  loc_EBED82: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EBED94:   Me.DGRoom.Visible = False
  loc_EBED9C: End If
  loc_EBEDB8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBEDCA:   Me.DGItem.Visible = False
  loc_EBEDD2: End If
  loc_EBEDD2: Exit Sub
End Sub

Public Sub Proc_35_52_F0CFF8
  'Data Table: 49C7D8
  loc_F0CF1C: Call Proc_35_51_EBEDD4()
  loc_F0CF2C: Set var_88 = Me.Txt
  loc_F0CF32: Call 0.Method_Proc_35_52_F0CFF80 (CInt(2))
  loc_F0CF5B: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0CF5E:   Exit Sub
  loc_F0CF5F: End If
  loc_F0CF6A: Set var_88 = Me.Txt
  loc_F0CF70: Call 0.Method_Proc_35_52_F0CFF80 (CInt(1), var_8C)
  loc_F0CF99: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0CF9C:   Exit Sub
  loc_F0CF9D: End If
  loc_F0CFD4: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0CFD7:   Call TopCtrl1_UnknownEvent_16()
  loc_F0CFDF: Else
  loc_F0CFE5:   Call 0.Method_arg_1E8 (var_88)
  loc_F0CFED:   Call var_88.SetFocus
  loc_F0CFF6: End If
  loc_F0CFF6: Exit Sub
End Sub

Public Sub Proc_35_53_106B808
  'Data Table: 49C7D8
  Dim var_98 As TextBox
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  loc_106B5CA: Call 0.Method_Proc_35_53_106B8080 (CInt(0), var_98)
  loc_106B5DA: var_90 = var_98.Tag
  loc_106B605: Me.Connection15.Execute "Select MAX(vno)AS VNO From STOCK s Where s.VType='" & var_90 & "' ", var_C0, -1
  loc_106B610: Set var_8C = Me.Txt
  loc_106B634: If (var_8C.RecordCount > 0) Then
  loc_106B654:   var_D4 = Year(DateAdd("d", CDbl(&HFF), MemVar_1F950F4))
  loc_106B663:   global_92 = CStr(var_D4)
  loc_106B688:   var_98 = var_8C.Fields.Item("VNo")
  loc_106B697:   Proc_6_39_E7D3A0(var_D4, CVar(var_98))
  loc_106B6A4:   var_F4 = (var_D4 + 1)
  loc_106B6AC:   global_96 = CInt(var_F4)
  loc_106B6BB: End If
  loc_106B6E6: var_C0 = Space((5 - Len(var_90)))
  loc_106B6EE: var_F4 = (CVar(global_96 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + CVar(var_98))
  loc_106B702: var_108 = Space((5 - Len(global_92)))
  loc_106B70A: var_118 = (var_F4 + var_108)
  loc_106B717: var_128 = (var_118 + CVar(global_92))
  loc_106B730: var_13C = Space((8 - Len(CStr(global_96))))
  loc_106B738: var_14C = (var_128 + var_13C)
  loc_106B747: var_16C = (var_14C + CVar(CStr(global_96)))
  loc_106B752: global_84 = CStr(var_16C)
  loc_106B788: Me.LblVPrefix.Caption = global_92
  loc_106B7A1: Set var_94 = Me.Txt
  loc_106B7A7: Call 0.Method_Proc_35_53_106B8080 (CInt(4), var_98)
  loc_106B7AF: var_98.Text = global_84
  loc_106B7D7: Call 0.Method_Proc_35_53_106B8080 (CInt(1), var_98)
  loc_106B7DF: var_98.Text = CStr(global_96)
  loc_106B7F4: var_88 = global_84
  loc_106B7FC: Set var_8C = Nothing
  loc_106B7FF: Proc_35_53_106B808 = Me.Txt
End Sub

Public Sub Proc_35_54_10B8788(arg_C, arg_10, arg_14) '10B8788
  'Data Table: 49C7D8
  Dim unk_49C7F4 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B84F6: If (arg_C = "HKOP") Then
  loc_10B851D:   unk_49C7F4.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B8528:   Set var_8C = var_C4
  loc_10B853B:   var_94 = "House Keeping Op.STOCK Entry"
  loc_10B8541: Else
  loc_10B8546:   Proc_35_54_10B8788 = &HFF
  loc_10B854C: End If
  loc_10B8560: If (var_8C.RecordCount > 0) Then
  loc_10B8563:   ' Referenced from: 10B86DC
  loc_10B8572:   If Not(var_8C.EOF) Then
  loc_10B857D:     If (var_90 = vbNullString) Then
  loc_10B85C0:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B85C7:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B85F9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B861E:     Else
  loc_10B865A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B867A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B86A7:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B86AC:       var_90 = CStr(var_11C)
  loc_10B86D4:     End If
  loc_10B86D7:     var_8C.MoveNext
  loc_10B86DC:     GoTo loc_10B8563
  loc_10B86DF:   End If
  loc_10B86E5:   Call 0.Method_arg_50 (var_138)
  loc_10B8741:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This ," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B8744:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B8773:   Set var_8C = Nothing
  loc_10B8776:   Proc_35_54_10B8788 = 0
  loc_10B877C: End If
  loc_10B8781: Proc_35_54_10B8788 = &HFF
End Sub

Public Sub Proc_35_55_FC02B4
  'Data Table: 49C7D8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC0137: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC013C:   var_92 = 1 'Byte
  loc_FC0140: End If
  loc_FC0149: Set var_98 = Me.TxtGrid
  loc_FC014F: Call 0.Method_Proc_35_55_FC02B40 (0, var_B0)
  loc_FC0172: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC01A6: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC01CA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC01CD:     GoTo loc_FC029F
  loc_FC01D0:   End If
  loc_FC01D4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC01FE:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC0208:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC023D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0261:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC027A:     Set var_98 = Me.TxtGrid
  loc_FC0280:     Call 0.Method_Proc_35_55_FC02B40 (0, var_B0, CVar(CLng(var_92)))
  loc_FC0288:     var_B0.SetFocus
  loc_FC0299:     Proc_35_55_FC02B4 = 0
  loc_FC029F:     ' Referenced from: FC01CD
  loc_FC029F:   End If
  loc_FC02A2: Next var_D4 'Integer
  loc_FC02AC: Proc_35_55_FC02B4 = &HFF
End Sub

Public Sub Proc_35_56_F7407C
  'Data Table: 49C7D8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F73F7F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73F87: var_C8 = CVar(CLng(4)) 'Long
  loc_F73FBF: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73FC7: var_134 = CVar(CLng(3)) 'Long
  loc_F73FFF: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74007: var_1F0 = CVar(CLng(5)) 'Long
  loc_F74038: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F74040: Set var_224 = Me.FGrid
  loc_F74046: LateIdCallSt
  loc_F74079: Exit Sub
End Sub
