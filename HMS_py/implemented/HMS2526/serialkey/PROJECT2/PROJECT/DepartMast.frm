VERSION 5.00
Begin VB.Form DepartMast
  Caption = "Department Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 1080
  ClientWidth = 11745
  ClientHeight = 10245
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
    Width = 11745
    Height = 450
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3270
    Top = 2580
    Width = 5625
    Height = 285
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin CommandButton CmdDefaPString
    Caption = "Printing String"
    BackColor = &HC0FFFF&
    Left = 480
    Top = 4710
    Width = 1665
    Height = 300
    TabIndex = 20
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox TxtdefaPString
    ForeColor = &HC00000&
    Left = 2145
    Top = 4710
    Width = 7815
    Height = 285
    TabIndex = 19
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
  Begin Frame FrmList1
    BackColor = &HFFC0C0&
    ForeColor = &HFF0000&
    Left = 10965
    Top = 4635
    Width = 1905
    Height = 1155
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin ListView ListView1
      Left = -645
      Top = 150
      Width = 1800
      Height = 1080
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 3270
    Top = 2895
    Width = 5625
    Height = 285
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 55
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
    Index = 4
    Left = 19830
    Top = 10755
    Width = 480
    Height = 240
    Visible = 0   'False
    Text = "No"
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture2
    Picture = "DepartMast.frx":0
    Left = 8610
    Top = 5925
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 13
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3270
    Top = 1950
    Width = 1935
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 20
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
    ForeColor = &HC00000&
    Left = 3270
    Top = 2265
    Width = 825
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 4
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
  Begin DataGrid DGHelp
    Left = 9210
    Top = 1650
    Width = 4185
    Height = 2010
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin CommonDialog CDLG
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11040
    Top = 3270
    Width = 1905
    Height = 1155
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 90
      Top = 30
      Width = 1800
      Height = 1080
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3270
    Top = 1635
    Width = 4320
    Height = 285
    TabIndex = 0
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
  Begin MSFlexGrid FGPoint
    Left = 8970
    Top = 3270
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 18
  End
  Begin Label Label1
    Caption = "Kot Printing Path"
    Index = 1
    ForeColor = &HC00000&
    Left = 1050
    Top = 2580
    Width = 1620
    Height = 240
    TabIndex = 25
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1920
    Top = 6150
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5295
    Top = 6150
    Width = 2790
    Height = 285
    TabIndex = 22
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 21
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
    Caption = "Printing Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 1065
    Top = 2895
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Caption = "Store Type"
    Index = 2
    ForeColor = &H0&
    Left = 18840
    Top = 10770
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Depand Nature Nature"
    Index = 12
    ForeColor = &HC00000&
    Left = 1050
    Top = 1950
    Width = 2115
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
  Begin Label Label1
    Caption = "Short Name"
    Index = 15
    ForeColor = &HC00000&
    Left = 1050
    Top = 2265
    Width = 1125
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
  Begin Shape Shape1
    Left = 17445
    Top = 10575
    Width = 1335
    Height = 360
    Visible = 0   'False
  End
  Begin Label Label1
    Index = 14
    BackColor = &H8080FF&
    ForeColor = &H0&
    Left = 17445
    Top = 10605
    Width = 1365
    Height = 330
    Visible = 0   'False
    TabIndex = 5
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Back Color"
    Index = 13
    ForeColor = &HC00000&
    Left = 16395
    Top = 10725
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 10
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
    Caption = "Department Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1065
    Top = 1635
    Width = 1725
    Height = 240
    TabIndex = 7
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

Attribute VB_Name = "DepartMast"

Private global_52 As Integer

Private Sub FGPoint_UnknownEvent_9 'E391E4
  'Data Table: 4AE39C
  loc_E391D8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E391DB:   Call DGHelp_UnknownEvent_9()
  loc_E391E0: End If
  loc_E391E0: Exit Sub
End Sub

Private Sub Label1_Click(Index As Integer) 'E9A65C
  'Data Table: 4AE39C
  Dim var_88 As CommonDialog
  Dim arg_20 As Variant
  Dim var_A4 As Label
  loc_E9A5E8: Set var_88 = Me.TopCtrl1
  loc_E9A5EE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E9A607: If (CStr() <> "Browse") Then
  loc_E9A614:   arg_20 = Me.CDLG._Action
  loc_E9A63C:   Set var_A0 = Me.Label1
  loc_E9A642:   Call 0.Method_Label1_Click0 (Index, var_A4)
  loc_E9A64A:   var_A4.BackColor = CLng(Me.CDLG.Color)
  loc_E9A65B: End If
  loc_E9A65B: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F38A54
  'Data Table: 4AE39C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3894B: Me.DGHelp.Visible = False
  loc_F3896A: If (Me.RecordCount > 0) Then
  loc_F389A9:   Set var_B4 = Me.Txt
  loc_F389AF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F389B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F389EA:   var_B0 = Me.Fields.Item("Name")
  loc_F38A09:   Set var_B4 = Me.Txt
  loc_F38A0F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F38A17:   var_B8.Text = CStr(var_B0.Value)
  loc_F38A2D: End If
  loc_F38A38: Set var_A8 = Me.Txt
  loc_F38A3E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F38A46: var_B0.SetFocus
  loc_F38A52: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70764
  'Data Table: 4AE39C
  loc_E70722: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E70739: Set var_8C = Me.FGPoint
  loc_E70755: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E70763: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'F5AAE4
  'Data Table: 4AE39C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5AA06: If (Me.ListView1.ListItems.Count > 0) Then
  loc_F5AA0D:   Set var_A8 = Me.ListView1
  loc_F5AA57:   Set var_C0 = Me.Txt
  loc_F5AA5D:   Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5AA65:   var_C4.Text = Me.ListView1.SelectedItem.Text
  loc_F5AA85: End If
  loc_F5AA91: Me.FrmList1.Visible = False
  loc_F5AAC1: Set var_9C = Me.Txt
  loc_F5AAC7: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(Me.ListView1.Tag))), var_A8)
  loc_F5AACF: var_A8.SetFocus
  loc_F5AAE3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA986C
  'Data Table: 4AE39C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EA97E0: On Error Goto loc_EA9866
  loc_EA9806: Call Proc_68_38_E7D144(Proc_5_1_100EC1C("ADD", Me))
  loc_EA9811: Call Proc_68_36_EDCFCC(global_60)
  loc_EA9821: Set var_8C = Me.Txt
  loc_EA9827: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA982F: var_94.SetFocus
  loc_EA9848: Me.LblUser.Caption = vbNullString
  loc_EA985D: Me.LblLDt.Caption = vbNullString
  loc_EA9865: Exit Sub
  loc_EA9866: ' Referenced from: EA97E0
  loc_EA9866: Proc_6_60_E63754(var_94)
  loc_EA986B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0358
  'Data Table: 4AE39C
  loc_EA02E0: On Error Goto loc_EA0351
  loc_EA031A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0340:   Call Proc_68_38_E7D144(Proc_5_1_100EC1C("INI", Me))
  loc_EA034B:   Call Proc_68_37_137A5A0(global_60)
  loc_EA0350: End If
  loc_EA0350: Exit Sub
  loc_EA0351: ' Referenced from: EA02E0
  loc_EA0351: Proc_6_60_E63754()
  loc_EA0356: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1288A70
  'Data Table: 4AE39C
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim unk_4AE3B8 As Connection15
  Dim var_11C As Variant
  Dim var_B8 As String
  loc_12884CC: On Error Goto loc_1288A21
  loc_12884DD: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_12884E0:   Exit Sub
  loc_12884E1: End If
  loc_1288513: var_D8 = "Item Group"
  loc_128855B: If (Proc_6_108_101061C(MemVar_1F95044, "ItemGrp", "RestCode", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_128855E:   Exit Sub
  loc_128855F: End If
  loc_1288591: var_D8 = "Menu Item"
  loc_12885D9: If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "RestCode", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_12885DC:   Exit Sub
  loc_12885DD: End If
  loc_1288657: If (Proc_6_108_101061C(MemVar_1F95044, "Stock", "DepartCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "Stock") = 0) Then
  loc_128865A:   Exit Sub
  loc_128865B: End If
  loc_1288692: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_11C, var_13C) = 6) Then
  loc_128869E:   unk_4AE3B8.BeginTrans var_D4
  loc_12886B4:   var_94 = Me.Bookmark 'Variant
  loc_128870E:   unk_4AE3B8.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_1288772:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1288780:   unk_4AE3B8.Execute CStr(var_11C), var_13C, -1
  loc_12887CB:   var_16C = 0
  loc_12887DE:   var_164 = 0
  loc_12887E9:   var_160 = 0
  loc_12887FC:   var_158 = 0
  loc_1288807:   var_154 = 0
  loc_128881A:   var_14C = 0
  loc_1288863:   Proc_154_5_10E3BD4(MemVar_1F95044, "Depart", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12888BA:   var_16C = 0
  loc_12888CD:   var_164 = 0
  loc_12888D8:   var_160 = 0
  loc_12888EB:   var_158 = 0
  loc_12888F6:   var_154 = 0
  loc_1288909:   var_14C = 0
  loc_1288949:   var_B8 = "RevMast"
  loc_1288952:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1288980:   unk_4AE3B8.CommitTrans
  loc_1288990:   Me.Requery -1
  loc_12889A0:   Me.Requery -1
  loc_12889C0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12889CD:     Me.Bookmark = var_94
  loc_12889D5:   Else
  loc_12889E9:     If (Me.EOF = 0) Then
  loc_12889F2:       Me.MoveLast
  loc_12889F7:     End If
  loc_12889F7:   End If
  loc_12889F7:   Call Proc_68_37_137A5A0(var_14C, 0, var_154, var_158)
  loc_1288A18:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_1288A20: End If
  loc_1288A20: Exit Sub
  loc_1288A21: ' Referenced from: 12884CC
  loc_1288A27: unk_4AE3B8.RollbackTrans
  loc_1288A34: Set var_A0 = Err()
  loc_1288A3A: Call 0.Method_arg_2C (var_B8, 0, var_160)
  loc_1288A5B: MsgBox(CVar(var_B8), &H10, " Deletion Message", var_11C, var_13C)
  loc_1288A6E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F7318C
  'Data Table: 4AE39C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F73044: On Error Goto loc_F73183
  loc_F73055: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_F73058:   Exit Sub
  loc_F73059: End If
  loc_F7307C: Call Proc_68_38_E7D144(Proc_5_1_100EC1C("EDIT", Me))
  loc_F73095: Set var_8C = Me.Txt
  loc_F7309B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F730AE: global_64 = var_94.Tag
  loc_F730C9: Set var_8C = Me.Txt
  loc_F730CF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F730D7: var_94.Enabled = False
  loc_F730F0: Set var_8C = Me.Txt
  loc_F730F6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F730FE: var_94.Enabled = False
  loc_F73117: Set var_8C = Me.Txt
  loc_F7311D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F73125: var_94.Enabled = False
  loc_F7313E: Set var_8C = Me.Txt
  loc_F73144: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_F7314C: var_94.Enabled = False
  loc_F73165: Me.LblUser.Caption = vbNullString
  loc_F7317A: Me.LblLDt.Caption = vbNullString
  loc_F73182: Exit Sub
  loc_F73183: ' Referenced from: F73044
  loc_F73183: Proc_6_60_E63754(global_60)
  loc_F73188: Exit Sub
  loc_F73189:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C3BC
  'Data Table: 4AE39C
  loc_E1C3B1: Me.Global.Unload Me
  loc_E1C3B9: Exit Sub
  loc_E1C3BA: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC7648
  'Data Table: 4AE39C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC75A8: On Error Goto loc_EC7640
  loc_EC75C2: If (Me.RecordCount <= 0) Then
  loc_EC75CB:   var_B8 = "Information"
  loc_EC75E6:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC75F6:   Exit Sub
  loc_EC75F7: End If
  loc_EC75FE: var_10C = "SELECT R.Code AS SEARCHCODE,Name as Department,RestType as Nature,ShortName From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_EC7605: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') AND OutletYN='N' And RestType Not In ('FOM','PURC') Order by R.Name"
  loc_EC7612: MemVar_1F95120 = Me
  loc_EC761F: Proc_6_126_F1C850("3000,2000,2000,1000")
  loc_EC763A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC763F: Exit Sub
  loc_EC7640: ' Referenced from: EC75A8
  loc_EC7640: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC7645: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E399C8
  'Data Table: 4AE39C
  loc_E399B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E399C0: Call Proc_68_37_137A5A0(global_60)
  loc_E399C5: Exit Sub
  loc_E399C6: Set arg_2400 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39968
  'Data Table: 4AE39C
  Dim arg_24FF As Double
  loc_E39958: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39960: Call Proc_68_37_137A5A0(global_60)
  loc_E39965: Exit Sub
  loc_E39966: arg_24FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39C08
  'Data Table: 4AE39C
  Dim arg_24FF As Double
  loc_E39BF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39C00: Call Proc_68_37_137A5A0(global_60)
  loc_E39C05: Exit Sub
  loc_E39C06: arg_24FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39BA8
  'Data Table: 4AE39C
  Dim arg_24FF As Double
  loc_E39B98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39BA0: Call Proc_68_37_137A5A0(global_60)
  loc_E39BA5: Exit Sub
  loc_E39BA6: arg_24FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1022058
  'Data Table: 4AE39C
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_4AE3B8 As Connection15
  Dim var_D2 As Integer
  Dim var_B8 As Variant
  loc_1021E38: On Error Goto loc_1022052
  loc_1021E44: var_A4 = Me.RecordCount
  loc_1021E52: If (var_A4 <= 0) Then
  loc_1021E55:   Exit Sub
  loc_1021E56: End If
  loc_1021E5D: var_A8 = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1021E64: var_88 = var_A8 & "' or LOGSITE_CODE='HO') AND OutletYN='N' Order by R.Name"
  loc_1021E72: If (var_88 = vbNullString) Then
  loc_1021E75:   Exit Sub
  loc_1021E76: End If
  loc_1021E8C: unk_4AE3B8.Execute var_88, var_C8, -1
  loc_1021EB6: Set var_CC = var_CC 
  loc_1021EC2: var_D2 = CreateFieldDefFile(var_CC, MemVar_1F950B4 & "\Department.ttx")
  loc_1021ECC: Set var_9C = var_CC
  loc_1021ED2: var_B8 = CVar(var_D2) 'Integer
  loc_1021ED5: var_98 = var_B8 'Variant
  loc_1021EF1: var_A8 = MemVar_1F950B4 & "\Department.RPT"
  loc_1021EFA: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_1021F05: MemVar_1F951E8 = var_CC
  loc_1021F20: Call 0.Method_arg_90 (var_CC, var_A4, var_9E, 1)
  loc_1021F28: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_1021F34: For var_D6 =  To CInt(var_A4): var_CC = var_D6 'Integer
  loc_1021F4D:   Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1021F55:   Call 0.Method_arg_20 (var_DC)
  loc_1021F5D:   Call 0.Method_arg_30 (var_A8)
  loc_1021F77:   If (var_A8 = "Title") Then
  loc_1021F81:     var_A8 = "'" & "Department List"
  loc_1021F9B:     Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1021FA3:     Call 0.Method_arg_20 (var_DC)
  loc_1021FAB:     Call 0.Method_arg_38 (var_A8 & "'")
  loc_1021FBE:   End If
  loc_1021FC1: Next var_D6 'Integer
  loc_1021FDF: Call 0.Method_arg_64 (var_CC, CVar(var_9C))
  loc_1021FE7: Call 0.Method_arg_2C (var_F0)
  loc_1021FF5: Call 0.Method_arg_150 (var_100)
  loc_1022000: Call 0.Method_arg_50 (var_A8)
  loc_102200A: Set var_DC = Nothing
  loc_1022024: Set var_CC = MemVar_1F951E8 
  loc_1022030: Proc_6_99_1484404(var_CC, 0, var_A8)
  loc_102203B: MemVar_1F951E8 = var_CC
  loc_102204E: Set var_9C = Nothing
  loc_1022051: Exit Sub
  loc_1022052: ' Referenced from: 1021E38
  loc_1022052: Proc_6_60_E63754(&HFF)
  loc_1022057: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AF00
  'Data Table: 4AE39C
  Dim Me As Recordset15
  loc_E0AEF7: Me.Requery -1
  loc_E0AEFC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1681C54
  'Data Table: 4AE39C
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_8A As Integer
  Dim unk_4AE3B8 As Connection15
  Dim var_B0 As String
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_88 As Recordset15
  Dim var_A4 As Fields15
  Dim var_A8 As Variant
  Dim var_D0 As Variant
  Dim var_92 As Integer
  Dim var_15C As Variant
  Dim var_F4 As TextBox
  Dim var_160 As String
  Dim var_168 As String
  Dim var_16C As String
  Dim var_17C As String
  Dim var_174 As Variant
  Dim var_180 As String
  Dim var_18C As String
  Dim var_188 As Label
  Dim var_19C As TextBox
  Dim var_1B8 As String
  Dim var_134 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_248 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_164 As String
  Dim var_178 As String
  Dim var_1A0 As String
  Dim var_290 As Variant
  Dim Me As Recordset15
  loc_1680508: On Error Goto loc_1681C39
  loc_1680516: Set var_A4 = Me.Txt
  loc_168051C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1680545: If (Proc_6_27_EA61EC(var_A8, "Name") = 0) Then
  loc_1680548:   Exit Sub
  loc_1680549: End If
  loc_1680554: Set var_A4 = Me.Txt
  loc_168055A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_1680583: If (Proc_6_27_EA61EC(var_A8, "Restaurant Type") = 0) Then
  loc_1680586:   Exit Sub
  loc_1680587: End If
  loc_1680592: Set var_A4 = Me.Txt
  loc_1680598: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_16805C1: If (Proc_6_27_EA61EC(var_A8, "Short Name") = 0) Then
  loc_16805C4:   Exit Sub
  loc_16805C5: End If
  loc_16805D0: Set var_A4 = Me.Txt
  loc_16805D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_1680602: Set var_AC = Me.Txt
  loc_1680608: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4)
  loc_1680641: If CBool((Trim(CVar(var_A8)) = "Kitchen") Or (Trim(CVar(var_F4)) = "Staff Kitchen")) Then
  loc_168064F:   Set var_A4 = Me.Txt
  loc_1680655:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_1680666:   Set var_AC = var_A8
  loc_168067E:   If (Proc_6_27_EA61EC(var_AC, "Printer Path") = 0) Then
  loc_1680681:     Exit Sub
  loc_1680682:   End If
  loc_1680682: End If
  loc_1680685: Call Proc_68_35_10886FC(var_146)
  loc_1680690: If (var_146 = &HFF) Then
  loc_1680693:   Exit Sub
  loc_1680694: End If
  loc_16806A2: unk_4AE3B8.BeginTrans var_14C
  loc_16806AB: Set var_A4 = Me.TopCtrl1
  loc_16806B1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_16806CA: If (CStr(var_A8) = "Add") Then
  loc_16806D8:   Set var_A4 = Me.Txt
  loc_16806DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_168070B:   var_F0 = CVar("Select IsNull(Max(CAST(SUBSTRING(Code,4,Len(Code)-3) AS INT)),0) AS tCode From (Select Code From GodownMast Union Select Code From Depart) as bb Where IsNumeric(substring(Code,4,Len(Code)-3))=1 AND Left(Code,3)='" & MemVar_1F95070) 'String
  loc_1680728:   unk_4AE3B8.Execute CStr(var_F0 & Left(CVar(var_A8), 1) & "'"), var_134, -1
  loc_1680733:   Set var_88 = var_AC
  loc_1680793:   If ((var_88.RecordCount > 0) And Not(IsNull(CVar(var_88.Fields.Item("TCode"))))) Then
  loc_16807B0:     var_A8 = var_88.Fields.Item("TCode")
  loc_16807C5:     var_D0 = (var_A8.Value + 1)
  loc_16807CA:     var_92 = CInt(Left(CVar(var_A8), 1))
  loc_16807DE:   Else
  loc_16807E0:     var_92 = 1
  loc_16807E3:   End If
  loc_16807EE:   Set var_A4 = Me.Txt
  loc_16807F4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_92)
  loc_1680818:   var_D0 = Left(CVar(var_A8), 1)
  loc_168085B:   var_B0 = CStr(1 & Format(var_92, "000"))
  loc_168086A:   Set var_AC = Me.Txt
  loc_1680870:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_B0, 1)
  loc_1680878:   var_F4.Tag = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, var_92)) & Ucase(var_D0)
  loc_16808BA:   Set var_A4 = Me.Txt
  loc_16808C0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Insert Into Depart(Code,Name,RestType,BackColor,ShortName,OutletYN,Site_Code,U_Name,U_EntDt,U_AE,Printer,StoreType,LOGSITE_cODE,PrintType) Values ('", var_2E4)
  loc_16808C8:   -1 = var_A8.Tag
  loc_16808D8:   var_168 = var_2E8 & var_B0 & "','"
  loc_16808EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_164)
  loc_16808F7:   var_168 = var_F4.Text
  loc_1680907:   var_17C = Me.Txt & var_164 & "','"
  loc_1680918:   Set var_170 = Me.Txt
  loc_168091E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_174, var_178)
  loc_1680926:   var_17C = var_174.Text
  loc_1680945:   Set var_184 = Me.Label1
  loc_168094B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_188)
  loc_1680979:   Set var_198 = Me.Txt
  loc_168097F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_19C)
  loc_16809AC:   var_1B8 = var_A8 & var_178 & "'," & CStr(var_188.BackColor) & ",'" & var_19C.Text & "','N','" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_16809C4:   Proc_6_7_F26918(var_D0, Date)
  loc_16809E4:   Set var_1BC = Me.Txt
  loc_16809EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C0)
  loc_1680A19:   Set var_1D4 = Me.Txt
  loc_1680A1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1D8)
  loc_1680A49:   var_248 = CVar(var_1B8 & "',") & var_D0 & ",'A','" & Trim(CVar(var_1C0)) & "','" & Trim(CVar(var_1D8)) & "','" & CVar(MemVar_1F95078) 
  loc_1680A61:   Set var_26C = Me.Txt
  loc_1680A67:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_270)
  loc_1680A95:   unk_4AE3B8.Execute CStr(var_248 & "','" & Trim(CVar(var_270)) & "')"), , 
  loc_1680B2B:   Set var_A4 = Me.Txt
  loc_1680B31:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Insert Into GodownMast(Code,Name,ShortName,U_Name,U_EntDt,U_AE,SYSYN,SITE_CODE,LOGSITE_CODE) Values ('")
  loc_1680B39:   var_1E8 = var_A8.Tag
  loc_1680B42:   var_160 = -1 & var_B0
  loc_1680B49:   var_168 = var_2E8 & var_B0 & "','"
  loc_1680B5A:   Set var_AC = Me.Txt
  loc_1680B60:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_164)
  loc_1680B68:   var_168 = var_F4.Text
  loc_1680B71:   var_16C = var_184 & var_164
  loc_1680B89:   Set var_170 = Me.Txt
  loc_1680B8F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_1680BA0:   var_180 = var_16C & "','" & var_174.Text
  loc_1680BC6:   Proc_6_7_F26918(var_D0, Date)
  loc_1680BF4:   var_15C = CVar(var_180 & "','" & MemVar_1F950C8 & "',") & var_D0 & ",'A','Y','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_1680C0B:   unk_4AE3B8.Execute CStr(var_15C & "')"), , 
  loc_1680C62:   Set var_A4 = Me.Txt
  loc_1680C68:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_1680C7C:   Call Proc_68_41_F5A3D4(var_A8.Text)
  loc_1680CA5:   var_B0 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & var_164
  loc_1680CAC:   var_164 = var_B0 & "','"
  loc_1680CBD:   Set var_A4 = Me.Txt
  loc_1680CC3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_2E8 & var_B0, var_164)
  loc_1680CCB:   var_15C = var_A8.Tag
  loc_1680CD4:   var_168 = -1 & var_2E8 & var_B0
  loc_1680CDB:   var_178 = var_168 & "','"
  loc_1680CEC:   Set var_AC = Me.Txt
  loc_1680CF2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_16C)
  loc_1680CFA:   var_178 = var_F4.Text
  loc_1680D0A:   var_18C = var_184 & var_16C & "','"
  loc_1680D1B:   Set var_170 = Me.Txt
  loc_1680D21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174, var_180)
  loc_1680D29:   var_18C = var_174.Text
  loc_1680D66:   Proc_6_7_F26918(var_D0, Date)
  loc_1680D81:   var_134 = CVar(var_164 & var_180 & "','Y','Dr','Amount','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_D0 & ",'A','" & CVar(MemVar_1F95078) 
  loc_1680D98:   unk_4AE3B8.Execute CStr(var_134 & "')"), , 
  loc_1680DE5: Else
  loc_1680E03:   Set var_A4 = Me.Txt
  loc_1680E09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Update Depart Set Name='")
  loc_1680E11:   var_2E4 = var_A8.Text
  loc_1680E1A:   var_160 = -1 & var_B0
  loc_1680E21:   var_168 = var_2E8 & var_B0 & "',RestType='"
  loc_1680E32:   Set var_AC = Me.Txt
  loc_1680E38:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4, var_164)
  loc_1680E40:   var_168 = var_F4.Text
  loc_1680E65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_174)
  loc_1680E97:   var_1A0 = var_1D4 & var_164 & "',BackColor=" & CStr(var_174.BackColor) & ",OutletYN='N',Site_Code='" & MemVar_1F95070 & "',U_Name='" & MemVar_1F950C8
  loc_1680EAF:   Proc_6_7_F26918(var_D0, Date)
  loc_1680ECF:   Set var_184 = Me.Txt
  loc_1680ED5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_188)
  loc_1680F04:   Set var_198 = Me.Txt
  loc_1680F0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_19C)
  loc_1680F21:   var_208 = CVar(var_1A0 & "',U_EntDt=") & var_D0 & ",U_AE='E',Printer='" & Trim(CVar(var_188)) & "',StoreType='" & Trim(CVar(var_19C)) 
  loc_1680F39:   Set var_1BC = Me.Txt
  loc_1680F3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1C0)
  loc_1680F6C:   var_2A0 = var_208 & "',PrintType='" & Trim(CVar(var_1C0)) & "' Where Code='" & CVar(global_64) 
  loc_1680F75:   var_2C0 = var_2A0 & "'" 
  loc_1680F83:   unk_4AE3B8.Execute CStr(var_2C0), , 
  loc_1681005:   Set var_A4 = Me.Txt
  loc_168100B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Update GodownMast Set Name='")
  loc_1681013:   var_1E8 = var_A8.Text
  loc_168101C:   var_160 = -1 & var_B0
  loc_1681023:   var_168 = var_2E8 & var_B0 & "',shortname='"
  loc_1681034:   Set var_AC = Me.Txt
  loc_168103A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F4, var_164)
  loc_1681042:   var_168 = var_F4.Text
  loc_1681052:   var_178 = Me.Label1 & var_164 & "',"
  loc_1681078:   Proc_6_7_F26918(var_D0, Date)
  loc_1681093:   var_134 = CVar(var_178 & "U_Name='" & MemVar_1F950C8 & "',U_EntDt=") & var_D0 & ",U_AE='E',SysYN='Y',SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_16810A9:   var_15C = var_134 & "' Where Code='" & CVar(global_64) 
  loc_16810C0:   unk_4AE3B8.Execute CStr(var_15C & "'"), , 
  loc_16810FE: End If
  loc_1681102: Set var_A4 = Me.TopCtrl1
  loc_1681108: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1681121: If (CStr() = "Add") Then
  loc_1681132:   Set var_A4 = Me.Txt
  loc_1681138:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_1681157:   If (var_A8.Text = "House Keeping") Then
  loc_168116A:     Set var_A4 = Me.Txt
  loc_1681170:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_1681178:     var_C0 = CVar(var_A8) 'Address
  loc_1681187:     var_F0 = ("I" + Trim(var_C0))
  loc_168118C:     var_98 = CStr(CVar(var_178 & "U_Name='" & MemVar_1F950C8 & "',U_EntDt="))
  loc_16811AF:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKISS','HKIR','" & var_98
  loc_16811D2:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Issue','House Keeping Issue','" & var_98 & "','',0,'Automatic',") 'String
  loc_16811D8:     Proc_6_104_ED68A8(var_C0, var_D0, var_2A0)
  loc_16811E0:     var_F0 = -1 & var_C0 
  loc_16811F3:     var_114 = CVar(var_178 & "U_Name='" & MemVar_1F950C8 & "',U_EntDt=") & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) 
  loc_168120E:     Proc_6_7_F26918(var_15C, Date)
  loc_168121F:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_1681237:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_168123F:     var_1E8 = var_A8.Tag
  loc_168125D:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F95070) 
  loc_1681287:     unk_4AE3B8.Execute CStr(var_248 & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_16812DF:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_16812F4:     Proc_6_7_F26918(var_C0, MemVar_1F950F4, CVar(var_B0 & "',"))
  loc_1681314:     Proc_6_7_F26918(var_114, MemVar_1F950FC, var_2C0 & var_C0 & ",")
  loc_168131C:     var_134 = -1 & var_114 
  loc_1681334:     var_15C = Year(MemVar_1F950F4)
  loc_168136A:     Proc_6_7_F26918(var_248, Date)
  loc_168138E:     var_2A0 = var_114 & "'," & ",'" & var_15C & "',0,'" & CVar(MemVar_1F95070) & "'," & var_248 & ",'" & CVar(MemVar_1F95078) & "')" 
  loc_168139C:     unk_4AE3B8.Execute CStr(var_2A0), Me.Txt, 
  loc_16813E4:     Set var_A4 = Me.Txt
  loc_16813EA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_16813F2:     var_C0 = CVar(var_A8) 'Address
  loc_1681401:     var_F0 = ("R" + Trim(var_C0))
  loc_1681406:     var_98 = CStr(var_2C0 & var_C0)
  loc_1681429:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKIR','HKIR','" & var_98
  loc_168144C:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Received','House Keeping Received','" & var_98 & "','',0,'Automatic',") 'String
  loc_1681452:     Proc_6_104_ED68A8(var_C0, var_D0, var_2A0)
  loc_168145A:     var_F0 = -1 & var_C0 
  loc_168146D:     var_114 = var_2C0 & var_C0 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) 
  loc_1681488:     Proc_6_7_F26918(var_15C, Date)
  loc_1681499:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_16814B1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_16814B9:     var_1E8 = var_A8.Tag
  loc_16814D7:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F95070) 
  loc_1681501:     unk_4AE3B8.Execute CStr(var_248 & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1681559:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_168156E:     Proc_6_7_F26918(var_C0, MemVar_1F950F4, CVar(var_B0 & "',"))
  loc_168158E:     Proc_6_7_F26918(var_114, MemVar_1F950FC, var_2C0 & var_C0 & ",")
  loc_1681596:     var_134 = -1 & var_114 
  loc_16815AE:     var_15C = Year(MemVar_1F950F4)
  loc_16815E4:     Proc_6_7_F26918(var_248, Date)
  loc_1681608:     var_2A0 = var_114 & "'," & ",'" & var_15C & "',0,'" & CVar(MemVar_1F95070) & "'," & var_248 & ",'" & CVar(MemVar_1F95078) & "')" 
  loc_1681616:     unk_4AE3B8.Execute CStr(var_2A0), Me.Txt, 
  loc_168165E:     Set var_A4 = Me.Txt
  loc_1681664:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_168166C:     var_C0 = CVar(var_A8) 'Address
  loc_168167B:     var_F0 = ("M" + Trim(var_C0))
  loc_1681680:     var_98 = CStr(var_2C0 & var_C0)
  loc_16816A3:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKROP','HKROP','" & var_98
  loc_16816C6:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Room Opening','House Keeping Room Opening','" & var_98 & "','',0,'Automatic',") 'String
  loc_16816CC:     Proc_6_104_ED68A8(var_C0, var_D0, var_2A0)
  loc_16816D4:     var_F0 = -1 & var_C0 
  loc_16816E7:     var_114 = var_2C0 & var_C0 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) 
  loc_1681702:     Proc_6_7_F26918(var_15C, Date)
  loc_1681713:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_168172B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_1681733:     var_1E8 = var_A8.Tag
  loc_1681751:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F95070) 
  loc_168177B:     unk_4AE3B8.Execute CStr(var_248 & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_16817D3:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_16817E8:     Proc_6_7_F26918(var_C0, MemVar_1F950F4, CVar(var_B0 & "',"))
  loc_1681808:     Proc_6_7_F26918(var_114, MemVar_1F950FC, var_2C0 & var_C0 & ",")
  loc_1681810:     var_134 = -1 & var_114 
  loc_1681828:     var_15C = Year(MemVar_1F950F4)
  loc_168185E:     Proc_6_7_F26918(var_248, Date)
  loc_1681882:     var_2A0 = var_114 & "'," & ",'" & var_15C & "',0,'" & CVar(MemVar_1F95070) & "'," & var_248 & ",'" & CVar(MemVar_1F95078) & "')" 
  loc_1681890:     unk_4AE3B8.Execute CStr(var_2A0), Me.Txt, 
  loc_16818D8:     Set var_A4 = Me.Txt
  loc_16818DE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_16818E6:     var_C0 = CVar(var_A8) 'Address
  loc_16818F5:     var_F0 = ("O" + Trim(var_C0))
  loc_16818FA:     var_98 = CStr(var_2C0 & var_C0)
  loc_168191D:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKOP','HKOP','" & var_98
  loc_1681940:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Opening','House Keeping Opening','" & var_98 & "','',0,'Automatic',") 'String
  loc_1681946:     Proc_6_104_ED68A8(var_C0, var_D0, var_2A0)
  loc_168194E:     var_F0 = -1 & var_C0 
  loc_1681961:     var_114 = var_2C0 & var_C0 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) 
  loc_168197C:     Proc_6_7_F26918(var_15C, Date)
  loc_168198D:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_16819A5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_16819AD:     var_1E8 = var_A8.Tag
  loc_16819CB:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F95070) 
  loc_16819F5:     unk_4AE3B8.Execute CStr(var_248 & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1681A4D:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1681A5A:     var_E0 = MemVar_1F950F4
  loc_1681A62:     Proc_6_7_F26918(var_C0, var_E0, CVar(var_B0 & "',"))
  loc_1681A82:     Proc_6_7_F26918(var_114, MemVar_1F950FC, var_2C0 & var_C0 & ",")
  loc_1681A8A:     var_134 = -1 & var_114 
  loc_1681AD8:     Proc_6_7_F26918(var_248, Date)
  loc_1681AF3:     var_290 = var_114 & "'," & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_248 & ",'" & CVar(MemVar_1F95078) 
  loc_1681B0A:     unk_4AE3B8.Execute CStr(var_290 & "')"), Me.Txt, 
  loc_1681B42:   End If
  loc_1681B42: End If
  loc_1681B48: unk_4AE3B8.CommitTrans
  loc_1681B5B: Set var_A4 = Me.Txt
  loc_1681B61: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_1681B7D: var_8A = 0
  loc_1681B8B: Me.Requery -1
  loc_1681B9B: Me.Requery -1
  loc_1681BC5: Me.Find "SearchCode ='" & var_A8.Tag & "'", 0, 1
  loc_1681BD5: Set var_A4 = Me.TopCtrl1
  loc_1681BDB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E0)
  loc_1681BF4: If (CStr(var_8A) = "Add") Then
  loc_1681BF7:   Call TopCtrl1_UnknownEvent_A()
  loc_1681BFC:   Exit Sub
  loc_1681BFD: End If
  loc_1681C20: Call Proc_68_38_E7D144(Proc_5_1_100EC1C("INI", Me))
  loc_1681C2B: Call Proc_68_37_137A5A0(global_60)
  loc_1681C35: Set var_88 = Nothing
  loc_1681C38: Exit Sub
  loc_1681C39: ' Referenced from: 1680508
  loc_1681C3F: If (var_8A = &HFF) Then
  loc_1681C48:   unk_4AE3B8.RollbackTrans
  loc_1681C4D: End If
  loc_1681C4D: Proc_6_60_E63754()
  loc_1681C52: Exit Sub
  loc_1681C53: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C80D8
  'Data Table: 4AE39C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_11C7C96: Set var_88 = Me.Txt
  loc_11C7C9C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C7CAA: Proc_6_74_E23240(var_8C)
  loc_11C7CB6: Call Proc_68_39_EB72C4(var_8C)
  loc_11C7CBE: var_92 = Index
  loc_11C7CC9: If (var_92 = CInt(0)) Then
  loc_11C7CE3:   If (Me.RecordCount > 0) Then
  loc_11C7CF1:     Set var_8C = Me.FGPoint
  loc_11C7D09:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_11C7D17:   End If
  loc_11C7D65:   Set var_88 = Me.Txt
  loc_11C7D6B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C7D73:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C7D8B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11C7D8E:     Exit Sub
  loc_11C7D8F:   End If
  loc_11C7D9C:   Set var_88 = Me.Txt
  loc_11C7DA2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C7DAA:   var_A0 = var_8C.Text
  loc_11C7DBC:   var_B0 = "Name"
  loc_11C7DF7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11C7E00:     Me.MoveFirst
  loc_11C7E23:     Set var_88 = Me.Txt
  loc_11C7E29:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C7E31:     0 = var_8C.Text
  loc_11C7E4A:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_11C7E5F:   End If
  loc_11C7E62: Else
  loc_11C7E6A:   If (var_92 = CInt(1)) Then
  loc_11C7E7A:     ReDim var_F0(0 To 6)
  loc_11C7E91:     var_F0(0) = "Kitchen"
  loc_11C7EA0:     var_F0(1) = "Staff Kitchen"
  loc_11C7EAF:     var_F0(2) = "Production Kitchen"
  loc_11C7EBE:     var_F0(3) = "House Keeping"
  loc_11C7ECD:     var_F0(4) = "Laundry"
  loc_11C7EDC:     var_F0(5) = "Store"
  loc_11C7EEB:     var_F0(6) = "Consumable Store"
  loc_11C7F02:     global_68 = Array(var_F0)
  loc_11C7F0D:     Set var_B4 = Me.ListView
  loc_11C7F28:     Set var_8C = Me.Txt
  loc_11C7F42:     Set global_84 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_11C7F60:     Set var_88 = Me.Txt
  loc_11C7F66:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C7F6E:     global_68 = var_8C.Text
  loc_11C7F80:     Set var_90 = Me.Txt
  loc_11C7F86:     Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_11C7F8E:     var_B4.Tag = 7
  loc_11C7FA4:   Else
  loc_11C7FAC:     If (var_92 = CInt(5)) Then
  loc_11C7FBC:       ReDim var_F0(0 To 5)
  loc_11C7FD3:       var_F0(0) = "3 INCH RUNNING PAPER (NORMAL PRINTER)"
  loc_11C7FE2:       var_F0(1) = "3 INCH RUNNING PAPER (THERMAL PRINTER)"
  loc_11C7FF1:       var_F0(2) = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)"
  loc_11C8000:       var_F0(3) = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)"
  loc_11C800F:       var_F0(4) = "3 INCH RUNNING PAPER WINPRINT"
  loc_11C801E:       var_F0(5) = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_11C8035:       global_68 = Array(var_F0)
  loc_11C8040:       Set var_B4 = Me.ListView1
  loc_11C805B:       Set var_8C = Me.Txt
  loc_11C8075:       Set global_84 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_68)
  loc_11C8093:       Set var_88 = Me.Txt
  loc_11C8099:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C80A1:       6 = var_8C.Text
  loc_11C80B3:       Set var_90 = Me.Txt
  loc_11C80B9:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_11C80C1:       var_B4.Tag = global_68
  loc_11C80D4:     End If
  loc_11C80D4:   End If
  loc_11C80D4: End If
  loc_11C80D4: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12A5B54
  'Data Table: 4AE39C
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As ListView
  Dim var_9C As DataGrid
  Dim var_10C As Variant
  Dim var_160 As String
  loc_12A556E: If (CLng(Shift) = &H1B) Then
  loc_12A5571:   Call Proc_68_39_EB72C4()
  loc_12A5576:   Exit Sub
  loc_12A5577: End If
  loc_12A557A: var_88 = KeyCode
  loc_12A5585: If (var_88 = CInt(0)) Then
  loc_12A558C:   Set var_A4 = Me.DGHelp
  loc_12A55A0:   Set var_9C = Nothing
  loc_12A55D2:   Proc_6_79_11AD564(var_A4, Me.Txt, CInt(0), global_56, Shift)
  loc_12A55ED:   var_AC = Me.RecordCount
  loc_12A563D:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12A564B:     Set var_90 = Me.FGPoint
  loc_12A5663:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_12A5671:   End If
  loc_12A5674: Else
  loc_12A567C:   If (var_88 = CInt(1)) Then
  loc_12A56A1:     Set var_8C = Me.Txt
  loc_12A56A7:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_12A56AF:     var_9C = var_90.Left
  loc_12A56C1:     Set var_9C = Me.Txt
  loc_12A56C7:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_12A56CF:     0 = var_A4.Top
  loc_12A56E1:     Set var_A8 = Me.Txt
  loc_12A56E7:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_12A56EF:     var_B8 = var_B4.Height
  loc_12A5701:     Set var_BC = Me.Txt
  loc_12A5707:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12A570F:     var_C4 = var_C0.Width
  loc_12A5757:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12A577E:   Else
  loc_12A5786:     If (var_88 = CInt(5)) Then
  loc_12A57AB:       Set var_8C = Me.Txt
  loc_12A57B1:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_12A57B9:       CInt((var_B0 + var_B8)) = var_90.Left
  loc_12A57CB:       Set var_9C = Me.Txt
  loc_12A57D1:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_12A57D9:       CInt(var_C4) = var_A4.Top
  loc_12A57EB:       Set var_A8 = Me.Txt
  loc_12A57F1:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_12A57F9:       1820 = var_B4.Height
  loc_12A580B:       Set var_BC = Me.Txt
  loc_12A5811:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12A5819:       var_C4 = var_C0.Width
  loc_12A5861:       Proc_6_65_1194DE4(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_12A5885:     End If
  loc_12A5885:   End If
  loc_12A5885: End If
  loc_12A589F: Set var_90 = Me.ListView1
  loc_12A58BC: var_10C = Me.DGHelp.Visible
  loc_12A58DB: If (((CBool(Me.ListView.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_10C) = 0)) Then
  loc_12A58FC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_12A5907:     Call Txt_Validate(KeyCode)
  loc_12A5912:     If (var_86 = &HFF) Then
  loc_12A5915:       Exit Sub
  loc_12A5916:     End If
  loc_12A594D:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_15C) = 6) Then
  loc_12A5950:       Call TopCtrl1_UnknownEvent_16()
  loc_12A5955:     End If
  loc_12A5955:     Exit Sub
  loc_12A5956:   End If
  loc_12A596B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12A5974:     Proc_6_75_E5335C(Shift, arg_14, &HFF, CInt(var_AC))
  loc_12A5987:     Set var_8C = Me.Txt
  loc_12A598D:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_160, CInt((var_B0 + var_B8)))
  loc_12A5995:     CInt(var_C4) = var_90.Text
  loc_12A59AC:     If (var_160 = "Kitchen") Then
  loc_12A59BC:       Set var_8C = Me.Txt
  loc_12A59C2:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_90, &HFF)
  loc_12A59CA:       var_90.Visible = True
  loc_12A59E1:       Set var_8C = Me.Label1
  loc_12A59E7:       Call 0.Method_Txt_KeyDown0 (2, var_90)
  loc_12A59EF:       var_90.Visible = True
  loc_12A5A08:       Set var_8C = Me.Txt
  loc_12A5A0E:       Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12A5A16:       var_90.Visible = True
  loc_12A5A2D:       Set var_8C = Me.Label1
  loc_12A5A33:       Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_12A5A3B:       var_90.Visible = True
  loc_12A5A4A:     Else
  loc_12A5A57:       Set var_8C = Me.Txt
  loc_12A5A5D:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_90)
  loc_12A5A65:       var_90.Visible = False
  loc_12A5A7C:       Set var_8C = Me.Label1
  loc_12A5A82:       Call 0.Method_Txt_KeyDown0 (2, var_90)
  loc_12A5A8A:       var_90.Visible = False
  loc_12A5AA3:       Set var_8C = Me.Txt
  loc_12A5AA9:       Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12A5AB1:       var_90.Visible = False
  loc_12A5AC8:       Set var_8C = Me.Label1
  loc_12A5ACE:       Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_12A5AD6:       var_90.Visible = False
  loc_12A5AF0:       Set var_8C = Me.Txt
  loc_12A5AF6:       Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12A5AFE:       var_90.Text = vbNullString
  loc_12A5B0A:     End If
  loc_12A5B0A:   End If
  loc_12A5B14:   If (CLng(Shift) = &H26) Then
  loc_12A5B1B:     Set var_8C = Me.TopCtrl1
  loc_12A5B21:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_12A5B3A:     If (CStr() = "Add") Then
  loc_12A5B45:       If (KeyCode <> CInt(0)) Then
  loc_12A5B4E:         Proc_6_76_E533C8(Shift)
  loc_12A5B53:       End If
  loc_12A5B53:     End If
  loc_12A5B53:   End If
  loc_12A5B53: End If
  loc_12A5B53: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E21070
  'Data Table: 4AE39C
  Dim arg_10 As Integer
  loc_E21053: Proc_6_58_E06050(arg_10)
  loc_E2105E: Proc_6_133_E7FB08(var_94)
  loc_E21067: arg_10 = CInt(var_94)
  loc_E2106D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F98200
  'Data Table: 4AE39C
  Dim var_86 As Integer
  loc_F98097: var_86 = KeyCode
  loc_F980A2: If (var_86 = CInt(0)) Then
  loc_F980C1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F980CE:     var_A4 = "Name"
  loc_F980ED:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_F9811F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F9812D:   End If
  loc_F98130: Else
  loc_F98138:   If (var_86 = CInt(1)) Then
  loc_F98156:     If (Me.FrmList.Visible = &HFF) Then
  loc_F98185:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F98195:     End If
  loc_F98198:   Else
  loc_F981A0:     If (var_86 = CInt(5)) Then
  loc_F981BE:       If (Me.FrmList1.Visible = &HFF) Then
  loc_F981ED:         Proc_6_64_F299E8(Me.ListView1, Me.Txt, KeyCode, Shift, global_84)
  loc_F981FD:       End If
  loc_F981FD:     End If
  loc_F981FD:   End If
  loc_F981FD: End If
  loc_F981FD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46E6C
  'Data Table: 4AE39C
  loc_E46E4A: Set var_88 = Me.Txt
  loc_E46E50: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46E5E: Proc_6_73_E23294(var_8C)
  loc_E46E6A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '118AC0C
  'Data Table: 4AE39C
  Dim var_86 As Integer
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_B8 As Variant
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_B0 As Integer
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim unk_4AE3B8 As Connection15
  loc_118A833: var_86 = Cancel
  loc_118A83E: If (var_86 = CInt(0)) Then
  loc_118A84C:   Set var_8C = Me.Txt
  loc_118A852:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_118A878:   Set var_B4 = Me.Txt
  loc_118A87E:   Call 0.Method_Txt_Validate0 (CInt(0), var_B8)
  loc_118A886:   var_B8.Text = CStr(Trim(CVar(var_90)))
  loc_118A8A1:   Call Proc_68_35_10886FC(var_BE)
  loc_118A8AC:   If (var_BE = &HFF) Then
  loc_118A8B1:     arg_10 = &HFF
  loc_118A8B4:     Exit Sub
  loc_118A8B5:   End If
  loc_118A8C0:   Set var_8C = Me.Txt
  loc_118A8C6:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_118A8CE:   var_BC = "Name"
  loc_118A8EF:   If (Proc_6_27_EA61EC(var_90, var_BC) = 0) Then
  loc_118A8F4:     arg_10 = &HFF
  loc_118A8F7:     Exit Sub
  loc_118A8F8:   End If
  loc_118A8FB: Else
  loc_118A903:   If (var_86 = CInt(1)) Then
  loc_118A913:     Set var_8C = Me.Txt
  loc_118A919:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC)
  loc_118A938:     If (var_BC <> vbNullString) Then
  loc_118A959:       var_BC = Me.ListView.SelectedItem.Text
  loc_118A96B:       Set var_B4 = Me.Txt
  loc_118A971:       Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_BC)
  loc_118A979:       var_B8.Text = Me.ListView.SelectedItem.Text
  loc_118A992:     Else
  loc_118A998:       var_B0 = 1
  loc_118A9B2:       Set var_90 = Me.ListView.ListItems
  loc_118A9B8:       var_B0 = var_90.ControlDefault
  loc_118A9C0:       var_B4 = var_B4.Default
  loc_118A9D2:       Set var_B8 = Me.Txt
  loc_118A9D8:       Call 0.Method_Txt_Validate0 (Cancel, var_D4, var_BC)
  loc_118A9E0:       var_D4.Text = var_BC
  loc_118A9FC:     End If
  loc_118A9FF:   Else
  loc_118AA07:     If (var_86 = CInt(2)) Then
  loc_118AA14:       Set var_8C = Me.Txt
  loc_118AA1A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118AA22:       var_A0 = CVar(var_90) 'Address
  loc_118AA3F:       Set var_B4 = Me.Txt
  loc_118AA45:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_118AA4D:       var_B8.Text = CStr(Trim(var_A0))
  loc_118AA69:       Set var_8C = Me.TopCtrl1
  loc_118AA6F:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_118AA77:       var_BC = CStr()
  loc_118AA88:       If (var_BC = "Add") Then
  loc_118AAB7:         Set var_8C = Me.Txt
  loc_118AABD:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC, "Select Count(*) From Depart Where OutletYN='N' AND ShortName='", var_A0, -1)
  loc_118AADE:         unk_4AE3B8.Execute var_B8 & var_BC & "'", 0, var_D4
  loc_118AAEE:          = var_B8.Item()
  loc_118AAF6:          = var_D4.Value
  loc_118AB23:         If (var_90.Text.Fields > 0) Then
  loc_118AB47:           MsgBox("Duplicate ShortName", &H40, "Information", var_10C, var_12C)
  loc_118AB59:           arg_10 = &HFF
  loc_118AB5C:           Exit Sub
  loc_118AB5D:         End If
  loc_118AB5D:       End If
  loc_118AB60:     Else
  loc_118AB68:       If (var_86 = CInt(4)) Then
  loc_118AB75:         Set var_8C = Me.Txt
  loc_118AB7B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118ABB6:         If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_118ABC6:           Set var_8C = Me.Txt
  loc_118ABCC:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118ABD4:           var_90.Text = "Yes"
  loc_118ABE3:         Else
  loc_118ABF0:           Set var_8C = Me.Txt
  loc_118ABF6:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118ABFE:           var_90.Text = "No"
  loc_118AC0A:         End If
  loc_118AC0A:       End If
  loc_118AC0A:     End If
  loc_118AC0A:   End If
  loc_118AC0A: End If
  loc_118AC0A: Exit Sub
End Sub

Private Sub CmdDefaPString_Click() 'EEB018
  'Data Table: 4AE39C
  Dim var_98 As Variant
  Dim var_B0 As Variant
  loc_EEAF89: var_98 = Me.Global.Printer.DragMode
  loc_EEAFAC: var_B0 = Me.var_98.Printer.Parent
  loc_EEAFEC: Me.TxtdefaPString.Text = CStr(var_98) & "," & CStr(var_B0) & "," & CStr(Me.var_B0.Printer.DragIcon)
  loc_EEB016: Exit Sub
End Sub

Private Sub Form_Load() '10762F8
  'Data Table: 4AE39C
  Dim var_8C As Label
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_D8 As DataGrid
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_1076068: On Error Goto loc_10762F2
  loc_107607A: Me.LblUser.Left = CDbl(13500)
  loc_1076091: Me.LblUser.Top = CDbl(7800)
  loc_10760A8: Me.LblLDt.Top = CDbl(8160)
  loc_10760BF: Me.LblLDt.Left = CDbl(13500)
  loc_10760CE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10760DD: Set var_8C = Me.TopCtrl1
  loc_10760E3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10760F1: Call 0.Method_arg_50 (var_B0)
  loc_1076101: Set var_8C = Me.TopCtrl1
  loc_1076107: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1076120: Set var_8C = Me.Txt
  loc_1076126: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_1076145: Me.DGHelp.Left = CVar(var_C4.Left)
  loc_1076161: Set var_CC = Me.Txt
  loc_1076167: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_1076182: Set var_8C = Me.Txt
  loc_1076188: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_10761A0: var_9C = CVar(((var_C4.Top + var_D0.Height) + CDbl(&H1E))) 'Single
  loc_10761A9: Set var_D8 = Me.DGHelp
  loc_10761AF: var_D8.Top = CVar(var_C4.Left)
  loc_10761DD: Me.var_D8.CursorLocation = 3
  loc_1076207: var_C0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' And RestType Not In ('FOM') Order by Name") 'String
  loc_1076225: CVarUnk
  loc_107622A: VerifyVarObj
  loc_1076230: Set var_8C = Me.DGHelp
  loc_1076236: LateIdStAd
  loc_1076260: Me.DGHelp.CursorLocation = 3
  loc_1076283: var_B0 = "SELECT R.Code AS SEARCHCODE,R.Name,R.StoreType,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,R.RestType,R.BackColor,R.ShortName,R.Printer,R.SITE_CODE,R.LOGSITE_CODE,R.PrintType From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1076294: r_C0, CVar(MemVar_1F95044), 3 CVar(var_B0 & "' or LOGSITE_CODE='HO')  AND OutletYN='N' And RestType Not In ('FOM','PURC') Order by R.Name"), CVar(MemVar_1F95044), 3
  loc_10762AB: Set var_8C = Me
  loc_10762C2: Call Proc_68_38_E7D144(Proc_5_1_100EC1C("INI", var_8C, New, 1, -1), var_8C, New)
  loc_10762D6: Call 0.Method_arg_160 (var_8C, 1)
  loc_10762E4: Call 0.Method_arg_164 (var_8C)
  loc_10762EC: Call Proc_68_37_137A5A0(-1)
  loc_10762F1: Exit Sub
  loc_10762F2: ' Referenced from: 1076068
  loc_10762F2: Proc_6_60_E63754()
  loc_10762F7: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9978
  'Data Table: 4AE39C
  Dim var_8C As Label
  loc_ED98D6: Call 0.Method_arg_50 (var_88)
  loc_ED98E8: Me.LblFormCaption.Caption = var_88
  loc_ED9901: Me.LblFormCaption.Left = CDbl(0)
  loc_ED990D: Set var_A0 = Me.TopCtrl1
  loc_ED9913: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED9920: Set var_8C = Me.TopCtrl1
  loc_ED9926: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED9940: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED995B: Call 0.Method_arg_100 (var_B8)
  loc_ED996D: Me.LblFormCaption.Width = var_B8
  loc_ED9975: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E41B14
  'Data Table: 4AE39C
  loc_E41AEF: Set global_60 = Nothing
  loc_E41B01: Set global_56 = Nothing
  loc_E41B0D: global_52 = 0
  loc_E41B10: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B3BC
  'Data Table: 4AE39C
  loc_E5B384: Set var_88 = Me.TopCtrl1
  loc_E5B38A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5B3AD: If ((CStr() <> "Browse") And (global_52 = 0)) Then
  loc_E5B3B5:   Call Form_Unload(&HFF)
  loc_E5B3BA: End If
  loc_E5B3BA: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E264F4
  'Data Table: 4AE39C
  loc_E264D9: If (global_52 = &HFF) Then
  loc_E264E9:   Me.Global.Unload Me
  loc_E264F1: End If
  loc_E264F1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AC08
  'Data Table: 4AE39C
  loc_E2ABE0: On Error Goto loc_E2AC00
  loc_E2ABF7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2ABFF: Exit Sub
  loc_E2AC00: ' Referenced from: E2ABE0
  loc_E2AC00: Proc_6_60_E63754(Shift)
  loc_E2AC05: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5B1EC
  'Data Table: 4AE39C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5B10E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5B115:   Set var_A8 = Me.ListView
  loc_F5B15F:   Set var_C0 = Me.Txt
  loc_F5B165:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5B16D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5B18D: End If
  loc_F5B199: Me.FrmList.Visible = False
  loc_F5B1C9: Set var_9C = Me.Txt
  loc_F5B1CF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5B1D7: var_A8.SetFocus
  loc_F5B1EB: Exit Sub
End Sub

Public Function global_52Get() '4AF250
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4AF25F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E941D0
  'Data Table: 4AE39C
  Dim Me As Recordset15
  loc_E9415E: On Error Goto loc_E941C7
  loc_E94167: Me.MoveFirst
  loc_E94191: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E941B9: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E941C1: Call Proc_68_37_137A5A0(0)
  loc_E941C6: Exit Sub
  loc_E941C7: ' Referenced from: E9415E
  loc_E941C7: Proc_6_60_E63754(var_A0)
  loc_E941CC: Exit Sub
End Sub

Public Sub Proc_68_35_10886FC
  'Data Table: 4AE39C
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_4AE3B8 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108848F: If (Me.RecordCount = 0) Then
  loc_1088492:   Proc_68_35_10886FC = 
  loc_1088498: End If
  loc_108849C: Set var_90 = Me.TopCtrl1
  loc_10884A2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10884BB: If (CStr() = "Add") Then
  loc_10884E8:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' AND Name='"
  loc_10884F9:   Set var_90 = Me.Txt
  loc_10884FF:   Call 0.Method_Proc_68_35_10886FC0 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1088520:   unk_4AE3B8.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1088530:    = var_D0.Item()
  loc_1088538:    = var_E4.Value
  loc_1088569:   If (var_A8.Text.Fields > 0) Then
  loc_1088587:     var_A0 = "Duplicate Name"
  loc_108858D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10885A8:     Set var_90 = Me.Txt
  loc_10885AE:     Call 0.Method_Proc_68_35_10886FC0 (CInt(0))
  loc_10885B6:     var_A8.SetFocus
  loc_10885C7:     Proc_68_35_10886FC = &HFF
  loc_10885CD:   End If
  loc_10885D0: Else
  loc_10885FA:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' AND Name='"
  loc_108860B:   Set var_90 = Me.Txt
  loc_1088611:   Call 0.Method_Proc_68_35_10886FC0 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1088643:   unk_4AE3B8.Execute var_D0 & var_AC & "' And Code<>'" & global_64 & "'", 0, var_E4
  loc_1088653:    = var_D0.Item(var_A8)
  loc_108865B:    = var_E4.Value
  loc_1088690:   If (var_A8.Text.Fields > 0) Then
  loc_10886B4:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10886CF:     Set var_90 = Me.Txt
  loc_10886D5:     Call 0.Method_Proc_68_35_10886FC0 (CInt(0))
  loc_10886DD:     var_A8.SetFocus
  loc_10886EE:     Proc_68_35_10886FC = &HFF
  loc_10886F4:   End If
  loc_10886F4: End If
  loc_10886F4: Proc_68_35_10886FC = var_A8
End Sub

Public Sub Proc_68_36_EDCFCC
  'Data Table: 4AE39C
  Dim var_98 As Variant
  loc_EDCF16: global_64 = vbNullString
  loc_EDCF28: Set var_8C = Me.Txt
  loc_EDCF2E: Call 0.Method_Proc_68_36_EDCFCCC (var_8E, var_86)
  loc_EDCF3E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDCF54:   Set var_8C = Me.Txt
  loc_EDCF5A:   Call 0.Method_Proc_68_36_EDCFCC0 (CInt(var_86), var_98)
  loc_EDCF62:   var_98.Text = vbNullString
  loc_EDCF7E:   Set var_8C = Me.Txt
  loc_EDCF84:   Call 0.Method_Proc_68_36_EDCFCC0 (CInt(var_86), var_98)
  loc_EDCF8C:   var_98.Tag = vbNullString
  loc_EDCF9B: Next var_92 'Byte
  loc_EDCFAF: Set var_8C = Me.Label1
  loc_EDCFB5: Call 0.Method_Proc_68_36_EDCFCC0 (&HE, var_98)
  loc_EDCFBD: var_98.BackColor = &HECD9FB
  loc_EDCFC9: Exit Sub
End Sub

Public Sub Proc_68_37_137A5A0
  'Data Table: 4AE39C
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_4AE3B8 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_118 As Fields15
  Dim var_11C As Variant
  Dim var_114 As Variant
  loc_1379D4C: On Error Goto loc_137A597
  loc_1379DA5: unk_4AE3B8.Execute CStr("Select U_Name,U_AE,U_EntDt From Depart where Code='" & Me.Fields.Item("SearchCode").Value & "'  "), var_114, -1
  loc_1379DB0: Set var_88 = var_118
  loc_1379E04: var_118 = var_88.Fields
  loc_1379E6D: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1379EB2: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1379F2C: var_11C = var_88.Fields.Item("U_AE")
  loc_1379F8D: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1379FD2: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_137A021: If (Me.RecordCount > 0) Then
  loc_137A060:   Set var_118 = Me.Txt
  loc_137A066:   Call 0.Method_Proc_68_37_137A5A00 (CInt(0), var_11C)
  loc_137A06E:   var_11C.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_137A0C0:   Set var_118 = Me.Txt
  loc_137A0C6:   Call 0.Method_Proc_68_37_137A5A00 (CInt(0), var_11C)
  loc_137A0CE:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137A11D:   Set var_118 = Me.Txt
  loc_137A123:   Call 0.Method_Proc_68_37_137A5A00 (CInt(2), var_11C)
  loc_137A12B:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ShortName")))
  loc_137A159:   var_A0 = Me.Fields.Item("RestType")
  loc_137A178:   Set var_118 = Me.Txt
  loc_137A17E:   Call 0.Method_Proc_68_37_137A5A00 (CInt(1), var_11C)
  loc_137A186:   var_11C.Text = Proc_6_38_E69628(CVar(var_A0))
  loc_137A1A8:   Set var_8C = Me.Txt
  loc_137A1AE:   Call 0.Method_Proc_68_37_137A5A00 (CInt(1), var_A0)
  loc_137A1CD:   If (var_A0.Text = "Kitchen") Then
  loc_137A1DD:     Set var_8C = Me.Txt
  loc_137A1E3:     Call 0.Method_Proc_68_37_137A5A00 (CInt(4), var_A0)
  loc_137A1EB:     var_A0.Visible = True
  loc_137A202:     Set var_8C = Me.Label1
  loc_137A208:     Call 0.Method_Proc_68_37_137A5A00 (2, var_A0)
  loc_137A210:     var_A0.Visible = True
  loc_137A21F:   Else
  loc_137A22C:     Set var_8C = Me.Txt
  loc_137A232:     Call 0.Method_Proc_68_37_137A5A00 (CInt(4), var_A0)
  loc_137A23A:     var_A0.Visible = False
  loc_137A251:     Set var_8C = Me.Label1
  loc_137A257:     Call 0.Method_Proc_68_37_137A5A00 (2, var_A0)
  loc_137A25F:     var_A0.Visible = False
  loc_137A26B:   End If
  loc_137A285:   var_A0 = Me.Fields.Item("StoreType")
  loc_137A2B7:   var_11C = Me.Fields.Item("StoreType")
  loc_137A2BF:   var_D0 = var_11C.Value
  loc_137A2E9:   If CBool(IsNull(CVar(var_A0)) Or (var_D0 = vbNullString)) Then
  loc_137A2FA:     Set var_8C = Me.Txt
  loc_137A300:     Call 0.Method_Proc_68_37_137A5A00 (CInt(4), var_A0)
  loc_137A308:     var_A0.Text = "No"
  loc_137A317:   Else
  loc_137A350:     Set var_118 = Me.Txt
  loc_137A356:     Call 0.Method_Proc_68_37_137A5A00 (CInt(4), var_11C)
  loc_137A35E:     var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("StoreType")))
  loc_137A372:   End If
  loc_137A3AB:   Set var_118 = Me.Txt
  loc_137A3B1:   Call 0.Method_Proc_68_37_137A5A00 (CInt(3), var_11C)
  loc_137A3B9:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Printer")))
  loc_137A3E7:   var_A0 = Me.Fields.Item("RestType")
  loc_137A409:   If (Proc_6_38_E69628(CVar(var_A0)) = "Kitchen") Then
  loc_137A419:     Set var_8C = Me.Txt
  loc_137A41F:     Call 0.Method_Proc_68_37_137A5A00 (CInt(5), var_A0)
  loc_137A427:     var_A0.Visible = True
  loc_137A43E:     Set var_8C = Me.Label1
  loc_137A444:     Call 0.Method_Proc_68_37_137A5A00 (3, var_A0)
  loc_137A44C:     var_A0.Visible = True
  loc_137A472:     var_A0 = Me.Fields.Item("PrintType")
  loc_137A491:     Set var_118 = Me.Txt
  loc_137A497:     Call 0.Method_Proc_68_37_137A5A00 (CInt(5), var_11C)
  loc_137A49F:     var_11C.Text = Proc_6_38_E69628(CVar(var_A0))
  loc_137A4B6:   Else
  loc_137A4C3:     Set var_8C = Me.Txt
  loc_137A4C9:     Call 0.Method_Proc_68_37_137A5A00 (CInt(5), var_A0)
  loc_137A4D1:     var_A0.Visible = False
  loc_137A4E8:     Set var_8C = Me.Label1
  loc_137A4EE:     Call 0.Method_Proc_68_37_137A5A00 (3, var_A0)
  loc_137A4F6:     var_A0.Visible = False
  loc_137A510:     Set var_8C = Me.Txt
  loc_137A516:     Call 0.Method_Proc_68_37_137A5A00 (CInt(5), var_A0)
  loc_137A51E:     var_A0.Text = vbNullString
  loc_137A52A:   End If
  loc_137A54C:   var_B0 = CVar(Me.Fields.Item("BackColor")) 'Address
  loc_137A553:   Proc_6_39_E7D3A0(var_D0)
  loc_137A566:   Set var_118 = Me.Label1
  loc_137A56C:   Call 0.Method_Proc_68_37_137A5A00 (&HE, var_11C)
  loc_137A574:   var_11C.BackColor = CLng(var_D0)
  loc_137A58C: Else
  loc_137A58C:   Call Proc_68_36_EDCFCC(var_B0)
  loc_137A591: End If
  loc_137A591: Call Proc_68_39_EB72C4()
  loc_137A596: Exit Sub
  loc_137A597: ' Referenced from: 1379D4C
  loc_137A597: Proc_6_60_E63754()
  loc_137A59C: Exit Sub
End Sub

Public Sub Proc_68_38_E7D144(arg_C) 'E7D144
  'Data Table: 4AE39C
  Dim var_98 As TextBox
  loc_E7D0F2: Set var_8C = Me.Txt
  loc_E7D0F8: Call 0.Method_Proc_68_38_E7D144C (var_8E, var_86)
  loc_E7D108: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7D11E:   Set var_8C = Me.Txt
  loc_E7D124:   Call 0.Method_Proc_68_38_E7D1440 (CInt(var_86), var_98)
  loc_E7D12C:   var_98.Enabled = arg_C
  loc_E7D13B: Next var_92 'Byte
  loc_E7D141: Exit Sub
End Sub

Public Sub Proc_68_39_EB72C4
  'Data Table: 4AE39C
  loc_EB7240: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB7252:   Me.DGHelp.Visible = False
  loc_EB725A: End If
  loc_EB7275: If (Me.FrmList.Visible = &HFF) Then
  loc_EB7284:   Me.FrmList.Visible = False
  loc_EB728C: End If
  loc_EB72A8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB72BA:   Me.FGPoint.Visible = False
  loc_EB72C2: End If
  loc_EB72C2: Exit Sub
End Sub

Public Sub Proc_68_40_E822C0
  'Data Table: 4AE39C
  loc_E82260: Call Proc_68_39_EB72C4()
  loc_E8229C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8229F:   Call TopCtrl1_UnknownEvent_16()
  loc_E822A7: Else
  loc_E822AD:   Call 0.Method_arg_1E8 (var_108)
  loc_E822B5:   Call var_108.SetFocus
  loc_E822BE: End If
  loc_E822BE: Exit Sub
End Sub

Public Sub Proc_68_41_F5A3D4(arg_C) 'F5A3D4
  'Data Table: 4AE39C
  Dim var_144 As Integer
  Dim var_D8 As String
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim unk_4AE3B8 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_158 As Variant
  loc_F5A2E5: var_144 = 0
  loc_F5A2FB: var_D8 = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,1,3) ='"
  loc_F5A309: var_C8 = (CVar(MemVar_1F95070) + Left(arg_C, 1))
  loc_F5A324: unk_4AE3B8.Execute CStr(var_D8 & var_C8 & "' and isnumeric(SUBSTRING(Code,4,3))=1"), var_12C, -1
  loc_F5A32C: var_130 = var_130.Fields
  loc_F5A334: var_144 = var_134.Item(var_134)
  loc_F5A33C: var_148 = var_148.Value
  loc_F5A38B: var_E8 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) + Left(arg_C, 1))
  loc_F5A3B7: var_158 = (1 + Format(CStr(var_158), "000"))
  loc_F5A3BC: var_88 = CStr(var_158)
  loc_F5A3CE: Proc_68_41_F5A3D4 = 1
End Sub
