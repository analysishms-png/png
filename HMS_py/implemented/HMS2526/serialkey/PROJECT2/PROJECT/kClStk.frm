VERSION 5.00
Begin VB.Form kClStk
  Caption = "Kitchen Closing Stock Entry"
  ForeColor = &H404040&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "kClStk.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7530
  ClientHeight = 6180
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
    Width = 7530
    Height = 450
    TabIndex = 18
  End
  Begin DataGrid DGDepart
    Left = 8145
    Top = 3525
    Width = 3990
    Height = 2625
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGItem
    Left = 3900
    Top = 1365
    Width = 4140
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 12450
    Top = 8415
    Width = 2955
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 3
    Left = 8850
    Top = 6255
    Width = 2340
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 4
    ForeColor = &HC00000&
    Left = 6225
    Top = 1005
    Width = 3495
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1500
    Top = 1635
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
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
    Index = 2
    ForeColor = &HC00000&
    Left = 3870
    Top = 1005
    Width = 1230
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 1
    ForeColor = &HC00000&
    Left = 2040
    Top = 1005
    Width = 1230
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin MSHFlexGrid FGrid
    Left = 795
    Top = 1350
    Width = 7260
    Height = 7485
    TabIndex = 3
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 8490
    Top = 7305
    Width = 2790
    Height = 285
    TabIndex = 17
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
    Left = 8415
    Top = 6765
    Width = 2880
    Height = 255
    TabIndex = 16
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
    Top = 360
    Width = 180
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
  Begin Label Label1
    Caption = "Vr Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 11730
    Top = 8415
    Width = 735
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "DocID"
    Index = 29
    ForeColor = &H0&
    Left = 8280
    Top = 6360
    Width = 555
    Height = 195
    Visible = 0   'False
    TabIndex = 12
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
    Caption = "Location"
    Index = 10
    ForeColor = &HC00000&
    Left = 5325
    Top = 1020
    Width = 825
    Height = 240
    TabIndex = 11
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
    ForeColor = &H0&
    Left = 13455
    Top = 7605
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 3375
    Top = 1020
    Width = 435
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
  Begin Label Label1
    Caption = "Voucher No."
    Index = 3
    ForeColor = &HC00000&
    Left = 855
    Top = 1005
    Width = 1170
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
End

Attribute VB_Name = "kClStk"

Private global_100 As Integer
Private MasterFormExit As Integer
Private global_96 As Integer
Private global_98 As Integer
Private global_84 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'EFEC28
  'Data Table: 4A4184
  Dim var_8C As String
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_EFEB4C: On Error Goto loc_EFEC22
  loc_EFEB72: Call Proc_42_48_F8DDEC(Proc_5_1_100EC1C("ADD", Me))
  loc_EFEB7D: Call Proc_42_47_F58668(global_64)
  loc_EFEB87: var_8C = CStr(MemVar_1F950EC)
  loc_EFEB95: Set var_90 = Me.Txt
  loc_EFEB9B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_EFEBA3: var_98.Text = var_8C
  loc_EFEBB8: Call Proc_42_51_114FD9C(MemVar_1F95044)
  loc_EFEBC3: global_72 = var_8C
  loc_EFEBD5: Set var_90 = Me.Txt
  loc_EFEBDB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_98)
  loc_EFEBE3: var_98.SetFocus
  loc_EFEBF4: Set var_88 = Nothing
  loc_EFEC04: Me.LblUser.Caption = vbNullString
  loc_EFEC19: Me.LblLDt.Caption = vbNullString
  loc_EFEC21: Exit Sub
  loc_EFEC22: ' Referenced from: EFEB4C
  loc_EFEC22: Proc_6_60_E63754(var_8C)
  loc_EFEC27: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB2DD4
  'Data Table: 4A4184
  loc_EB2D48: On Error Goto loc_EB2DCB
  loc_EB2D82: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB2DA8:   Call Proc_42_48_F8DDEC(Proc_5_1_100EC1C("INI", Me))
  loc_EB2DB3:   Call Proc_42_45_141B594(global_64)
  loc_EB2DBE:   global_108 = vbNullString
  loc_EB2DC7:   global_100 = 0
  loc_EB2DCA: End If
  loc_EB2DCA: Exit Sub
  loc_EB2DCB: ' Referenced from: EB2D48
  loc_EB2DCB: Proc_6_60_E63754(global_100)
  loc_EB2DD0: Exit Sub
  loc_EB2DD1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10F38F4
  'Data Table: 4A4184
  Dim unk_4A419C As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10F35D4: On Error Goto loc_10F38A5
  loc_10F35E5: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_10F35E8:   Exit Sub
  loc_10F35E9: End If
  loc_10F3620: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10F362C:   unk_4A419C.BeginTrans var_118
  loc_10F3642:   var_94 = Me.Bookmark 'Variant
  loc_10F369C:   unk_4A419C.Execute CStr("Delete From Ledger Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_10F370E:   unk_4A419C.Execute CStr("Delete From Purch1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_10F3780:   unk_4A419C.Execute CStr("Delete From Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_10F37E4:   var_F4 = "Delete From KClStk Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10F37E8:   var_124 = CStr(var_F4)
  loc_10F37F2:   unk_4A419C.Execute var_124, var_114, -1
  loc_10F3814:   unk_4A419C.CommitTrans
  loc_10F3824:   Me.Requery -1
  loc_10F3844:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10F3851:     Me.Bookmark = var_94
  loc_10F3859:   Else
  loc_10F386D:     If (Me.EOF = 0) Then
  loc_10F3876:       Me.MoveLast
  loc_10F387B:     End If
  loc_10F387B:   End If
  loc_10F387B:   Call Proc_42_45_141B594(var_128, var_128)
  loc_10F389C:   Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_10F38A4: End If
  loc_10F38A4: Exit Sub
  loc_10F38A5: ' Referenced from: 10F35D4
  loc_10F38AB: unk_4A419C.RollbackTrans
  loc_10F38B8: Set var_11C = Err()
  loc_10F38BE: Call 0.Method_arg_2C (var_124, 0)
  loc_10F38DF: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10F38F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F13FC8
  'Data Table: 4A4184
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_F13ED0: On Error Goto loc_F13FC0
  loc_F13EE1: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F13EE4:   Exit Sub
  loc_F13EE5: End If
  loc_F13F08: Call Proc_42_48_F8DDEC(Proc_5_1_100EC1C("EDIT", Me))
  loc_F13F20: Me.LblUser.Caption = vbNullString
  loc_F13F35: Me.LblLDt.Caption = vbNullString
  loc_F13F4A: Set var_8C = Me.Txt
  loc_F13F50: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_F13F72: Set var_8C = Me.Txt
  loc_F13F78: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F13F92: If (False = &HFF) Then
  loc_F13FA0:   Set var_8C = Me.Txt
  loc_F13FA6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F13FAE:   var_94.SetFocus
  loc_F13FBA: End If
  loc_F13FBA: Call Proc_42_53_E8AB98(global_64)
  loc_F13FBF: Exit Sub
  loc_F13FC0: ' Referenced from: F13ED0
  loc_F13FC0: Proc_6_60_E63754()
  loc_F13FC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AB64
  'Data Table: 4A4184
  loc_E1AB59: Me.Global.Unload Me
  loc_E1AB61: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB2EAC
  'Data Table: 4A4184
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB2E1C: On Error Goto loc_EB2EA6
  loc_EB2E36: If (Me.RecordCount <= 0) Then
  loc_EB2E3F:   var_B8 = "Information"
  loc_EB2E5A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB2E6A:   Exit Sub
  loc_EB2E6B: End If
  loc_EB2E6E: MemVar_1F950E4 = "Select DISTINCT Docid as SearchCode,K.Vtype As VType,Convert(Varchar(10),K.VNo) as VrNo ,Convert(Varchar(12),K.VDate,103) as VDate,GodownMast.NAME AS Location From KClStk K LEFT JOIN GodownMast ON K.DEPARTCODE=GodownMast.CODE Order By VRno"
  loc_EB2E7B: Proc_6_126_F1C850("800,800,1100,4000")
  loc_EB2E89: MemVar_1F95120 = Me
  loc_EB2EA0: Call 0.Method_arg_2B0 (1)
  loc_EB2EA5: Exit Sub
  loc_EB2EA6: ' Referenced from: EB2E1C
  loc_EB2EA6: Proc_6_60_E63754(var_B8)
  loc_EB2EAB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C948
  'Data Table: 4A4184
  Dim KeyCodeFF As Double
  loc_E2C938: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C940: Call Proc_42_45_141B594(global_64)
  loc_E2C945: Exit Sub
  loc_E2C946: KeyCodeFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C8E8
  'Data Table: 4A4184
  Dim KeyCodeFF As Double
  loc_E2C8D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C8E0: Call Proc_42_45_141B594(global_64)
  loc_E2C8E5: Exit Sub
  loc_E2C8E6: KeyCodeFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C828
  'Data Table: 4A4184
  Dim KeyCodeFF As Double
  loc_E2C818: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C820: Call Proc_42_45_141B594(global_64)
  loc_E2C825: Exit Sub
  loc_E2C826: KeyCodeFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C288
  'Data Table: 4A4184
  Dim KeyCodeFF As Double
  loc_E2C278: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C280: Call Proc_42_45_141B594(global_64)
  loc_E2C285: Exit Sub
  loc_E2C286: KeyCodeFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10658B8
  'Data Table: 4A4184
  Dim var_A8 As TextBox
  Dim var_B0 As String
  Dim unk_4A419C As Connection15
  Dim var_9C As Recordset15
  Dim var_C0 As Variant
  Dim var_AC As String
  Dim var_126 As Integer
  loc_106564C: On Error Goto loc_10658B1
  loc_1065660: Set var_A4 = Me.Txt
  loc_1065666: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(3), var_A8)
  loc_106566E: var_AC = var_A8.Text
  loc_1065677: var_B0 = "SELECT KS.VDATE,KS.VTYPE,KS.VNO,KS.SNO,I.NAME ITEMNAME,KS.UNIT,KS.QTY,ISNULL(KS.REMARKS,'') REMARKS,KS.U_NAME,G.NAME LOCATION,KS.DEPARTCODE,KS.ITEM From KClStk KS LEFT JOIN ITEMMAST I ON KS.ITEM=I.CODE AND I.ITEMTYPE='Store' LEFT JOIN GODOWNMAST G ON KS.DEPARTCODE=G.CODE WHERE KS.DOCID='" & var_AC
  loc_106567E: var_88 = var_B0 & "' ORDER BY KS.VNO,KS.SNO"
  loc_1065697: If (var_88 = vbNullString) Then
  loc_106569A:   Exit Sub
  loc_106569B: End If
  loc_10656B1: unk_4A419C.Execute var_88, var_D0, -1
  loc_10656BC: Set var_9C = var_A4
  loc_10656CB: var_D4 = var_9C.RecordCount
  loc_10656D9: If (var_D4 <= 0) Then
  loc_10656E2:   Call 0.Method_arg_50 (var_AC)
  loc_1065703:   MsgBox("** No Records Found to Print **", &H40, CVar(var_AC), var_104, var_124)
  loc_1065713:   Exit Sub
  loc_1065714: End If
  loc_106572A: Set var_A4 = var_9C 
  loc_1065736: var_126 = CreateFieldDefFile(var_A4, MemVar_1F950B4 & "\kClStk.ttx")
  loc_1065746: var_C0 = CVar(var_126) 'Integer
  loc_1065749: var_98 = var_C0 'Variant
  loc_1065765: var_AC = MemVar_1F950B4 & "\kClStk.RPT"
  loc_106576E: Call 0.Method_arg_1C (var_AC, var_C0, var_A4)
  loc_1065779: MemVar_1F951E8 = var_A4
  loc_106579C: Call 0.Method_arg_64 (var_A4, CVar(var_A4), var_F4, var_114)
  loc_10657A4: Call 0.Method_arg_2C (var_126, &HFF)
  loc_10657B2: Call 0.Method_arg_150 (var_A4)
  loc_10657C8: Call 0.Method_arg_90 (var_A4, var_D4)
  loc_10657D0: Call 0.Method_arg_24 (var_9E)
  loc_10657DC: For var_12A =  To CInt(var_D4): 1 = var_12A 'Integer
  loc_10657F5:   Call 0.Method_arg_90 (var_A4, CLng(var_9E))
  loc_10657FD:   Call 0.Method_arg_20 (var_A8)
  loc_1065805:   Call 0.Method_arg_30 (var_AC)
  loc_106581F:   If (var_AC = "Title") Then
  loc_1065835:     Call 0.Method_arg_90 (var_A4, CLng(var_9E))
  loc_106583D:     Call 0.Method_arg_20 (var_A8)
  loc_1065845:     Call 0.Method_arg_38 ("'Kitchen Closing Stock'")
  loc_1065851:   End If
  loc_1065854: Next var_12A 'Integer
  loc_106585F: Call 0.Method_arg_50 (var_AC)
  loc_1065869: Set var_A8 = Nothing
  loc_1065883: Set var_A4 = MemVar_1F951E8 
  loc_106588F: Proc_6_99_1484404(var_A4, 0, var_AC)
  loc_106589A: MemVar_1F951E8 = var_A4
  loc_10658AD: Set var_9C = Nothing
  loc_10658B0: Exit Sub
  loc_10658B1: ' Referenced from: 106564C
  loc_10658B1: Proc_6_60_E63754(&HFF)
  loc_10658B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2444C
  'Data Table: 4A4184
  Dim Me As Recordset15
  loc_E24433: Me.Requery -1
  loc_E24443: Me.Requery -1
  loc_E24448: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '146CC14
  'Data Table: 4A4184
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_B4 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_C0 As String
  Dim var_158 As String
  Dim unk_4A419C As Connection15
  Dim var_BC As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Variant
  Dim var_8E As Integer
  Dim var_1DC As Variant
  Dim var_580 As Double
  Dim var_214 As TextBox
  Dim var_588 As Double
  Dim var_234 As TextBox
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_590 As Double
  Dim var_3A8 As Variant
  Dim var_1E0 As String
  Dim var_1E8 As String
  Dim var_1F0 As String
  Dim var_154 As Variant
  Dim var_258 As Variant
  Dim var_408 As Variant
  Dim var_134 As Variant
  Dim var_88 As Recordset15
  Dim var_1EC As String
  loc_146C128: On Error Goto loc_146CBF8
  loc_146C136: Set var_B4 = Me.Txt
  loc_146C13C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_146C165: If (Proc_6_27_EA61EC(var_B8, "Invoice Date") = 0) Then
  loc_146C168:   Exit Sub
  loc_146C169: End If
  loc_146C174: Set var_B4 = Me.Txt
  loc_146C17A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_146C1A3: If (Proc_6_27_EA61EC(var_B8, "Invoice No") = 0) Then
  loc_146C1A6:   Exit Sub
  loc_146C1A7: End If
  loc_146C1AA: Call Proc_42_46_F964F8(var_C2)
  loc_146C1B5: If (var_C2 = 0) Then
  loc_146C1B8:   Exit Sub
  loc_146C1B9: End If
  loc_146C1C4: Set var_B4 = Me.TxtGrid
  loc_146C1CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_B8)
  loc_146C1D2: var_B8.Visible = False
  loc_146C1DE: Call Proc_42_49_E84588(var_B8)
  loc_146C1E3: var_D4 = 1
  loc_146C1EC: var_F4 = 1
  loc_146C20A: var_124 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_146C210: var_134 = Trim(var_124)
  loc_146C22C: If (var_134 = vbNullString) Then
  loc_146C242:   var_114 = "Item Detail Required "
  loc_146C248:   MsgBox(var_114, 0, var_124, var_134, var_154)
  loc_146C26B:   Me.FGrid.Row = 1
  loc_146C277:   Set var_B4 = Me.FGrid
  loc_146C28C:   var_D4 = CVar(CLng("14737632")) 'Long
  loc_146C29B:   Me.FGrid.CellBackColor = var_D4
  loc_146C2A3:   Exit Sub
  loc_146C2A4: End If
  loc_146C2A7: Call Proc_42_52_10124F4(var_C2, FGrid.DispID_8001)
  loc_146C2B2: If (var_C2 = 0) Then
  loc_146C2C0:   Set var_B4 = Me.Txt
  loc_146C2C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B8)
  loc_146C2CE:   var_B8.SetFocus
  loc_146C2DA:   Exit Sub
  loc_146C2DB: End If
  loc_146C2DF: Set var_B4 = Me.TopCtrl1
  loc_146C2E5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F4)
  loc_146C2ED: var_C0 = CStr(var_D4)
  loc_146C2FE: If (var_C0 = "Add") Then
  loc_146C32E:   Set var_B4 = Me.Txt
  loc_146C334:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Select Count(*) From Purch1 Where DocID='", var_114, -1)
  loc_146C33C:   var_BC = var_B8.Text
  loc_146C355:   unk_4A419C.Execute var_160 & var_C0 & "'", 0, var_164
  loc_146C365:    = var_160.Item()
  loc_146C36D:    = var_164.Value
  loc_146C39A:   If (var_BC.Fields > 0) Then
  loc_146C3A3:     Call Proc_42_51_114FD9C(MemVar_1F95044)
  loc_146C3B6:     Set var_B4 = Me.Txt
  loc_146C3BC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8)
  loc_146C3C4:     var_B8.Text = var_C0
  loc_146C3D3:     Exit Sub
  loc_146C3D4:   End If
  loc_146C3D7: Else
  loc_146C3F4:   var_B8 = Me.Fields.Item("DocID")
  loc_146C3FC:   var_114 = var_B8.Value
  loc_146C405:   var_C0 = CStr(var_114)
  loc_146C40B:   global_72 = var_C0
  loc_146C41C: End If
  loc_146C42A: unk_4A419C.BeginTrans var_168
  loc_146C44D: Set var_B4 = Me.Txt
  loc_146C453: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Delete From KClStk Where DocID='", var_114)
  loc_146C45B: -1 = var_B8.Text
  loc_146C474: unk_4A419C.Execute var_BC & var_C0 & "'", &HFF, var_C0
  loc_146C4B3: For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_16C 'Integer
  loc_146C4BD:   var_D4 = CVar(CLng(var_98)) 'Long
  loc_146C4C5:   var_F4 = CVar(CLng(1)) 'Long
  loc_146C4E5:   var_134 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_146C50C:   Set var_B8 = Me.FGrid
  loc_146C51D:   var_C0 = CStr(var_B8.TextMatrix))
  loc_146C54B:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_C0)) >= CDbl(0))) Then
  loc_146C55C:     Set var_B4 = Me.Txt
  loc_146C562:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_98)))
  loc_146C56A:     (var_134 <> vbNullString) = var_B8.Text
  loc_146C573:     var_D4 = CVar(CLng(var_98)) 'Long
  loc_146C59D:     var_580 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_146C5AE:     Set var_160 = Me.Txt
  loc_146C5B4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164, var_1EC, var_580, CVar(CLng(0)))
  loc_146C5BC:     var_D4 = var_164.Tag
  loc_146C5E1:     Set var_210 = Me.Txt
  loc_146C5E7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_214, var_218)
  loc_146C5EF:     var_F4 = var_214.Text
  loc_146C5FC:     var_588 = Val(var_218)
  loc_146C60A:     Set var_228 = Me.Txt
  loc_146C610:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_22C, var_588)
  loc_146C618:     var_124 = CVar(var_22C) 'Address
  loc_146C61F:     Proc_6_7_F26918(var_134, var_124)
  loc_146C632:     Set var_230 = Me.Txt
  loc_146C638:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_234, var_238)
  loc_146C640:     var_D4 = var_234.Tag
  loc_146C649:     var_18C = CVar(CLng(var_98)) 'Long
  loc_146C651:     var_1AC = CVar(CLng(4)) 'Long
  loc_146C69A:     var_590 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_146C6B8:     var_3A8 = Me.FGrid.TextMatrix)
  loc_146C6C7:     Proc_6_104_ED68A8(var_438, var_3A8, CVar(CLng(2)), CVar(CLng(var_98)), var_590, CVar(CLng(3)))
  loc_146C6D0:     Set var_46C = Me.TopCtrl1
  loc_146C6D6:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_98)))
  loc_146C721:     var_158 = "Insert Into KClStk (DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,DepartCode,Item,Qty,Unit,U_Name,U_EntDt,U_AE,logSite_Code) Values ('" & var_C0
  loc_146C728:     var_1E0 = var_158 & "',"
  loc_146C778:     var_154 = CVar(var_1E0 & CStr(var_580) & ",'" & var_1EC & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_588) & ",") 'String
  loc_146C791:     var_258 = var_154 & var_134 & ",'" & CVar(var_238) 
  loc_146C7E0:     var_408 = var_258 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_590) & ",'" & CVar(CStr(var_3A8)) & "','" & CVar(MemVar_1F950C8) 
  loc_146C82A:     unk_4A419C.Execute CStr(var_408 & "'," & var_438 & ",'" & IIf((CStr(var_47C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_574, -1
  loc_146C8C8:   End If
  loc_146C8CB: Next var_16C 'Integer
  loc_146C8D4: Set var_B4 = Me.TopCtrl1
  loc_146C8DA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_146C8F3: If (CStr() = "Add") Then
  loc_146C90A:   var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_146C930:   Set var_B4 = Me.Txt
  loc_146C936:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, var_1E0, var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_146C93E:   var_1DC = var_B8.Tag
  loc_146C947:   var_1E8 = -1 & var_1E0
  loc_146C94E:   var_134 = CVar(var_1E0 & CStr(var_580) & "' And VP.Date_From<=") 'String
  loc_146C95F:   Set var_BC = Me.Txt
  loc_146C965:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_160, var_1EC)
  loc_146C96D:   var_134 = var_160.Text
  loc_146C97B:   Proc_6_7_F26918(var_124, CVar(var_1EC))
  loc_146C99A:   unk_4A419C.Execute CStr(var_164 & var_124 & " Order By VP.Date_From DESC"), , 
  loc_146C9A5:   Set var_88 = var_164
  loc_146C9E9:   If (var_88.RecordCount > 0) Then
  loc_146C9FA:     Set var_B4 = Me.Txt
  loc_146CA00:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_146CA08:     var_C0 = var_B8.Text
  loc_146CA15:     var_580 = Val(var_C0)
  loc_146CA1E:     var_D4 = "V_Type"
  loc_146CA65:     Proc_6_7_F26918(var_1DC, CVar(var_88.Fields.Item("Date_From")))
  loc_146CA98:     var_1E8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_580) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_146CAC0:     var_1F0 = CStr(CVar(var_1E8 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_D4).Value & "' and Date_From=" & var_1DC)
  loc_146CACA:     unk_4A419C.Execute var_1F0, var_258, -1
  loc_146CB04:   End If
  loc_146CB04: End If
  loc_146CB0A: unk_4A419C.CommitTrans
  loc_146CB11: var_8E = 0
  loc_146CB22: Set var_B4 = Me.Txt
  loc_146CB28: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0)
  loc_146CB30: var_8E = var_B8.Text
  loc_146CB44: var_8E = 0
  loc_146CB52: Me.Requery -1
  loc_146CB7C: Me.Find "SearchCode ='" & "SearchCode ='" & var_C0 & "'", 0, 1
  loc_146CB8C: Set var_B4 = Me.TopCtrl1
  loc_146CB92: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_146CBAB: If (CStr(var_8E) = "Add") Then
  loc_146CBAE:   Call TopCtrl1_UnknownEvent_A()
  loc_146CBB3:   Exit Sub
  loc_146CBB4: End If
  loc_146CBD7: Call Proc_42_48_F8DDEC(Proc_5_1_100EC1C("INI", Me, global_64), var_210)
  loc_146CBE2: Call Proc_42_45_141B594(var_580)
  loc_146CBEC: global_100 = 0
  loc_146CBF4: Set var_88 = Nothing
  loc_146CBF7: Exit Sub
  loc_146CBF8: ' Referenced from: 146C128
  loc_146CBFE: If (var_8E = &HFF) Then
  loc_146CC07:   unk_4A419C.RollbackTrans
  loc_146CC0C: End If
  loc_146CC0C: Proc_6_60_E63754(global_100)
  loc_146CC11: Exit Sub
End Sub

Private Sub Form_Load(Index As Integer) '1142778
  'Data Table: 4A4184
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_4A419C As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_DC As Variant
  Dim Me As Recordset15
  Dim Index30 As Variant
  loc_11423F0: On Error Goto loc_1142770
  loc_1142401: Set var_8C = Me.Txt
  loc_1142407: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_1142426: Me.DGDepart.Left = CVar(var_90.Left)
  loc_1142442: Set var_B8 = Me.Txt
  loc_1142448: Call 0.Method_Form_Load0 (CInt(4), var_BC)
  loc_1142469: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_114247D: var_A4 = CVar((var_90.Top + var_BC.Height)) 'Single
  loc_114248C: Me.DGDepart.Top = CVar(var_90.Left)
  loc_11424C2: unk_4A419C.Execute "Select AutoFillItemInKitchenClosingYN,DateEditableOnRequisitionYN from enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_DC, -1
  loc_11424CD: Set var_88 = Me.Txt
  loc_114250B: global_104 = Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoFillItemInKitchenClosingYN")))
  loc_1142546: global_124 = Proc_6_38_E69628(CVar(var_88.Fields.Item("DateEditableOnRequisitionYN")))
  loc_114256F: Me.Recordset15.CursorLocation = 3
  loc_1142599: var_DC = CVar("Select Code,I.Name as Name ,I.IssueUnit As Unit,I.PurchRate as Rate From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (type in ('Consumables','Store Item','Raw Material') OR (type='Finish' AND DirectSale='Y'))  Order by Name") 'String
  loc_11425A3: Me.Open var_DC, CVar(MemVar_1F95044), 3
  loc_11425B7: CVarUnk
  loc_11425BC: VerifyVarObj
  loc_11425C2: Set var_8C = Me.DGItem
  loc_11425C8: LateIdStAd
  loc_11425F2: Me.DGItem.CursorLocation = 3
  loc_114261C: var_DC = CVar("Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078 & "' or G.LOGSITE_CODE='HO') and D.RestType in ('Kitchen','Staff Kitchen') Order by G.Name") 'String
  loc_114263A: CVarUnk
  loc_114263F: VerifyVarObj
  loc_1142645: Set var_8C = Me.DGDepart
  loc_114264B: LateIdStAd
  loc_1142675: Me.DGDepart.CursorLocation = 3
  loc_1142698: var_C8 = "Select Distinct K.Docid as SearchCode,K.DocID,K.LogSite_Code,K.Site_Code From KClStk K where   LOGSITE_CODE='" & MemVar_1F95078
  loc_11426A9: r_DC, CVar(MemVar_1F95044), 2 CVar(var_C8 & "' Order by Docid"), CVar(MemVar_1F95044), 3
  loc_11426D7: Call Proc_42_48_F8DDEC(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me, New), 3, -1, Me)
  loc_11426F1: Me.LblUser.Left = CDbl(13500)
  loc_1142708: Me.LblUser.Top = CDbl(7800)
  loc_114271F: Me.LblLDt.Top = CDbl(8160)
  loc_1142736: Me.LblLDt.Left = CDbl(13500)
  loc_1142745: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), New, 1)
  loc_1142757: Set var_8C = Me.FGrid
  loc_114275D: var_8C.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1142765: Call Proc_42_42_102C6D0(-1)
  loc_114276A: Call Proc_42_45_141B594(var_8C)
  loc_114276F: Exit Sub
  loc_1142770: ' Referenced from: 11423F0
  loc_1142770: Proc_6_60_E63754()
  loc_1142775: Exit Sub
  loc_1142776: Index30 = CVar() 'Integer
End Sub

Private Sub Form_Resize(arg_C, arg_10) 'ED6228
  'Data Table: 4A4184
  Dim var_8C As Label
  Dim arg_CFF As Integer
  loc_ED6186: Call 0.Method_arg_50 (var_88)
  loc_ED6198: Me.LblFormCaption.Caption = var_88
  loc_ED61B1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED61BD: Set var_A0 = Me.TopCtrl1
  loc_ED61C3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED61D0: Set var_8C = Me.TopCtrl1
  loc_ED61D6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED61F0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED620B: Call 0.Method_arg_100 (var_B8)
  loc_ED621D: Me.LblFormCaption.Width = var_B8
  loc_ED6225: Exit Sub
  loc_ED6226: arg_CFF = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E59084
  'Data Table: 4A4184
  loc_E5904F: Set global_56 = Nothing
  loc_E59061: Set global_60 = Nothing
  loc_E59073: Set global_64 = Nothing
  loc_E5907F: MasterFormExit = 0
  loc_E59082: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26394
  'Data Table: 4A4184
  loc_E26379: If (MasterFormExit = &HFF) Then
  loc_E26389:   Me.Global.Unload Me
  loc_E26391: End If
  loc_E26391: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2CA68
  'Data Table: 4A4184
  loc_E2CA3C: On Error Goto loc_E2CA60
  loc_E2CA57: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2CA5F: Exit Sub
  loc_E2CA60: ' Referenced from: E2CA3C
  loc_E2CA60: Proc_6_60_E63754(Shift)
  loc_E2CA65: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F45B54
  'Data Table: 4A4184
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45A4B: Me.DGDepart.Visible = False
  loc_F45A6A: If (Me.RecordCount > 0) Then
  loc_F45AA9:   Set var_B4 = Me.Txt
  loc_F45AAF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F45AB7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F45AEA:   var_B0 = Me.Fields.Item("Code")
  loc_F45B09:   Set var_B4 = Me.Txt
  loc_F45B0F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F45B17:   var_B8.Tag = CStr(var_B0.Value)
  loc_F45B2D: End If
  loc_F45B38: Set var_A8 = Me.Txt
  loc_F45B3E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4))
  loc_F45B46: var_B0.SetFocus
  loc_F45B52: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FE7E1C
  'Data Table: 4A4184
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FE7C56: Set var_88 = Me.Txt
  loc_FE7C5C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FE7C6A: Proc_6_74_E23240(var_8C)
  loc_FE7C76: Call Proc_42_49_E84588(var_8C)
  loc_FE7C7E: var_92 = Index
  loc_FE7C89: If (var_92 = CInt(4)) Then
  loc_FE7CDA:   Set var_88 = Me.Txt
  loc_FE7CE0:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FE7CE8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FE7D00:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FE7D03:     Exit Sub
  loc_FE7D04:   End If
  loc_FE7D11:   Set var_88 = Me.Txt
  loc_FE7D17:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FE7D2A:   global_112 = var_8C.Text
  loc_FE7D45:   Set var_88 = Me.Txt
  loc_FE7D4B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FE7D53:   var_A0 = var_8C.Text
  loc_FE7D5B:   var_D4 = CVar(var_A0) 'String
  loc_FE7DA0:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FE7DA9:     Me.MoveFirst
  loc_FE7DCE:     Set var_88 = Me.Txt
  loc_FE7DD4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FE7DDC:     0 = var_8C.Text
  loc_FE7DEA:     Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_FE7E00:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_FE7E18:   End If
  loc_FE7E18: End If
  loc_FE7E18: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB2704
  'Data Table: 4A4184
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FB257E: If (CLng(Shift) = &H1B) Then
  loc_FB2581:   Call Proc_42_49_E84588()
  loc_FB2586:   Exit Sub
  loc_FB2587: End If
  loc_FB258A: var_86 = KeyCode
  loc_FB2595: If (var_86 = CInt(4)) Then
  loc_FB25B0:   Set var_9C = Nothing
  loc_FB25BB:   Set var_98 = Nothing
  loc_FB25E9:   Proc_6_69_134A630(Me.DGDepart, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_FB25FD: End If
  loc_FB2619: If (CBool(Me.DGDepart.Visible) = 0) Then
  loc_FB2631:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB263A:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_FB263F:   End If
  loc_FB2643:   Set var_8C = Me.TopCtrl1
  loc_FB2649:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_FB2662:   If (CStr(0) = "Add") Then
  loc_FB267A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB2683:       Proc_6_76_E533C8(Shift, arg_14)
  loc_FB2688:     End If
  loc_FB268B:   Else
  loc_FB268F:     Set var_8C = Me.TopCtrl1
  loc_FB2695:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_FB26AE:     If (CStr() = "Edit") Then
  loc_FB26C6:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB26CF:         Proc_6_76_E533C8(Shift)
  loc_FB26D4:       End If
  loc_FB26D4:     End If
  loc_FB26D4:   End If
  loc_FB26E9:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB26F4:     Call Txt_Validate(KeyCode)
  loc_FB26FC:     Call Proc_42_50_F0ACD0(KeyCode, 0)
  loc_FB2701:   End If
  loc_FB2701: End If
  loc_FB2701: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE9EF0
  'Data Table: 4A4184
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_EE9E30: On Error Goto loc_EE9EEA
  loc_EE9E36: Proc_6_58_E06050(arg_10)
  loc_EE9E3E: var_86 = KeyAscii
  loc_EE9E49: If (var_86 = CInt(1)) Then
  loc_EE9E56:   Set var_8C = Me.Txt
  loc_EE9E5C:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_EE9E77:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_EE9E86: Else
  loc_EE9E8E:   If (var_86 = CInt(4)) Then
  loc_EE9EAD:     If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EE9EBF:       var_AC = "Name"
  loc_EE9EDA:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EE9EE9:     End If
  loc_EE9EE9:   End If
  loc_EE9EE9: End If
  loc_EE9EE9: Exit Sub
  loc_EE9EEA: ' Referenced from: EE9E30
  loc_EE9EEA: Proc_6_60_E63754(var_AC, 0)
  loc_EE9EEF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BEDC
  'Data Table: 4A4184
  loc_E4BEBA: Set var_88 = Me.Txt
  loc_E4BEC0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BECE: Proc_6_73_E23294(var_8C)
  loc_E4BEDA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12EB2F4
  'Data Table: 4A4184
  Dim var_94 As Integer
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_98 As Variant
  Dim var_B4 As String
  Dim unk_4A419C As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12EAC38: On Error Goto loc_12EB2EB
  loc_12EAC3E: var_94 = Cancel
  loc_12EAC49: If (var_94 = CInt(1)) Then
  loc_12EAC50:   Set var_98 = Me.TopCtrl1
  loc_12EAC56:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12EAC5E:   var_AC = CStr()
  loc_12EAC6F:   If (var_AC = "Add") Then
  loc_12EAC78:     Call Proc_42_51_114FD9C(MemVar_1F95044)
  loc_12EAC9B:     Set var_98 = Me.Txt
  loc_12EACA1:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_12EACA9:     var_B0.Text = var_AC
  loc_12EACC5:     Me.LblVPrefix.Caption = global_80
  loc_12EACCD:   End If
  loc_12EACD1:   Set var_98 = Me.TopCtrl1
  loc_12EACD7:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_12EACDF:   var_AC = CStr()
  loc_12EACF0:   If (var_AC = "Add") Then
  loc_12EAD20:     Set var_98 = Me.Txt
  loc_12EAD26:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC, "Select Count(*) From Purch1 Where DocID='", var_A8, -1)
  loc_12EAD37:     var_B4 = var_D0 & var_AC
  loc_12EAD47:     unk_4A419C.Execute var_B4 & "'", 0, var_E4
  loc_12EAD57:      = var_D0.Item()
  loc_12EAD5F:      = var_E4.Value
  loc_12EAD8C:     If (var_B0.Text.Fields > 0) Then
  loc_12EAD95:       Call 0.Method_arg_50 (var_AC)
  loc_12EADB6:       MsgBox("Duplicate Invoice No.", &H40, CVar(var_AC), var_114, var_124)
  loc_12EADCC:       Call Proc_42_51_114FD9C(MemVar_1F95044)
  loc_12EADDC:       If (var_AC = vbNullString) Then
  loc_12EADE9:         Set var_98 = Me.Txt
  loc_12EADEF:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12EADF7:         var_B0.SetFocus
  loc_12EAE05:         arg_10 = &HFF
  loc_12EAE08:         Exit Sub
  loc_12EAE09:       End If
  loc_12EAE0F:       Call Proc_42_51_114FD9C(MemVar_1F95044, var_AC)
  loc_12EAE22:       Set var_98 = Me.Txt
  loc_12EAE28:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC)
  loc_12EAE30:       var_B0.Text = arg_10
  loc_12EAE41:       arg_10 = &HFF
  loc_12EAE44:       Exit Sub
  loc_12EAE45:     End If
  loc_12EAE45:   End If
  loc_12EAE48: Else
  loc_12EAE50:   If (var_94 = CInt(2)) Then
  loc_12EAE61:     Set var_98 = Me.Txt
  loc_12EAE67:     Call 0.Method_Txt_Validate0 (CInt(2), var_B0, var_AC)
  loc_12EAE6F:     arg_10 = var_B0.Text
  loc_12EAE85:     var_114 = Len(Trim(CVar(var_AC)))
  loc_12EAE9F:     If (var_114 = 0) Then
  loc_12EAEB5:       Set var_98 = Me.Txt
  loc_12EAEBB:       Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_12EAEC3:       var_B0.Text = CStr(MemVar_1F950EC)
  loc_12EAED5:     Else
  loc_12EAEDF:       Set var_98 = Me.Txt
  loc_12EAEE5:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12EAF05:       Set var_D0 = Me.Txt
  loc_12EAF0B:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_12EAF13:       var_E4.Text = Proc_6_33_15125B8(var_B0)
  loc_12EAF26:     End If
  loc_12EAF33:     Set var_98 = Me.Txt
  loc_12EAF39:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12EAF41:     var_AC = var_B0.Text
  loc_12EAF5C:     Set var_CC = Me.Txt
  loc_12EAF62:     Call 0.Method_Txt_Validate0 (Cancel, var_D0, var_B4)
  loc_12EAF6A:     (CDate(var_AC) >= MemVar_1F950F4) = var_D0.Text
  loc_12EAF8C:     If Not((var_AC And (CDate(var_B4) <= MemVar_1F950FC))) Then
  loc_12EAFB0:       MsgBox("Invoice Date Not Between Current Fin. Year", 0, "Date Validate", var_114, var_124)
  loc_12EAFCA:       Set var_98 = Me.Txt
  loc_12EAFD0:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_12EAFD8:       var_B0.SetFocus
  loc_12EAFE6:       arg_10 = &HFF
  loc_12EAFE9:       Exit Sub
  loc_12EAFEA:     End If
  loc_12EAFEE:     Set var_98 = Me.TopCtrl1
  loc_12EAFF4:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_12EAFFC:     var_AC = CStr(var_B0)
  loc_12EB00D:     If (var_AC = "Add") Then
  loc_12EB016:       Call Proc_42_51_114FD9C(MemVar_1F95044)
  loc_12EB029:       Set var_98 = Me.Txt
  loc_12EB02F:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_12EB037:       var_B0.Text = var_AC
  loc_12EB046:     End If
  loc_12EB049:   Else
  loc_12EB051:     If (var_94 = CInt(4)) Then
  loc_12EB05F:       Set var_98 = Me.Txt
  loc_12EB065:       Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_12EB06D:       var_AC = "Department Name"
  loc_12EB08E:       If (Proc_6_27_EA61EC(var_B0, var_AC) = 0) Then
  loc_12EB09C:         Set var_98 = Me.Txt
  loc_12EB0A2:         Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_12EB0AA:         var_B0.SetFocus
  loc_12EB0B8:         arg_10 = &HFF
  loc_12EB0BB:         Exit Sub
  loc_12EB0BC:       End If
  loc_12EB10A:       Set var_98 = Me.Txt
  loc_12EB110:       Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_12EB118:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_12EB130:       If (arg_10 Or (var_AC = vbNullString)) Then
  loc_12EB140:         Set var_98 = Me.Txt
  loc_12EB146:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12EB14E:         var_B0.Text = vbNullString
  loc_12EB167:         Set var_98 = Me.Txt
  loc_12EB16D:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12EB175:         var_B0.Tag = vbNullString
  loc_12EB184:       Else
  loc_12EB1BF:         Set var_CC = Me.Txt
  loc_12EB1C5:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_12EB1CD:         var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12EB200:         var_B0 = Me.Fields.Item("Code")
  loc_12EB211:         var_AC = CStr(var_B0.Value)
  loc_12EB21E:         Set var_CC = Me.Txt
  loc_12EB224:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_12EB22C:         var_D0.Tag = var_AC
  loc_12EB24E:         Set var_98 = Me.Txt
  loc_12EB254:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12EB25C:         var_B0.Enabled = False
  loc_12EB268:       End If
  loc_12EB26C:       Set var_98 = Me.TopCtrl1
  loc_12EB272:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_12EB297:       If ((CStr() = "Add") And (global_104 = "Yes")) Then
  loc_12EB2D0:         Call Proc_42_54_10E469C(CStr(Trim(CVar(Me.Fields.Item("Code")))))
  loc_12EB2E2:       End If
  loc_12EB2E2:     End If
  loc_12EB2E2:   End If
  loc_12EB2E2: End If
  loc_12EB2E7: Set var_88 = Nothing
  loc_12EB2EA: Exit Sub
  loc_12EB2EB: ' Referenced from: 12EAC38
  loc_12EB2EB: Proc_6_60_E63754()
  loc_12EB2F0: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1133E40
  'Data Table: 4A4184
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_108 As TextBox
  loc_1133AD4: Call Proc_42_49_E84588()
  loc_1133AE5: If (Index = 0) Then
  loc_1133AFE:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_1133B19:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1133B58:   Set var_108 = Me.TxtGrid
  loc_1133B5E:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1133B66:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1133BA7:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1133BBD:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1133BC5:     var_E0 = CVar(CLng(4)) 'Long
  loc_1133BE5:     global_120 = CStr(Me.FGrid.TextMatrix))
  loc_1133C03:     var_118 = Me.RecordCount
  loc_1133C3B:     If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1133C3E:       Exit Sub
  loc_1133C3F:     End If
  loc_1133C52:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1133C5A:     var_E0 = CVar(CLng(1)) 'Long
  loc_1133C8D:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1133C96:       Me.MoveFirst
  loc_1133CB6:       var_E0 = CVar(CLng(4)) 'Long
  loc_1133CBF:       Set var_C0 = Me.FGrid
  loc_1133CD6:       Proc_6_17_EAAE40(var_12C, CVar(CStr(var_C0.TextMatrix))), var_E0, CVar(CLng(Me.FGrid.Row)), var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1133CFF:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_1133D2F:       If (Me.EOF = &HFF) Then
  loc_1133D38:         Me.MoveFirst
  loc_1133D3D:       End If
  loc_1133D3D:     End If
  loc_1133D4A:     Set var_AC = Me.TxtGrid
  loc_1133D50:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118, var_15C, var_E0)
  loc_1133D58:     var_98 = var_C0.Left
  loc_1133D6F:     Me.DGItem.Left = CVar(var_118)
  loc_1133D8A:     Set var_F4 = Me.TxtGrid
  loc_1133D90:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_160)
  loc_1133D98:     var_114 = var_108.Height
  loc_1133DAA:     Set var_AC = Me.TxtGrid
  loc_1133DB0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_1133DB8:     var_98 = var_C0.Top
  loc_1133DC4:     var_98 = CVar((var_118 + var_160)) 'Single
  loc_1133DD3:     Me.DGItem.Top = var_98
  loc_1133DE8:   Else
  loc_1133DEF:     If (var_114 = CLng(3)) Then
  loc_1133E01:       Set var_AC = Me.TxtGrid
  loc_1133E07:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_1133E0F:       var_C0.MaxLength = 0
  loc_1133E24:       If (global_98 = 0) Then
  loc_1133E2F:         var_110 = "{Home}+{End}"
  loc_1133E35:         Proc_303_0_FBACC8(CStr("Code =" & var_12C), 0)
  loc_1133E3D:       End If
  loc_1133E3D:     End If
  loc_1133E3D:   End If
  loc_1133E3D: End If
  loc_1133E3D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10593F0
  'Data Table: 4A4184
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_105918C: If (KeyCode = 0) Then
  loc_1059199:   If (CLng(Shift) = &H1B) Then
  loc_10591A9:     Set var_8C = Me.TxtGrid
  loc_10591AF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10591C9:     Set var_98 = Me.TxtGrid
  loc_10591CF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10591D7:     var_9C.Text = var_90.Tag
  loc_10591F3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10591F8:     Call Proc_42_49_E84588(arg_14)
  loc_1059201:     Set var_8C = Me.FGrid
  loc_105921E:     Set var_8C = Me.TxtGrid
  loc_1059224:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_105922C:     var_90.Visible = FGrid.DispID_8001
  loc_1059238:     Exit Sub
  loc_1059239:   End If
  loc_105924C:   var_B0 = CLng(Me.FGrid.Col)
  loc_105925C:   If (var_B0 = CLng(1)) Then
  loc_1059277:     Set var_9C = Nothing
  loc_10592B0:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_56, Shift, &HFF)
  loc_10592CE:     If (CLng(Shift) = &HD) Then
  loc_10592D7:       Call Proc_42_44_1226FB0(KeyCode, var_B2, 1, Nothing)
  loc_10592E2:       If (var_B2 = &HFF) Then
  loc_1059328:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_98, 3, 2)
  loc_1059338:       End If
  loc_1059338:     End If
  loc_105933B:   Else
  loc_1059342:     If (var_B0 = CLng(3)) Then
  loc_1059385:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_98 = &HFF))) Then
  loc_105938E:         Call Proc_42_44_1226FB0(KeyCode, var_B2, 3, 0)
  loc_1059399:         If (var_B2 = &HFF) Then
  loc_10593DF:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_98, 3, 0)
  loc_10593EF:         End If
  loc_10593EF:       End If
  loc_10593EF:     End If
  loc_10593EF:   End If
  loc_10593EF: End If
  loc_10593EF: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F0143C
  'Data Table: 4A4184
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F01363: Proc_6_58_E06050(arg_10)
  loc_F01374: If (KeyAscii = 0) Then
  loc_F0138A:   var_A0 = CLng(Me.FGrid.Col)
  loc_F0139A:   If (var_A0 = CLng(1)) Then
  loc_F013B9:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F013C0:       Set var_AC = Me.TxtGrid
  loc_F013CB:       var_A4 = "Name"
  loc_F013E6:       Proc_6_89_1470B00(var_AC, KeyAscii, global_56, arg_10)
  loc_F013F5:     End If
  loc_F013F8:   Else
  loc_F013FF:     If (var_A0 = CLng(3)) Then
  loc_F0140C:       Set var_8C = Me.TxtGrid
  loc_F01412:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F0142D:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F01439:     End If
  loc_F01439:   End If
  loc_F01439: End If
  loc_F01439: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDA01C
  'Data Table: 4A4184
  loc_ED9F68: On Error Goto loc_EDA013
  loc_ED9F77: If (KeyCode = 0) Then
  loc_ED9F9D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_ED9FC3:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_ED9FD4:       Call TxtGrid_KeyDown(KeyCode, global_96)
  loc_EDA003:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_56, Shift, "Name")
  loc_EDA012:     End If
  loc_EDA012:   End If
  loc_EDA012: End If
  loc_EDA012: Exit Sub
  loc_EDA013: ' Referenced from: ED9F68
  loc_EDA013: Proc_6_60_E63754(&HFF, 0)
  loc_EDA018: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24B30
  'Data Table: 4A4184
  Dim arg_10 As Integer
  loc_E24B18: If (Cancel = 0) Then
  loc_E24B21:   Call Proc_42_44_1226FB0(Cancel, var_88)
  loc_E24B2A:   arg_10 = Not(var_88)
  loc_E24B2D: End If
  loc_E24B2D: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10C4CDC
  'Data Table: 4A4184
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_14C As Variant
  loc_10C4A0B: Me.DGItem.Visible = False
  loc_10C4A2A: If (Me.RecordCount > 0) Then
  loc_10C4A67:   Set var_B4 = Me.TxtGrid
  loc_10C4A6D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10C4A75:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10C4A9E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C4AA6:   var_EC = CVar(CLng(1)) 'Long
  loc_10C4AD9:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10C4AE1:   Set var_B8 = Me.FGrid
  loc_10C4AE7:   LateIdCallSt
  loc_10C4B16:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C4B1E:   var_EC = CVar(CLng(4)) 'Long
  loc_10C4B51:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10C4B59:   Set var_B8 = Me.FGrid
  loc_10C4B5F:   LateIdCallSt
  loc_10C4B8E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C4B96:   var_EC = CVar(CLng(2)) 'Long
  loc_10C4BC9:   var_11C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10C4BD1:   Set var_B8 = Me.FGrid
  loc_10C4BD7:   LateIdCallSt
  loc_10C4C0D:   var_B0 = Me.Fields.Item("qty")
  loc_10C4C25:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C4C2D:   var_FC = CVar(CLng(3)) 'Long
  loc_10C4C5A:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10C4C62:   Set var_B8 = Me.FGrid
  loc_10C4C68:   LateIdCallSt
  loc_10C4C86: End If
  loc_10C4C92: Set var_A8 = Me.TxtGrid
  loc_10C4C98: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_10C4CA0: var_FC = var_B0.Visible
  loc_10C4CB2: If (var_15E = &HFF) Then
  loc_10C4CBE:   Set var_A8 = Me.TxtGrid
  loc_10C4CC4:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_10C4CCC:   var_B0.SetFocus
  loc_10C4CD8: End If
  loc_10C4CD8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA55B0
  'Data Table: 4A4184
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA554B: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_68)) Then
  loc_EA5560:   Me.FGrid.Col = CVar(CLng(1))
  loc_EA5568: End If
  loc_EA557B: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA558E: Set var_88 = Me.TxtGrid
  loc_EA5594: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA559C: var_BC.Visible = False
  loc_EA55A8: Call Proc_42_49_E84588()
  loc_EA55AD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E680F0
  'Data Table: 4A4184
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E680AC: Set var_88 = Me.TxtGrid
  loc_E680B2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E680CC: If (var_8C.Visible = 0) Then
  loc_E680E5:   Me.FGrid.BackColorSel = CVar(CLng(global_68))
  loc_E680ED: End If
  loc_E680ED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E009EC
  'Data Table: 4A4184
  loc_E009E4: Call Proc_42_43_E456D0()
  loc_E009E9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116D6F4
  'Data Table: 4A4184
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
  loc_116D32C: Set var_88 = Me.TopCtrl1
  loc_116D332: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_116D377: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_116D380:   Call Form_KeyDown(Cancel, arg_10)
  loc_116D385: End If
  loc_116D389: Set var_88 = Me.TopCtrl1
  loc_116D38F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_116D3A8: If (CStr() = "Browse") Then
  loc_116D3AB:   Exit Sub
  loc_116D3AC: End If
  loc_116D420: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116D439:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_116D449:   var_9C = "+{Tab}"
  loc_116D44F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_116D459:   Cancel = 0
  loc_116D45F: Else
  loc_116D469:   var_B0 = Me.FGrid.Rows
  loc_116D4B6:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116D4CF:     Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_116D4DC:     Call Proc_42_50_F0ACD0(0, var_B0, Cancel)
  loc_116D4E1:   End If
  loc_116D4E1: End If
  loc_116D4E7: global_96 = Cancel
  loc_116D50D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116D531: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_116D547:   var_EC = CLng(Me.FGrid.Col)
  loc_116D557:   If (var_EC = CLng(1)) Then
  loc_116D56D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116D585:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116D58A:     var_11C = vbNullString
  loc_116D594:     Set var_B4 = Me.FGrid
  loc_116D59A:     LateIdCallSt
  loc_116D5C5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116D5CD:     var_FC = CVar(CLng(4)) 'Long
  loc_116D5D2:     var_11C = vbNullString
  loc_116D5DC:     Set var_A0 = Me.FGrid
  loc_116D5E2:     LateIdCallSt
  loc_116D607:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116D60F:     var_FC = CVar(CLng(2)) 'Long
  loc_116D614:     var_11C = vbNullString
  loc_116D61E:     Set var_A0 = Me.FGrid
  loc_116D624:     LateIdCallSt
  loc_116D649:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116D651:     var_FC = CVar(CLng(3)) 'Long
  loc_116D656:     var_11C = vbNullString
  loc_116D660:     Set var_A0 = Me.FGrid
  loc_116D666:     LateIdCallSt
  loc_116D67B:   Else
  loc_116D682:     If (var_EC = CLng(3)) Then
  loc_116D698:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116D6B0:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116D6B5:       var_11C = vbNullString
  loc_116D6BF:       Set var_B4 = Me.FGrid
  loc_116D6C5:       LateIdCallSt
  loc_116D6DD:     End If
  loc_116D6DD:   End If
  loc_116D6DD: End If
  loc_116D6E3: If (Cancel = &HD) Then
  loc_116D6EB:   global_98 = 0
  loc_116D6EE: End If
  loc_116D6F0: Cancel = 0
  loc_116D6F3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E15AA8
  'Data Table: 4A4184
  loc_E15A99: Call FGrid_UnknownEvent_C()
  loc_E15AA3: global_98 = 0
  loc_E15AA6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1015268
  'Data Table: 4A4184
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1015058: Set var_88 = Me.TopCtrl1
  loc_101505E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1015077: If (CStr() = "Browse") Then
  loc_101507A:   Exit Sub
  loc_101507B: End If
  loc_101508E: var_A0 = CLng(Me.FGrid.Col)
  loc_101509E: If (var_A0 = CLng(1)) Then
  loc_10150A5:   Set var_C4 = Me.FGrid
  loc_10150C9:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10150F6:   Set var_B4 = var_C4
  loc_1015108:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1015130:   Set var_88 = Me.TxtGrid
  loc_1015136:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_101513E:   0 = var_B4.Text
  loc_1015157:   If (Len(var_9C) <= 1) Then
  loc_1015166:     Set var_88 = Me.TxtGrid
  loc_101516C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1015174:     var_CA = var_B4.Text
  loc_1015185:     Set var_B8 = Me.TxtGrid
  loc_101518B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1015193:     var_C4.Text = var_9C
  loc_10151A6:   End If
  loc_10151B2:   Set var_88 = Me.TxtGrid
  loc_10151B8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_10151D2:   Set var_B8 = Me.TxtGrid
  loc_10151D8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10151E0:   var_C4.SelStart = Len(var_B4.Text)
  loc_10151F6: Else
  loc_10151FD:   If (var_A0 = CLng(3)) Then
  loc_101523E:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1015250:   End If
  loc_1015250: End If
  loc_101525A: If (CLng(Cancel) <> &HD) Then
  loc_1015262:   global_98 = &HFF
  loc_1015265: End If
  loc_1015265: Exit Sub
  loc_1015266: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_D '1058BB0
  'Data Table: 4A4184
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  loc_105894C: Set var_90 = Me.TopCtrl1
  loc_1058952: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105896B: If (CStr() = "Browse") Then
  loc_105896E:   Exit Sub
  loc_105896F: End If
  loc_105898C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_105898F:   Exit Sub
  loc_1058990: End If
  loc_10589A1: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10589C3:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10589FD:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1058A1F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1058A35:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1058A3E:         Set var_118 = Me.FGrid
  loc_1058A59:       Else
  loc_1058A6C:         Me.FGrid.Rows = 1
  loc_1058A92:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1058A9A:         Set var_118 = Me.FGrid
  loc_1058AC7:         Me.FGrid.FixedRows = 1
  loc_1058ACF:       End If
  loc_1058AD3:       Set var_90 = Me.TopCtrl1
  loc_1058AD9:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_10000)
  loc_1058AF2:       If (CStr(var_A0) = "Add") Then
  loc_1058B1A:         For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_124 'Integer
  loc_1058B24:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1058B2C:           var_E4 = CVar(CLng(0)) 'Long
  loc_1058B36:           var_A0 = CVar(CStr(var_86)) 'String
  loc_1058B3E:           Set var_90 = Me.FGrid
  loc_1058B44:           LateIdCallSt
  loc_1058B55:         Next var_124 'Integer
  loc_1058B5A:       End If
  loc_1058B5A:     End If
  loc_1058B5D:   Else
  loc_1058B7E:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_1058B8E:   End If
  loc_1058B92:   Set var_90 = Me.FGrid
  loc_1058BA3: End If
  loc_1058BA8: Set var_8C = Nothing
  loc_1058BAB: Exit Sub
  loc_1058BAC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44798
  'Data Table: 4A4184
  Dim var_8C As TextBox
  loc_E4476C: Call Proc_42_49_E84588()
  loc_E4477C: Set var_88 = Me.TxtGrid
  loc_E44782: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4478A: var_8C.Visible = False
  loc_E44796: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A4E68
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A4E77
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94EC0
  'Data Table: 4A4184
  Dim Me As Recordset15
  loc_E94E4E: On Error Goto loc_E94EB7
  loc_E94E57: Me.MoveFirst
  loc_E94E81: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94EA9: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E94EB1: Call Proc_42_45_141B594(0)
  loc_E94EB6: Exit Sub
  loc_E94EB7: ' Referenced from: E94E4E
  loc_E94EB7: Proc_6_60_E63754(var_A0)
  loc_E94EBC: Exit Sub
  loc_E94EBD: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E7544C
  'Data Table: 4A4184
  Dim Me As Recordset15
  loc_E753F6: Me.MoveFirst
  loc_E75420: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75440: If (Me.EOF = 0) Then
  loc_E75443:   Call Proc_42_45_141B594(var_9C)
  loc_E75448: End If
  loc_E75448: Exit Sub
End Sub

Public Sub Proc_42_42_102C6D0
  'Data Table: 4A4184
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_102C49F: Me.FGrid.Left = CVar(CDbl(900))
  loc_102C4BA: Me.FGrid.Top = CVar(CDbl(1350))
  loc_102C4D4: Me.DGItem.Left = CVar(CDbl(&HF))
  loc_102C4EF: Me.DGItem.Top = CVar(CDbl(5145))
  loc_102C50A: Me.FGrid.Width = CVar(CDbl(7300))
  loc_102C525: Me.FGrid.Height = CVar(CDbl(7400))
  loc_102C531: Set var_AC = Me.FGrid
  loc_102C548: global_68 = CStr(CLng(var_AC.BackColor))
  loc_102C55E: var_AC.Cols = 5
  loc_102C566: var_94 = CVar(CLng(0)) 'Long
  loc_102C56B: var_D0 = &H226
  loc_102C577: LateIdCallSt
  loc_102C57F: var_94 = 0
  loc_102C58B: var_D0 = CVar(CLng(1)) 'Long
  loc_102C590: var_F0 = "Item Name"
  loc_102C599: LateIdCallSt
  loc_102C5A4: var_94 = CVar(CLng(1)) 'Long
  loc_102C5AF: var_D0 = CVar(CInt(1)) 'Integer
  loc_102C5B6: LateIdCallSt
  loc_102C5C1: var_94 = CVar(CLng(1)) 'Long
  loc_102C5C6: var_D0 = &HED8
  loc_102C5D2: LateIdCallSt
  loc_102C5DA: var_94 = 0
  loc_102C5E6: var_D0 = CVar(CLng(2)) 'Long
  loc_102C5EB: var_F0 = "Wt. Unit"
  loc_102C5F4: LateIdCallSt
  loc_102C5FF: var_94 = CVar(CLng(2)) 'Long
  loc_102C60A: var_D0 = CVar(CInt(1)) 'Integer
  loc_102C611: LateIdCallSt
  loc_102C61C: var_94 = CVar(CLng(2)) 'Long
  loc_102C621: var_D0 = &H3B6
  loc_102C62D: LateIdCallSt
  loc_102C635: var_94 = 0
  loc_102C641: var_D0 = CVar(CLng(3)) 'Long
  loc_102C646: var_F0 = "Quantity"
  loc_102C64F: LateIdCallSt
  loc_102C65A: var_94 = CVar(CLng(3)) 'Long
  loc_102C665: var_D0 = CVar(CInt(7)) 'Integer
  loc_102C66C: LateIdCallSt
  loc_102C677: var_94 = CVar(CLng(3)) 'Long
  loc_102C682: var_D0 = CVar(CInt(7)) 'Integer
  loc_102C689: LateIdCallSt
  loc_102C694: var_94 = CVar(CLng(3)) 'Long
  loc_102C699: var_D0 = &H5DC
  loc_102C6A5: LateIdCallSt
  loc_102C6B0: var_94 = CVar(CLng(4)) 'Long
  loc_102C6B5: var_D0 = 0
  loc_102C6C1: LateIdCallSt
  loc_102C6CB: Set var_AC = Nothing 
  loc_102C6CF: Exit Sub
End Sub

Public Sub Proc_42_43_E456D0
  'Data Table: 4A4184
  loc_E456AC: Set var_88 = Me.TopCtrl1
  loc_E456B2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E456CB: If (CStr() = "Browse") Then
  loc_E456CE:   Exit Sub
  loc_E456CF: End If
  loc_E456CF: Exit Sub
End Sub

Public Sub Proc_42_44_1226FB0(arg_C) '1226FB0
  'Data Table: 4A4184
  Dim var_98 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_BC As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_178 As String
  Dim var_17C As MSHFlexGrid
  Dim var_1E0 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_1226ADC: If (arg_C = 0) Then
  loc_1226AF2:   var_AC = CLng(Me.FGrid.Col)
  loc_1226B02:   If (var_AC = CLng(1)) Then
  loc_1226B53:     Set var_98 = Me.TxtGrid
  loc_1226B59:     Call 0.Method_Proc_42_44_1226FB00 (arg_C, var_B8, var_BC)
  loc_1226B61:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_1226B79:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_1226B8F:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226B97:       var_EC = CVar(CLng(1)) 'Long
  loc_1226B9C:       var_10C = vbNullString
  loc_1226BA6:       Set var_B8 = Me.FGrid
  loc_1226BAC:       LateIdCallSt
  loc_1226BD1:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226BD9:       var_EC = CVar(CLng(4)) 'Long
  loc_1226BDE:       var_10C = vbNullString
  loc_1226BE8:       Set var_B8 = Me.FGrid
  loc_1226BEE:       LateIdCallSt
  loc_1226C13:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226C1B:       var_EC = CVar(CLng(2)) 'Long
  loc_1226C20:       var_10C = vbNullString
  loc_1226C2A:       Set var_B8 = Me.FGrid
  loc_1226C30:       LateIdCallSt
  loc_1226C45:     Else
  loc_1226C5E:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226C66:       var_EC = CVar(CLng(4)) 'Long
  loc_1226C80:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1226C9E:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226CA6:       var_150 = CVar(CLng(4)) 'Long
  loc_1226CC0:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1226D2B:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1226D41:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226D49:         var_FC = CVar(CLng(1)) 'Long
  loc_1226D7C:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1226D84:         Set var_164 = Me.FGrid
  loc_1226D8A:         LateIdCallSt
  loc_1226DB9:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226DC1:         var_FC = CVar(CLng(4)) 'Long
  loc_1226DF4:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1226DFC:         Set var_164 = Me.FGrid
  loc_1226E02:         LateIdCallSt
  loc_1226E31:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226E39:         var_FC = CVar(CLng(2)) 'Long
  loc_1226E5B:         var_B8 = Me.Fields.Item("Unit")
  loc_1226E6C:         var_140 = CVar(CStr(var_B8.Value)) 'String
  loc_1226E74:         Set var_164 = Me.FGrid
  loc_1226E7A:         LateIdCallSt
  loc_1226E96:       End If
  loc_1226E96:     End If
  loc_1226E99:   Else
  loc_1226EA0:     If (var_AC = CLng(3)) Then
  loc_1226EAD:       Set var_98 = Me.TxtGrid
  loc_1226EB3:       Call 0.Method_Proc_42_44_1226FB00 (arg_C, var_B8, var_164, var_140, var_FC, var_DC, var_164)
  loc_1226ECB:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_1226ED2:         var_BC = CStr(0)
  loc_1226EDF:         Set var_98 = Me.TxtGrid
  loc_1226EE5:         Call 0.Method_Proc_42_44_1226FB00 (arg_C, var_B8, var_BC, var_140, var_FC)
  loc_1226EED:         var_B8.Text = var_DC
  loc_1226EFC:       End If
  loc_1226F09:       Set var_98 = Me.TxtGrid
  loc_1226F0F:       Call 0.Method_Proc_42_44_1226FB00 (arg_C, var_B8, var_BC, var_164)
  loc_1226F17:       var_140 = var_B8.Text
  loc_1226F2F:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1226F47:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1226F73:       var_1E0 = CVar(CStr(Format(CVar(var_BC), "0.000"))) 'String
  loc_1226F7B:       Set var_17C = Me.FGrid
  loc_1226F81:       LateIdCallSt
  loc_1226FA5:     End If
  loc_1226FA5:   End If
  loc_1226FA5: End If
  loc_1226FAA: Proc_42_44_1226FB0 = &HFF
End Sub

Public Sub Proc_42_45_141B594
  'Data Table: 4A4184
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_4A419C As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Variant
  Dim var_144 As Variant
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_154 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  loc_141AB40: On Error Goto loc_141B58B
  loc_141AB5A: If (Me.RecordCount > 0) Then
  loc_141AB6A:   var_CC = "Select DISTINCT K.DOCID,K.VDATE, GodownMast.Name as Location,GodownMast.Code as DepartCode,K.Vno,K.Vtype,K.VPrefix From KClStk K  left join GodownMast on GodownMast.Code=K.DepartCode Where DocID='"
  loc_141ABB3:   unk_4A419C.Execute CStr(var_CC & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_141ABDB:   Set var_128 = var_124 
  loc_141AC18:   Set var_124 = Me.Txt
  loc_141AC1E:   Call 0.Method_Proc_42_45_141B5940 (CInt(3), var_12C)
  loc_141AC26:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_141AC56:   var_AC = var_128.Fields.Item("vType")
  loc_141AC5E:   var_BC = var_AC.Value
  loc_141AC67:   var_100 = CStr(var_BC)
  loc_141AC75:   Set var_124 = Me.Txt
  loc_141AC7B:   Call 0.Method_Proc_42_45_141B5940 (CInt(0), var_12C)
  loc_141AC83:   var_12C.Tag = var_100
  loc_141ACC6:   Set var_98 = Me.Txt
  loc_141ACCC:   Call 0.Method_Proc_42_45_141B5940 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_141ACD4:   var_124 = var_AC.Tag
  loc_141ACED:   unk_4A419C.Execute var_12C & var_100 & "'", 0, var_138
  loc_141ACFD:    = var_12C.Item(var_124)
  loc_141AD05:    = var_138.Value
  loc_141AD14:   global_88 = CStr(var_124.Fields)
  loc_141AD64:   Set var_98 = Me.Txt
  loc_141AD6A:   Call 0.Method_Proc_42_45_141B5940 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_141AD8B:   unk_4A419C.Execute var_12C & var_100 & "'", 0, var_138
  loc_141AD9B:    = var_12C.Item()
  loc_141ADA3:    = var_138.Value
  loc_141ADBA:   Set var_140 = Me.Txt
  loc_141ADC0:   Call 0.Method_Proc_42_45_141B5940 (CInt(0), var_144)
  loc_141ADC8:   var_144.Text = CStr(var_AC.Tag.Fields)
  loc_141AE29:   Set var_124 = Me.Txt
  loc_141AE2F:   Call 0.Method_Proc_42_45_141B5940 (CInt(1), var_12C)
  loc_141AE37:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_141AE9F:   Set var_124 = Me.Txt
  loc_141AEA5:   Call 0.Method_Proc_42_45_141B5940 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_141AEAD:   var_12C.Text = 1
  loc_141AEFF:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_141AF49:   Set var_124 = Me.Txt
  loc_141AF4F:   Call 0.Method_Proc_42_45_141B5940 (CInt(4), var_12C)
  loc_141AF57:   var_12C.Tag = Proc_6_38_E69628(CVar(var_128.Fields.Item("DepartCode")))
  loc_141AFA1:   Set var_124 = Me.Txt
  loc_141AFA7:   Call 0.Method_Proc_42_45_141B5940 (CInt(4), var_12C)
  loc_141AFAF:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("Location")))
  loc_141AFC5:   Set var_128 = Nothing 
  loc_141AFD8:   Me.FGrid.Redraw = False
  loc_141AFF3:   Me.FGrid.Rows = 1
  loc_141AFFD:   var_8E = 1
  loc_141B03F:   var_DC = "Select S.*,I.Name as ItemName From KcLsTK S Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store' Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_141B056:   unk_4A419C.Execute CStr(var_DC & "' Order By I.Name"), var_120, -1
  loc_141B061:   Set var_88 = var_124
  loc_141B11E:   var_1A4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_8E) = "E"), "Modified By : ", "User : "))
  loc_141B163:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_1A4)))
  loc_141B23E:   var_1A4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_141B283:   Me.LblLDt.Caption = CStr(var_1A4 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_141B2CF:   If (var_88.RecordCount > 0) Then
  loc_141B2D2:     ' Referenced from: 141B4C2
  loc_141B2E1:     If Not(var_88.EOF) Then
  loc_141B2E4:       var_A8 = vbNullString
  loc_141B2EE:       Set var_98 = Me.FGrid
  loc_141B303:       Set var_1F0 = Me.FGrid
  loc_141B30A:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_141B312:       var_EC = CVar(CLng(0)) 'Long
  loc_141B31C:       var_BC = CVar(CStr(var_8E)) 'String
  loc_141B323:       LateIdCallSt
  loc_141B332:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141B33A:       var_110 = CVar(CLng(4)) 'Long
  loc_141B36A:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_141B371:       LateIdCallSt
  loc_141B38B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141B393:       var_110 = CVar(CLng(1)) 'Long
  loc_141B3C3:       var_DC = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_141B3CA:       LateIdCallSt
  loc_141B3E4:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141B3EC:       var_110 = CVar(CLng(2)) 'Long
  loc_141B41C:       var_DC = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_141B423:       LateIdCallSt
  loc_141B459:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_141B461:       var_154 = CVar(CLng(3)) 'Long
  loc_141B470:       var_CC = "0.000"
  loc_141B475:       var_DC = var_CC
  loc_141B48E:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_DC))) 'String
  loc_141B495:       LateIdCallSt
  loc_141B4AD:       Set var_1F0 = Nothing 
  loc_141B4B7:       var_8E = (var_8E + 1)
  loc_141B4BD:       var_88.MoveNext
  loc_141B4C2:       GoTo loc_141B2D2
  loc_141B4C5:     End If
  loc_141B4D8:     Me.FGrid.FixedRows = 1
  loc_141B4E0:   End If
  loc_141B4EE:   Me.FGrid.Redraw = True
  loc_141B4FC:   If (var_8E = 1) Then
  loc_141B512:     Me.FGrid.Rows = 1
  loc_141B538:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8E, var_1F0, var_120, 1, 1, var_154))) 'String
  loc_141B540:     Set var_AC = Me.FGrid
  loc_141B56D:     Me.FGrid.FixedRows = 1
  loc_141B575:   End If
  loc_141B578: Else
  loc_141B578:   Call Proc_42_47_F58668(FGrid.DispID_10000, var_BC, var_EC, var_1F0, var_DC)
  loc_141B57D: End If
  loc_141B57D: Call Proc_42_49_E84588(var_110, var_CC)
  loc_141B587: Set var_88 = Nothing
  loc_141B58A: Exit Sub
  loc_141B58B: ' Referenced from: 141AB40
  loc_141B58B: Proc_6_60_E63754(var_1F0)
  loc_141B590: Exit Sub
End Sub

Public Sub Proc_42_46_F964F8
  'Data Table: 4A4184
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4A419C As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F963B9: Set var_9C = Me.TopCtrl1
  loc_F963BF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F963C7: var_B0 = CStr()
  loc_F963D8: If (var_B0 = "Add") Then
  loc_F96408:   Set var_9C = Me.Txt
  loc_F9640E:   Call 0.Method_Proc_42_46_F964F80 (CInt(3), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_F9642F:   unk_4A419C.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F9643F:    = var_D4.Item()
  loc_F96447:    = var_E8.Value
  loc_F96474:   If (var_B4.Text.Fields > 0) Then
  loc_F9647D:     Call 0.Method_arg_50 (var_B0)
  loc_F9649E:     MsgBox("Duplicate Purch.Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F964B4:     Call Proc_42_51_114FD9C(MemVar_1F95044)
  loc_F964C7:     Set var_9C = Me.Txt
  loc_F964CD:     Call 0.Method_Proc_42_46_F964F80 (CInt(3), var_B4)
  loc_F964D5:     var_B4.Text = var_B0
  loc_F964E9:     Proc_42_46_F964F8 = 0
  loc_F964EF:   End If
  loc_F964EF: End If
  loc_F964EF: Proc_42_46_F964F8 = var_B0
End Sub

Public Sub Proc_42_47_F58668
  'Data Table: 4A4184
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F5854D: Me.LblVPrefix.Caption = vbNullString
  loc_F5855B: global_108 = vbNullString
  loc_F58565: global_112 = vbNullString
  loc_F58577: Set var_8C = Me.Txt
  loc_F5857D: Call 0.Method_Proc_42_47_F58668C (var_8E, var_86)
  loc_F5858D: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F585A3:   Set var_8C = Me.Txt
  loc_F585A9:   Call 0.Method_Proc_42_47_F586680 (CInt(var_86), var_98)
  loc_F585B1:   var_98.Text = vbNullString
  loc_F585CD:   Set var_8C = Me.Txt
  loc_F585D3:   Call 0.Method_Proc_42_47_F586680 (CInt(var_86), var_98)
  loc_F585DB:   var_98.Tag = vbNullString
  loc_F585EA: Next var_92 'Byte
  loc_F58603: Me.FGrid.Rows = 1
  loc_F58629: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F58631: Set var_98 = Me.FGrid
  loc_F5865E: Me.FGrid.FixedRows = 1
  loc_F58666: Exit Sub
End Sub

Public Sub Proc_42_48_F8DDEC(arg_C) 'F8DDEC
  'Data Table: 4A4184
  Dim var_98 As TextBox
  loc_F8DC9E: Set var_8C = Me.Txt
  loc_F8DCA4: Call 0.Method_Proc_42_48_F8DDECC (var_8E, var_86)
  loc_F8DCB4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F8DCCA:   Set var_8C = Me.Txt
  loc_F8DCD0:   Call 0.Method_Proc_42_48_F8DDEC0 (CInt(var_86), var_98)
  loc_F8DCD8:   var_98.Enabled = arg_C
  loc_F8DCE7: Next var_92 'Byte
  loc_F8DCFA: Set var_8C = Me.Txt
  loc_F8DD00: Call 0.Method_Proc_42_48_F8DDEC0 (CInt(1), var_98)
  loc_F8DD08: var_98.Enabled = False
  loc_F8DD21: Set var_8C = Me.Txt
  loc_F8DD27: Call 0.Method_Proc_42_48_F8DDEC0 (CInt(2), var_98)
  loc_F8DD2F: var_98.Enabled = False
  loc_F8DD45: Set var_8C = Me.TopCtrl1
  loc_F8DD4B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((MemVar_1F950B8 = 1))
  loc_F8DD60: Set var_98 = Me.TopCtrl1
  loc_F8DD66: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(( And (CStr() = "Edit")))
  loc_F8DD8C: If ( Or (CStr() = "Add")) Then
  loc_F8DD9C:   Set var_8C = Me.Txt
  loc_F8DDA2:   Call 0.Method_Proc_42_48_F8DDEC0 (CInt(2), var_98)
  loc_F8DDAA:   var_98.Enabled = True
  loc_F8DDB6: End If
  loc_F8DDC1: If (global_124 = "No") Then
  loc_F8DDD1:   Set var_8C = Me.Txt
  loc_F8DDD7:   Call 0.Method_Proc_42_48_F8DDEC0 (CInt(2), var_98)
  loc_F8DDDF:   var_98.Enabled = False
  loc_F8DDEB: End If
  loc_F8DDEB: Exit Sub
End Sub

Public Sub Proc_42_49_E84588
  'Data Table: 4A4184
  loc_E84534: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E84546:   Me.DGItem.Visible = False
  loc_E8454E: End If
  loc_E8456A: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_E8457C:   Me.DGDepart.Visible = False
  loc_E84584: End If
  loc_E84584: Exit Sub
End Sub

Public Sub Proc_42_50_F0ACD0
  'Data Table: 4A4184
  loc_F0ABF4: Call Proc_42_49_E84588()
  loc_F0AC04: Set var_88 = Me.Txt
  loc_F0AC0A: Call 0.Method_Proc_42_50_F0ACD00 (CInt(2))
  loc_F0AC33: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0AC36:   Exit Sub
  loc_F0AC37: End If
  loc_F0AC42: Set var_88 = Me.Txt
  loc_F0AC48: Call 0.Method_Proc_42_50_F0ACD00 (CInt(1), var_8C)
  loc_F0AC71: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0AC74:   Exit Sub
  loc_F0AC75: End If
  loc_F0ACAC: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0ACAF:   Call TopCtrl1_UnknownEvent_16()
  loc_F0ACB7: Else
  loc_F0ACBD:   Call 0.Method_arg_1E8 (var_88)
  loc_F0ACC5:   Call var_88.SetFocus
  loc_F0ACCE: End If
  loc_F0ACCE: Exit Sub
End Sub

Public Sub Proc_42_51_114FD9C
  'Data Table: 4A4184
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_180 As TextBox
  loc_114FA3D: var_90 = "KC"
  loc_114FA54: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_114FA85: Set var_A8 = Me.Txt
  loc_114FA8B: Call 0.Method_Proc_42_51_114FD9C0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_114FA9A: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_114FAA2: var_EC = -1 & var_CC 
  loc_114FAB6: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_114FAC1: Set var_8C = var_134
  loc_114FAFD: If (var_8C.RecordCount > 0) Then
  loc_114FB3C:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_114FB3F:     GoTo loc_114FBCC
  loc_114FB42:   End If
  loc_114FB73:   global_80 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_114FB9E:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_114FBB3:   var_CC = (var_AC.Value + 1)
  loc_114FBBB:   global_84 = CInt(var_CC)
  loc_114FBCC:   ' Referenced from: 114FB3F
  loc_114FBCC: End If
  loc_114FBF7: var_BC = Space((5 - Len(var_90)))
  loc_114FBFF: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_114FC13: var_EC = Space((5 - Len(global_80)))
  loc_114FC1B: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_114FC28: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_80))
  loc_114FC41: var_14C = Space((8 - Len(CStr(global_84))))
  loc_114FC49: var_15C = (var_130 + var_14C)
  loc_114FC58: var_17C = (var_15C + CVar(CStr(global_84)))
  loc_114FC63: global_72 = CStr(var_17C)
  loc_114FC99: Me.LblVPrefix.Caption = global_80
  loc_114FCB2: Set var_A8 = Me.Txt
  loc_114FCB8: Call 0.Method_Proc_42_51_114FD9C0 (CInt(3), var_AC)
  loc_114FCC0: var_AC.Text = global_72
  loc_114FCE2: Set var_A8 = Me.Txt
  loc_114FCE8: Call 0.Method_Proc_42_51_114FD9C0 (CInt(1), var_AC)
  loc_114FCF0: var_AC.Text = CStr(global_84)
  loc_114FD0D: Set var_A8 = Me.Txt
  loc_114FD13: Call 0.Method_Proc_42_51_114FD9C0 (CInt(0), var_AC)
  loc_114FD1B: var_AC.Tag = var_90
  loc_114FD60: Set var_134 = Me.Txt
  loc_114FD66: Call 0.Method_Proc_42_51_114FD9C0 (CInt(0), var_180)
  loc_114FD6E: var_180.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_114FD8A: var_88 = global_72
  loc_114FD92: Set var_8C = Nothing
  loc_114FD95: Proc_42_51_114FD9C = global_84
End Sub

Public Sub Proc_42_52_10124F4
  'Data Table: 4A4184
  Dim unk_4A419C As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_1012323: unk_4A419C.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Bill Entry' ", var_AC, -1
  loc_101232E: Set var_8C = var_B0
  loc_101234B: If (var_8C.RecordCount > 0) Then
  loc_1012368:   var_B8 = var_8C.Fields.Item("SDate")
  loc_10123CE:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_10123DF:     Set var_B0 = Me.Txt
  loc_10123E5:     Call 0.Method_Proc_42_52_10124F40 (CInt(2), var_B8, var_134)
  loc_10123ED:     var_B0 = var_B8.Text
  loc_1012438:     Set var_138 = Me.Txt
  loc_101243E:     Call 0.Method_Proc_42_52_10124F40 (CInt(2), var_13C, var_140)
  loc_1012446:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_1012477:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_101247F:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_10124AE:     If CBool(Not &HFF And var_120) Then
  loc_10124D2:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_10124E7:       Proc_42_52_10124F4 = 0
  loc_10124ED:     End If
  loc_10124ED:   End If
  loc_10124ED: End If
  loc_10124ED: Proc_42_52_10124F4 = 
End Sub

Public Sub Proc_42_53_E8AB98
  'Data Table: 4A4184
  loc_E8AB32: Set global_60 = New 
  loc_E8AB4F: Me.Connection15.Execute "Select Code,D.Name as Name From Depart D Order by Name", var_A8, -1
  loc_E8AB60: Set global_60 = var_88
  loc_E8AB77: CVarUnk
  loc_E8AB7C: VerifyVarObj
  loc_E8AB82: Set var_88 = Me.DGDepart
  loc_E8AB88: LateIdStAd
  loc_E8AB96: Exit Sub
End Sub

Public Sub Proc_42_54_10E469C(arg_C) '10E469C
  'Data Table: 4A4184
  Dim var_90 As String
  Dim unk_4A419C As Connection15
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_8C As Recordset15
  Dim var_F4 As Variant
  Dim var_B4 As Variant
  Dim var_114 As Variant
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_124 As String
  loc_10E43A8: var_90 = "SELECT Distinct Stock.Item, ItemMast.Name,Itemmast.IssueUnit As Unit FROM Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store' where GodownCode='" & arg_C
  loc_10E43B8: unk_4A419C.Execute var_90 & "' and RecdQty>0 Order By ItemMast.Name", var_B4, -1
  loc_10E43C3: Set var_8C = var_B8
  loc_10E43E6: Me.FGrid.Rows = 2
  loc_10E4401: Me.FGrid.Row = 1
  loc_10E441C: Me.FGrid.FixedRows = 1
  loc_10E4424: ' Referenced from: 10E468E
  loc_10E4433: If Not(var_8C.EOF) Then
  loc_10E443A:   Set var_D0 = Me.FGrid
  loc_10E4450:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4458:   var_F4 = CVar(CLng(0)) 'Long
  loc_10E4472:   var_114 = CVar(CStr(CLng(Me.FGrid.Row))) 'String
  loc_10E4479:   LateIdCallSt
  loc_10E44A4:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E44AC:   var_104 = CVar(CLng(4)) 'Long
  loc_10E44DC:   var_114 = CVar(CStr(var_8C.Fields.Item("Item").Value)) 'String
  loc_10E44E3:   LateIdCallSt
  loc_10E4510:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4518:   var_104 = CVar(CLng(1)) 'Long
  loc_10E4548:   var_114 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_10E454F:   LateIdCallSt
  loc_10E457C:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4584:   var_104 = CVar(CLng(2)) 'Long
  loc_10E45B4:   var_114 = CVar(CStr(var_8C.Fields.Item("Unit").Value)) 'String
  loc_10E45BB:   LateIdCallSt
  loc_10E45E8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E45F0:   var_F4 = CVar(CLng(3)) 'Long
  loc_10E45F5:   var_124 = "-1.00"
  loc_10E45FE:   LateIdCallSt
  loc_10E460E:   Set var_D0 = Nothing 
  loc_10E4615:   var_8C.MoveNext
  loc_10E4639:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10E463C:     var_A4 = vbNullString
  loc_10E4646:     Set var_B8 = Me.FGrid
  loc_10E4670:     var_A4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_10E467F:     Me.FGrid.Row = var_A4
  loc_10E468E:   End If
  loc_10E468E:   GoTo loc_10E4424
  loc_10E4691: End If
  loc_10E4696: Set var_8C = Nothing
  loc_10E4699: Exit Sub
End Sub
