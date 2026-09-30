VERSION 5.00
Begin VB.Form FrmReceivePayment
  Caption = "Misc.Payment / Received Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 15165
  ClientHeight = 9390
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15165
    Height = 450
    TabIndex = 25
  End
  Begin PictureBox Picture1
    Picture = "FrmReceivePayment.frx":0
    Left = 4605
    Top = 1200
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    Picture = "FrmReceivePayment.frx":34E
    Left = 6705
    Top = 2415
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGAgAc
    Left = 3930
    Top = 3375
    Width = 4200
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1845
    Top = 3435
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
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
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2505
    Top = 1335
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2415
    Width = 4185
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2145
    Width = 1350
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 2505
    Top = 1605
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 2505
    Top = 1875
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 4845
    Top = 1605
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2685
    Width = 4185
    Height = 1050
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin MaskEdBox txtM
    Index = 5
    Left = 3870
    Top = 1875
    Width = 720
    Height = 255
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 90
    Top = 3615
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin MSHFlexGrid GridSel
    Left = 8745
    Top = 1395
    Width = 6495
    Height = 5985
    TabIndex = 26
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4470
    Top = 5685
    Width = 2790
    Height = 285
    TabIndex = 24
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1095
    Top = 5685
    Width = 2880
    Height = 255
    TabIndex = 23
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    Visible = 0   'False
    TabIndex = 22
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
  Begin Label LblName
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 1350
    Top = 1350
    Width = 465
    Height = 240
    TabIndex = 16
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
    Caption = "Against A/c"
    Index = 0
    ForeColor = &HC00000&
    Left = 1335
    Top = 2445
    Width = 1065
    Height = 240
    TabIndex = 14
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
    Caption = "Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 1335
    Top = 2175
    Width = 735
    Height = 240
    TabIndex = 13
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
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1335
    Top = 1905
    Width = 435
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 6735
    Top = 1260
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 1335
    Top = 1635
    Width = 525
    Height = 240
    TabIndex = 10
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 4050
    Top = 1605
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Remarks"
    Index = 4
    ForeColor = &HC00000&
    Left = 1335
    Top = 2715
    Width = 825
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmReceivePayment"

Private global_112 As Double
Private global_96 As Integer
Private global_68 As Recordset15
Private global_72 As Variant
Private MasterFormExit As Integer

Private Sub TopCtrl1_UnknownEvent_A '10064A8
  'Data Table: 4BF174
  Dim var_E4 As Variant
  Dim var_88 As String
  Dim var_8C As Label
  loc_10062A4: On Error Goto loc_10064A0
  loc_10062CA: Call Proc_332_37_F714C4(Proc_5_1_100EC1C("ADD", Me))
  loc_10062DE: Set var_8C = Me.TopCtrl1
  loc_10062E4: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_10062F5: Set var_8C = Me.TopCtrl1
  loc_10062FB: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_100630C: Set var_8C = Me.TopCtrl1
  loc_1006312: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_1006323: Set var_8C = Me.TopCtrl1
  loc_1006329: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_1006331: Call Proc_332_35_EF28F4(global_64)
  loc_1006371: Set var_8C = Me.txtM
  loc_1006377: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_100637F: var_E4.Text = 1
  loc_10063A7: Set var_8C = Me.txtM
  loc_10063AD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4)
  loc_10063B5: var_E4.Tag = vbNullString
  loc_10063C6: var_88 = CStr(MemVar_1F950EC)
  loc_10063D4: Set var_8C = Me.Txt
  loc_10063DA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_E4)
  loc_10063E2: var_E4.Text = var_88
  loc_10063FD: Call Txt_Validate(CInt(2))
  loc_1006410: Set var_8C = Me.Txt
  loc_1006416: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_E4, "Misc Rect.")
  loc_100641E: var_E4.Text = 0
  loc_1006430: global_60 = "HTSAL"
  loc_100643A: Call Proc_332_40_115C448(MemVar_1F95044, var_88)
  loc_100644D: Set var_8C = Me.Txt
  loc_1006453: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4)
  loc_100645B: var_E4.SetFocus
  loc_1006474: Me.LblUser.Caption = vbNullString
  loc_1006489: Me.LblLDt.Caption = vbNullString
  loc_100649A: Call Proc_332_42_1113C20(CDbl(0))
  loc_100649F: Exit Sub
  loc_10064A0: ' Referenced from: 10062A4
  loc_10064A0: Proc_6_60_E63754(1)
  loc_10064A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F090F4
  'Data Table: 4BF174
  loc_F09014: On Error Goto loc_F090EB
  loc_F0904E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F09074:   Call Proc_332_37_F714C4(Proc_5_1_100EC1C("INI", Me))
  loc_F09088:   Set var_10C = Me.TopCtrl1
  loc_F0908E:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F0909F:   Set var_10C = Me.TopCtrl1
  loc_F090A5:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F090B6:   Set var_10C = Me.TopCtrl1
  loc_F090BC:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F090CD:   Set var_10C = Me.TopCtrl1
  loc_F090D3:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F090DB:   Call Proc_332_38_EB93AC(global_64)
  loc_F090E0:   Call Proc_332_35_EF28F4()
  loc_F090E5:   Call Proc_332_36_1352398()
  loc_F090EA: End If
  loc_F090EA: Exit Sub
  loc_F090EB: ' Referenced from: F09014
  loc_F090EB: Proc_6_60_E63754()
  loc_F090F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1106FFC
  'Data Table: 4BF174
  Dim var_96 As Integer
  Dim unk_4BF18E As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_1106CF0: On Error Goto loc_1106FA5
  loc_1106D01: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_1106D04:   Exit Sub
  loc_1106D05: End If
  loc_1106D3C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1106D4D:   unk_4BF18E.BeginTrans var_11C
  loc_1106D63:   var_94 = Me.Bookmark 'Variant
  loc_1106D85:   Set var_120 = Me.Txt
  loc_1106D8B:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From ExpSheet Where DocID='")
  loc_1106D93:   var_B8 = var_124.Text
  loc_1106D9C:   var_12C = -1 & var_128
  loc_1106DAC:   unk_4BF18E.Execute var_12C & "'", var_134, &HFF
  loc_1106DD4:   Set var_120 = Me.Txt
  loc_1106DDA:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_1106DEC:   var_168 = 0
  loc_1106DFF:   var_160 = 0
  loc_1106E0A:   var_15C = 0
  loc_1106E1D:   var_154 = 0
  loc_1106E28:   var_150 = 0
  loc_1106E3B:   var_148 = 0
  loc_1106E7A:   var_128 = "ExpSheet"
  loc_1106E83:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_1106EAE:   unk_4BF18E.CommitTrans
  loc_1106EB5:   var_96 = 0
  loc_1106EC3:   Me.Requery -1
  loc_1106EE3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1106EF0:     Me.Bookmark = var_94
  loc_1106EF8:   Else
  loc_1106F0C:     If (Me.EOF = 0) Then
  loc_1106F15:       Me.MoveLast
  loc_1106F1A:     End If
  loc_1106F1A:   End If
  loc_1106F1A:   Call Proc_332_36_1352398(var_96, var_148, 0, var_150, var_154)
  loc_1106F1F:   Call Proc_332_35_EF28F4(0, var_15C)
  loc_1106F40:   Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_1106F51:   Set var_120 = Me.TopCtrl1
  loc_1106F57:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_1106F68:   Set var_120 = Me.TopCtrl1
  loc_1106F6E:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_1106F7F:   Set var_120 = Me.TopCtrl1
  loc_1106F85:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_1106F96:   Set var_120 = Me.TopCtrl1
  loc_1106F9C:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_1106FA4: End If
  loc_1106FA4: Exit Sub
  loc_1106FA5: ' Referenced from: 1106CF0
  loc_1106FAB: If (var_96 = &HFF) Then
  loc_1106FB4:   unk_4BF18E.RollbackTrans
  loc_1106FB9: End If
  loc_1106FC1: Set var_120 = Err()
  loc_1106FC7: Call 0.Method_arg_2C (var_128, 0)
  loc_1106FE8: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_1106FFB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F9F974
  'Data Table: 4BF174
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F9F800: On Error Goto loc_F9F92F
  loc_F9F811: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F9F814:   Exit Sub
  loc_F9F815: End If
  loc_F9F82C: If (Me.RecordCount > 0) Then
  loc_F9F844:   var_8C = "EDIT"
  loc_F9F852:   Call Proc_332_37_F714C4(Proc_5_1_100EC1C(var_8C, Me))
  loc_F9F86A:   Set var_90 = Me.Txt
  loc_F9F870:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F9F878:   var_98.Enabled = False
  loc_F9F891:   Set var_90 = Me.Txt
  loc_F9F897:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_F9F89F:   var_98.Enabled = False
  loc_F9F8B6:   Set var_90 = Me.Txt
  loc_F9F8BC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_F9F8C4:   var_98.SetFocus
  loc_F9F8D3: Else
  loc_F9F8F4:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F9F904: End If
  loc_F9F911: Me.LblUser.Caption = vbNullString
  loc_F9F926: Me.LblLDt.Caption = vbNullString
  loc_F9F92E: Exit Sub
  loc_F9F92F: ' Referenced from: F9F800
  loc_F9F937: Set var_90 = Err()
  loc_F9F93D: Call 0.Method_arg_2C (var_8C)
  loc_F9F95E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F9F971: Exit Sub
  loc_F9F972: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AACC
  'Data Table: 4BF174
  loc_E1AAC1: Me.Global.Unload Me
  loc_E1AAC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5CE1C
  'Data Table: 4BF174
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F950E4 As String
  loc_F5CCF8: On Error Goto loc_F5CE13
  loc_F5CD12: If (Me.RecordCount <= 0) Then
  loc_F5CD30:   var_A8 = "No Records To Search."
  loc_F5CD36:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F5CD46:   Exit Sub
  loc_F5CD47: End If
  loc_F5CD51: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_F5CD5B:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F95078
  loc_F5CD70:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F5CD86:   MemVar_1F950E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') AND E.vdate>=") & var_A8 & " Order by DocID,VNo")
  loc_F5CD9B: Else
  loc_F5CDA2:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F95078
  loc_F5CDB7:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_F5CDC3:   var_B8 = " Order by E.DocID,E.VNo"
  loc_F5CDCD:   MemVar_1F950E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') and E.vdate=") & var_A8 & var_B8)
  loc_F5CDDF: End If
  loc_F5CDE8: Proc_6_126_F1C850("1450,500,1200,550,4000,950,2500", MemVar_1F950E4)
  loc_F5CDF6: MemVar_1F95120 = Me
  loc_F5CE0D: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5CE12: Exit Sub
  loc_F5CE13: ' Referenced from: F5CCF8
  loc_F5CE13: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F5CE18: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFE724
  'Data Table: 4BF174
  loc_DFE71C: Call Proc_332_32_13E1C68()
  loc_DFE721: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14D7574
  'Data Table: 4BF174
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As String
  Dim unk_4BF18E As Connection15
  Dim var_98 As Recordset15
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_138 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_110 As Variant
  Dim var_86 As Integer
  Dim var_140 As String
  Dim MemVar_1F950EC As Double
  Dim var_148 As Variant
  Dim var_A0 As Integer
  Dim var_158 As String
  Dim var_44C As Double
  Dim var_1B4 As Variant
  Dim var_234 As TextBox
  Dim var_454 As Double
  Dim var_260 As TextBox
  Dim var_19C As Variant
  Dim var_21C As Variant
  Dim var_3BC As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_14D68A4: On Error Goto loc_14D7558
  loc_14D68B2: Set var_A4 = Me.Txt
  loc_14D68B8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_14D68E1: If (Proc_6_27_EA61EC(var_A8, "Date") = 0) Then
  loc_14D68E4:   Exit Sub
  loc_14D68E5: End If
  loc_14D68F0: Set var_A4 = Me.Txt
  loc_14D68F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14D691F: If (Proc_6_27_EA61EC(var_A8, "Vr No") = 0) Then
  loc_14D6922:   Exit Sub
  loc_14D6923: End If
  loc_14D692E: Set var_A4 = Me.Txt
  loc_14D6934: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8)
  loc_14D695D: If (Proc_6_27_EA61EC(var_A8, "Account") = 0) Then
  loc_14D6960:   Exit Sub
  loc_14D6961: End If
  loc_14D696F: Set var_A4 = Me.Txt
  loc_14D6975: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_14D6999: If (CDbl(Val(var_A8.Text)) <= CDbl(0)) Then
  loc_14D69AF:   var_D0 = "Can't Save with Nil Amount"
  loc_14D69B5:   MsgBox(var_D0, &H10, var_F0, var_110, var_130)
  loc_14D69C5:   Exit Sub
  loc_14D69C6: End If
  loc_14D69C9: Call Proc_332_34_F9073C(var_132)
  loc_14D69D4: If (var_132 = 0) Then
  loc_14D69D7:   Exit Sub
  loc_14D69D8: End If
  loc_14D69F5: Proc_6_17_EAAE40(var_D0, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_110)
  loc_14D69FD: var_F0 = -1 & var_D0 
  loc_14D6A0B: unk_4BF18E.Execute CStr(var_F0), var_A4, var_A8
  loc_14D6A16: Set var_98 = var_A4
  loc_14D6A66: var_AC = var_98.Fields
  loc_14D6A76: var_F0 = var_AC.Item("CashPayType").Value
  loc_14D6A88: var_130 = IsNull(CVar(var_98.Fields.Item("CashPayType"))) Or (var_F0 = vbNullString)
  loc_14D6AA0: If CBool(var_130) Then
  loc_14D6ABC:   MsgBox("Set Cash Pay Type in Enviro", &H40, var_F0, var_110, var_130)
  loc_14D6ACC:   Exit Sub
  loc_14D6ACD: End If
  loc_14D6AF9: var_A8 = var_98.Fields.Item("CashPayType")
  loc_14D6B01: var_D0 = var_A8.Value
  loc_14D6B09: var_F0 = "SELECT ACCODE FROM REVMAST WHERE cODE='" & var_D0 
  loc_14D6B12: var_110 = var_F0 & "'" 
  loc_14D6B20: unk_4BF18E.Execute CStr(var_110), var_130, -1
  loc_14D6B2B: Set var_9C = var_AC
  loc_14D6B53: unk_4BF18E.BeginTrans var_13C
  loc_14D6B5C: Set var_A4 = Me.TopCtrl1
  loc_14D6B62: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_14D6B7B: If (CStr(var_AC) = "Add") Then
  loc_14D6B84:   var_E0 = 0
  loc_14D6BA1:   var_B0 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078
  loc_14D6BB1:   unk_4BF18E.Execute var_B0 & "'", var_D0, -1
  loc_14D6BB9:   var_A4 = var_A4.Fields
  loc_14D6BC1:   var_E0 = var_A8.Item(var_A8)
  loc_14D6BC9:   var_AC = var_AC.Value
  loc_14D6BD3:   MemVar_1F950EC = CDate(var_F0)
  loc_14D6C1A:   Set var_A4 = Me.Txt
  loc_14D6C20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Select Count(*) From ExpSheet Where DocID='", var_D0, -1, var_AC)
  loc_14D6C41:   unk_4BF18E.Execute 0 & var_B0 & "'", var_148, var_F0
  loc_14D6C49:   MemVar_1F950EC = var_AC.Fields
  loc_14D6C51:    = var_A8.Text.Item(var_F0)
  loc_14D6C59:    = var_148.Value
  loc_14D6C86:   If (var_F0 > 0) Then
  loc_14D6C8F:     Call 0.Method_arg_50 (var_B0)
  loc_14D6C9D:     var_F0 = CVar(var_B0) 'String
  loc_14D6CB0:     MsgBox("Duplicate Vr. No.", &H40, var_F0, var_110, var_130)
  loc_14D6CC6:     Call Proc_332_40_115C448(MemVar_1F95044)
  loc_14D6CD6:     If (var_B0 = vbNullString) Then
  loc_14D6CD9:       Exit Sub
  loc_14D6CDA:     End If
  loc_14D6CE0:     Call Proc_332_40_115C448(MemVar_1F95044, var_B0)
  loc_14D6CF3:     Set var_A4 = Me.Txt
  loc_14D6CF9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14D6D01:     var_A8.Text = var_B0
  loc_14D6D10:     Exit Sub
  loc_14D6D11:   End If
  loc_14D6D11: End If
  loc_14D6D2F: Set var_A4 = Me.Txt
  loc_14D6D35: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Delete From ExpSheet Where DocID='")
  loc_14D6D3D: var_D0 = var_A8.Text
  loc_14D6D46: var_140 = -1 & var_B0
  loc_14D6D56: unk_4BF18E.Execute 0 & var_B0 & "'", var_AC, var_B0
  loc_14D6D95: For var_14C = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_9E = var_14C 'Integer
  loc_14D6D9E:   var_A0 = var_9E
  loc_14D6DA5:   var_C0 = CVar(CLng(var_A0)) 'Long
  loc_14D6DAA:   var_100 = 0
  loc_14D6DD9:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_14D6E03:     var_B0 = CStr(Me.GridSel.TextMatrix))
  loc_14D6E14:     If (var_B0 <> vbNullString) Then
  loc_14D6E25:       Set var_A4 = Me.Txt
  loc_14D6E2B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, 2, CVar(CLng(var_A0)))
  loc_14D6E33:       var_100 = var_A8.Text
  loc_14D6E3C:       var_C0 = CVar(CLng(var_A0)) 'Long
  loc_14D6E41:       var_100 = 2
  loc_14D6E8D:       var_158 = "Update PayCharge Set RefDocId='" & var_B0 & "' Where DocId='" & CStr(Me.GridSel.TextMatrix)) & "' And PayType='Company'"
  loc_14D6E96:       unk_4BF18E.Execute var_158, var_F0, -1
  loc_14D6EBC:     End If
  loc_14D6EBC:   End If
  loc_14D6EBF: Next var_14C 'Integer
  loc_14D6ED2: Set var_A4 = Me.Txt
  loc_14D6ED8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14D6EEC: Set var_AC = Me.LblVPrefix
  loc_14D6F05: Set var_138 = Me.Txt
  loc_14D6F0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_148)
  loc_14D6F20: var_44C = Val(var_148.Text)
  loc_14D6F2E: Set var_188 = Me.Txt
  loc_14D6F34: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_18C)
  loc_14D6F43: Proc_6_7_F26918(var_F0, CVar(var_18C))
  loc_14D6F53: Set var_1A0 = Me.txtM
  loc_14D6F59: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1A4)
  loc_14D6F68: Proc_6_17_EAAE40(var_1C4, CVar(var_1A4))
  loc_14D6F78: Set var_1E8 = Me.Txt
  loc_14D6F7E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1EC)
  loc_14D6F8D: Proc_6_17_EAAE40(var_20C, CVar(var_1EC))
  loc_14D6FA0: Set var_230 = Me.Txt
  loc_14D6FA6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_234)
  loc_14D6FBB: var_454 = Val(var_234.Text)
  loc_14D6FCC: Set var_25C = Me.Txt
  loc_14D6FD2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_260, var_264)
  loc_14D6FED: Proc_6_7_F26918(var_304, Date)
  loc_14D6FF6: Set var_338 = Me.TopCtrl1
  loc_14D6FFC: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_44C)
  loc_14D7047: var_140 = "Insert Into ExpSheet(DocID,VType,VPrefix,Site_Code,VNo,VDate,Vtime,Remarks,Amount,AgAc,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A8.Text
  loc_14D705F: var_158 = var_140 & "','" & global_60 & "','"
  loc_14D70B4: var_21C = CVar(var_158 & var_AC.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_44C) & ",") & var_F0 & "," & var_1C4 & "," & var_20C 
  loc_14D710E: var_3BC = var_21C & "," & CVar(var_260.Tag) & ",'" & CVar(var_264) & "','" & CVar(MemVar_1F950C8) & "'," & var_304 & ",'" & IIf((CStr(var_348) = "Add"), "A", "E") 
  loc_14D7138: unk_4BF18E.Execute CStr(var_3BC & "','" & CVar(MemVar_1F95078) & "')"), var_440, -1
  loc_14D71CA: Set var_A4 = Me.TopCtrl1
  loc_14D71D0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_444)
  loc_14D71E9: If (CStr() = "Add") Then
  loc_14D7200:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_14D7226:   var_110 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14D7237:   Set var_A4 = Me.Txt
  loc_14D723D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8, var_158, var_110)
  loc_14D7245:   var_1B4 = var_A8.Text
  loc_14D7253:   Proc_6_7_F26918(var_F0, CVar(var_158))
  loc_14D725B:   var_130 = -1 & var_F0 
  loc_14D7264:   var_19C = CVar(var_158 & var_AC.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_44C) & ",") & var_F0 & " Order By VP.Date_From DESC" 
  loc_14D7272:   unk_4BF18E.Execute CStr(var_19C), var_AC, 
  loc_14D727D:   Set var_8C = var_AC
  loc_14D72BB:   If (var_8C.RecordCount > 0) Then
  loc_14D72CC:     Set var_A4 = Me.Txt
  loc_14D72D2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14D72E7:     var_44C = Val(var_A8.Text)
  loc_14D72ED:     var_C0 = "Date_From"
  loc_14D7310:     Proc_6_7_F26918(var_F0, CVar(var_8C.Fields.Item(var_C0)))
  loc_14D7343:     var_158 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_44C) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_14D7362:     var_110 = CVar(var_158 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") 'String
  loc_14D7368:     var_130 = var_110 & var_F0 
  loc_14D7376:     unk_4BF18E.Execute CStr(var_130), var_19C, -1
  loc_14D73AA:   End If
  loc_14D73AA: End If
  loc_14D73B0: unk_4BF18E.CommitTrans
  loc_14D73B5: Call Proc_332_38_EB93AC(var_148)
  loc_14D73C8: Set var_A4 = Me.Txt
  loc_14D73CE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14D73EA: var_86 = 0
  loc_14D73F8: Me.Requery -1
  loc_14D7422: Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_14D7432: Set var_A4 = Me.TopCtrl1
  loc_14D7438: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_14D7451: If (CStr(var_86) = "Add") Then
  loc_14D7454:   Call TopCtrl1_UnknownEvent_A()
  loc_14D7459:   Exit Sub
  loc_14D745A: End If
  loc_14D746F: var_B0 = "INI"
  loc_14D747D: Call Proc_332_37_F714C4(Proc_5_1_100EC1C(var_B0, Me), global_64)
  loc_14D7491: Set var_A4 = Me.TopCtrl1
  loc_14D7497: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_14D74A8: Set var_A4 = Me.TopCtrl1
  loc_14D74AE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_14D74BF: Set var_A4 = Me.TopCtrl1
  loc_14D74C5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_14D74D6: Set var_A4 = Me.TopCtrl1
  loc_14D74DC: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_14D74E4: Call Proc_332_36_1352398(var_44C)
  loc_14D7500: If (Me.RecordCount > 0) Then
  loc_14D7509:   Call 0.Method_arg_50 (var_B0)
  loc_14D7547:   If (MsgBox(CVar(var_B0 & " ?"), &H24, "Print", var_110, var_130) = 6) Then
  loc_14D754A:     Call TopCtrl1_UnknownEvent_14()
  loc_14D754F:   End If
  loc_14D754F: End If
  loc_14D7554: Set var_8C = Nothing
  loc_14D7557: Exit Sub
  loc_14D7558: ' Referenced from: 14D68A4
  loc_14D755E: If (var_86 = &HFF) Then
  loc_14D7567:   unk_4BF18E.RollbackTrans
  loc_14D756C: End If
  loc_14D756C: Proc_6_60_E63754()
  loc_14D7571: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) '111E708
  'Data Table: 4BF174
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_1D8 As Double
  Dim var_86 As Integer
  loc_111E3C2: If (Index = &HD) Then
  loc_111E3D3:   Proc_303_0_FBACC8("	")
  loc_111E3DB: End If
  loc_111E3FA: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_111E3FD:   Exit Sub
  loc_111E3FE: End If
  loc_111E412: var_A4 = Me.GridSel.Col
  loc_111E435: var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_111E475: If (CVar(CLng(5)) And (CStr(Me.GridSel.TextMatrix)) = "Cash")) Then
  loc_111E488:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_111E4A2:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_111E4BD:   var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_111E4C2:   var_E8 = 0
  loc_111E4F4:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_111E4F9:   var_19C = 0
  loc_111E534:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_111E53C:   Set var_1D0 = Me.GridSel
  loc_111E542:   LateIdCallSt
  loc_111E57E:   var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_111E583:   var_E8 = 0
  loc_111E5BA:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_111E5D0:     var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_111E5D8:     var_E8 = CVar(CLng(4)) 'Long
  loc_111E60A:     global_112 = (global_112 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_111E621:   Else
  loc_111E634:     var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_111E63C:     var_E8 = CVar(CLng(4)) 'Long
  loc_111E645:     Set var_A8 = Me.GridSel
  loc_111E65E:     var_1D8 = Val(CStr(var_A8.TextMatrix)))
  loc_111E66E:     global_112 = (global_112 - var_1D8)
  loc_111E682:   End If
  loc_111E698:   Set var_94 = Me.Txt
  loc_111E69E:   Call 0.Method_GridSel_UnknownEvent_A0 (CInt(3), var_A8, CStr(global_112), global_112, var_1D8, var_E8, var_C8)
  loc_111E6A6:   var_A8.Text = global_112
  loc_111E6C6:   var_86 = CInt((UBound(global_104, 1) + 1))
  loc_111E6D8:   ReDim Preserve global_104(0 To CLng(var_86))
  loc_111E700:   global_104(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_111E707: End If
  loc_111E707: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5CF0C
  'Data Table: 4BF174
  loc_E5CEE7: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CEEA:   Exit Sub
  loc_E5CEEB: End If
  loc_E5CF02: global_96 = CInt(CLng(Me.GridSel.Row))
  loc_E5CF0B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '10AEA88
  'Data Table: 4BF174
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_154 As Variant
  Dim var_174 As Long
  Dim var_194 As Variant
  Dim var_1B0 As Double
  Dim var_1A8 As TextBox
  Dim var_86 As Integer
  loc_10AE7E1: If ((CLng(Me.GridSel.Col) <> 0) Or (global_96 = 0)) Then
  loc_10AE7E4:   Exit Sub
  loc_10AE7E5: End If
  loc_10AE814: For var_A0 = global_96 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_A0 'Integer
  loc_10AE82D:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_10AE848:   Me.GridSel.Col = 0
  loc_10AE860:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10AE87A:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10AE886:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AE88B:   var_D0 = 0
  loc_10AE8AE:   var_154 = CVar(CLng(var_88)) 'Long
  loc_10AE8B3:   var_174 = 0
  loc_10AE8EE:   var_194 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10AE8F6:   Set var_1A8 = Me.GridSel
  loc_10AE8FC:   LateIdCallSt
  loc_10AE921:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AE926:   var_D0 = 0
  loc_10AE955:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10AE95C:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AE964:     var_D0 = CVar(CLng(4)) 'Long
  loc_10AE996:     global_112 = (global_112 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_10AE9A5:   Else
  loc_10AE9A9:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AE9B1:     var_D0 = CVar(CLng(4)) 'Long
  loc_10AE9D3:     var_1B0 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_10AE9E3:     global_112 = (global_112 - var_1B0)
  loc_10AE9EF:   End If
  loc_10AEA05:   Set var_8C = Me.Txt
  loc_10AEA0B:   Call 0.Method_GridSel_UnknownEvent_100 (CInt(3), var_1A8, CStr(global_112), global_112, var_1B0, var_D0, var_B0)
  loc_10AEA13:   var_1A8.Text = global_112
  loc_10AEA33:   var_86 = CInt((UBound(global_104, 1) + 1))
  loc_10AEA45:   ReDim Preserve global_104(0 To CLng(var_86))
  loc_10AEA6D:   global_104(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10AEA77: Next var_A0 'Integer
  loc_10AEA81: global_96 = 0
  loc_10AEA84: Exit Sub
End Sub

Public Sub txtM_UnknownEvent_0(Index As Integer) 'E518C0
  'Data Table: 4BF174
  loc_E5189A: Set var_88 = Me.txtM
  loc_E518A0: Call 0.Method_txtM_UnknownEvent_00 (Index)
  loc_E518AE: Proc_6_74_E23240(var_8C)
  loc_E518BA: Call Proc_332_38_EB93AC(var_8C)
  loc_E518BF: Exit Sub
End Sub

Public Sub txtM_UnknownEvent_1(Index As Integer) 'E4BE74
  'Data Table: 4BF174
  loc_E4BE52: Set var_88 = Me.txtM
  loc_E4BE58: Call 0.Method_txtM_UnknownEvent_10 (Index)
  loc_E4BE66: Proc_6_73_E23294(var_8C)
  loc_E4BE72: Exit Sub
End Sub

Public Sub txtM_UnknownEvent_8(arg_C, arg_10) 'E54FC8
  'Data Table: 4BF174
  Dim arg_10 As Integer
  loc_E54F9E: Set var_88 = Me.txtM
  loc_E54FA4: Call 0.Method_txtM_UnknownEvent_80 (arg_C)
  loc_E54FBE: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E54FC3:   arg_10 = &HFF
  loc_E54FC6: End If
  loc_E54FC6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E61C4C
  'Data Table: 4BF174
  loc_E61C06: If (CLng(arg_10) = &H1B) Then
  loc_E61C09:   Call Proc_332_38_EB93AC()
  loc_E61C0E:   Exit Sub
  loc_E61C0F: End If
  loc_E61C24: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E61C2D:   Proc_6_75_E5335C(arg_10)
  loc_E61C32: End If
  loc_E61C3C: If (CLng(arg_10) = &H26) Then
  loc_E61C45:   Proc_6_76_E533C8(arg_10, arg_14)
  loc_E61C4A: End If
  loc_E61C4A: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F1971C
  'Data Table: 4BF174
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F19638: On Error Goto loc_F19716
  loc_F1963F: Set var_A4 = Me.ListView
  loc_F19689: Set var_BC = Me.Txt
  loc_F1968F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F19697: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F196C3: Me.FrmList.Visible = False
  loc_F196E5: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F196F3: Set var_9C = Me.Txt
  loc_F196F9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F19701: var_A4.SetFocus
  loc_F19715: Exit Sub
  loc_F19716: ' Referenced from: F19638
  loc_F19716: Proc_6_60_E63754(var_C8)
  loc_F1971B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '113F934
  'Data Table: 4BF174
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  loc_113F5CE: Set var_88 = Me.Txt
  loc_113F5D4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_113F5E2: Proc_6_74_E23240(var_8C)
  loc_113F5EE: Call Proc_332_38_EB93AC(var_8C)
  loc_113F5F6: var_92 = Index
  loc_113F601: If Not (var_92 = CInt(2)) Then
  loc_113F60C:   If (var_92 = CInt(3)) Then
  loc_113F60F:   End If
  loc_113F617:   var_98 = "{Home}+{End}"
  loc_113F61D:   Proc_303_0_FBACC8(var_98, 0)
  loc_113F628: Else
  loc_113F630:   If (var_92 = CInt(5)) Then
  loc_113F64D:     If (Me.Recordset15.RecordCount > 0) Then
  loc_113F65B:       Set var_8C = Me.FGPoint
  loc_113F677:       Proc_6_137_1192FDC(Me.DGAgAc, global_68, Index)
  loc_113F685:     End If
  loc_113F6DC:     Set var_88 = Me.Txt
  loc_113F6E2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_113F6EA:     ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_113F702:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_113F712:       Set var_88 = Me.Txt
  loc_113F718:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_113F720:       var_8C.Tag = vbNullString
  loc_113F72C:       Exit Sub
  loc_113F72D:     End If
  loc_113F73A:     Set var_88 = Me.Txt
  loc_113F740:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_113F753:     global_100 = var_8C.Text
  loc_113F76E:     Set var_88 = Me.Txt
  loc_113F774:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_113F77C:     var_98 = var_8C.Text
  loc_113F78E:     var_B4 = "Name"
  loc_113F7CC:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_113F7D8:       Me.Recordset15.MoveFirst
  loc_113F7FB:       Set var_88 = Me.Txt
  loc_113F801:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_113F809:       0 = var_8C.Text
  loc_113F825:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_113F83A:     End If
  loc_113F83D:   Else
  loc_113F845:     If (var_92 = CInt(6)) Then
  loc_113F855:       ReDim var_F4(0 To 1)
  loc_113F86C:       var_F4(0) = "Misc Rect."
  loc_113F87B:       var_F4(1) = "Misc Payment"
  loc_113F892:       global_72 = Array(var_F4)
  loc_113F89D:       Set var_B8 = Me.ListView
  loc_113F8B8:       Set var_8C = Me.Txt
  loc_113F8D2:       Set global_88 = Proc_6_66_F0048C(var_B8, var_8C, Index)
  loc_113F8F0:       Set var_88 = Me.Txt
  loc_113F8F6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_113F8FE:       global_72 = var_8C.Text
  loc_113F910:       Set var_90 = Me.Txt
  loc_113F916:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_113F91E:       var_B8.Tag = 2
  loc_113F931:     End If
  loc_113F931:   End If
  loc_113F931: End If
  loc_113F931: Exit Sub
  loc_113F932: global_72 = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11D0504
  'Data Table: 4BF174
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_E0 As String
  loc_11D00C3: var_86 = Shift
  loc_11D00D0: If (CLng(Shift) = &H1B) Then
  loc_11D00D3:   Call Proc_332_38_EB93AC(var_86)
  loc_11D00D8:   Exit Sub
  loc_11D00D9: End If
  loc_11D00DC: var_88 = KeyCode
  loc_11D00E7: If (var_88 = CInt(5)) Then
  loc_11D00F5:   Set var_A8 = Me.Txt
  loc_11D0107:   Set var_9C = Me.FGPoint
  loc_11D0112:   Set var_98 = Nothing
  loc_11D0144:   Proc_6_69_134A630(Me.DGAgAc, var_A8, KeyCode, global_68, Shift, 0)
  loc_11D0166:   var_B0 = Me.FGPoint.RecordCount
  loc_11D01B6:   If ((var_B0 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11D01BD:     Set var_98 = Me.DGAgAc
  loc_11D01C4:     Set var_90 = Me.FGPoint
  loc_11D01E0:     Proc_6_138_106E830(var_98, global_68, KeyCode, var_90, 1)
  loc_11D01EE:   End If
  loc_11D01F1: Else
  loc_11D01F9:   If (var_88 = CInt(6)) Then
  loc_11D021E:     Set var_8C = Me.Txt
  loc_11D0224:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_11D022C:     var_9C = var_90.Left
  loc_11D023E:     Set var_98 = Me.Txt
  loc_11D0244:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_11D024C:     0 = var_9C.Top
  loc_11D025E:     Set var_A4 = Me.Txt
  loc_11D0264:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11D026C:     var_B8 = var_A8.Height
  loc_11D027E:     Set var_AC = Me.Txt
  loc_11D0284:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_11D028C:     var_C0 = var_BC.Width
  loc_11D02D4:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D02FB:   Else
  loc_11D0303:     If (var_88 = CInt(4)) Then
  loc_11D0310:       If (CLng(Shift) = &H2D) Then
  loc_11D0320:         Set var_8C = Me.Txt
  loc_11D0326:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4, CInt(var_B0))
  loc_11D032E:         CInt((var_B4 + var_B8)) = var_90.Text
  loc_11D0339:         Call Proc_332_41_EE3748(var_E0, var_E4, CInt(var_C0))
  loc_11D034F:         Set var_98 = Me.Txt
  loc_11D0355:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D035D:         var_9C.Text = 680 & var_E0
  loc_11D0383:         Set var_8C = Me.Txt
  loc_11D0389:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11D03A4:         Set var_98 = Me.Txt
  loc_11D03AA:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D03B2:         var_9C.SelStart = Len(var_90.Text)
  loc_11D03C5:         Exit Sub
  loc_11D03C6:       End If
  loc_11D03C6:     End If
  loc_11D03C6:   End If
  loc_11D03C6: End If
  loc_11D03FF: If ((CBool(Me.DGAgAc.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11D0420:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_11D0429:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11D042E:   End If
  loc_11D0432:   Set var_8C = Me.TopCtrl1
  loc_11D0438:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_11D0463:   If (((CStr() = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11D047B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11D0484:       Proc_6_76_E533C8(Shift)
  loc_11D0489:     End If
  loc_11D048C:   Else
  loc_11D0490:     Set var_8C = Me.TopCtrl1
  loc_11D0496:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_11D04B8:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11D04D0:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11D04D9:         Proc_6_76_E533C8(Shift)
  loc_11D04DE:       End If
  loc_11D04DE:     End If
  loc_11D04DE:   End If
  loc_11D04F3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11D04FC:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11D0501:   End If
  loc_11D0501: End If
  loc_11D0501: Exit Sub
  loc_11D0502: DOC
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F70A20
  'Data Table: 4BF174
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F708E7: Proc_6_58_E06050(arg_10)
  loc_F708EF: var_86 = KeyAscii
  loc_F708FA: If (var_86 = CInt(1)) Then
  loc_F70907:   Set var_8C = Me.Txt
  loc_F7090D:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F70928:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F70937: Else
  loc_F7093F:   If (var_86 = CInt(3)) Then
  loc_F7094C:     Set var_8C = Me.Txt
  loc_F70952:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F7096D:     Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_F7097C:   Else
  loc_F70984:     If (var_86 = CInt(5)) Then
  loc_F709A3:       If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F709D4:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F70A0A:         Proc_6_138_106E830(Me.DGAgAc, global_68, KeyAscii, Me.FGPoint)
  loc_F70A18:       End If
  loc_F70A18:     End If
  loc_F70A18:   End If
  loc_F70A18: End If
  loc_F70A18: Proc_6_60_E63754(0, 2)
  loc_F70A1D: Exit Sub
  loc_F70A1E: 0(var_86) = 
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEE5C
  'Data Table: 4BF174
  Dim var_86 As Integer
  loc_DFEE57: var_86 = KeyCode
  loc_DFEE5A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AF6C
  'Data Table: 4BF174
  loc_E4AF4A: Set var_88 = Me.Txt
  loc_E4AF50: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AF5E: Proc_6_73_E23294(var_8C)
  loc_E4AF6A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13001AC
  'Data Table: 4BF174
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim unk_4BF18E As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_8C As Fields15
  loc_12FFAAB: var_86 = Cancel
  loc_12FFAB6: If (var_86 = CInt(1)) Then
  loc_12FFAC4:   Set var_8C = Me.Txt
  loc_12FFACA:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12FFAD2:   var_98 = "Vr No"
  loc_12FFAF3:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_12FFB01:     Set var_8C = Me.Txt
  loc_12FFB07:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12FFB0F:     var_90.SetFocus
  loc_12FFB1D:     arg_10 = &HFF
  loc_12FFB20:     Exit Sub
  loc_12FFB21:   End If
  loc_12FFB2F:   Set var_8C = Me.Txt
  loc_12FFB35:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_12FFB3D:   arg_10 = var_90.Text
  loc_12FFB55:   If (CDbl(var_98) = CDbl(0)) Then
  loc_12FFB6B:     var_B8 = "Vr. No. Can Not Be 0"
  loc_12FFB71:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_12FFB8B:     Set var_8C = Me.Txt
  loc_12FFB91:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FFB99:     var_90.SetFocus
  loc_12FFBA7:     arg_10 = &HFF
  loc_12FFBAA:     Exit Sub
  loc_12FFBAB:   End If
  loc_12FFBAF:   Set var_8C = Me.TopCtrl1
  loc_12FFBB5:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_12FFBBD:   var_98 = CStr(var_86)
  loc_12FFBCE:   If (var_98 = "Add") Then
  loc_12FFBD7:     Call Proc_332_40_115C448(MemVar_1F95044)
  loc_12FFBEA:     Set var_8C = Me.Txt
  loc_12FFBF0:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_12FFBF8:     var_90.Text = var_98
  loc_12FFC07:   End If
  loc_12FFC0B:   Set var_8C = Me.TopCtrl1
  loc_12FFC11:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_12FFC19:   var_98 = CStr()
  loc_12FFC2A:   If (var_98 = "Add") Then
  loc_12FFC5A:     Set var_8C = Me.Txt
  loc_12FFC60:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_12FFC81:     unk_4BF18E.Execute var_124 & var_98 & "'", 0, var_128
  loc_12FFC91:      = var_124.Item()
  loc_12FFC99:      = var_128.Value
  loc_12FFCC6:     If (var_90.Text.Fields > 0) Then
  loc_12FFCCF:       Call 0.Method_arg_50 (var_98)
  loc_12FFCF0:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_12FFD06:       Call Proc_332_40_115C448(MemVar_1F95044)
  loc_12FFD16:       If (var_98 = vbNullString) Then
  loc_12FFD23:         Set var_8C = Me.Txt
  loc_12FFD29:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FFD31:         var_90.SetFocus
  loc_12FFD3F:         arg_10 = &HFF
  loc_12FFD42:         Exit Sub
  loc_12FFD43:       End If
  loc_12FFD49:       Call Proc_332_40_115C448(MemVar_1F95044, var_98)
  loc_12FFD5C:       Set var_8C = Me.Txt
  loc_12FFD62:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_12FFD6A:       var_90.Text = arg_10
  loc_12FFD7B:       arg_10 = &HFF
  loc_12FFD7E:       Exit Sub
  loc_12FFD7F:     End If
  loc_12FFD7F:   End If
  loc_12FFD82: Else
  loc_12FFD8A:   If (var_86 = CInt(2)) Then
  loc_12FFD9B:     Set var_8C = Me.Txt
  loc_12FFDA1:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_12FFDA9:     arg_10 = var_90.Text
  loc_12FFDD9:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_12FFDEF:       Set var_8C = Me.Txt
  loc_12FFDF5:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_12FFDFD:       var_90.Text = CStr(MemVar_1F950EC)
  loc_12FFE0F:     Else
  loc_12FFE19:       Set var_8C = Me.Txt
  loc_12FFE1F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FFE3F:       Set var_124 = Me.Txt
  loc_12FFE45:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_12FFE4D:       var_128.Text = Proc_6_33_15125B8(var_90)
  loc_12FFE60:     End If
  loc_12FFE63:   Else
  loc_12FFE6B:     If (var_86 = CInt(3)) Then
  loc_12FFE78:       Set var_8C = Me.Txt
  loc_12FFE7E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FFEAA:       var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_12FFEB8:       Set var_94 = Me.Txt
  loc_12FFEBE:       Call 0.Method_Txt_Validate0 (Cancel, var_124, var_98)
  loc_12FFEC6:       var_124.Text = 1
  loc_12FFEE3:     Else
  loc_12FFEEB:       If (var_86 = CInt(5)) Then
  loc_12FFF45:         Set var_8C = Me.Txt
  loc_12FFF4B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_12FFF53:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_12FFF6B:         If (1 Or (var_98 = vbNullString)) Then
  loc_12FFF7B:           Set var_8C = Me.Txt
  loc_12FFF81:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FFF89:           var_90.Tag = vbNullString
  loc_12FFF95:           Exit Sub
  loc_12FFF96:         End If
  loc_12FFFD4:         Set var_94 = Me.Txt
  loc_12FFFDA:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_12FFFE2:         var_124.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_1300029:         var_98 = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_1300036:         Set var_94 = Me.Txt
  loc_130003C:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1300044:         var_124.Tag = var_98
  loc_13000A0:         If CBool(CVar(global_100) <> Me.Recordset15.Fields.Item("Name").Value) Then
  loc_13000A3:           Call Proc_332_42_1113C20(var_98)
  loc_13000C8:           var_90 = Me.Recordset15.Fields.Item("SearchCode")
  loc_13000DD:           Call Proc_332_43_125BAF8(CStr(var_90.Value))
  loc_13000EF:         End If
  loc_13000F2:       Else
  loc_13000FA:         If (var_86 = CInt(6)) Then
  loc_1300108:           Set var_8C = Me.Txt
  loc_130010E:           Call 0.Method_Txt_Validate0 (CInt(6))
  loc_1300137:           If (Trim(CVar(var_90)) = vbNullString) Then
  loc_130013C:             arg_10 = &HFF
  loc_130013F:             Exit Sub
  loc_1300140:           End If
  loc_130014E:           Set var_8C = Me.Txt
  loc_1300154:           Call 0.Method_Txt_Validate0 (CInt(6), var_90, var_98)
  loc_130015C:           arg_10 = var_90.Text
  loc_1300173:           If (var_98 = "Misc Payment") Then
  loc_130017C:             global_60 = "HTEXP"
  loc_1300186:             Call Proc_332_40_115C448(MemVar_1F95044, var_98)
  loc_1300191:           Else
  loc_1300197:             global_60 = "HTSAL"
  loc_13001A1:             Call Proc_332_40_115C448(MemVar_1F95044, var_98)
  loc_13001A9:           End If
  loc_13001A9:         End If
  loc_13001A9:       End If
  loc_13001A9:     End If
  loc_13001A9:   End If
  loc_13001A9: End If
  loc_13001A9: Exit Sub
End Sub

Private Sub Form_Load() '11F16E0
  'Data Table: 4BF174
  Dim var_88 As Label
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_10C As TextBox
  Dim var_C0 As TextBox
  Dim var_108 As DataGrid
  loc_11F1250: On Error Goto loc_11F16D8
  loc_11F125A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11F126E: Me.LblUser.Left = CDbl(13500)
  loc_11F1285: Me.LblUser.Top = CDbl(7800)
  loc_11F129C: Me.LblLDt.Top = CDbl(8160)
  loc_11F12B3: Me.LblLDt.Left = CDbl(13500)
  loc_11F12C5: Set var_88 = Me.TopCtrl1
  loc_11F12CB: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11F12D9: Call 0.Method_arg_50 (var_AC)
  loc_11F12E1: var_BC = CVar(var_AC) 'String
  loc_11F12E9: Set var_88 = Me.TopCtrl1
  loc_11F12EF: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_11F1306: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_11F1317: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_11F1328: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_11F1339: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_11F134A: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_11F135B: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_11F136C: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_11F137D: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_11F138E: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_11F139F: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_11F13B9: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_11F13C7: Set var_88 = MemVar_1F95044
  loc_11F13D6: Call 0.Method_Form_Load8 (var_88)
  loc_11F13EC: Me.TopCtrl1.Clone
  loc_11F13F7: Set var_C0 = var_88
  loc_11F1406: Call 0.Method_arg_50 (var_C0, -1)
  loc_11F141C: Set global_64 = New 
  loc_11F142E: Me.Recordset15.CursorLocation = 3
  loc_11F143D: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_11F144B:   Proc_6_7_F26918(var_BC, MemVar_1F950F4)
  loc_11F1475:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F95078 & "' AND vdate>=") 'String
  loc_11F148F:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F95044), 2
  loc_11F14A5: Else
  loc_11F14B0:   Proc_6_7_F26918(var_BC, MemVar_1F950EC, 3)
  loc_11F14DA:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F95078 & "' AND vdate=") 'String
  loc_11F14F4:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F95044), 2
  loc_11F1507: End If
  loc_11F1526: Me.Recordset15.CursorLocation = 3
  loc_11F1549: var_AC = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And SubCode In (Select CompCode From PayCharge Where RestCode In (Select Code From Depart Where RestType In ('Outlet','Room Service'))) And (LOGSITE_CODE='" & MemVar_1F95078
  loc_11F155D: Me.Recordset15.Open CVar(var_AC & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F95044), 2
  loc_11F1574: CVarUnk
  loc_11F1579: VerifyVarObj
  loc_11F1585: LateIdStAd
  loc_11F15A1: Set var_108 = Me.Txt
  loc_11F15A7: Call 0.Method_Form_Load0 (CInt(5), var_10C, var_110, Me.DGAgAc, New, 3)
  loc_11F15AF: -1 = var_10C.Height
  loc_11F15C2: Set var_88 = Me.Txt
  loc_11F15C8: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104, 3)
  loc_11F15D0: -1 = var_C0.Top
  loc_11F15DC: var_98 = CVar((var_104 + var_110)) 'Single
  loc_11F15EB: Me.DGAgAc.Top = CVar(MemVar_1F95044)
  loc_11F160B: Set var_88 = Me.Txt
  loc_11F1611: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104)
  loc_11F1619: -1 = var_C0.Left
  loc_11F1630: Me.DGAgAc.Left = CVar(var_104)
  loc_11F1661: Call Proc_332_37_F714C4(Proc_5_1_100EC1C("INI", Me), global_64)
  loc_11F1675: Set var_88 = Me.TopCtrl1
  loc_11F167B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_11F168C: Set var_88 = Me.TopCtrl1
  loc_11F1692: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_11F16A3: Set var_88 = Me.TopCtrl1
  loc_11F16A9: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_11F16C0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_11F16C8: Call Proc_332_42_1113C20(Me.TopCtrl1)
  loc_11F16CD: Call Proc_332_35_EF28F4()
  loc_11F16D2: Call Proc_332_36_1352398()
  loc_11F16D7: Exit Sub
  loc_11F16D8: ' Referenced from: 11F1250
  loc_11F16D8: Proc_6_60_E63754()
  loc_11F16DD: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3E88
  'Data Table: 4BF174
  Dim var_8C As Label
  loc_ED3DE6: Call 0.Method_arg_50 (var_88)
  loc_ED3DF8: Me.LblFormCaption.Caption = var_88
  loc_ED3E11: Me.LblFormCaption.Left = CDbl(0)
  loc_ED3E1D: Set var_A0 = Me.TopCtrl1
  loc_ED3E23: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED3E30: Set var_8C = Me.TopCtrl1
  loc_ED3E36: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED3E50: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED3E6B: Call 0.Method_arg_100 (var_B8)
  loc_ED3E7D: Me.LblFormCaption.Width = var_B8
  loc_ED3E85: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40084
  'Data Table: 4BF174
  loc_E4005F: Set global_64 = Nothing
  loc_E4006B: MasterFormExit = 0
  loc_E40079: Set global_92 = Nothing
  loc_E40080: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25EC4
  'Data Table: 4BF174
  loc_E25EA9: If (MasterFormExit = &HFF) Then
  loc_E25EB9:   Me.Global.Unload Me
  loc_E25EC1: End If
  loc_E25EC1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3B948
  'Data Table: 4BF174
  loc_E3B91C: On Error Goto loc_E3B940
  loc_E3B937: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3B93F: Exit Sub
  loc_E3B940: ' Referenced from: E3B91C
  loc_E3B940: Proc_6_60_E63754(Shift)
  loc_E3B945: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3BA04
  'Data Table: 4BF174
  loc_E3B9F8: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_E3B9FB:   Call DGAgAc_UnknownEvent_9()
  loc_E3BA00: End If
  loc_E3BA00: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EEDEA0
  'Data Table: 4BF174
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEDDE9: Set var_A8 = Me.DGAgAc
  loc_EEDDEF: var_A8.Visible = False
  loc_EEDE11: If (Me.var_A8.RecordCount > 0) Then
  loc_EEDE34:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEDE53:   Set var_B4 = Me.Txt
  loc_EEDE59:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_EEDE61:   var_B8.Text = CStr(var_B0.Value)
  loc_EEDE77: End If
  loc_EEDE82: Set var_A8 = Me.Txt
  loc_EEDE88: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5))
  loc_EEDE90: var_B0.SetFocus
  loc_EEDE9C: Exit Sub
End Sub

Public Function MasterFormExitGet() '4C0178
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4C0187
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EF8F64
  'Data Table: 4BF174
  Dim Me As Recordset15
  Dim var_A0 As Boolean
  loc_EF8E96: On Error Goto loc_EF8F5B
  loc_EF8E9F: Me.MoveFirst
  loc_EF8EC9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EF8EF1: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_EF8F02: Set var_A8 = Me.TopCtrl1
  loc_EF8F08: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_EF8F19: Set var_A8 = Me.TopCtrl1
  loc_EF8F1F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_EF8F30: Set var_A8 = Me.TopCtrl1
  loc_EF8F36: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_EF8F3E: var_A0 = False
  loc_EF8F47: Set var_A8 = Me.TopCtrl1
  loc_EF8F4D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(var_A0)
  loc_EF8F55: Call Proc_332_36_1352398(0)
  loc_EF8F5A: Exit Sub
  loc_EF8F5B: ' Referenced from: EF8E96
  loc_EF8F5B: Proc_6_60_E63754(var_A0)
  loc_EF8F60: Exit Sub
End Sub

Public Sub Proc_332_32_13E1C68
  'Data Table: 4BF174
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_108 As String
  Dim unk_4BF18E As Connection15
  Dim var_9C As Recordset15
  Dim var_134 As Recordset15
  Dim var_12C As Fields15
  Dim var_128 As Variant
  Dim var_96 As Integer
  loc_13E12B9: var_D4 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_13E12C4: var_B0 = "DocID"
  loc_13E12D3: var_A0 = Me.Fields
  loc_13E1302: unk_4BF18E.Execute CStr(var_D4 & var_A0.Item(var_B0).Value & "'"), var_128, -1
  loc_13E130D: Set var_9C = var_12C
  loc_13E132D: var_130 = var_9C.RecordCount
  loc_13E133B: If (var_130 = 0) Then
  loc_13E133E:   Exit Sub
  loc_13E133F: End If
  loc_13E134C: Call Proc_332_33_FDFC10(New, var_A0)
  loc_13E1354: Set var_8C = var_A0
  loc_13E135A: Set var_134 = var_8C 
  loc_13E1369: var_134.AddNew var_B0, var_D4
  loc_13E13BD: var_134.Fields.Item("VNo").Value = CVar(CStr(var_9C.Fields.Item("VNo").Value))
  loc_13E1437: var_134.Fields.Item("VDate").Value = Format(CVar(var_9C.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_13E1480: var_F4 = "Misc Receipt"
  loc_13E14CA: var_134.Fields.Item("VType").Value = IIf((var_9C.Fields.Item("vType").Value = "HTSAL"), var_F4, "Misc Payment")
  loc_13E155F: var_134.Fields.Item("AgAc").Value = CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("CrAcName")), 1)), 3, 0)), &H32))
  loc_13E15A7: var_E4 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Remarks")), 1)) 'String
  loc_13E160D: var_134.Fields.Item("Particulars").Value = CVar(Proc_6_45_EADFB8(CStr(StrConv(Left(Trim(var_E4), &H96), 3, 0)), 150))
  loc_13E1653: Proc_6_47_EF6560(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13E167B: var_134.Fields.Item("Amount").Value = var_E4
  loc_13E16B6: Proc_6_39_E7D3A0(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13E171C: var_134.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_E4)), vbNullString)), 3, 0)
  loc_13E1779: var_12C = var_134.Fields
  loc_13E1789: var_12C.Item("Uname").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_Name")), vbNullString))
  loc_13E17A1: var_D4 = CVar(MemVar_1F950C8) 'String
  loc_13E17A8: var_B0 = "LUName"
  loc_13E17BC: var_B4 = var_134.Fields.Item(var_B0)
  loc_13E17C4: var_B4.Value = var_D4
  loc_13E17DB: var_134.Update var_B0, var_D4
  loc_13E17E3: var_90 = "ExpenseRep"
  loc_13E17E9: var_94 = "Expense Report"
  loc_13E17EE: var_96 = 0
  loc_13E1815: Set var_A0 = var_8C 
  loc_13E181C: CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_90 & ".ttx", &HFF)
  loc_13E184A: var_108 = "\" & var_90
  loc_13E185E: Call 0.Method_arg_1C (MemVar_1F950B4 & var_108 & ".RPT", var_B0, var_A0)
  loc_13E1869: MemVar_1F951E8 = var_A0
  loc_13E1892: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_D4)
  loc_13E189A: Call 0.Method_arg_2C (var_F4, var_96)
  loc_13E18A8: Call 0.Method_arg_150 (var_12C)
  loc_13E18BE: Call 0.Method_arg_90 (var_A0, var_130)
  loc_13E18C6: Call 0.Method_arg_24 (var_98)
  loc_13E18D2: For var_184 =  To CInt(var_130): 1 = var_184 'Integer
  loc_13E18EB:   Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E18F3:   Call 0.Method_arg_20 (var_B4)
  loc_13E18FB:   Call 0.Method_arg_30 (var_108)
  loc_13E1911:   var_194 = Ucase(CVar(var_108)) 'Variant
  loc_13E1941:   If (var_194 = Ucase("comp_name")) Then
  loc_13E1965:     Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E196D:     Call 0.Method_arg_20 (var_B4)
  loc_13E1975:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_13E198B:   Else
  loc_13E19AD:     If (var_194 = Ucase("comp_add1")) Then
  loc_13E19D1:       Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E19D9:       Call 0.Method_arg_20 (var_B4)
  loc_13E19E1:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_13E19F7:     Else
  loc_13E1A19:       If (var_194 = Ucase("comp_pin")) Then
  loc_13E1A3D:         Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E1A45:         Call 0.Method_arg_20 (var_B4)
  loc_13E1A4D:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_13E1A63:       Else
  loc_13E1A85:         If (var_194 = Ucase("comp_GSTIN")) Then
  loc_13E1AA9:           Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E1AB1:           Call 0.Method_arg_20 (var_B4)
  loc_13E1AB9:           Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_13E1ACF:         Else
  loc_13E1AF1:           If (var_194 = Ucase("comp_tin")) Then
  loc_13E1B15:             Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E1B1D:             Call 0.Method_arg_20 (var_B4)
  loc_13E1B25:             Call 0.Method_arg_38 ("'" & MemVar_1F95150 & "'")
  loc_13E1B3B:           Else
  loc_13E1B5D:             If (var_194 = Ucase("Title")) Then
  loc_13E1B81:               Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E1B89:               Call 0.Method_arg_20 (var_B4)
  loc_13E1B91:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F95140 & "'")
  loc_13E1BA7:             Else
  loc_13E1BC9:               If (var_194 = Ucase("BetweenDate")) Then
  loc_13E1BCC:                 GoTo loc_13E1C1C
  loc_13E1BCF:               End If
  loc_13E1BF1:               If (var_194 = Ucase("Dater")) Then
  loc_13E1BF4:                 GoTo loc_13E1C1C
  loc_13E1BF7:               End If
  loc_13E1C19:               If (var_194 = Ucase("Pager")) Then
  loc_13E1C1C:                 ' Referenced from:             13E1BF4
  loc_13E1C1C:                 ' Referenced from:             13E1BCC
  loc_13E1C1C:               End If
  loc_13E1C1C:             End If
  loc_13E1C1C:           End If
  loc_13E1C1C:         End If
  loc_13E1C1C:       End If
  loc_13E1C1C:     End If
  loc_13E1C1C:   End If
  loc_13E1C1F: Next var_184 'Integer
  loc_13E1C29: Set var_B4 = Nothing
  loc_13E1C3D: Set var_A0 = MemVar_1F951E8 
  loc_13E1C49: Proc_6_99_1484404(var_A0, var_96, var_94)
  loc_13E1C54: MemVar_1F951E8 = var_A0
  loc_13E1C61: Set var_134 = Nothing 
  loc_13E1C65: Exit Sub
End Sub

Public Sub Proc_332_33_FDFC10(arg_C) 'FDFC10
  'Data Table: 4BF174
  Dim var_8C As Recordset15
  loc_FDFA31: Set var_8C = arg_C 
  loc_FDFA59: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FDFA85: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FDFAB1: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FDFADD: var_8C.Fields.Append "AgAc", &HC8, &H4B
  loc_FDFB09: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FDFB35: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FDFB61: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FDFB8D: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FDFBB9: var_8C.Fields.Append "LUName", &HC8, &HA
  loc_FDFBC9: var_8C.CursorType = 3
  loc_FDFBD6: var_8C.LockType = 3
  loc_FDFBF5: var_8C.Open var_A0, var_B0, -1
  loc_FDFBFC: Set var_8C = Nothing 
  loc_FDFC03: Set var_88 = arg_C 
  loc_FDFC07: Proc_332_33_FDFC10 = -1
End Sub

Public Sub Proc_332_34_F9073C
  'Data Table: 4BF174
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4BF18E As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F905FD: Set var_8C = Me.TopCtrl1
  loc_F90603: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F9060B: var_A0 = CStr()
  loc_F9061C: If (var_A0 = "Add") Then
  loc_F9064C:   Set var_8C = Me.Txt
  loc_F90652:   Call 0.Method_Proc_332_34_F9073C0 (CInt(0), var_A4, var_A0, "Select Count(*) From ExpSheet Where DocID='", var_9C, -1)
  loc_F90673:   unk_4BF18E.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F90683:    = var_C4.Item()
  loc_F9068B:    = var_D8.Value
  loc_F906B8:   If (var_A4.Text.Fields > 0) Then
  loc_F906C1:     Call 0.Method_arg_50 (var_A0)
  loc_F906E2:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F906F8:     Call Proc_332_40_115C448(MemVar_1F95044)
  loc_F9070B:     Set var_8C = Me.Txt
  loc_F90711:     Call 0.Method_Proc_332_34_F9073C0 (CInt(0), var_A4)
  loc_F90719:     var_A4.Text = var_A0
  loc_F9072D:     Proc_332_34_F9073C = 0
  loc_F90733:   End If
  loc_F90733: End If
  loc_F90733: Proc_332_34_F9073C = var_A0
End Sub

Public Sub Proc_332_35_EF28F4
  'Data Table: 4BF174
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_EF282E: Set var_8C = Me.Txt
  loc_EF2834: Call 0.Method_Proc_332_35_EF28F4C (var_8E, var_86)
  loc_EF2844: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF285A:   Set var_8C = Me.Txt
  loc_EF2860:   Call 0.Method_Proc_332_35_EF28F40 (CInt(var_86), var_98)
  loc_EF2868:   var_98.Text = vbNullString
  loc_EF2884:   Set var_8C = Me.Txt
  loc_EF288A:   Call 0.Method_Proc_332_35_EF28F40 (CInt(var_86), var_98)
  loc_EF2892:   var_98.Tag = vbNullString
  loc_EF28A1: Next var_92 'Byte
  loc_EF28B8: Set var_8C = Me.txtM
  loc_EF28BE: Call 0.Method_Proc_332_35_EF28F40 (CInt(5), var_98)
  loc_EF28C6: var_98.defaultText = vbNullString
  loc_EF28DF: Me.LblVPrefix.Caption = vbNullString
  loc_EF28ED: global_112 = CDbl(0)
  loc_EF28F0: Exit Sub
End Sub

Public Sub Proc_332_36_1352398
  'Data Table: 4BF174
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim unk_4BF18E As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_1E8 As Recordset15
  Dim var_128 As Variant
  Dim var_11C As Variant
  loc_1351BC4: On Error Goto loc_1352390
  loc_1351BDE: If (Me.RecordCount > 0) Then
  loc_1351BEE:   var_C8 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_1351C37:   unk_4BF18E.Execute CStr(var_C8 & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_1351C42:   Set var_88 = var_120
  loc_1351C96:   var_120 = var_88.Fields
  loc_1351CFF:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1351D44:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_1351DBE:   var_128 = var_88.Fields.Item("U_AE")
  loc_1351E1F:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_1351E64:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1351E9F:   Set var_1E8 = var_88 
  loc_1351EDF:   If (var_88.Fields.Item("vType").Value = "HTSAL") Then
  loc_1351EFC:     var_A8 = var_88.Fields.Item("vType")
  loc_1351F13:     global_60 = CStr(var_A8.Value)
  loc_1351F32:     Set var_94 = Me.Txt
  loc_1351F38:     Call 0.Method_Proc_332_36_13523980 (CInt(6), var_A8)
  loc_1351F40:     var_A8.Text = "Misc Rect."
  loc_1351F4F:   Else
  loc_1351F8B:     If (var_88.Fields.Item("vType").Value = "HTEXP") Then
  loc_1351FA8:       var_A8 = var_88.Fields.Item("vType")
  loc_1351FBF:       global_60 = CStr(var_A8.Value)
  loc_1351FDE:       Set var_94 = Me.Txt
  loc_1351FE4:       Call 0.Method_Proc_332_36_13523980 (CInt(6), var_A8)
  loc_1351FEC:       var_A8.Text = "Misc Payment"
  loc_1351FF8:     End If
  loc_1351FF8:   End If
  loc_1352031:   Set var_120 = Me.Txt
  loc_1352037:   Call 0.Method_Proc_332_36_13523980 (CInt(0), var_128)
  loc_135203F:   var_128.Text = CStr(var_1E8.Fields.Item("DocID").Value)
  loc_135208D:   Me.LblVPrefix.Caption = CStr(var_1E8.Fields.Item("vPrefix").Value)
  loc_13520F3:   Set var_120 = Me.Txt
  loc_13520F9:   Call 0.Method_Proc_332_36_13523980 (CInt(2), var_128, CStr(Format(CVar(var_1E8.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_1352101:   var_128.Text = 1
  loc_1352154:   Set var_120 = Me.Txt
  loc_135215A:   Call 0.Method_Proc_332_36_13523980 (CInt(1), var_128)
  loc_1352162:   var_128.Text = CStr(var_1E8.Fields.Item("VNo").Value)
  loc_13521CB:   Set var_120 = Me.txtM
  loc_13521D1:   Call 0.Method_Proc_332_36_13523980 (CInt(5), var_128, CVar(CStr(Format(CVar(var_1E8.Fields.Item("VTIME")), "hh:mm"))))
  loc_13521D9:   var_128.defaultText = 1
  loc_1352244:   Set var_120 = Me.Txt
  loc_135224A:   Call 0.Method_Proc_332_36_13523980 (CInt(3), var_128, CStr(Format(CVar(var_1E8.Fields.Item("Amount")), "0.00")), 1)
  loc_1352252:   var_128.Text = 1
  loc_13522A2:   Set var_120 = Me.Txt
  loc_13522A8:   Call 0.Method_Proc_332_36_13523980 (CInt(4), var_128)
  loc_13522B0:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Remarks")), 1)
  loc_13522FA:   Set var_120 = Me.Txt
  loc_1352300:   Call 0.Method_Proc_332_36_13523980 (CInt(5), var_128)
  loc_1352308:   var_128.Tag = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("AgAc")))
  loc_1352352:   Set var_120 = Me.Txt
  loc_1352358:   Call 0.Method_Proc_332_36_13523980 (CInt(5), var_128)
  loc_1352360:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("CrAcName")))
  loc_1352376:   Set var_1E8 = Nothing 
  loc_135237D: Else
  loc_135237D:   Call Proc_332_35_EF28F4(1)
  loc_1352382: End If
  loc_1352382: Call Proc_332_38_EB93AC()
  loc_135238C: Set var_88 = Nothing
  loc_135238F: Exit Sub
  loc_1352390: ' Referenced from: 1351BC4
  loc_1352390: Proc_6_60_E63754()
  loc_1352395: Exit Sub
End Sub

Public Sub Proc_332_37_F714C4(arg_C) 'F714C4
  'Data Table: 4BF174
  Dim var_98 As Variant
  loc_F71386: Set var_8C = Me.Txt
  loc_F7138C: Call 0.Method_Proc_332_37_F714C4C (var_8E, var_86)
  loc_F7139C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F713B2:   Set var_8C = Me.Txt
  loc_F713B8:   Call 0.Method_Proc_332_37_F714C40 (CInt(var_86), var_98)
  loc_F713C0:   var_98.Enabled = arg_C
  loc_F713CF: Next var_92 'Byte
  loc_F713E2: Set var_8C = Me.Txt
  loc_F713E8: Call 0.Method_Proc_332_37_F714C40 (CInt(6), var_98)
  loc_F713F0: var_98.Enabled = False
  loc_F71409: Set var_8C = Me.Txt
  loc_F7140F: Call 0.Method_Proc_332_37_F714C40 (CInt(2), var_98)
  loc_F71417: var_98.Enabled = False
  loc_F71430: Set var_8C = Me.Txt
  loc_F71436: Call 0.Method_Proc_332_37_F714C40 (CInt(1), var_98)
  loc_F7143E: var_98.Enabled = False
  loc_F71457: Set var_8C = Me.Txt
  loc_F7145D: Call 0.Method_Proc_332_37_F714C40 (CInt(3), var_98)
  loc_F71465: var_98.Enabled = False
  loc_F71481: Set var_8C = Me.txtM
  loc_F71487: Call 0.Method_Proc_332_37_F714C40 (CInt(5), var_98)
  loc_F7148F: var_98.Enabled = False
  loc_F714A8: Set var_8C = Me.Txt
  loc_F714AE: Call 0.Method_Proc_332_37_F714C40 (CInt(0), var_98)
  loc_F714B6: var_98.Enabled = False
  loc_F714C2: Exit Sub
End Sub

Public Sub Proc_332_38_EB93AC
  'Data Table: 4BF174
  loc_EB9328: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_EB933A:   Me.DGAgAc.Visible = False
  loc_EB9342: End If
  loc_EB935D: If (Me.FrmList.Visible = &HFF) Then
  loc_EB936C:   Me.FrmList.Visible = False
  loc_EB9374: End If
  loc_EB9390: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB93A2:   Me.FGPoint.Visible = False
  loc_EB93AA: End If
  loc_EB93AA: Exit Sub
End Sub

Public Sub Proc_332_39_E907FC(arg_C) 'E907FC
  'Data Table: 4BF174
  Dim var_10C As TextBox
  loc_E90790: Call Proc_332_38_EB93AC()
  loc_E907CC: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E907CF:   Call TopCtrl1_UnknownEvent_16()
  loc_E907D7: Else
  loc_E907E1:   Set var_108 = Me.Txt
  loc_E907E7:   Call 0.Method_Proc_332_39_E907FC0 (arg_C)
  loc_E907EF:   var_10C.SetFocus
  loc_E907FB: End If
  loc_E907FB: Exit Sub
End Sub

Public Sub Proc_332_40_115C448
  'Data Table: 4BF174
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115C0E0: var_90 = global_60
  loc_115C0F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115C11A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115C128: Set var_B4 = Me.Txt
  loc_115C12E: Call 0.Method_Proc_332_40_115C4480 (CInt(2), var_B8, var_E8)
  loc_115C13D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115C145: var_F8 = -1 & var_D8 
  loc_115C159: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115C164: Set var_8C = var_140
  loc_115C1A0: If (var_8C.RecordCount <= 0) Then
  loc_115C1BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115C1CF:   var_88 = vbNullString
  loc_115C1D2:   Proc_332_40_115C448 = 
  loc_115C1D8: End If
  loc_115C1EC: If (var_8C.RecordCount > 0) Then
  loc_115C22B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115C248:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115C259:     var_9C = CStr(var_B8.Value)
  loc_115C274:     Set var_B4 = Me.Txt
  loc_115C27A:     Call 0.Method_Proc_332_40_115C4480 (CInt(1), var_B8)
  loc_115C290:     var_94 = CLng(Val(var_B8.Text))
  loc_115C2A0:   Else
  loc_115C2CB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115C2F2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115C307:     var_D8 = (var_B8.Value + 1)
  loc_115C30D:     var_94 = CLng(var_D8)
  loc_115C31E:   End If
  loc_115C31E: End If
  loc_115C349: var_C8 = Space((5 - Len(var_90)))
  loc_115C351: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115C35B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115C36C: var_118 = Space((5 - Len(var_9C)))
  loc_115C374: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115C38A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115C392: var_188 = (var_13C + var_178)
  loc_115C39E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115C3A3: var_98 = CStr(var_1A8)
  loc_115C3D3: Me.LblVPrefix.Caption = var_9C
  loc_115C3E9: Set var_B4 = Me.Txt
  loc_115C3EF: Call 0.Method_Proc_332_40_115C4480 (CInt(0), var_B8)
  loc_115C3F7: var_B8.Text = var_98
  loc_115C416: Set var_B4 = Me.Txt
  loc_115C41C: Call 0.Method_Proc_332_40_115C4480 (CInt(1), var_B8)
  loc_115C424: var_B8.Text = CStr(var_94)
  loc_115C436: var_88 = var_98
  loc_115C43E: Set var_8C = Nothing
  loc_115C441: Proc_332_40_115C448 = var_94
End Sub

Public Sub Proc_332_41_EE3748
  'Data Table: 4BF174
  loc_EE3696: On Error Goto loc_EE36DC
  loc_EE36AE: Call 0.Method_arg_18C (var_8C)
  loc_EE36B6: Call var_8C.Show
  loc_EE36CB: Call 0.Method_arg_188 (var_B0)
  loc_EE36D3: var_88 = var_B0
  loc_EE36D6: Proc_332_41_EE3748 = 1
  loc_EE36DC: ' Referenced from: EE3696
  loc_EE36E4: Set var_8C = Err()
  loc_EE36EA: Call 0.Method_arg_1C (var_B4)
  loc_EE36FB: If (var_B4 <> 0) Then
  loc_EE3706:   Set var_8C = Err()
  loc_EE370C:   Call 0.Method_arg_2C (var_B0)
  loc_EE372D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE3740: End If
  loc_EE3740: Proc_332_41_EE3748 = 
End Sub

Public Sub Proc_332_42_1113C20
  'Data Table: 4BF174
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11138D6: Me.GridSel.Rows = 1
  loc_11138EA: Me.GridSel.Cols = 6
  loc_11138EF: var_98 = 0
  loc_11138FB: var_BC = CVar(CLng(0)) 'Long
  loc_1113900: var_DC = "O"
  loc_1113909: LateIdCallSt
  loc_1113914: var_98 = CVar(CLng(0)) 'Long
  loc_1113919: var_BC = &H258
  loc_1113925: LateIdCallSt
  loc_111392D: var_98 = 0
  loc_1113939: var_BC = CVar(CLng(1)) 'Long
  loc_111393E: var_DC = "Bill No"
  loc_1113947: LateIdCallSt
  loc_1113952: var_98 = CVar(CLng(1)) 'Long
  loc_111395D: var_BC = CVar(CInt(1)) 'Integer
  loc_1113964: LateIdCallSt
  loc_111396F: var_98 = CVar(CLng(1)) 'Long
  loc_111397A: var_BC = CVar(CInt(1)) 'Integer
  loc_1113981: LateIdCallSt
  loc_111398C: var_98 = CVar(CLng(1)) 'Long
  loc_1113991: var_BC = &H514
  loc_111399D: LateIdCallSt
  loc_11139A5: var_98 = 0
  loc_11139B1: var_BC = CVar(CLng(2)) 'Long
  loc_11139B6: var_DC = "DocId"
  loc_11139BF: LateIdCallSt
  loc_11139CA: var_98 = CVar(CLng(2)) 'Long
  loc_11139D5: var_BC = CVar(CInt(7)) 'Integer
  loc_11139DC: LateIdCallSt
  loc_11139E7: var_98 = CVar(CLng(2)) 'Long
  loc_11139F2: var_BC = CVar(CInt(7)) 'Integer
  loc_11139F9: LateIdCallSt
  loc_1113A04: var_98 = CVar(CLng(2)) 'Long
  loc_1113A09: var_BC = 0
  loc_1113A15: LateIdCallSt
  loc_1113A1D: var_98 = 0
  loc_1113A29: var_BC = CVar(CLng(3)) 'Long
  loc_1113A2E: var_DC = "Bill Date"
  loc_1113A37: LateIdCallSt
  loc_1113A42: var_98 = CVar(CLng(3)) 'Long
  loc_1113A4D: var_BC = CVar(CInt(1)) 'Integer
  loc_1113A54: LateIdCallSt
  loc_1113A5F: var_98 = CVar(CLng(3)) 'Long
  loc_1113A6A: var_BC = CVar(CInt(1)) 'Integer
  loc_1113A71: LateIdCallSt
  loc_1113A7C: var_98 = CVar(CLng(3)) 'Long
  loc_1113A81: var_BC = &H640
  loc_1113A8D: LateIdCallSt
  loc_1113A95: var_98 = 0
  loc_1113AA1: var_BC = CVar(CLng(4)) 'Long
  loc_1113AA6: var_DC = "Bill Amount"
  loc_1113AAF: LateIdCallSt
  loc_1113ABA: var_98 = CVar(CLng(4)) 'Long
  loc_1113AC5: var_BC = CVar(CInt(7)) 'Integer
  loc_1113ACC: LateIdCallSt
  loc_1113AD7: var_98 = CVar(CLng(4)) 'Long
  loc_1113AE2: var_BC = CVar(CInt(7)) 'Integer
  loc_1113AE9: LateIdCallSt
  loc_1113AF4: var_98 = CVar(CLng(4)) 'Long
  loc_1113AF9: var_BC = &H640
  loc_1113B05: LateIdCallSt
  loc_1113B0D: var_98 = 0
  loc_1113B19: var_BC = CVar(CLng(5)) 'Long
  loc_1113B1E: var_DC = "PayType"
  loc_1113B27: LateIdCallSt
  loc_1113B32: var_98 = CVar(CLng(5)) 'Long
  loc_1113B3D: var_BC = CVar(CInt(1)) 'Integer
  loc_1113B44: LateIdCallSt
  loc_1113B4F: var_98 = CVar(CLng(5)) 'Long
  loc_1113B5A: var_BC = CVar(CInt(1)) 'Integer
  loc_1113B61: LateIdCallSt
  loc_1113B6C: var_98 = CVar(CLng(5)) 'Long
  loc_1113B71: var_BC = 0
  loc_1113B7D: LateIdCallSt
  loc_1113B85: var_98 = vbNullString
  loc_1113B8F: Set var_AC = Me.GridSel
  loc_1113BB3: Me.GridSel.FixedRows = 1
  loc_1113BBD: Set var_88 = Nothing 
  loc_1113BD1: ReDim Preserve global_104(0 To 0)
  loc_1113BE8: global_104(0) = 0
  loc_1113BFC: Me.GridSel.Height = CVar(CDbl(6000))
  loc_1113C17: Me.GridSel.Width = CVar(CDbl(6500))
  loc_1113C1F: Exit Sub
End Sub

Public Sub Proc_332_43_125BAF8(arg_C) '125BAF8
  'Data Table: 4BF174
  Dim var_8C As String
  Dim unk_4BF18E As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_118 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_180 As Integer
  Dim var_128 As Variant
  Dim var_1A8 As Recordset15
  Dim var_1AC As Fields15
  Dim var_1B0 As Field20
  Dim var_224 As Variant
  loc_125B5DC: var_8C = "Select Distinct S.DocId,S.Vno From (Sale1 S Left Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') Not In('PPOS','IPOS') And IsNull(P.PayType,'') In('Company') And P.CompCode='" & arg_C
  loc_125B5FA: unk_4BF18E.Execute var_8C & "' And IsNull(P.RefDocId,'')='' And S.Logsite_Code='" & MemVar_1F95078 & "' Order by S.Vno", var_B8, -1
  loc_125B60B: Set global_108 = var_BC
  loc_125B63B: If (Me.RecordCount = 0) Then
  loc_125B651:   Me.GridSel.Rows = 2
  loc_125B659:   Exit Sub
  loc_125B65A: End If
  loc_125B66D: Me.GridSel.Row = 1
  loc_125B675: ' Referenced from: 125BAD9
  loc_125B687: If Not(Me.EOF) Then
  loc_125B6E0:   unk_4BF18E.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_128, -1
  loc_125B6EB:   Set var_88 = var_12C
  loc_125B719:   If (var_88.RecordCount = 1) Then
  loc_125B720:     Set var_130 = Me.GridSel
  loc_125B723:     var_A8 = vbNullString
  loc_125B747:     var_A8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125B74F:     var_F8 = CVar(CLng(0)) 'Long
  loc_125B75D:     LateIdCallSt
  loc_125B77E:     var_D4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125B786:     var_118 = CVar(CLng(1)) 'Long
  loc_125B7B6:     var_108 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_125B7BD:     LateIdCallSt
  loc_125B81F:     var_108 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_130, var_108, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_125B826:     LateIdCallSt
  loc_125B87C:     var_F8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125B884:     var_140 = CVar(CLng(3)) 'Long
  loc_125B8A1:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), var_130, "dd/mmm/yyyy", var_130, vbNullString)) 'String
  loc_125B8B7:     LateIdCallSt
  loc_125B8FE:     Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_E8, "dd/mmm/yyyy"))), 1, 1)
  loc_125B916:     var_F8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125B94E:     LateIdCallSt
  loc_125B992:     Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(4)))
  loc_125B9D4:     var_1E4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125B9DC:     var_204 = CVar(CLng(5)) 'Long
  loc_125B9E7:     var_180 = 0
  loc_125BA09:     var_F8 = " Then 'Cash' Else 'Non-Cash' End From Paycharge Where PayType='Cash' And DocId='"
  loc_125BA2C:     unk_4BF18E.Execute CStr("Select Case When IsNull(Sum(AmtCr),0)=" & var_E8 & var_F8 & Me.Fields.Item(0).Value & "'"), var_1A4, -1
  loc_125BA34:     var_1A8 = var_1A8.Fields
  loc_125BA3C:     var_180 = var_1AC.Item(var_1AC)
  loc_125BA44:     var_1B0 = var_1B0.Value
  loc_125BA4D:     var_224 = CVar(CStr(var_1C0)) 'String
  loc_125BA54:     LateIdCallSt
  loc_125BA8B:     Set var_130 = Nothing 
  loc_125BA94:     Set var_88 = Nothing
  loc_125BAB0:     var_A8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_125BABF:     Me.GridSel.Row = "BillAmount"
  loc_125BACE:   End If
  loc_125BAD4:   Me.MoveNext
  loc_125BAD9:   GoTo loc_125B675
  loc_125BADC: End If
  loc_125BAEF: Me.GridSel.FixedRows = 1
  loc_125BAF7: Exit Sub
End Sub
