VERSION 5.00
Begin VB.Form HKRoomOpStk
  Caption = "Room Op.Stock Entry"
  BackColor = &HBDD7D2&
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
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 5
    Left = 4170
    Top = 945
    Width = 780
    Height = 240
    Visible = 0   'False
    TabIndex = 13
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
  Begin DataGrid DGItem
    Left = 60
    Top = 4410
    Width = 7440
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
    TabIndex = 16
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
    TabIndex = 14
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
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
    Width = 2865
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
    Left = 4620
    Top = 757
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
    Caption = "Room No"
    Index = 0
    ForeColor = &H404040&
    Left = 105
    Top = 757
    Width = 750
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

Attribute VB_Name = "HKRoomOpStk"

Private MasterFormExit As Integer
Private global_80 As Integer
Private global_82 As Integer
Private global_128 As Integer

Private Sub TopCtrl1_UnknownEvent_A '106BB04
  'Data Table: 49835C
  Dim var_B8 As Variant
  Dim unk_49837C As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C8 As TextBox
  loc_106B884: On Error Goto loc_106BAFC
  loc_106B8AA: Call Proc_49_49_EF5F18(Proc_5_1_100EC1C("ADD", Me))
  loc_106B8B5: Call Proc_49_48_F30540(global_68)
  loc_106B8CC: var_B4 = DateAdd("D", CDbl(&HFF), MemVar_1F950F4)
  loc_106B8E9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_B8)
  loc_106B8F1: var_B8.Text = CStr(var_B4)
  loc_106B92A: unk_49837C.Execute "Select Description,V_Type From Voucher_Type Where V_tYPE='" & global_140 & "'", var_B4, -1
  loc_106B935: Set var_88 = Me.Txt
  loc_106B959: If (var_88.RecordCount > 0) Then
  loc_106B995:   Set var_C4 = Me.Txt
  loc_106B99B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_106B9A3:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_106B9D3:   var_B8 = var_88.Fields.Item("V_Type")
  loc_106B9F2:   Set var_C4 = Me.Txt
  loc_106B9F8:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_106BA00:   var_C8.Tag = CStr(var_B8.Value)
  loc_106BA22:   Call Txt_Validate(CInt(0))
  loc_106BA27: End If
  loc_106BA34: Set var_90 = Me.Txt
  loc_106BA3A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B8, 0)
  loc_106BA5C: Set var_90 = Me.Txt
  loc_106BA62: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_106BA7C: If (False = &HFF) Then
  loc_106BA8A:   Set var_90 = Me.Txt
  loc_106BA90:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_106BA98:   var_B8.SetFocus
  loc_106BAA7: Else
  loc_106BAB4:   Set var_90 = Me.Txt
  loc_106BABA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_106BAC2:   var_B8.Enabled = True
  loc_106BAD9:   Set var_90 = Me.Txt
  loc_106BADF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_106BAE7:   var_B8.SetFocus
  loc_106BAF3: End If
  loc_106BAF8: Set var_88 = Nothing
  loc_106BAFB: Exit Sub
  loc_106BAFC: ' Referenced from: 106B884
  loc_106BAFC: Proc_6_60_E63754(var_90)
  loc_106BB01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9F2D8
  'Data Table: 49835C
  loc_E9F260: On Error Goto loc_E9F2D1
  loc_E9F29A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9F2C0:   Call Proc_49_49_EF5F18(Proc_5_1_100EC1C("INI", Me))
  loc_E9F2CB:   Call Proc_49_46_1420244(global_68)
  loc_E9F2D0: End If
  loc_E9F2D0: Exit Sub
  loc_E9F2D1: ' Referenced from: E9F260
  loc_E9F2D1: Proc_6_60_E63754()
  loc_E9F2D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10C6678
  'Data Table: 49835C
  Dim unk_49837C As Connection15
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10C63BC: On Error Goto loc_10C661E
  loc_10C63F6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_10C6402:   unk_49837C.BeginTrans var_11C
  loc_10C6409:   var_96 = &HFF
  loc_10C641D:   var_94 = Me.Bookmark 'Variant
  loc_10C6469:   var_F8 = "Delete From STOCK Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10C6477:   unk_49837C.Execute CStr(var_F8), var_118, -1
  loc_10C64C2:   var_164 = 0
  loc_10C64D5:   var_15C = 0
  loc_10C64E0:   var_158 = 0
  loc_10C64F3:   var_150 = 0
  loc_10C64FE:   var_14C = 0
  loc_10C6511:   var_144 = 0
  loc_10C6551:   var_128 = "STOCK"
  loc_10C655A:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10C6588:   unk_49837C.CommitTrans
  loc_10C658F:   var_96 = 0
  loc_10C659D:   Me.Requery -1
  loc_10C65BD:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10C65CA:     Me.Bookmark = var_94
  loc_10C65D2:   Else
  loc_10C65E6:     If (Me.EOF = 0) Then
  loc_10C65EF:       Me.MoveLast
  loc_10C65F4:     End If
  loc_10C65F4:   End If
  loc_10C65F4:   Call Proc_49_46_1420244(var_96, var_144, 0, var_14C, var_150)
  loc_10C6615:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_10C661D: End If
  loc_10C661D: Exit Sub
  loc_10C661E: ' Referenced from: 10C63BC
  loc_10C6624: If (var_96 = &HFF) Then
  loc_10C662D:   unk_49837C.RollbackTrans
  loc_10C6632: End If
  loc_10C663A: Set var_120 = Err()
  loc_10C6640: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10C6661: MsgBox(CVar(var_128), &H10, " Deletion Message", var_F8, var_118)
  loc_10C6674: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EDCBF4
  'Data Table: 49835C
  Dim var_98 As TextBox
  loc_EDCB40: On Error Goto loc_EDCBED
  loc_EDCB66: Call Proc_49_49_EF5F18(Proc_5_1_100EC1C("EDIT", Me))
  loc_EDCB7E: Set var_90 = Me.Txt
  loc_EDCB84: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_EDCB8C: var_98.Enabled = False
  loc_EDCBA5: Set var_90 = Me.Txt
  loc_EDCBAB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_EDCBB3: var_98.Enabled = False
  loc_EDCBCA: Set var_90 = Me.Txt
  loc_EDCBD0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_EDCBD8: var_98.SetFocus
  loc_EDCBE4: Exit Sub
  loc_EDCBEA: Set var_88 = Nothing
  loc_EDCBED: ' Referenced from: EDCB40
  loc_EDCBED: Proc_6_60_E63754(global_68)
  loc_EDCBF2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BC04
  'Data Table: 49835C
  loc_E1BBF9: Me.Global.Unload Me
  loc_E1BC01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB66FC
  'Data Table: 49835C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EB666C: On Error Goto loc_EB66F6
  loc_EB6686: If (Me.RecordCount <= 0) Then
  loc_EB668F:   var_B8 = "Information"
  loc_EB66AA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB66BA:   Exit Sub
  loc_EB66BB: End If
  loc_EB66C5: var_10C = "Select Distinct Docid as SearchCode,V.Description As VType,K.VNo as VrNo ,K.VDate as V_Date,H.Name as RoomNo From ((STOCK K Left Join Voucher_Type V On K.VType= V.V_Type)Left Join RoomMast H On K.RoomNo= H.Code) Where V.V_tYPE='" & global_140
  loc_EB66CC: MemVar_1F950E4 = var_10C & "' AND H.TYPE IN ('RO') Order By K.Docid"
  loc_EB66D9: MemVar_1F95120 = Me
  loc_EB66F0: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB66F5: Exit Sub
  loc_EB66F6: ' Referenced from: EB666C
  loc_EB66F6: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EB66FB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35408
  'Data Table: 49835C
  loc_E353F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35400: Call Proc_49_46_1420244(global_68)
  loc_E35405: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3B0A8
  'Data Table: 49835C
  loc_E3B098: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B0A0: Call Proc_49_46_1420244(global_68)
  loc_E3B0A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36D88
  'Data Table: 49835C
  loc_E36D78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36D80: Call Proc_49_46_1420244(global_68)
  loc_E36D85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36DE8
  'Data Table: 49835C
  Dim var_1B01 As Double
  loc_E36DD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36DE0: Call Proc_49_46_1420244(global_68)
  loc_E36DE5: Exit Sub
  loc_E36DE6: var_1B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFDC44
  'Data Table: 49835C
  loc_DFDC40: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E42EA0
  'Data Table: 49835C
  Dim Me As Recordset15
  loc_E42E77: Me.Requery -1
  loc_E42E87: Me.Requery -1
  loc_E42E97: Me.Requery -1
  loc_E42E9C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15493A8
  'Data Table: 49835C
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_CC As Variant
  Dim var_144 As String
  Dim var_148 As String
  Dim unk_49837C As Connection15
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_150 As Field20
  Dim Me As Recordset15
  Dim var_8A As Integer
  Dim var_188 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_784 As Double
  Dim var_1E0 As TextBox
  Dim var_264 As TextBox
  Dim var_2A0 As TextBox
  Dim var_34C As Variant
  Dim var_36C As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_474 As Variant
  Dim var_494 As Variant
  Dim var_79C As Double
  Dim var_7A4 As Double
  Dim var_6CC As Variant
  Dim var_6EC As Variant
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim var_1D4 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_21C As Variant
  Dim var_2C4 As Variant
  Dim var_444 As Variant
  Dim var_64C As Variant
  Dim var_20C As String
  Dim var_88 As Recordset15
  Dim var_1D8 As Fields15
  Dim var_1E4 As String
  loc_15484C4: On Error Goto loc_154938D
  loc_15484D2: Set var_A0 = Me.Txt
  loc_15484D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1548501: If (Proc_6_27_EA61EC(var_A4, "Voucher Date") = 0) Then
  loc_1548504:   Exit Sub
  loc_1548505: End If
  loc_1548510: Set var_A0 = Me.Txt
  loc_1548516: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_154853F: If (Proc_6_27_EA61EC(var_A4, "Voucher No") = 0) Then
  loc_1548542:   Exit Sub
  loc_1548543: End If
  loc_154854E: Set var_A0 = Me.Txt
  loc_1548554: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_154857D: If (Proc_6_27_EA61EC(var_A4, "RoomNo") = 0) Then
  loc_1548580:   Exit Sub
  loc_1548581: End If
  loc_1548581: var_BC = 1
  loc_154858A: var_DC = 1
  loc_15485A8: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15485AE: var_11C = Trim(var_10C)
  loc_15485CA: If (var_11C = vbNullString) Then
  loc_15485E6:   MsgBox("Fill Item Name ", 0, var_10C, var_11C, var_13C)
  loc_1548609:   Me.FGrid.Row = 1
  loc_1548615:   Set var_A0 = Me.FGrid
  loc_1548639:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1548641:   Exit Sub
  loc_1548642: End If
  loc_1548642: var_BC = 1
  loc_154864B: var_DC = 3
  loc_1548669: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_154866F: var_11C = Trim(var_10C)
  loc_154868B: If (var_11C = vbNullString) Then
  loc_15486A1:   var_FC = "Item Detail Required "
  loc_15486A7:   MsgBox(var_FC, 0, var_10C, var_11C, var_13C)
  loc_15486CA:   Me.FGrid.Row = 1
  loc_15486D6:   Set var_A0 = Me.FGrid
  loc_15486EB:   var_BC = CVar(CLng("14737632")) 'Long
  loc_15486FA:   Me.FGrid.CellBackColor = var_BC
  loc_1548702:   Exit Sub
  loc_1548703: End If
  loc_1548706: Call Proc_49_47_108F468(var_13E, FGrid.DispID_8001, var_DC, var_BC)
  loc_1548711: If (var_13E = 0) Then
  loc_1548714:   Exit Sub
  loc_1548715: End If
  loc_1548720: Set var_A0 = Me.TxtGrid
  loc_1548726: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, 0, FGrid.DispID_8001)
  loc_154872E: var_A4.Visible = var_DC
  loc_154873A: Call Proc_49_50_EBD858(var_BC)
  loc_1548743: Set var_A0 = Me.TopCtrl1
  loc_1548749: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_A4)
  loc_1548751: var_AC = CStr()
  loc_1548762: If (var_AC = "Add") Then
  loc_1548792:   Set var_A0 = Me.Txt
  loc_1548798:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Select Count(*) From STOCK Where DocID='", var_FC, -1)
  loc_15487A0:   var_A8 = var_A4.Text
  loc_15487B9:   unk_49837C.Execute var_14C & var_AC & "'", 0, var_150
  loc_15487C9:    = var_14C.Item()
  loc_15487D1:    = var_150.Value
  loc_15487FE:   If (var_A8.Fields > 0) Then
  loc_1548807:     Call Proc_49_52_1079974(MemVar_1F95044)
  loc_154881A:     Set var_A0 = Me.Txt
  loc_1548820:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_1548828:     var_A4.Text = var_AC
  loc_1548837:     Exit Sub
  loc_1548838:   End If
  loc_154883B: Else
  loc_1548858:   var_A4 = Me.Fields.Item("DocID")
  loc_1548860:   var_FC = var_A4.Value
  loc_1548869:   var_AC = CStr(var_FC)
  loc_154886F:   global_116 = var_AC
  loc_1548880: End If
  loc_154888E: unk_49837C.BeginTrans var_154
  loc_15488B1: Set var_A0 = Me.Txt
  loc_15488B7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Delete From STOCK Where DocID='", var_FC)
  loc_15488BF: -1 = var_A4.Text
  loc_15488CF: var_148 = var_A8 & var_AC & "'"
  loc_15488D8: unk_49837C.Execute var_148, &HFF, var_AC
  loc_1548917: For var_158 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_158 'Integer
  loc_1548921:   var_BC = CVar(CLng(var_92)) 'Long
  loc_1548929:   var_DC = CVar(CLng(6)) 'Long
  loc_1548943:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1548970:   Set var_A4 = Me.FGrid
  loc_1548981:   var_AC = CStr(var_A4.TextMatrix))
  loc_15489AF:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_AC)) <> CDbl(0))) Then
  loc_15489C0:     Set var_A0 = Me.Txt
  loc_15489C6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, CVar(CLng(var_92)))
  loc_15489CE:     (Trim(var_10C) <> vbNullString) = var_A4.Text
  loc_15489E1:     Set var_A8 = Me.Txt
  loc_15489E7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_14C, var_148)
  loc_15489EF:     var_DC = var_14C.Text
  loc_15489FC:     var_784 = Val(var_148)
  loc_1548A0A:     Set var_150 = Me.Txt
  loc_1548A10:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D8, var_784)
  loc_1548A1F:     Proc_6_7_F26918(var_10C, CVar(var_1D8))
  loc_1548A32:     Set var_1DC = Me.Txt
  loc_1548A38:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, var_1E4)
  loc_1548A40:     var_BC = var_1E0.Tag
  loc_1548A65:     Set var_260 = Me.Txt
  loc_1548A6B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_264)
  loc_1548A86:     Set var_29C = Me.Txt
  loc_1548A8C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0)
  loc_1548A9D:     var_188 = CVar(CLng(var_92)) 'Long
  loc_1548AA5:     var_1B8 = CVar(CLng(0)) 'Long
  loc_1548ACE:     var_34C = CVar(CLng(var_92)) 'Long
  loc_1548AD6:     var_36C = CVar(CLng(6)) 'Long
  loc_1548AF5:     var_3E0 = CVar(CLng(var_92)) 'Long
  loc_1548AFD:     var_400 = CVar(CLng(2)) 'Long
  loc_1548B1C:     var_474 = CVar(CLng(var_92)) 'Long
  loc_1548B24:     var_494 = CVar(CLng(3)) 'Long
  loc_1548B77:     var_79C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1548BA8:     var_7A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1548BB9:     Proc_6_7_F26918(var_68C, Date, var_7A4, CVar(CLng(5)), CVar(CLng(var_92)), var_79C, CVar(CLng(4)), CVar(CLng(var_92)))
  loc_1548BC2:     var_6CC = CVar(CLng(var_92)) 'Long
  loc_1548BCA:     var_6EC = CVar(CLng(5)) 'Long
  loc_1548C03:     var_144 = "Insert Into Stock(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,Qtyrec,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_AC
  loc_1548C0A:     var_1CC = var_144 & "',"
  loc_1548C36:     var_1F4 = CVar(var_1CC & CStr(var_784) & ",") & var_10C & ",'" & CVar(var_1E4) 
  loc_1548C46:     var_21C = CVar(Me.LblVPrefix.Caption) 'String
  loc_1548C82:     var_2C4 = var_1F4 & "','" & var_21C & "','" & CVar(MemVar_1F95070) & "','HSKP','" & CVar(var_264.Text) & "','RO','" & CVar(var_2A0.Tag) 
  loc_1548CBE:     var_444 = var_2C4 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1548D0D:     var_64C = var_444 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_79C) & "," & CVar(var_7A4) & ",'" & CVar(MemVar_1F950C8) 
  loc_1548D48:     unk_49837C.Execute CStr(var_64C & "'," & var_68C & ",'A'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ")"), var_778, -1
  loc_1548DF8:   End If
  loc_1548DFB: Next var_158 'Integer
  loc_1548E04: Set var_A0 = Me.TopCtrl1
  loc_1548E0A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1548E23: If (CStr() = "Add") Then
  loc_1548E3A:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1548E60:   Set var_A0 = Me.Txt
  loc_1548E66:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_1CC, var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_1548E6E:   var_1C8 = var_A4.Tag
  loc_1548E77:   var_1D4 = -1 & var_1CC
  loc_1548E7E:   var_11C = CVar(var_1CC & CStr(var_784) & "' And VP.Date_From<=") 'String
  loc_1548E8F:   Set var_A8 = Me.Txt
  loc_1548E95:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_14C, var_1E4)
  loc_1548E9D:   var_11C = var_14C.Text
  loc_1548EA5:   var_FC = CVar(var_1E4) 'String
  loc_1548EAB:   Proc_6_7_F26918(var_10C, var_FC)
  loc_1548ECA:   unk_49837C.Execute CStr(var_150 & var_10C & " Order By VP.Date_From DESC"), , 
  loc_1548ED5:   Set var_88 = var_150
  loc_1548F19:   If (var_88.RecordCount > 0) Then
  loc_1548F2A:     Set var_A0 = Me.Txt
  loc_1548F30:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1548F45:     var_784 = Val(var_A4.Text)
  loc_1548F4E:     var_CC = 0
  loc_1548F6E:     var_20C = "Select Sufix+'M'+Prefix From Depart Where Code='" & global_144
  loc_1548F7E:     unk_49837C.Execute CStr(var_150 & var_10C & " Order By VP.Date_From DESC") & "'", var_FC, -1
  loc_1548F86:     var_A8 = var_A8.Fields
  loc_1548F8E:     var_CC = var_14C.Item(var_14C)
  loc_1548F96:     var_150 = var_150.Value
  loc_1548FC1:     Proc_6_7_F26918(var_1F4, CVar(var_88.Fields.Item("Date_From")))
  loc_1548FDB:     var_144 = CStr(var_784)
  loc_1548FFB:     var_1E4 = "Update Voucher_Prefix Set Start_Srl_No=" & var_144 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1549018:     var_204 = CVar(var_1E4 & "') and V_Type='") & var_10C & "' and Date_From=" & var_1F4 
  loc_1549026:     unk_49837C.Execute CStr(var_204), var_21C, -1
  loc_1549068:   End If
  loc_1549068: End If
  loc_154906C: Set var_A0 = Me.TopCtrl1
  loc_1549072: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_1E0)
  loc_154908B: If (CStr(var_10C) = "Add") Then
  loc_15490B1:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_15490C1:   Call 0.Method_arg_50 (var_144, var_AC & "' AND ENAME='", var_FC, -1, var_A0)
  loc_15490D1:   var_1D0 = var_A4 & var_144 & "' "
  loc_15490DA:   unk_49837C.Execute var_1D0, 0, var_A8
  loc_15490E2:   var_10C = var_A0.Fields
  loc_15490EA:    = var_A4.Item(var_784)
  loc_15490F2:    = var_A8.Value
  loc_154911F:   If (var_10C > 0) Then
  loc_1549140:     Set var_A0 = Me.Txt
  loc_1549146:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_154914E:     var_FC = var_A4.Text
  loc_1549157:     var_144 = -1 & var_AC
  loc_1549175:     Call 0.Method_arg_50 (var_1D0, var_144 & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_154918E:     unk_49837C.Execute var_A8 & var_1D0 & "'  ", , 
  loc_15491B5:   Else
  loc_15491D9:     Call 0.Method_arg_50 (var_144, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_204)
  loc_15491E2:     var_1CC = -1 & var_144
  loc_15491E9:     var_1D4 = var_144 & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_15491FA:     Set var_A0 = Me.Txt
  loc_1549200:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_1D0)
  loc_1549208:     var_1D4 = var_A4.Text
  loc_1549237:     Proc_6_7_F26918(var_10C, Date)
  loc_1549243:     var_BC = ",'A','"
  loc_1549269:     unk_49837C.Execute CStr(CVar(var_A8 & var_1D0 & "','" & MemVar_1F95070 & "',") & var_10C & var_BC & CVar(MemVar_1F95078) & "')"), , 
  loc_15492A1:   End If
  loc_15492A1: End If
  loc_15492A7: unk_49837C.CommitTrans
  loc_15492AE: var_8A = 0
  loc_15492BF: Set var_A0 = Me.Txt
  loc_15492C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_15492E1: var_8A = 0
  loc_15492EF: Me.Requery -1
  loc_1549319: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_1549329: Set var_A0 = Me.TopCtrl1
  loc_154932F: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_BC)
  loc_1549348: If (CStr(var_8A) = "Add") Then
  loc_154934B:   Call TopCtrl1_UnknownEvent_A()
  loc_1549350:   Exit Sub
  loc_1549351: End If
  loc_1549374: Call Proc_49_49_EF5F18(Proc_5_1_100EC1C("INI", Me), global_68)
  loc_154937F: Call Proc_49_46_1420244(var_8A)
  loc_1549389: Set var_88 = Nothing
  loc_154938C: Exit Sub
  loc_154938D: ' Referenced from: 15484C4
  loc_1549393: If (var_8A = &HFF) Then
  loc_154939C:   unk_49837C.RollbackTrans
  loc_15493A1: End If
  loc_15493A1: Proc_6_60_E63754()
  loc_15493A6: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'FA3C98
  'Data Table: 49835C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FA3B18: On Error Goto loc_FA3C92
  loc_FA3B2A: Me.DGRoom.Visible = False
  loc_FA3B49: If (Me.RecordCount > 0) Then
  loc_FA3B88:   Set var_B4 = Me.Txt
  loc_FA3B8E:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_FA3B96:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA3BE8:   Set var_B4 = Me.Txt
  loc_FA3BEE:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_FA3BF6:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA3C29:   var_B0 = Me.Fields.Item("RoomCat")
  loc_FA3C48:   Set var_B4 = Me.Txt
  loc_FA3C4E:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5), var_B8)
  loc_FA3C56:   var_B8.Text = CStr(var_B0.Value)
  loc_FA3C6C: End If
  loc_FA3C77: Set var_A8 = Me.Txt
  loc_FA3C7D: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3))
  loc_FA3C85: var_B0.SetFocus
  loc_FA3C91: Exit Sub
  loc_FA3C92: ' Referenced from: FA3B18
  loc_FA3C92: Proc_6_60_E63754(var_B0)
  loc_FA3C97: Exit Sub
End Sub

Private Sub Form_Load() '122A550
  'Data Table: 49835C
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim unk_49837C As Connection15
  Dim var_A8 As Recordset15
  Dim var_C4 As Fields15
  Dim var_C8 As Field20
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_120 As Variant
  loc_122A054: On Error Goto loc_122A547
  loc_122A061: Set var_A8 = Me.TopCtrl1
  loc_122A067: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_122A075: Call 0.Method_arg_50 (var_AC)
  loc_122A07D: var_BC = CVar(var_AC) 'String
  loc_122A085: Set var_A8 = Me.TopCtrl1
  loc_122A08B: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(var_BC)
  loc_122A09C: global_144 = MemVar_1F951BC
  loc_122A0A6: global_148 = MemVar_1F951C0
  loc_122A0B0: global_152 = MemVar_1F951C4
  loc_122A0BF: If (global_144 = vbNullString) Then
  loc_122A0C2:   Exit Sub
  loc_122A0C3: End If
  loc_122A0C9: var_A4 = 0
  loc_122A0E9: var_AC = "Select 'M'+Depart.ShortName From Depart Where Code='" & global_144
  loc_122A0F9: unk_49837C.Execute var_AC & "'", var_BC, -1
  loc_122A109: var_A4 = var_C4.Item(var_C4)
  loc_122A111: var_C8 = var_C8.Value
  loc_122A120: global_140 = CStr(var_D8)
  loc_122A15B: var_C0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='" & global_140 & "' Order by Description"
  loc_122A164: unk_49837C.Execute var_C0, var_BC, -1
  loc_122A175: Set global_56 = var_A8.Fields
  loc_122A193: CVarUnk
  loc_122A198: VerifyVarObj
  loc_122A19E: Set var_A8 = Me.DGVType
  loc_122A1A4: LateIdStAd
  loc_122A1C9: If (Me.RecordCount <= 0) Then
  loc_122A1E5:   MsgBox("House Keeping Not Configured for selected Department", 0, var_D8, var_100, var_120)
  loc_122A1F5: End If
  loc_122A1FF: Set global_60 = New 
  loc_122A211: Me.CursorLocation = 3
  loc_122A22D: var_94 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code WHERE I.TYPE IN ('Consumables','Store Item') AND IG.TYPE IN ('Consumables','Store Item') And I.ItemType='Store' Order by I.Name"
  loc_122A239: Me.Open var_94, CVar(MemVar_1F95044), 3
  loc_122A247: CVarUnk
  loc_122A24C: VerifyVarObj
  loc_122A252: Set var_A8 = Me.DGItem
  loc_122A258: LateIdStAd
  loc_122A282: Me.DGItem.CursorLocation = 3
  loc_122A2B8: CVarUnk
  loc_122A2BD: VerifyVarObj
  loc_122A2C9: LateIdStAd
  loc_122A2E1: Set global_68 = New 
  loc_122A2F3: Me.DGRoom.CursorLocation = 3
  loc_122A319: var_AC = "Select Distinct S.DocId as SearchCode,S.DocID From STOCK S LEFT JOIN VOUCHER_tYPE V ON V.V_tYPE=S.VTYPE Where S.VTYPE='" & global_140
  loc_122A320: var_BC = CVar(var_AC & "' Order by Docid") 'String
  loc_122A32A: elect R.Code ,R.Name As Name,RoomCat From RoomMast R WHERE R.TYPE IN ('RO') Order by R.Name", CVar(MemVar_1F95044), 3 var_BC, CVar(MemVar_1F95044), 3
  loc_122A35A: Call 0.Method_arg_50 (var_AC, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_BC, -1, Me.DGRoom, var_C4, 0, var_C8)
  loc_122A381: unk_49837C.Execute var_D8 & var_AC & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_122A389: var_A8 = var_A8.Fields
  loc_122A391: 1 = var_C4.Item(New)
  loc_122A399: -1 = var_C8.Value
  loc_122A3C6: If (var_D8 > 0) Then
  loc_122A401:   Call 0.Method_arg_50 (var_AC, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_BC, -1, var_A8, var_C4, 0)
  loc_122A428:   unk_49837C.Execute var_C8 & var_AC & "' AND UNAME='" & MemVar_1F950C8 & "'", var_D8, "SearchCode='"
  loc_122A430:   0 = var_A8.Fields
  loc_122A438:   var_13C = var_C4.Item(1)
  loc_122A440:    = var_C8.Value
  loc_122A45F:   Me.Find CStr(var_D8 & "'"), , 
  loc_122A487: End If
  loc_122A49E: If (Me.RecordCount > 0) Then
  loc_122A4B5:   If (Me.EOF = &HFF) Then
  loc_122A4BE:     Me.MoveLast
  loc_122A4C3:   End If
  loc_122A4C3: End If
  loc_122A4E6: Call Proc_49_49_EF5F18(Proc_5_1_100EC1C("INI", Me))
  loc_122A503: Set var_A8 = Me
  loc_122A509: Proc_6_23_DFC5B8(var_A8, 4950)
  loc_122A51A: Call 0.Method_arg_160 (var_A8, 8595)
  loc_122A528: Call 0.Method_arg_164 (var_A8)
  loc_122A530: Call Proc_49_43_1181D4C(global_68)
  loc_122A535: Call Proc_49_46_1420244()
  loc_122A541: Call 0.Method_arg_64 (CLng(MemVar_1F951C4))
  loc_122A546: Exit Sub
  loc_122A547: ' Referenced from: 122A054
  loc_122A547: Proc_6_60_E63754()
  loc_122A54C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7B300
  'Data Table: 49835C
  loc_E7B2A7: Set global_64 = Nothing
  loc_E7B2B9: Set global_60 = Nothing
  loc_E7B2CB: Set global_56 = Nothing
  loc_E7B2DD: Set global_72 = Nothing
  loc_E7B2EF: Set global_68 = Nothing
  loc_E7B2FB: MasterFormExit = 0
  loc_E7B2FE: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E266AC
  'Data Table: 49835C
  loc_E26691: If (MasterFormExit = &HFF) Then
  loc_E266A1:   Me.Global.Unload Me
  loc_E266A9: End If
  loc_E266A9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E353A8
  'Data Table: 49835C
  loc_E3537C: On Error Goto loc_E353A0
  loc_E35397: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3539F: Exit Sub
  loc_E353A0: ' Referenced from: E3537C
  loc_E353A0: Proc_6_60_E63754(Shift)
  loc_E353A5: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD6098
  'Data Table: 49835C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD5EDC: On Error Goto loc_FD6090
  loc_FD5EEE: Me.DGVType.Visible = False
  loc_FD5F0D: If (Me.RecordCount > 0) Then
  loc_FD5F5F:   Set var_CC = Me.Txt
  loc_FD5F65:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD5F6D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD5FC5:   Set var_B4 = Me.DGVType
  loc_FD5FDC:   Set var_CC = Me.Txt
  loc_FD5FE2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD5FEA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD603E:   global_132 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD604F: End If
  loc_FD606D: Set var_B0 = Me.Txt
  loc_FD6073: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD607B: var_B4.SetFocus
  loc_FD608F: Exit Sub
  loc_FD6090: ' Referenced from: FD5EDC
  loc_FD6090: Proc_6_60_E63754(var_B4)
  loc_FD6095: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10F3580
  'Data Table: 49835C
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_10F326A: Set var_88 = Me.Txt
  loc_10F3270: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10F327E: Proc_6_74_E23240(var_8C)
  loc_10F328A: Call Proc_49_50_EBD858(var_8C)
  loc_10F3292: var_92 = Index
  loc_10F329D: If (var_92 = CInt(0)) Then
  loc_10F32B3:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_10F330C:   Set var_88 = Me.Txt
  loc_10F3312:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_10F331A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10F3332:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_10F3335:     Exit Sub
  loc_10F3336:   End If
  loc_10F3343:   Set var_88 = Me.Txt
  loc_10F3349:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F3351:   var_C0 = var_8C.Text
  loc_10F3359:   var_D4 = CVar(var_C0) 'String
  loc_10F339E:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F33A7:     Me.MoveFirst
  loc_10F33CC:     Set var_88 = Me.Txt
  loc_10F33D2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F33DA:     0 = var_8C.Text
  loc_10F33E8:     Proc_6_17_EAAE40(var_D4, CVar(var_C0))
  loc_10F33FE:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F3416:   End If
  loc_10F3419: Else
  loc_10F3421:   If (var_92 = CInt(3)) Then
  loc_10F3472:     Set var_88 = Me.Txt
  loc_10F3478:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F3498:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10F349B:       Exit Sub
  loc_10F349C:     End If
  loc_10F34A9:     Set var_88 = Me.Txt
  loc_10F34AF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F34B7:     var_C0 = var_8C.Text
  loc_10F34BF:     var_D4 = CVar(var_C0) 'String
  loc_10F3504:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F350D:       Me.MoveFirst
  loc_10F3532:       Set var_88 = Me.Txt
  loc_10F3538:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F3540:       0 = var_8C.Text
  loc_10F354E:       Proc_6_17_EAAE40(var_D4, CVar(var_C0))
  loc_10F3564:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F357C:     End If
  loc_10F357C:   End If
  loc_10F357C: End If
  loc_10F357C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10366AC
  'Data Table: 49835C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  loc_103647E: If (CLng(Shift) = &H1B) Then
  loc_1036481:   Call Proc_49_50_EBD858()
  loc_1036486:   Exit Sub
  loc_1036487: End If
  loc_103648A: var_86 = KeyCode
  loc_1036495: If (var_86 = CInt(0)) Then
  loc_10364B0:   Set var_9C = Nothing
  loc_10364BB:   Set var_98 = Nothing
  loc_10364E9:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_1036500: Else
  loc_1036508:   If (var_86 = CInt(3)) Then
  loc_1036523:     Set var_9C = Nothing
  loc_103655C:     Proc_6_69_134A630(Me.DGRoom, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1036570:   End If
  loc_1036570: End If
  loc_10365A1: Set var_98 = Me.DGRoom
  loc_10365C6: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_10365DE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10365E7:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_10365EC:   End If
  loc_10365F0:   Set var_8C = Me.TopCtrl1
  loc_10365F6:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_98)
  loc_1036618:   If ((CStr(var_9C) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1036630:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1036639:       Proc_6_76_E533C8(Shift, arg_14)
  loc_103663E:     End If
  loc_1036641:   Else
  loc_1036645:     Set var_8C = Me.TopCtrl1
  loc_103664B:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(0)
  loc_103666D:     If ((CStr(var_86) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1036685:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_103668E:         Proc_6_76_E533C8(Shift)
  loc_1036693:       End If
  loc_1036693:     End If
  loc_1036693:   End If
  loc_10366A8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10366AB:   End If
  loc_10366AB: End If
  loc_10366AB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F892C4
  'Data Table: 49835C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F89168: On Error Goto loc_F892BB
  loc_F8916E: Proc_6_58_E06050(arg_10)
  loc_F89179: Proc_6_133_E7FB08(var_94)
  loc_F89182: arg_10 = CInt(var_94)
  loc_F8918B: var_96 = KeyAscii
  loc_F89196: If (var_96 = CInt(0)) Then
  loc_F891B5:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F891CB:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F891DA:     Set var_B8 = Me.Txt
  loc_F89200:     Proc_6_89_1470B00(var_B8, KeyAscii, global_56, arg_10, "Name")
  loc_F8920F:   End If
  loc_F89212: Else
  loc_F8921A:   If (var_96 = CInt(1)) Then
  loc_F89227:     Set var_9C = Me.Txt
  loc_F8922D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_F89248:     Proc_6_42_129B55C(var_B8, arg_10, 8, 0)
  loc_F89257:   Else
  loc_F8925F:     If (var_96 = CInt(3)) Then
  loc_F8927E:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F892AB:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_F892BA:       End If
  loc_F892BA:     End If
  loc_F892BA:   End If
  loc_F892BA: End If
  loc_F892BA: Exit Sub
  loc_F892BB: ' Referenced from: F89168
  loc_F892BB: Proc_6_60_E63754(0, var_96)
  loc_F892C0: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEC9C
  'Data Table: 49835C
  Dim var_86 As Integer
  loc_DFEC97: var_86 = KeyCode
  loc_DFEC9A: Exit Sub
  loc_DFEC9B: var_86 = 
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E496A4
  'Data Table: 49835C
  loc_E49682: Set var_88 = Me.Txt
  loc_E49688: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49696: Proc_6_73_E23294(var_8C)
  loc_E496A2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '149373C
  'Data Table: 49835C
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
  Dim unk_49837C As Connection15
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_CC As Variant
  loc_1492AF0: On Error Goto loc_1493735
  loc_1492AF6: var_8E = Cancel
  loc_1492B01: If (var_8E = CInt(0)) Then
  loc_1492B0F:   Set var_94 = Me.Txt
  loc_1492B15:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1492B1D:   var_A0 = "Voucher Type"
  loc_1492B3E:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_1492B4C:     Set var_94 = Me.Txt
  loc_1492B52:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1492B5A:     var_98.SetFocus
  loc_1492B68:     arg_10 = &HFF
  loc_1492B6B:     Exit Sub
  loc_1492B6C:   End If
  loc_1492BBA:   Set var_94 = Me.Txt
  loc_1492BC0:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1492BC8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1492BE0:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1492BF0:     Set var_94 = Me.Txt
  loc_1492BF6:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1492BFE:     var_98.Text = vbNullString
  loc_1492C17:     Set var_94 = Me.Txt
  loc_1492C1D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1492C25:     var_98.Tag = vbNullString
  loc_1492C37:     global_132 = vbNullString
  loc_1492C3E:   Else
  loc_1492C79:     Set var_9C = Me.Txt
  loc_1492C7F:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1492C87:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1492CD8:     Set var_9C = Me.Txt
  loc_1492CDE:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1492CE6:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1492D19:     var_98 = Me.Fields.Item("NCat")
  loc_1492D30:     global_132 = CStr(var_98.Value)
  loc_1492D45:     Set var_94 = Me.TopCtrl1
  loc_1492D4B:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_8E)
  loc_1492D64:     If (CStr() = "Add") Then
  loc_1492D72:       If (global_88 = "Automatic") Then
  loc_1492D82:         Set var_94 = Me.Txt
  loc_1492D88:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1492D90:         var_98.Enabled = False
  loc_1492D9F:       Else
  loc_1492DAC:         Set var_94 = Me.Txt
  loc_1492DB2:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1492DBA:         var_98.Enabled = True
  loc_1492DD1:         Set var_94 = Me.Txt
  loc_1492DD7:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1492DDF:         var_98.SetFocus
  loc_1492DEB:       End If
  loc_1492DEB:     End If
  loc_1492DEB:   End If
  loc_1492DEF:   Set var_94 = Me.TopCtrl1
  loc_1492DF5:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_98)
  loc_1492DFD:   var_A0 = CStr()
  loc_1492E0E:   If (var_A0 = "Add") Then
  loc_1492E17:     Call Proc_49_52_1079974(MemVar_1F95044)
  loc_1492E2A:     Set var_94 = Me.Txt
  loc_1492E30:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_1492E38:     var_98.Text = var_A0
  loc_1492E47:   End If
  loc_1492E4A: Else
  loc_1492E52:   If (var_8E = CInt(1)) Then
  loc_1492E60:     Set var_94 = Me.Txt
  loc_1492E66:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1492E6E:     var_A0 = "Vr. No"
  loc_1492E8F:     If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_1492E9D:       Set var_94 = Me.Txt
  loc_1492EA3:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1492EAB:       var_98.SetFocus
  loc_1492EB9:       arg_10 = &HFF
  loc_1492EBC:       Exit Sub
  loc_1492EBD:     End If
  loc_1492ECB:     Set var_94 = Me.Txt
  loc_1492ED1:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_1492ED9:     arg_10 = var_98.Text
  loc_1492EF1:     If (CDbl(var_A0) = CDbl(0)) Then
  loc_1492F0D:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_10C, var_12C)
  loc_1492F27:       Set var_94 = Me.Txt
  loc_1492F2D:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1492F35:       var_98.SetFocus
  loc_1492F43:       arg_10 = &HFF
  loc_1492F46:       Exit Sub
  loc_1492F47:     End If
  loc_1492F4B:     Set var_94 = Me.TopCtrl1
  loc_1492F51:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(arg_10)
  loc_1492F6A:     If (CStr(var_A0) = "Add") Then
  loc_1492F92:       Set var_94 = Me.Txt
  loc_1492F98:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1492FBF:       Set var_9C = Me.Txt
  loc_1492FC5:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_138)
  loc_1492FCD:       5 = var_BC.Tag
  loc_1492FDA:       var_CC = Space((CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_98.Tag) - Len(var_138)))
  loc_1492FE2:       var_10C = ( + "Vr. No Can Not Be 0")
  loc_1492FF6:       var_12C = Space((5 - Len(global_124)))
  loc_1492FFE:       var_148 = (var_10C + var_12C)
  loc_149300B:       var_158 = (var_148 + CVar(global_124))
  loc_1493022:       Set var_15C = Me.Txt
  loc_1493028:       Call 0.Method_Txt_Validate0 (CInt(1), var_160, var_164)
  loc_1493030:       8 = var_160.Text
  loc_149303D:       var_174 = Space((var_158 - Len(var_164)))
  loc_1493045:       var_184 = ( + var_174)
  loc_1493057:       Set var_188 = Me.Txt
  loc_149305D:       Call 0.Method_Txt_Validate0 (CInt(1), var_18C)
  loc_1493070:       var_1B0 = (var_184 + CVar(var_18C.Text))
  loc_14930C9:       Set var_94 = Me.Txt
  loc_14930CF:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_14930D7:       var_98.Text = CStr(var_1B0)
  loc_14930F3:       Me.LblVPrefix.Caption = global_124
  loc_14930FB:     End If
  loc_14930FF:     Set var_94 = Me.TopCtrl1
  loc_1493105:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_149310D:     var_A0 = CStr()
  loc_149311E:     If (var_A0 = "Add") Then
  loc_149314E:       Set var_94 = Me.Txt
  loc_1493154:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, "Select Count(*) From STOCK Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1493165:       var_130 = var_BC & var_A0
  loc_1493175:       unk_49837C.Execute var_130 & "'", 0, var_15C
  loc_1493185:        = var_BC.Item()
  loc_149318D:        = var_15C.Value
  loc_14931BA:       If (var_98.Text.Fields > 0) Then
  loc_14931C3:         Call 0.Method_arg_50 (var_A0)
  loc_14931E4:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_10C, var_12C)
  loc_14931FA:         Call Proc_49_52_1079974(MemVar_1F95044)
  loc_149320A:         If (var_A0 = vbNullString) Then
  loc_1493217:           Set var_94 = Me.Txt
  loc_149321D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1493225:           var_98.SetFocus
  loc_1493233:           arg_10 = &HFF
  loc_1493236:           Exit Sub
  loc_1493237:         End If
  loc_149323D:         Call Proc_49_52_1079974(MemVar_1F95044, var_A0)
  loc_1493250:         Set var_94 = Me.Txt
  loc_1493256:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_149325E:         var_98.Text = arg_10
  loc_149326F:         arg_10 = &HFF
  loc_1493272:         Exit Sub
  loc_1493273:       End If
  loc_1493273:     End If
  loc_1493276:   Else
  loc_149327E:     If (var_8E = CInt(2)) Then
  loc_149328F:       Set var_94 = Me.Txt
  loc_1493295:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_149329D:       arg_10 = var_98.Text
  loc_14932B3:       var_10C = Len(Trim(CVar(var_A0)))
  loc_14932CD:       If (var_10C = 0) Then
  loc_14932E3:         Set var_94 = Me.Txt
  loc_14932E9:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_14932F1:         var_98.Text = CStr(MemVar_1F950EC)
  loc_1493303:       Else
  loc_149330D:         Set var_94 = Me.Txt
  loc_1493313:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1493333:         Set var_BC = Me.Txt
  loc_1493339:         Call 0.Method_Txt_Validate0 (Cancel, var_15C)
  loc_1493341:         var_15C.Text = Proc_6_33_15125B8(var_98)
  loc_1493354:       End If
  loc_1493361:       Set var_94 = Me.Txt
  loc_1493367:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_149336F:       var_A0 = var_98.Text
  loc_149338A:       Set var_9C = Me.Txt
  loc_1493390:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_130)
  loc_1493398:       (CDate(var_A0) >= MemVar_1F950F4) = var_BC.Text
  loc_14933BA:       If Not((var_A0 And (CDate(var_130) <= MemVar_1F950FC))) Then
  loc_14933DE:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_14933F8:         Set var_94 = Me.Txt
  loc_14933FE:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1493406:         var_98.SetFocus
  loc_1493414:         arg_10 = &HFF
  loc_1493417:         Exit Sub
  loc_1493418:       End If
  loc_149341C:       Set var_94 = Me.TopCtrl1
  loc_1493422:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(arg_10)
  loc_149342A:       var_A0 = CStr(var_98)
  loc_1493440:       Set var_98 = Me.Txt
  loc_1493446:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_149346F:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_1493478:         Call Proc_49_52_1079974(MemVar_1F95044)
  loc_149348B:         Set var_94 = Me.Txt
  loc_1493491:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_1493499:         var_98.Text = var_A0
  loc_14934A8:       End If
  loc_14934AB:     Else
  loc_14934B3:       If (var_8E = CInt(3)) Then
  loc_14934C1:         Set var_94 = Me.Txt
  loc_14934C7:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_14934CF:         var_A0 = "RoomNo"
  loc_14934F0:         If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_14934FE:           Set var_94 = Me.Txt
  loc_1493504:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_149350C:           var_98.SetFocus
  loc_149351A:           arg_10 = &HFF
  loc_149351D:           Exit Sub
  loc_149351E:         End If
  loc_149356C:         Set var_94 = Me.Txt
  loc_1493572:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_149357A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1493592:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14935A2:           Set var_94 = Me.Txt
  loc_14935A8:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14935B0:           var_98.Text = vbNullString
  loc_14935C9:           Set var_94 = Me.Txt
  loc_14935CF:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14935D7:           var_98.Tag = vbNullString
  loc_14935F1:           Set var_94 = Me.Txt
  loc_14935F7:           Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_14935FF:           var_98.Text = vbNullString
  loc_149360E:         Else
  loc_1493649:           Set var_9C = Me.Txt
  loc_149364F:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1493657:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14936A8:           Set var_9C = Me.Txt
  loc_14936AE:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14936B6:           var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14936FA:           var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_1493708:           Set var_9C = Me.Txt
  loc_149370E:           Call 0.Method_Txt_Validate0 (CInt(5), var_BC)
  loc_1493716:           var_BC.Text = var_A0
  loc_149372C:         End If
  loc_149372C:       End If
  loc_149372C:     End If
  loc_149372C:   End If
  loc_149372C: End If
  loc_1493731: Set var_88 = Nothing
  loc_1493734: Exit Sub
  loc_1493735: ' Referenced from: 1492AF0
  loc_1493735: Proc_6_60_E63754(var_A0)
  loc_149373A: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10F2E90
  'Data Table: 49835C
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
  loc_10F2B82: Set var_88 = Me.TxtGrid
  loc_10F2B88: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_10F2B96: Proc_6_74_E23240(var_8C)
  loc_10F2BA2: Call Proc_49_50_EBD858(var_8C)
  loc_10F2BB3: If (Index = 0) Then
  loc_10F2BCC:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_10F2BE7:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F2BF0:   Set var_8C = Me.FGrid
  loc_10F2C26:   Set var_108 = Me.TxtGrid
  loc_10F2C2C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10F2C34:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_10F2C75:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10F2C85:     Set var_90 = Me.TxtGrid
  loc_10F2C8B:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_10F2C93:     var_114 = var_108.Height
  loc_10F2CA5:     Set var_88 = Me.TxtGrid
  loc_10F2CAB:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118)
  loc_10F2CB3:     var_A4 = var_8C.Top
  loc_10F2CBF:     var_A4 = CVar((var_118 + var_11C)) 'Single
  loc_10F2CCE:     Me.DGItem.Top = var_A4
  loc_10F2CED:     Set var_88 = Me.TxtGrid
  loc_10F2CF3:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_10F2D12:     Me.DGItem.Left = CVar(var_8C.Left)
  loc_10F2D61:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10F2D64:       Exit Sub
  loc_10F2D65:     End If
  loc_10F2D6B:     Me.MoveFirst
  loc_10F2D83:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F2D8B:     var_E4 = CVar(CLng(6)) 'Long
  loc_10F2D94:     Set var_8C = Me.FGrid
  loc_10F2D9A:     var_D4 = var_8C.TextMatrix)
  loc_10F2DCF:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_10F2DFF:     If (Me.EOF = &HFF) Then
  loc_10F2E08:       Me.MoveFirst
  loc_10F2E0D:     End If
  loc_10F2E16:     CVarUnk
  loc_10F2E1B:     VerifyVarObj
  loc_10F2E21:     Set var_88 = Me.DGItem
  loc_10F2E27:     LateIdStAd
  loc_10F2E38:   Else
  loc_10F2E3F:     If (var_114 = CLng(3)) Then
  loc_10F2E57:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_60)
  loc_10F2E5F:       var_8C.MaxLength = var_138
  loc_10F2E74:       If (global_82 = 0) Then
  loc_10F2E7F:         var_110 = "{Home}+{End}"
  loc_10F2E85:         Proc_303_0_FBACC8(CStr(var_D4), 0, var_D4)
  loc_10F2E8D:       End If
  loc_10F2E8D:     End If
  loc_10F2E8D:   End If
  loc_10F2E8D: End If
  loc_10F2E8D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10D7A4C
  'Data Table: 49835C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10D7758: If (KeyCode = 0) Then
  loc_10D7765:   If (CLng(Shift) = &H1B) Then
  loc_10D7775:     Set var_8C = Me.TxtGrid
  loc_10D777B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10D7795:     Set var_98 = Me.TxtGrid
  loc_10D779B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10D77A3:     var_9C.Text = var_90.Tag
  loc_10D77BF:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10D77C4:     Call Proc_49_50_EBD858(arg_14)
  loc_10D77CD:     Set var_8C = Me.FGrid
  loc_10D77EA:     Set var_8C = Me.TxtGrid
  loc_10D77F0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10D77F8:     var_90.Visible = FGrid.DispID_8001
  loc_10D7804:     Exit Sub
  loc_10D7805:   End If
  loc_10D7818:   var_B0 = CLng(Me.FGrid.Col)
  loc_10D7828:   If (var_B0 = CLng(1)) Then
  loc_10D7843:     Set var_9C = Nothing
  loc_10D787C:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_10D789A:     If (CLng(Shift) = &HD) Then
  loc_10D78A3:       Call Proc_49_45_12B1D98(KeyCode, var_B2, 1, Nothing)
  loc_10D78AE:       If (var_B2 = &HFF) Then
  loc_10D78F4:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 3, 0)
  loc_10D7904:       End If
  loc_10D7904:     End If
  loc_10D7907:   Else
  loc_10D790E:     If (var_B0 = CLng(2)) Then
  loc_10D791B:       If (CLng(Shift) = &HD) Then
  loc_10D7924:         Call Proc_49_45_12B1D98(KeyCode, var_B2, 3, 0)
  loc_10D792F:         If (var_B2 = &HFF) Then
  loc_10D797C:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(3) + 1)), 0)
  loc_10D798C:         End If
  loc_10D798C:       End If
  loc_10D798F:     Else
  loc_10D7996:       If (var_B0 = CLng(3)) Then
  loc_10D79D9:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10D79E2:           Call Proc_49_45_12B1D98(KeyCode, var_B2, 0, 0)
  loc_10D79ED:           If (var_B2 = &HFF) Then
  loc_10D7A3A:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(3) + 1)), 0)
  loc_10D7A4A:           End If
  loc_10D7A4A:         End If
  loc_10D7A4A:       End If
  loc_10D7A4A:     End If
  loc_10D7A4A:   End If
  loc_10D7A4A: End If
  loc_10D7A4A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F12414
  'Data Table: 49835C
  Dim arg_10 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  Dim var_A0 As Long
  loc_F12327: Proc_6_58_E06050(arg_10)
  loc_F12332: Proc_6_133_E7FB08(var_94)
  loc_F1233B: arg_10 = CInt(var_94)
  loc_F1234D: If (KeyAscii = 0) Then
  loc_F12363:   var_A0 = CLng(Me.FGrid.Col)
  loc_F12373:   If (var_A0 = CLng(1)) Then
  loc_F12392:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F12399:       Set var_AC = Me.TxtGrid
  loc_F123BF:       Proc_6_89_1470B00(var_AC, KeyAscii, global_60, arg_10, "Name")
  loc_F123CE:     End If
  loc_F123D1:   Else
  loc_F123D8:     If (var_A0 = CLng(3)) Then
  loc_F123E5:       Set var_9C = Me.TxtGrid
  loc_F123EB:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0, var_A0)
  loc_F12406:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F12412:     End If
  loc_F12412:   End If
  loc_F12412: End If
  loc_F12412: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDC63C
  'Data Table: 49835C
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_EDC588: On Error Goto loc_EDC633
  loc_EDC58E: var_86 = KeyCode
  loc_EDC597: If (var_86 = 0) Then
  loc_EDC5BD:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EDC5E3:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EDC5F4:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_EDC623:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "Name")
  loc_EDC632:     End If
  loc_EDC632:   End If
  loc_EDC632: End If
  loc_EDC632: Exit Sub
  loc_EDC633: ' Referenced from: EDC588
  loc_EDC633: Proc_6_60_E63754(&HFF, 0)
  loc_EDC638: Exit Sub
  loc_EDC639: var_A0 = var_86
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20ED0
  'Data Table: 49835C
  Dim arg_10 As Integer
  loc_E20EB8: If (Cancel = 0) Then
  loc_E20EC1:   Call Proc_49_45_12B1D98(Cancel, var_88)
  loc_E20ECA:   arg_10 = Not(var_88)
  loc_E20ECD: End If
  loc_E20ECD: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A9698
  'Data Table: 49835C
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
  loc_10A93E3: Me.DGItem.Visible = False
  loc_10A9402: If (Me.RecordCount > 0) Then
  loc_10A943F:   Set var_B4 = Me.TxtGrid
  loc_10A9445:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A944D:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_10A9476:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A947E:   var_EC = CVar(CLng(1)) 'Long
  loc_10A94B1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A94B9:   Set var_B8 = Me.FGrid
  loc_10A94BF:   LateIdCallSt
  loc_10A94EE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A94F6:   var_EC = CVar(CLng(6)) 'Long
  loc_10A9529:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A9537:   LateIdCallSt
  loc_10A955D:   var_10C = Me.FGrid.Row
  loc_10A959E:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_10C)), Me.FGrid, var_11C, CVar(CLng(2)))) 'String
  loc_10A95AC:   LateIdCallSt
  loc_10A95D0:   var_11C = Me.FGrid.Row
  loc_10A9600:   var_B0 = Me.Fields.Item("LPurRate")
  loc_10A960F:   Proc_6_39_E7D3A0(var_10C, CVar(var_B0), CVar(CLng(4)), CVar(CLng(var_11C)), Me.FGrid, var_11C)
  loc_10A9618:   var_13C = CVar(CStr(var_10C)) 'String
  loc_10A9620:   Set var_B8 = Me.FGrid
  loc_10A9626:   LateIdCallSt
  loc_10A9642: End If
  loc_10A964E: Set var_A8 = Me.TxtGrid
  loc_10A9654: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_13E, var_B8, var_13C)
  loc_10A965C: var_A4 = var_B0.Visible
  loc_10A966E: If (var_13E = &HFF) Then
  loc_10A967A:   Set var_A8 = Me.TxtGrid
  loc_10A9680:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10A9688:   var_B0.SetFocus
  loc_10A9694: End If
  loc_10A9694: Exit Sub
  loc_10A9695: ThisVCallI2
End Sub

Private Sub FGrid_UnknownEvent_0 'EA4E08
  'Data Table: 49835C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA4DA3: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_112)) Then
  loc_EA4DB9:   Me.FGrid.Col = 1
  loc_EA4DC1: End If
  loc_EA4DD4: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA4DE7: Set var_88 = Me.TxtGrid
  loc_EA4DED: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA4DF5: var_BC.Visible = False
  loc_EA4E01: Call Proc_49_50_EBD858()
  loc_EA4E06: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6AA60
  'Data Table: 49835C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6AA1C: Set var_88 = Me.TxtGrid
  loc_E6AA22: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6AA3C: If (var_8C.Visible = 0) Then
  loc_E6AA55:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E6AA5D: End If
  loc_E6AA5D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEB4C
  'Data Table: 49835C
  loc_DFEB44: Call Proc_49_44_E43218()
  loc_DFEB49: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113E618
  'Data Table: 49835C
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
  loc_113E290: Set var_88 = Me.TopCtrl1
  loc_113E296: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_113E2DB: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_113E2E4:   Call Form_KeyDown(Cancel, arg_10)
  loc_113E2E9: End If
  loc_113E2ED: Set var_88 = Me.TopCtrl1
  loc_113E2F3: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_113E30C: If (CStr() = "Browse") Then
  loc_113E30F:   Exit Sub
  loc_113E310: End If
  loc_113E384: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_113E39D:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_113E3AD:   var_9C = "+{Tab}"
  loc_113E3B3:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_113E3BD:   Cancel = 0
  loc_113E3C3: Else
  loc_113E3CD:   var_B0 = Me.FGrid.Rows
  loc_113E41A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_113E433:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_113E440:     Call Proc_49_51_F0E894(0, var_B0, Cancel)
  loc_113E445:   End If
  loc_113E445: End If
  loc_113E44B: global_80 = Cancel
  loc_113E471: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_113E495: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_113E4AB:   var_EC = CLng(Me.FGrid.Col)
  loc_113E4BB:   If (var_EC = CLng(1)) Then
  loc_113E4D1:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113E4E9:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_113E4EE:     var_11C = vbNullString
  loc_113E4F8:     Set var_B4 = Me.FGrid
  loc_113E4FE:     LateIdCallSt
  loc_113E529:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113E531:     var_FC = CVar(CLng(6)) 'Long
  loc_113E536:     var_11C = vbNullString
  loc_113E540:     Set var_A0 = Me.FGrid
  loc_113E546:     LateIdCallSt
  loc_113E56B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113E573:     var_FC = CVar(CLng(3)) 'Long
  loc_113E578:     var_11C = vbNullString
  loc_113E582:     Set var_A0 = Me.FGrid
  loc_113E588:     LateIdCallSt
  loc_113E59D:   Else
  loc_113E5A4:     If (var_EC = CLng(3)) Then
  loc_113E5BA:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113E5D2:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_113E5D7:       var_11C = vbNullString
  loc_113E5E1:       Set var_B4 = Me.FGrid
  loc_113E5E7:       LateIdCallSt
  loc_113E5FF:     End If
  loc_113E5FF:   End If
  loc_113E5FF: End If
  loc_113E605: If (Cancel = &HD) Then
  loc_113E60D:   global_82 = 0
  loc_113E610: End If
  loc_113E612: Cancel = 0
  loc_113E615: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D0D8
  'Data Table: 49835C
  loc_E0D0C9: Call FGrid_UnknownEvent_C()
  loc_E0D0D3: global_82 = 0
  loc_E0D0D6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1015004
  'Data Table: 49835C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1014DF4: Set var_88 = Me.TopCtrl1
  loc_1014DFA: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1014E13: If (CStr() = "Browse") Then
  loc_1014E16:   Exit Sub
  loc_1014E17: End If
  loc_1014E2A: var_A0 = CLng(Me.FGrid.Col)
  loc_1014E3A: If (var_A0 = CLng(1)) Then
  loc_1014E41:   Set var_C4 = Me.FGrid
  loc_1014E65:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1014E92:   Set var_B4 = var_C4
  loc_1014EA4:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1014ECC:   Set var_88 = Me.TxtGrid
  loc_1014ED2:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1014EDA:   0 = var_B4.Text
  loc_1014EF3:   If (Len(var_9C) <= 1) Then
  loc_1014F02:     Set var_88 = Me.TxtGrid
  loc_1014F08:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1014F10:     var_CA = var_B4.Text
  loc_1014F21:     Set var_B8 = Me.TxtGrid
  loc_1014F27:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014F2F:     var_C4.Text = var_9C
  loc_1014F42:   End If
  loc_1014F4E:   Set var_88 = Me.TxtGrid
  loc_1014F54:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1014F6E:   Set var_B8 = Me.TxtGrid
  loc_1014F74:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014F7C:   var_C4.SelStart = Len(var_B4.Text)
  loc_1014F92: Else
  loc_1014F99:   If (var_A0 = CLng(3)) Then
  loc_1014FDA:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1014FEC:   End If
  loc_1014FEC: End If
  loc_1014FF6: If (CLng(Cancel) <> &HD) Then
  loc_1014FFE:   global_82 = &HFF
  loc_1015001: End If
  loc_1015001: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FEEEE0
  'Data Table: 49835C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FEED08: Set var_90 = Me.TopCtrl1
  loc_FEED0E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEED27: If (CStr() = "Browse") Then
  loc_FEED2A:   Exit Sub
  loc_FEED2B: End If
  loc_FEED48: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEED4B:   Exit Sub
  loc_FEED4C: End If
  loc_FEED5D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FEED7F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEEDB9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FEEDDB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEEDF1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEEDFA:         Set var_118 = Me.FGrid
  loc_FEEE15:       Else
  loc_FEEE28:         Me.FGrid.Rows = 1
  loc_FEEE4E:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FEEE56:         Set var_118 = Me.FGrid
  loc_FEEE83:         Me.FGrid.FixedRows = 1
  loc_FEEE8B:       End If
  loc_FEEE8B:     End If
  loc_FEEE8E:   Else
  loc_FEEEAF:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FEEEBF:   End If
  loc_FEEEC3:   Set var_90 = Me.FGrid
  loc_FEEED4: End If
  loc_FEEED9: Set var_8C = Nothing
  loc_FEEEDC: Exit Sub
  loc_FEEEDD: Exit Sub
  loc_FEEEDE: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_15 'E43028
  'Data Table: 49835C
  Dim var_8C As TextBox
  loc_E42FFC: Call Proc_49_50_EBD858()
  loc_E4300C: Set var_88 = Me.TxtGrid
  loc_E43012: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4301A: var_8C.Visible = False
  loc_E43026: Exit Sub
End Sub

Public Function MasterFormExitGet() '498FA4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '498FB3
  MasterFormExit = Value
End Sub

Public Sub FindMove(mDocId) 'E762C0
  'Data Table: 49835C
  Dim Me As Recordset15
  loc_E7626A: Me.MoveFirst
  loc_E76294: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E762B4: If (Me.EOF = 0) Then
  loc_E762B7:   Call Proc_49_46_1420244(var_9C)
  loc_E762BC: End If
  loc_E762BC: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94A70
  'Data Table: 49835C
  Dim Me As Recordset15
  loc_E949FE: On Error Goto loc_E94A67
  loc_E94A07: Me.MoveFirst
  loc_E94A31: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94A59: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E94A61: Call Proc_49_46_1420244(0)
  loc_E94A66: Exit Sub
  loc_E94A67: ' Referenced from: E949FE
  loc_E94A67: Proc_6_60_E63754(var_A0)
  loc_E94A6C: Exit Sub
End Sub

Public Sub Proc_49_43_1181D4C
  'Data Table: 49835C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1181982: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_118199D: Me.FGrid.Top = CVar(CDbl(1500))
  loc_11819B8: Me.FGrid.Height = CVar(CDbl(2800))
  loc_11819D3: Me.FGrid.Width = CVar(CDbl(8280))
  loc_11819EE: Me.DGItem.Left = CVar(CDbl(3000))
  loc_1181A09: Me.DGItem.Top = CVar(CDbl(1000))
  loc_1181A1F: Set var_A8 = Me.Txt
  loc_1181A25: Call 0.Method_Proc_49_43_1181D4C0 (CInt(3), var_AC)
  loc_1181A44: Me.DGRoom.Left = CVar(var_AC.Left)
  loc_1181A60: Set var_B4 = Me.Txt
  loc_1181A66: Call 0.Method_Proc_49_43_1181D4C0 (CInt(3), var_B8)
  loc_1181A81: Set var_A8 = Me.Txt
  loc_1181A87: Call 0.Method_Proc_49_43_1181D4C0 (CInt(3), var_AC)
  loc_1181A9F: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1181AAE: Me.DGRoom.Top = CVar(var_AC.Left)
  loc_1181ACE: Set var_A8 = Me.Txt
  loc_1181AD4: Call 0.Method_Proc_49_43_1181D4C0 (CInt(0), var_AC)
  loc_1181AF3: Me.DGVType.Left = CVar(var_AC.Left)
  loc_1181B0F: Set var_B4 = Me.Txt
  loc_1181B15: Call 0.Method_Proc_49_43_1181D4C0 (CInt(0), var_B8)
  loc_1181B30: Set var_A8 = Me.Txt
  loc_1181B36: Call 0.Method_Proc_49_43_1181D4C0 (CInt(0), var_AC)
  loc_1181B4E: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1181B5D: Me.DGVType.Top = CVar(var_AC.Left)
  loc_1181B73: Set var_C4 = Me.FGrid
  loc_1181B8A: global_112 = CStr(CLng(var_C4.BackColor))
  loc_1181BA0: var_C4.Cols = 7
  loc_1181BA8: var_94 = CVar(CLng(0)) 'Long
  loc_1181BAD: var_E8 = &HFA
  loc_1181BB9: LateIdCallSt
  loc_1181BC1: var_94 = 0
  loc_1181BCD: var_E8 = CVar(CLng(1)) 'Long
  loc_1181BD2: var_108 = "Item Name"
  loc_1181BDB: LateIdCallSt
  loc_1181BE6: var_94 = CVar(CLng(1)) 'Long
  loc_1181BF1: var_E8 = CVar(CInt(1)) 'Integer
  loc_1181BF8: LateIdCallSt
  loc_1181C03: var_94 = CVar(CLng(1)) 'Long
  loc_1181C08: var_E8 = &H122A
  loc_1181C14: LateIdCallSt
  loc_1181C1C: var_94 = 0
  loc_1181C28: var_E8 = CVar(CLng(2)) 'Long
  loc_1181C2D: var_108 = "Unit"
  loc_1181C36: LateIdCallSt
  loc_1181C41: var_94 = CVar(CLng(2)) 'Long
  loc_1181C4C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1181C53: LateIdCallSt
  loc_1181C5E: var_94 = CVar(CLng(2)) 'Long
  loc_1181C63: var_E8 = &H578
  loc_1181C6F: LateIdCallSt
  loc_1181C77: var_94 = 0
  loc_1181C83: var_E8 = CVar(CLng(3)) 'Long
  loc_1181C88: var_108 = "Qty"
  loc_1181C91: LateIdCallSt
  loc_1181C9C: var_94 = CVar(CLng(3)) 'Long
  loc_1181CA7: var_E8 = CVar(CInt(7)) 'Integer
  loc_1181CAE: LateIdCallSt
  loc_1181CB9: var_94 = CVar(CLng(3)) 'Long
  loc_1181CC4: var_E8 = CVar(CInt(7)) 'Integer
  loc_1181CCB: LateIdCallSt
  loc_1181CD6: var_94 = CVar(CLng(3)) 'Long
  loc_1181CDB: var_E8 = &H578
  loc_1181CE7: LateIdCallSt
  loc_1181CF2: var_94 = CVar(CLng(4)) 'Long
  loc_1181CF7: var_E8 = 0
  loc_1181D03: LateIdCallSt
  loc_1181D0E: var_94 = CVar(CLng(5)) 'Long
  loc_1181D13: var_E8 = 0
  loc_1181D1F: LateIdCallSt
  loc_1181D2A: var_94 = CVar(CLng(6)) 'Long
  loc_1181D2F: var_E8 = 0
  loc_1181D3B: LateIdCallSt
  loc_1181D45: Set var_C4 = Nothing 
  loc_1181D49: Exit Sub
End Sub

Public Sub Proc_49_44_E43218
  'Data Table: 49835C
  loc_E431F4: Set var_88 = Me.TopCtrl1
  loc_E431FA: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E43213: If (CStr() = "Browse") Then
  loc_E43216:   Exit Sub
  loc_E43217: End If
  loc_E43217: Exit Sub
End Sub

Public Sub Proc_49_45_12B1D98(arg_C) '12B1D98
  'Data Table: 49835C
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
  loc_12B1790: If (arg_C = 0) Then
  loc_12B17A6:   var_AC = CLng(Me.FGrid.Col)
  loc_12B17B6:   If (var_AC = CLng(1)) Then
  loc_12B17D9:     var_B2 = Me.EOF
  loc_12B1807:     Set var_98 = Me.TxtGrid
  loc_12B180D:     Call 0.Method_Proc_49_45_12B1D980 (arg_C, var_B8, var_BC)
  loc_12B1815:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_12B182D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_12B1843:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B184B:       var_EC = CVar(CLng(1)) 'Long
  loc_12B1850:       var_10C = vbNullString
  loc_12B185A:       Set var_B8 = Me.FGrid
  loc_12B1860:       LateIdCallSt
  loc_12B1885:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B188D:       var_EC = CVar(CLng(6)) 'Long
  loc_12B1892:       var_10C = vbNullString
  loc_12B189C:       Set var_B8 = Me.FGrid
  loc_12B18A2:       LateIdCallSt
  loc_12B18C7:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B18CF:       var_EC = CVar(CLng(2)) 'Long
  loc_12B18D4:       var_10C = vbNullString
  loc_12B18DE:       Set var_B8 = Me.FGrid
  loc_12B18E4:       LateIdCallSt
  loc_12B1909:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B1911:       var_EC = CVar(CLng(4)) 'Long
  loc_12B1916:       var_10C = vbNullString
  loc_12B1920:       Set var_B8 = Me.FGrid
  loc_12B1926:       LateIdCallSt
  loc_12B193B:     Else
  loc_12B193E:       Call Proc_49_54_FC5C8C(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_12B1949:       If (var_B2 = 0) Then
  loc_12B1951:         Proc_49_45_12B1D98 = 0
  loc_12B1957:       End If
  loc_12B1970:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B1978:       var_EC = CVar(CLng(6)) 'Long
  loc_12B1992:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_12B19B0:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B19B8:       var_150 = CVar(CLng(6)) 'Long
  loc_12B19D2:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_12B1A3D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_12B1A54:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_12B1A70:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B1A78:         var_FC = CVar(CLng(1)) 'Long
  loc_12B1AAB:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12B1AB3:         Set var_164 = Me.FGrid
  loc_12B1AB9:         LateIdCallSt
  loc_12B1AE8:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B1AF0:         var_FC = CVar(CLng(6)) 'Long
  loc_12B1B23:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12B1B2B:         Set var_164 = Me.FGrid
  loc_12B1B31:         LateIdCallSt
  loc_12B1B60:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B1B68:         var_FC = CVar(CLng(2)) 'Long
  loc_12B1B92:         var_12C = Me.Fields.Item("Unit").Value
  loc_12B1B9B:         var_140 = CVar(CStr(var_12C)) 'String
  loc_12B1BA3:         Set var_164 = Me.FGrid
  loc_12B1BA9:         LateIdCallSt
  loc_12B1BC9:         var_CC = CVar(CLng(var_92)) 'Long
  loc_12B1BDB:         var_A8 = CVar(CStr(var_92)) 'String
  loc_12B1BE3:         Set var_98 = Me.FGrid
  loc_12B1BE9:         LateIdCallSt
  loc_12B1C01:         var_140 = Me.FGrid.Row
  loc_12B1C0A:         var_DC = CVar(CLng(var_140)) 'Long
  loc_12B1C12:         var_FC = CVar(CLng(4)) 'Long
  loc_12B1C1A:         var_CC = "LPurRate"
  loc_12B1C29:         var_98 = Me.Fields
  loc_12B1C31:         var_B8 = var_98.Item(var_CC)
  loc_12B1C40:         Proc_6_39_E7D3A0(var_12C, CVar(var_B8), var_FC, var_DC, var_98, CVar(var_B8), CVar(CLng(0)))
  loc_12B1C49:         var_174 = CVar(CStr(var_12C)) 'String
  loc_12B1C51:         Set var_164 = Me.FGrid
  loc_12B1C57:         LateIdCallSt
  loc_12B1C73:       End If
  loc_12B1C73:     End If
  loc_12B1C73:     Call Proc_49_55_F74508(var_164, var_174, var_CC, var_164, var_140)
  loc_12B1C7B:   Else
  loc_12B1C82:     If (var_AC = CLng(3)) Then
  loc_12B1C8F:       Set var_98 = Me.TxtGrid
  loc_12B1C95:       Call 0.Method_Proc_49_45_12B1D980 (arg_C, var_B8, var_FC)
  loc_12B1CAD:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_12B1CB4:         var_BC = CStr(0)
  loc_12B1CC1:         Set var_98 = Me.TxtGrid
  loc_12B1CC7:         Call 0.Method_Proc_49_45_12B1D980 (arg_C, var_B8, var_BC)
  loc_12B1CCF:         var_B8.Text = var_DC
  loc_12B1CDE:       End If
  loc_12B1CEB:       Set var_98 = Me.TxtGrid
  loc_12B1CF1:       Call 0.Method_Proc_49_45_12B1D980 (arg_C, var_B8, var_BC)
  loc_12B1CF9:       var_164 = var_B8.Text
  loc_12B1D11:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B1D29:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12B1D63:       LateIdCallSt
  loc_12B1D87:       Call Proc_49_55_F74508(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_12B1D8C:     End If
  loc_12B1D8C:   End If
  loc_12B1D8C: End If
  loc_12B1D91: Proc_49_45_12B1D98 = &HFF
End Sub

Public Sub Proc_49_46_1420244
  'Data Table: 49835C
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_49837C As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_168 As Integer
  Dim var_124 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_158 As Variant
  Dim var_16C As Field20
  Dim var_188 As TextBox
  Dim var_BC As Variant
  Dim var_184 As TextBox
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  loc_141F7D8: On Error Goto loc_142023C
  loc_141F7F2: If (Me.RecordCount > 0) Then
  loc_141F834:   var_DC = "Select S.* From STOCK S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_141F84B:   unk_49837C.Execute CStr(var_DC & "'"), var_120, -1
  loc_141F873:   Set var_128 = var_124 
  loc_141F8B0:   Set var_124 = Me.Txt
  loc_141F8B6:   Call 0.Method_Proc_49_46_14202440 (CInt(4), var_12C)
  loc_141F8BE:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_141F8EE:   var_AC = var_128.Fields.Item("vType")
  loc_141F8F6:   var_BC = var_AC.Value
  loc_141F90D:   Set var_124 = Me.Txt
  loc_141F913:   Call 0.Method_Proc_49_46_14202440 (CInt(0), var_12C)
  loc_141F91B:   var_12C.Tag = CStr(var_BC)
  loc_141F937:   var_168 = 0
  loc_141F958:   var_CC = 0
  loc_141F978:   var_100 = "Select 'M'+ShortName From Depart Where Code='" & global_144
  loc_141F988:   unk_49837C.Execute CStr(var_BC) & "'", var_BC, -1
  loc_141F990:   var_98 = var_98.Fields
  loc_141F998:   var_CC = var_AC.Item(var_AC)
  loc_141F9A0:   var_124 = var_124.Value
  loc_141F9BF:   unk_49837C.Execute CStr(var_DC & var_DC & "'"), "Select NCAT From Voucher_Type Where V_Type='", var_154
  loc_141F9C7:   -1 = var_12C.Fields
  loc_141F9CF:   var_158 = var_158.Item(var_12C)
  loc_141F9D7:   var_168 = var_16C.Value
  loc_141F9E6:   global_132 = CStr(var_17C)
  loc_141FA19:   var_168 = 0
  loc_141FA3A:   var_CC = 0
  loc_141FA5A:   var_100 = "Select 'M'+ShortName From Depart Where Code='" & global_144
  loc_141FA6A:   unk_49837C.Execute CStr(var_BC) & "'", var_BC, -1
  loc_141FA72:   var_98 = var_98.Fields
  loc_141FA7A:   var_CC = var_AC.Item(var_AC)
  loc_141FA82:   var_124 = var_124.Value
  loc_141FA93:   var_120 = var_DC & var_DC & "'" 
  loc_141FAA1:   unk_49837C.Execute CStr(var_120), "Select Description From Voucher_type Where V_Type='", var_154
  loc_141FAA9:   -1 = var_12C.Fields
  loc_141FAB1:   var_158 = var_158.Item(var_12C)
  loc_141FAB9:   var_168 = var_16C.Value
  loc_141FAD0:   Set var_184 = Me.Txt
  loc_141FAD6:   Call 0.Method_Proc_49_46_14202440 (CInt(0), var_188)
  loc_141FADE:   var_188.Text = CStr(var_17C)
  loc_141FB49:   Set var_124 = Me.Txt
  loc_141FB4F:   Call 0.Method_Proc_49_46_14202440 (CInt(1), var_12C)
  loc_141FB57:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_141FBBF:   Set var_124 = Me.Txt
  loc_141FBC5:   Call 0.Method_Proc_49_46_14202440 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_141FBCD:   var_12C.Text = 1
  loc_141FC1F:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_141FC69:   Set var_124 = Me.Txt
  loc_141FC6F:   Call 0.Method_Proc_49_46_14202440 (CInt(5), var_12C)
  loc_141FC77:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("RoomCat")), 1)
  loc_141FCB3:   var_100 = Proc_6_38_E69628(CVar(var_128.Fields.Item("RoomNo")))
  loc_141FCC1:   Set var_124 = Me.Txt
  loc_141FCC7:   Call 0.Method_Proc_49_46_14202440 (CInt(3), var_12C)
  loc_141FCCF:   var_12C.Tag = var_100
  loc_141FCFD:   var_AC = var_128.Fields.Item("RoomNo")
  loc_141FD05:   var_BC = var_AC.Value
  loc_141FD1F:   If CBool(var_BC <> vbNullString) Then
  loc_141FD4F:     Set var_98 = Me.Txt
  loc_141FD55:     Call 0.Method_Proc_49_46_14202440 (CInt(3), var_AC, var_100, "Select Name,RoomCat From RoomMast Where Code='", var_BC, -1)
  loc_141FD5D:     var_124 = var_AC.Tag
  loc_141FD76:     unk_49837C.Execute var_12C & var_100 & "' and (code is not null or code <> '')", 0, var_158
  loc_141FD86:      = var_12C.Item(var_16C)
  loc_141FD8E:      = var_158.Value
  loc_141FDA5:     Set var_16C = Me.Txt
  loc_141FDAB:     Call 0.Method_Proc_49_46_14202440 (CInt(3), var_184)
  loc_141FDB3:     var_184.Text = CStr(var_124.Fields)
  loc_141FDDB:   End If
  loc_141FDDD:   Set var_128 = Nothing 
  loc_141FDF0:   Me.FGrid.Redraw = False
  loc_141FE0B:   Me.FGrid.Rows = 1
  loc_141FE15:   var_8E = 1
  loc_141FE25:   var_CC = "Select S1.*,I.name as ItemName From STOCK S1 Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store' Where S1.DocId='"
  loc_141FE6E:   unk_49837C.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_141FE79:   Set var_88 = var_124
  loc_141FEA7:   If (var_88.RecordCount > 0) Then
  loc_141FEAA:     ' Referenced from: 1420173
  loc_141FEB9:     If Not(var_88.EOF) Then
  loc_141FEBC:       var_A8 = vbNullString
  loc_141FEC6:       Set var_98 = Me.FGrid
  loc_141FEDB:       Set var_190 = Me.FGrid
  loc_141FEE2:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141FEEA:       var_110 = CVar(CLng(0)) 'Long
  loc_141FF1A:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_141FF21:       LateIdCallSt
  loc_141FF3B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141FF43:       var_110 = CVar(CLng(6)) 'Long
  loc_141FF73:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_141FF7A:       LateIdCallSt
  loc_141FFC9:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_190, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_141FFD0:       LateIdCallSt
  loc_1420002:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_142000A:       var_144 = CVar(CLng(3)) 'Long
  loc_142003E:       LateIdCallSt
  loc_142008D:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_8E)), var_190, CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))), 1, 1)) 'String
  loc_1420094:       LateIdCallSt
  loc_14200DD:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("Rate")), CVar(CLng(4)), CVar(CLng(var_8E)), var_190, var_DC)
  loc_14200ED:       LateIdCallSt
  loc_1420138:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("Amount")), CVar(CLng(5)), CVar(CLng(var_8E)), var_190, CVar(CStr(var_DC)))
  loc_1420141:       var_FC = CVar(CStr(var_DC)) 'String
  loc_1420148:       LateIdCallSt
  loc_142015E:       Set var_190 = Nothing 
  loc_1420168:       var_8E = (var_8E + 1)
  loc_142016E:       var_88.MoveNext
  loc_1420173:       GoTo loc_141FEAA
  loc_1420176:     End If
  loc_1420189:     Me.FGrid.FixedRows = 1
  loc_1420191:   End If
  loc_142019F:   Me.FGrid.Redraw = True
  loc_14201AD:   If (var_8E = 1) Then
  loc_14201C3:     Me.FGrid.Rows = 1
  loc_14201E9:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8E, var_190, var_FC, var_144))) 'String
  loc_14201F1:     Set var_AC = Me.FGrid
  loc_142021E:     Me.FGrid.FixedRows = 1
  loc_1420226:   End If
  loc_1420229: Else
  loc_1420229:   Call Proc_49_48_F30540(FGrid.DispID_10000, var_BC, var_EC, var_190)
  loc_142022E: End If
  loc_142022E: Call Proc_49_50_EBD858(var_DC, var_190)
  loc_1420238: Set var_88 = Nothing
  loc_142023B: Exit Sub
  loc_142023C: ' Referenced from: 141F7D8
  loc_142023C: Proc_6_60_E63754(var_DC)
  loc_1420241: Exit Sub
End Sub

Public Sub Proc_49_47_108F468
  'Data Table: 49835C
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_49837C As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_108F1E1: Set var_9C = Me.TopCtrl1
  loc_108F1E7: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(&HFF)
  loc_108F1EF: var_B0 = CStr()
  loc_108F200: If (var_B0 = "Add") Then
  loc_108F230:   Set var_9C = Me.Txt
  loc_108F236:   Call 0.Method_Proc_49_47_108F4680 (CInt(4), var_B4, var_B0, "Select Count(*) From STOCK Where DocID='", var_AC, -1)
  loc_108F257:   unk_49837C.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_108F267:    = var_D4.Item()
  loc_108F26F:    = var_E8.Value
  loc_108F29C:   If (var_B4.Text.Fields > 0) Then
  loc_108F2A5:     Call 0.Method_arg_50 (var_B0)
  loc_108F2C6:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_108F2DC:     Call Proc_49_52_1079974(MemVar_1F95044)
  loc_108F2EF:     Set var_9C = Me.Txt
  loc_108F2F5:     Call 0.Method_Proc_49_47_108F4680 (CInt(4), var_B4)
  loc_108F2FD:     var_B4.Text = var_B0
  loc_108F311:     Proc_49_47_108F468 = 0
  loc_108F317:   End If
  loc_108F317: End If
  loc_108F33C: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_108F346:   var_CC = CVar(CLng(var_88)) 'Long
  loc_108F34E:   var_108 = CVar(CLng(6)) 'Long
  loc_108F36E:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_108F38A:   If CBool(var_118 <> vbNullString) Then
  loc_108F391:     var_CC = CVar(CLng(var_88)) 'Long
  loc_108F399:     var_108 = CVar(CLng(3)) 'Long
  loc_108F3C9:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_108F3F1:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_108F417:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_108F423:       Set var_9C = Me.FGrid
  loc_108F447:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_108F454:       Proc_49_47_108F468 = 0
  loc_108F45A:     End If
  loc_108F45A:   End If
  loc_108F45D: Next var_12C 'Integer
  loc_108F462: Proc_49_47_108F468 = 
End Sub

Public Sub Proc_49_48_F30540
  'Data Table: 49835C
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F30439: Me.LblVPrefix.Caption = vbNullString
  loc_F3044F: Set var_8C = Me.Txt
  loc_F30455: Call 0.Method_Proc_49_48_F30540C (var_8E, var_86)
  loc_F30465: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F3047B:   Set var_8C = Me.Txt
  loc_F30481:   Call 0.Method_Proc_49_48_F305400 (CInt(var_86), var_98)
  loc_F30489:   var_98.Text = vbNullString
  loc_F304A5:   Set var_8C = Me.Txt
  loc_F304AB:   Call 0.Method_Proc_49_48_F305400 (CInt(var_86), var_98)
  loc_F304B3:   var_98.Tag = vbNullString
  loc_F304C2: Next var_92 'Byte
  loc_F304DB: Me.FGrid.Rows = 1
  loc_F30501: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F30509: Set var_98 = Me.FGrid
  loc_F30536: Me.FGrid.FixedRows = 1
  loc_F3053E: Exit Sub
End Sub

Public Sub Proc_49_49_EF5F18(arg_C) 'EF5F18
  'Data Table: 49835C
  Dim var_98 As TextBox
  loc_EF5E4E: Set var_8C = Me.Txt
  loc_EF5E54: Call 0.Method_Proc_49_49_EF5F18C (var_8E, var_86)
  loc_EF5E64: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF5E7A:   Set var_8C = Me.Txt
  loc_EF5E80:   Call 0.Method_Proc_49_49_EF5F180 (CInt(var_86), var_98)
  loc_EF5E88:   var_98.Enabled = arg_C
  loc_EF5E97: Next var_92 'Byte
  loc_EF5EAA: Set var_8C = Me.Txt
  loc_EF5EB0: Call 0.Method_Proc_49_49_EF5F180 (CInt(4), var_98)
  loc_EF5EB8: var_98.Enabled = False
  loc_EF5ED1: Set var_8C = Me.Txt
  loc_EF5ED7: Call 0.Method_Proc_49_49_EF5F180 (CInt(2), var_98)
  loc_EF5EDF: var_98.Enabled = False
  loc_EF5EFA: Set var_8C = Me.Txt
  loc_EF5F00: Call 0.Method_Proc_49_49_EF5F180 (global_128, var_98)
  loc_EF5F08: var_98.Enabled = False
  loc_EF5F14: Exit Sub
End Sub

Public Sub Proc_49_50_EBD858
  'Data Table: 49835C
  loc_EBD7D0: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBD7E2:   Me.DGVType.Visible = False
  loc_EBD7EA: End If
  loc_EBD806: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EBD818:   Me.DGRoom.Visible = False
  loc_EBD820: End If
  loc_EBD83C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBD84E:   Me.DGItem.Visible = False
  loc_EBD856: End If
  loc_EBD856: Exit Sub
End Sub

Public Sub Proc_49_51_F0E894
  'Data Table: 49835C
  loc_F0E7B8: Call Proc_49_50_EBD858()
  loc_F0E7C8: Set var_88 = Me.Txt
  loc_F0E7CE: Call 0.Method_Proc_49_51_F0E8940 (CInt(2))
  loc_F0E7F7: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0E7FA:   Exit Sub
  loc_F0E7FB: End If
  loc_F0E806: Set var_88 = Me.Txt
  loc_F0E80C: Call 0.Method_Proc_49_51_F0E8940 (CInt(1), var_8C)
  loc_F0E835: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0E838:   Exit Sub
  loc_F0E839: End If
  loc_F0E870: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0E873:   Call TopCtrl1_UnknownEvent_16()
  loc_F0E87B: Else
  loc_F0E881:   Call 0.Method_arg_1E8 (var_88)
  loc_F0E889:   Call var_88.SetFocus
  loc_F0E892: End If
  loc_F0E892: Exit Sub
End Sub

Public Sub Proc_49_52_1079974
  'Data Table: 49835C
  Dim var_98 As TextBox
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_1079726: Call 0.Method_Proc_49_52_10799740 (CInt(0), var_98)
  loc_1079736: var_90 = var_98.Tag
  loc_1079761: Me.Connection15.Execute "Select MAX(vno)AS VNO From STOCK s Where s.VType='" & var_90 & "' ", var_C0, -1
  loc_107976C: Set var_8C = Me.Txt
  loc_1079790: If (var_8C.RecordCount > 0) Then
  loc_10797B0:   var_D4 = Year(DateAdd("d", CDbl(&HFF), MemVar_1F950F4))
  loc_10797BF:   global_124 = CStr(var_D4)
  loc_10797E4:   var_98 = var_8C.Fields.Item("VNo")
  loc_10797F3:   Proc_6_39_E7D3A0(var_D4, CVar(var_98))
  loc_1079800:   var_F4 = (var_D4 + 1)
  loc_1079808:   global_128 = CInt(var_F4)
  loc_1079817: End If
  loc_1079841: var_F4 = (CVar(global_128 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C)) + Trim(var_90))
  loc_1079852: var_108 = Space((5 - Len(var_90)))
  loc_107985A: var_118 = (var_F4 + var_108)
  loc_107986E: var_128 = Space((5 - Len(global_124)))
  loc_1079876: var_138 = (var_118 + var_128)
  loc_1079883: var_148 = (var_138 + CVar(global_124))
  loc_107989C: var_158 = Space((8 - Len(CStr(global_128))))
  loc_10798A4: var_168 = (var_148 + var_158)
  loc_10798B3: var_188 = (var_168 + CVar(CStr(global_128)))
  loc_10798BE: global_116 = CStr(var_188)
  loc_10798F6: Me.LblVPrefix.Caption = global_124
  loc_107990F: Set var_94 = Me.Txt
  loc_1079915: Call 0.Method_Proc_49_52_10799740 (CInt(4), var_98)
  loc_107991D: var_98.Text = global_116
  loc_1079945: Call 0.Method_Proc_49_52_10799740 (CInt(1), var_98)
  loc_107994D: var_98.Text = CStr(global_128)
  loc_1079962: var_88 = global_116
  loc_107996A: Set var_8C = Nothing
  loc_107996D: Proc_49_52_1079974 = Me.Txt
End Sub

Public Sub Proc_49_53_10B5830(arg_C, arg_10, arg_14) '10B5830
  'Data Table: 49835C
  Dim unk_49837C As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B559E: If (arg_C = "HKROP") Then
  loc_10B55C5:   unk_49837C.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B55D0:   Set var_8C = var_C4
  loc_10B55E3:   var_94 = "Room Op.STOCK Entry"
  loc_10B55E9: Else
  loc_10B55EE:   Proc_49_53_10B5830 = &HFF
  loc_10B55F4: End If
  loc_10B5608: If (var_8C.RecordCount > 0) Then
  loc_10B560B:   ' Referenced from: 10B5784
  loc_10B561A:   If Not(var_8C.EOF) Then
  loc_10B5625:     If (var_90 = vbNullString) Then
  loc_10B5668:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B566F:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B56A1:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B56C6:     Else
  loc_10B5702:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B5722:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B574F:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B5754:       var_90 = CStr(var_11C)
  loc_10B577C:     End If
  loc_10B577F:     var_8C.MoveNext
  loc_10B5784:     GoTo loc_10B560B
  loc_10B5787:   End If
  loc_10B578D:   Call 0.Method_arg_50 (var_138)
  loc_10B57E9:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This ," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B57EC:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B581B:   Set var_8C = Nothing
  loc_10B581E:   Proc_49_53_10B5830 = 0
  loc_10B5824: End If
  loc_10B5829: Proc_49_53_10B5830 = &HFF
End Sub

Public Sub Proc_49_54_FC5C8C
  'Data Table: 49835C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC5B0F: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC5B14:   var_92 = 1 'Byte
  loc_FC5B18: End If
  loc_FC5B21: Set var_98 = Me.TxtGrid
  loc_FC5B27: Call 0.Method_Proc_49_54_FC5C8C0 (0, var_B0)
  loc_FC5B4A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC5B7E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC5BA2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC5BA5:     GoTo loc_FC5C77
  loc_FC5BA8:   End If
  loc_FC5BAC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC5BD6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC5BE0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC5C15:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC5C39:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC5C52:     Set var_98 = Me.TxtGrid
  loc_FC5C58:     Call 0.Method_Proc_49_54_FC5C8C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC5C60:     var_B0.SetFocus
  loc_FC5C71:     Proc_49_54_FC5C8C = 0
  loc_FC5C77:     ' Referenced from: FC5BA5
  loc_FC5C77:   End If
  loc_FC5C7A: Next var_D4 'Integer
  loc_FC5C84: Proc_49_54_FC5C8C = &HFF
End Sub

Public Sub Proc_49_55_F74508
  'Data Table: 49835C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F7440B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74413: var_C8 = CVar(CLng(4)) 'Long
  loc_F7444B: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74453: var_134 = CVar(CLng(3)) 'Long
  loc_F7448B: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74493: var_1F0 = CVar(CLng(5)) 'Long
  loc_F744C4: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F744CC: Set var_224 = Me.FGrid
  loc_F744D2: LateIdCallSt
  loc_F74505: Exit Sub
End Sub
