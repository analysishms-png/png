VERSION 5.00
Begin VB.Form MemberProposedMemInf
  Caption = "Propsed Member Information"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 8490
  ClientHeight = 3165
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin MSFlexGrid FGPoint
    Left = 7005
    Top = 1290
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGMember
    Left = 1710
    Top = 1770
    Width = 6720
    Height = 2265
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 975
    Top = 885
    Width = 3000
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin Frame FrmList
    Left = 210
    Top = 3255
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 105
      Width = 1770
      Height = 1665
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin CommandButton Cmd
    Caption = "GoBack"
    Index = 4
    Left = 5760
    Top = 2040
    Width = 1215
    Height = 300
    TabIndex = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "Confirm"
    Index = 3
    Left = 5760
    Top = 1717
    Width = 1215
    Height = 300
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "Delete"
    Index = 2
    Left = 5760
    Top = 1395
    Width = 1215
    Height = 300
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 705
    Top = 135
    Width = 360
    Height = 270
    Enabled = 0   'False
    Text = "1"
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
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
  Begin CommandButton Cmd
    Caption = ">"
    Index = 1
    Left = 375
    Top = 90
    Width = 300
    Height = 360
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "<"
    Index = 0
    Left = 75
    Top = 90
    Width = 300
    Height = 360
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 975
    Top = 585
    Width = 690
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1680
    Top = 585
    Width = 5250
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin CommonDialog CDlg
  End
  Begin Image Image2
    Left = 2220
    Top = 1845
    Width = 2130
    Height = 555
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Lbl
    Caption = "Card No"
    Index = 5
    ForeColor = &H0&
    Left = 180
    Top = 885
    Width = 690
    Height = 240
    TabIndex = 13
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
  Begin Label Lbl
    Caption = "General"
    Index = 4
    ForeColor = &H0&
    Left = 1485
    Top = 60
    Width = 555
    Height = 195
    Visible = 0   'False
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    Left = 75
    Top = 510
    Width = 6915
    Height = 735
  End
  Begin Image Image1
    Left = 75
    Top = 1275
    Width = 1440
    Height = 1815
    Visible = 0   'False
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Lbl
    Caption = "Member"
    Index = 1
    ForeColor = &H0&
    Left = 180
    Top = 585
    Width = 705
    Height = 240
    TabIndex = 5
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
End

Attribute VB_Name = "MemberProposedMemInf"

Private global_52 As Integer

Private Sub Cmd_Click(Index As Integer) '13F68F0
  'Data Table: 432870
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_AC As Double
  Dim var_B8 As String
  Dim var_B4 As Variant
  Dim var_C0 As String
  Dim var_CC As String
  Dim unk_43287F As Connection15
  Dim var_BC As String
  Dim var_90 As Recordset15
  Dim var_B0 As Variant
  Dim var_EC As Variant
  Dim var_98 As String
  Dim var_104 As String
  Dim var_118 As Integer
  Dim var_11C As Field20
  Dim var_86 As Integer
  Dim var_158 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_A0 As Variant
  loc_13F5F1B: var_92 = Index
  loc_13F5F26: If (var_92 = CInt(1)) Then
  loc_13F5F3C:   If (Mode = "Add") Then
  loc_13F5F3F:     Call Proc_274_13_F43E80(var_92)
  loc_13F5F44:   End If
  loc_13F5F47:   Call Proc_274_16_F7C088(var_9A)
  loc_13F5F52:   global_52 = var_9A
  loc_13F5F63:   Set var_A0 = Me.Txt
  loc_13F5F69:   Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F5F71:   var_98 = var_A4.Text
  loc_13F5F97:   If (CDbl(global_52) > CDbl(Val(var_98))) Then
  loc_13F5FA8:     Set var_A0 = Me.Txt
  loc_13F5FAE:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_98)
  loc_13F5FB6:     var_AC = var_A4.Text
  loc_13F5FC9:     var_B8 = CStr((Val(var_98) + CDbl(1)))
  loc_13F5FD7:     Set var_B0 = Me.Txt
  loc_13F5FDD:     Call 0.Method_Cmd_Click0 (CInt(0), var_B4)
  loc_13F5FE5:     var_B4.Text = var_B8
  loc_13F600A:     Set var_A0 = Me.Txt
  loc_13F6010:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6025:     var_AC = Val(var_A4.Text)
  loc_13F603E:     If (CDbl(global_52) = CDbl(var_AC)) Then
  loc_13F604E:       Set var_A0 = Me.Cmd
  loc_13F6054:       Call 0.Method_Cmd_Click0 (CInt(1), var_A4, 0)
  loc_13F605C:       var_A4.Enabled = var_AC
  loc_13F6068:     End If
  loc_13F6075:     Set var_A0 = Me.Cmd
  loc_13F607B:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6083:     var_A4.Enabled = True
  loc_13F608F:   End If
  loc_13F609D:   Set var_A0 = Me.Txt
  loc_13F60A3:   Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F60AB:   var_98 = var_A4.Text
  loc_13F60BC:   Call Proc_274_14_1383518(CInt(Val(var_98)))
  loc_13F60CE: Else
  loc_13F60D6:   If (var_92 = CInt(0)) Then
  loc_13F60DC:     Call Proc_274_16_F7C088(var_9A)
  loc_13F60E7:     global_52 = var_9A
  loc_13F60F8:     Set var_A0 = Me.Txt
  loc_13F60FE:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_98)
  loc_13F6106:     global_52 = var_A4.Text
  loc_13F6119:     var_B8 = CStr((Val(var_98) - CDbl(1)))
  loc_13F6127:     Set var_B0 = Me.Txt
  loc_13F612D:     Call 0.Method_Cmd_Click0 (CInt(0), var_B4)
  loc_13F6135:     var_B4.Text = var_B8
  loc_13F615A:     Set var_A0 = Me.Txt
  loc_13F6160:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6184:     If (CDbl(Val(var_A4.Text)) = CDbl(1)) Then
  loc_13F6194:       Set var_A0 = Me.Cmd
  loc_13F619A:       Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F61A2:       var_A4.Enabled = False
  loc_13F61AE:     End If
  loc_13F61BC:     Set var_A0 = Me.Txt
  loc_13F61C2:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F61DB:     Call Proc_274_14_1383518(CInt(Val(var_A4.Text)))
  loc_13F61F8:     Set var_A0 = Me.Txt
  loc_13F61FE:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6226:     If (CDbl(Val(var_A4.Text)) <= CDbl(global_52)) Then
  loc_13F6236:       Set var_A0 = Me.Cmd
  loc_13F623C:       Call 0.Method_Cmd_Click0 (CInt(1), var_A4)
  loc_13F6244:       var_A4.Enabled = True
  loc_13F6250:     End If
  loc_13F6253:   Else
  loc_13F625B:     If (var_92 = CInt(2)) Then
  loc_13F627A:       Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F628F:       var_AC = Val(var_A4.Text)
  loc_13F62C9:       unk_43287F.Execute "Delete From MemProposedMemInf Where  Subcode='" & subcode & "' And SNo=" & CStr(var_AC) & " And Mark=''", var_EC, -1
  loc_13F62FE:       var_98 = subcode
  loc_13F6317:       unk_43287F.Execute "Select Max(SNo) As SNo From MemProposedMemInf Where  Subcode='" & var_98 & "'", var_EC, -1
  loc_13F6348:       Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_98, Me.Txt)
  loc_13F6350:       var_B0 = var_A4.Text
  loc_13F637C:       var_B4 = Me.Txt.Fields.Item("SNo")
  loc_13F6384:       var_EC = CVar(var_B4) 'Address
  loc_13F638B:       Proc_6_39_E7D3A0(var_FC, var_EC, var_88)
  loc_13F63A7:       For var_100 = var_AC To CInt(var_FC):     CInt((Val(var_98) + CDbl(1))) = var_100 'Integer
  loc_13F63C5:         var_98 = CStr((var_88 - 1))
  loc_13F63F2:         var_104 = "Update MemProposedMemInf Set SNo=" & var_98 & " Where Subcode='" & subcode & "' And SNo=" & CStr(var_88)
  loc_13F6402:         unk_43287F.Execute var_104 & vbNullString, var_EC, -1
  loc_13F6425:       Next var_100 'Integer
  loc_13F642A:       Call Proc_274_13_F43E80()
  loc_13F642F:       Call Proc_274_15_F21278()
  loc_13F6437:     Else
  loc_13F643F:       If (var_92 = CInt(3)) Then
  loc_13F646A:         If ((Mode = "Add") Or (Mode = "Edit")) Then
  loc_13F6483:           Set var_A0 = Me.Txt
  loc_13F6489:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6491:           var_BC = var_A4.Text
  loc_13F64A7:           var_118 = 0
  loc_13F64DE:           var_CC = "Select Count(*) From MemProposedMemInf where Subcode='" & subcode & "' And SNo=" & CStr(Val(var_BC)) & vbNullString
  loc_13F64E7:           unk_43287F.Execute var_CC, var_EC, -1
  loc_13F64EF:           var_B0 = var_B0.Fields
  loc_13F64F7:           var_118 = var_B4.Item(var_B4)
  loc_13F64FF:           var_11C = var_11C.Value
  loc_13F6534:           If (var_FC > 0) Then
  loc_13F654D:             Set var_A0 = Me.Txt
  loc_13F6553:             Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_BC)
  loc_13F655B:             var_FC = var_A4.Text
  loc_13F6586:             var_C0 = "Delete From MemProposedMemInf where Subcode='" & subcode & "' And SNo="
  loc_13F65A2:             unk_43287F.Execute var_C0 & CStr(Val(var_BC)) & vbNullString, var_EC, -1
  loc_13F65C4:           End If
  loc_13F65C4:         End If
  loc_13F65CF:         Set var_A0 = Me.Txt
  loc_13F65D5:         Call 0.Method_Cmd_Click0 (CInt(2), var_A4, var_B0)
  loc_13F65FE:         If (Proc_183_19_E8E68C(var_A4, "Proposed Member Name") = 0) Then
  loc_13F660C:           Set var_A0 = Me.Txt
  loc_13F6612:           Call 0.Method_Cmd_Click0 (CInt(2), var_A4)
  loc_13F661A:           var_A4.SetFocus
  loc_13F6626:           Exit Sub
  loc_13F6627:         End If
  loc_13F6630:         unk_43287F.BeginTrans var_140
  loc_13F6637:         var_86 = 0
  loc_13F6662:         If ((Mode = "Add") Or (Mode = "Edit")) Then
  loc_13F667B:           Set var_A0 = Me.Txt
  loc_13F6681:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_C0)
  loc_13F6689:           var_86 = var_A4.Text
  loc_13F6696:           var_AC = Val(var_C0)
  loc_13F66A7:           Set var_B0 = Me.Txt
  loc_13F66AD:           Call 0.Method_Cmd_Click0 (CInt(2), var_B4, var_104)
  loc_13F66B5:           var_AC = var_B4.Tag
  loc_13F66C8:           Proc_183_7_EB17D4(var_FC, Now)
  loc_13F66E1:           var_B8 = "Insert into MemProposedMemInf (Subcode,SNo,PMemCode,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('"
  loc_13F672C:           var_158 = var_B8 & subcode & "'," & CStr(var_AC) & ",'" & var_104 & "','','" & MemVar_1F95070 & "','" & MemVar_1F95078 & "','"
  loc_13F673A:           var_13C = CVar(var_158 & MemVar_1F950C8 & "',") 'String
  loc_13F6740:           var_16C = var_13C & var_FC 
  loc_13F6757:           unk_43287F.Execute CStr(var_16C & ",'A')"), var_190, -1
  loc_13F67A3:           unk_43287F.CommitTrans
  loc_13F67A8:           Call Proc_274_13_F43E80(var_11C, var_AC)
  loc_13F67BB:           Set var_A0 = Me.Txt
  loc_13F67C1:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F67DC:           var_B8 = CStr((Val(var_A4.Text) + CDbl(1)))
  loc_13F67EA:           Set var_B0 = Me.Txt
  loc_13F67F0:           Call 0.Method_Cmd_Click0 (CInt(0), var_B4)
  loc_13F67F8:           var_B4.Text = var_B8
  loc_13F681D:           Set var_A0 = Me.Txt
  loc_13F6823:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F682B:           var_98 = var_A4.Text
  loc_13F6847:           If (CDbl(Val(var_98)) > CDbl(1)) Then
  loc_13F6857:             Set var_A0 = Me.Cmd
  loc_13F685D:             Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6865:             var_A4.Enabled = True
  loc_13F6871:           End If
  loc_13F6873:           var_86 = &HFF
  loc_13F687C:           If (var_86 = 0) Then
  loc_13F6885:             unk_43287F.RollbackTrans
  loc_13F68A0:             Set var_A0 = Err()
  loc_13F68A6:             Call 0.Method_arg_2C (var_98, 0, var_FC, var_13C)
  loc_13F68B1:             MsgBox(CVar(var_98), var_16C, var_86, var_AC, )
  loc_13F68C4:           End If
  loc_13F68C4:         End If
  loc_13F68C7:       Else
  loc_13F68CF:         If (var_92 = CInt(4)) Then
  loc_13F68DF:           Me.Global.Unload Me
  loc_13F68E7:         End If
  loc_13F68E7:       End If
  loc_13F68E7:     End If
  loc_13F68E7:   End If
  loc_13F68E7: End If
  loc_13F68EC: Set var_90 = Nothing
  loc_13F68EF: Exit Sub
End Sub

Private Sub Form_Load() '10280D0
  'Data Table: 432870
  Dim var_B4 As Variant
  Dim var_90 As String
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_D0 As DataGrid
  Dim var_D4 As TextBox
  loc_1027EB6: Set global_56 = New 
  loc_1027EC8: Me.Recordset15.CursorLocation = 3
  loc_1027EF2: var_90 = "Select SubCode as Code,Name,ConPrefix,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_1027F0A: Me.Open CVar(var_90 & MemVar_1F95078 & "') Order By Name"), CVar(MemVar_1F95044), 3
  loc_1027F24: CVarUnk
  loc_1027F29: VerifyVarObj
  loc_1027F2F: Set var_88 = Me.DGMember
  loc_1027F35: LateIdStAd
  loc_1027F57: Call 0.Method_Form_Load0 (CInt(2), var_B8, var_BC, Me.Txt)
  loc_1027F5F: global_56 = var_B8.Left
  loc_1027F76: Me.DGMember.Left = CVar(var_BC)
  loc_1027F92: Set var_D0 = Me.Txt
  loc_1027F98: Call 0.Method_Form_Load0 (CInt(2), var_D4, var_D8)
  loc_1027FA0: 1 = var_D4.Height
  loc_1027FB3: Set var_88 = Me.Txt
  loc_1027FB9: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_1027FD1: var_B4 = CVar(((var_B8.Top + var_D8) + CDbl(&H1E))) 'Single
  loc_1027FE0: Me.DGMember.Top = CVar(var_B8.Top)
  loc_1028000: Set var_88 = Me.Txt
  loc_1028006: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_102800E: var_B8.Text = "1"
  loc_1028025: var_E0 = Mode
  loc_1028030: If (var_E0 = "Browse") Then
  loc_1028038:   Call Proc_274_12_F307F0(0)
  loc_1028043: Else
  loc_102804B:   If (var_E0 = "Add") Then
  loc_102805B:     Set var_88 = Me.Cmd
  loc_1028061:     Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_1028069:     var_B8.Enabled = False
  loc_1028075:     Call Proc_274_13_F43E80(-1)
  loc_102807F:     Call Proc_274_12_F307F0(1)
  loc_102808A:   Else
  loc_1028092:     If (var_E0 = "Edit") Then
  loc_10280A2:       Set var_88 = Me.Cmd
  loc_10280A8:       Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_10280B0:       var_B8.Enabled = False
  loc_10280C1:       Call Proc_274_12_F307F0(1)
  loc_10280C9:     End If
  loc_10280C9:   End If
  loc_10280C9: End If
  loc_10280C9: Call Proc_274_15_F21278()
  loc_10280CE: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF4DA8
  'Data Table: 432870
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FF4BCE: Set var_88 = Me.Txt
  loc_FF4BD4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF4BE2: Proc_183_28_E216B0(var_8C)
  loc_FF4BEE: Call Proc_274_17_E84198(var_8C)
  loc_FF4BF6: var_92 = Index
  loc_FF4C01: If (var_92 = CInt(2)) Then
  loc_FF4C1B:   If (Me.RecordCount > 0) Then
  loc_FF4C29:     Set var_8C = Me.FGPoint
  loc_FF4C41:     Proc_6_137_1192FDC(Me.DGMember, global_56, Index)
  loc_FF4C4F:   End If
  loc_FF4C9D:   Set var_88 = Me.Txt
  loc_FF4CA3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FF4CAB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF4CC3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF4CC6:     Exit Sub
  loc_FF4CC7:   End If
  loc_FF4CD4:   Set var_88 = Me.Txt
  loc_FF4CDA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF4CE2:   var_A0 = var_8C.Text
  loc_FF4CEA:   var_D4 = CVar(var_A0) 'String
  loc_FF4D2F:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FF4D38:     Me.MoveFirst
  loc_FF4D5D:     Set var_88 = Me.Txt
  loc_FF4D63:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FF4D6B:     0 = var_8C.Text
  loc_FF4D79:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_FF4D8F:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FF4DA7:   End If
  loc_FF4DA7: End If
  loc_FF4DA7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1003688
  'Data Table: 432870
  Dim var_86 As Integer
  Dim Me As Recordset15
  loc_1003493: var_86 = Shift
  loc_10034A0: If (CLng(Shift) = &H1B) Then
  loc_10034A3:   Call Proc_274_17_E84198(var_86)
  loc_10034A8:   Exit Sub
  loc_10034A9: End If
  loc_10034B7: If (KeyCode = CInt(2)) Then
  loc_10034D7:   Set var_9C = Me.FGPoint
  loc_10034E2:   Set var_98 = Nothing
  loc_1003510:   Proc_6_69_134A630(Me.DGMember, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_100357F:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1003586:     Set var_98 = Me.DGMember
  loc_10035A5:     Proc_6_138_106E830(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_10035B3:   End If
  loc_10035B3: End If
  loc_10035EC: If ((Me.FrmList.Visible = 0) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_1003604:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_100360D:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_1003612:   End If
  loc_1003625:   If (Mode = "Add") Then
  loc_100363D:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1003646:       Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_100364B:     End If
  loc_100364E:   Else
  loc_1003661:     If (Mode = "Edit") Then
  loc_1003679:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1003682:         Proc_6_76_E533C8(Shift, arg_14)
  loc_1003687:       End If
  loc_1003687:     End If
  loc_1003687:   End If
  loc_1003687: End If
  loc_1003687: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ED58CC
  'Data Table: 432870
  loc_ED5820: On Error Goto loc_ED58C6
  loc_ED5826: Proc_6_58_E06050(arg_10)
  loc_ED5839: If (KeyAscii = CInt(2)) Then
  loc_ED5858:   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_ED586A:     var_A0 = "Name"
  loc_ED5885:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_ED58B7:     Proc_6_138_106E830(Me.DGMember, global_56, KeyAscii, Me.FGPoint)
  loc_ED58C5:   End If
  loc_ED58C5: End If
  loc_ED58C5: Exit Sub
  loc_ED58C6: ' Referenced from: ED5820
  loc_ED58C6: Proc_6_60_E63754(var_A0, 0)
  loc_ED58CB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00E4C
  'Data Table: 432870
  Dim var_86 As Integer
  loc_E00E47: var_86 = KeyCode
  loc_E00E4A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4949C
  'Data Table: 432870
  loc_E4947A: Set var_88 = Me.Txt
  loc_E49480: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4948E: Proc_183_27_E23198(var_8C)
  loc_E4949A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '141AAC0
  'Data Table: 432870
  Dim var_8E As Integer
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim var_BC As Variant
  Dim var_D0 As String
  Dim unk_43287F As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_E4 As String
  Dim var_B8 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  Dim var_1B4 As Variant
  loc_141A054: On Error Goto loc_141AA61
  loc_141A05A: var_8E = Cancel
  loc_141A065: If (var_8E = CInt(2)) Then
  loc_141A088:   var_96 = Me.EOF
  loc_141A0A9:   If ((Me.RecordCount = 0) Or ((var_96 = &HFF) Or (Me.BOF = &HFF))) Then
  loc_141A0B9:     Set var_9C = Me.Txt
  loc_141A0BF:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141A0DE:     If (var_A0.Text = vbNullString) Then
  loc_141A0EE:       Set var_9C = Me.Txt
  loc_141A0F4:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141A0FC:       var_A0.Text = vbNullString
  loc_141A115:       Set var_9C = Me.Txt
  loc_141A11B:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141A123:       var_A0.Tag = vbNullString
  loc_141A13D:       Set var_9C = Me.Txt
  loc_141A143:       Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_141A14B:       var_A0.Text = vbNullString
  loc_141A165:       Set var_9C = Me.Txt
  loc_141A16B:       Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_141A173:       var_A0.Text = vbNullString
  loc_141A17F:     End If
  loc_141A182:   Else
  loc_141A18F:     Set var_9C = Me.Txt
  loc_141A195:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141A1B4:     If (var_A0.Text = vbNullString) Then
  loc_141A1C4:       Set var_9C = Me.Txt
  loc_141A1CA:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141A1E9:       If (var_A0.Text = vbNullString) Then
  loc_141A1F9:         Set var_9C = Me.Txt
  loc_141A1FF:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141A207:         var_A0.Text = vbNullString
  loc_141A220:         Set var_9C = Me.Txt
  loc_141A226:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141A22E:         var_A0.Tag = vbNullString
  loc_141A248:         Set var_9C = Me.Txt
  loc_141A24E:         Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_141A256:         var_A0.Text = vbNullString
  loc_141A270:         Set var_9C = Me.Txt
  loc_141A276:         Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_141A27E:         var_A0.Text = vbNullString
  loc_141A28A:       End If
  loc_141A28D:     Else
  loc_141A2C8:       Set var_B8 = Me.Txt
  loc_141A2CE:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_141A2D6:       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_141A327:       Set var_B8 = Me.Txt
  loc_141A32D:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_141A335:       var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_141A387:       Set var_B8 = Me.Txt
  loc_141A38D:       Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_141A395:       var_BC.Text = CStr(Me.Fields.Item("ConPrefix").Value)
  loc_141A3C8:       var_A0 = Me.Fields.Item("CardNo")
  loc_141A3D9:       var_A4 = CStr(var_A0.Value)
  loc_141A3E7:       Set var_B8 = Me.Txt
  loc_141A3ED:       Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_141A3F5:       var_BC.Text = var_A4
  loc_141A40B:     End If
  loc_141A40B:   End If
  loc_141A428:   Set var_9C = Me.Txt
  loc_141A42E:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4, "Select P.PicPath,P.SigPath From MemberFamily P Where P.SubCode='")
  loc_141A436:   var_CC = var_A0.Tag
  loc_141A43F:   var_D0 = -1 & var_A4
  loc_141A44F:   unk_43287F.Execute var_D0 & "' And P.SNo=1 And IsNull(P.SubCode,'')<>''", var_B8, var_8E
  loc_141A45A:   Set var_88 = var_B8
  loc_141A478:   var_94 = var_88.RecordCount
  loc_141A486:   If (var_94 > 0) Then
  loc_141A498:     var_9C = var_88.Fields
  loc_141A4B1:     var_134 = IsNull(CVar(var_9C.Item("PicPath")))
  loc_141A4B8:     var_E4 = "PicPath"
  loc_141A4E3:     var_114 = vbNullString
  loc_141A505:     If CBool(var_134 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_114)) Then
  loc_141A526:       Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_141A53B:       Me.Image1.Picture = var_9C
  loc_141A54A:     Else
  loc_141A578:       var_114 = "PicPath"
  loc_141A5BE:       var_E4 = "DAT"
  loc_141A5E6:       var_134 = "AVI"
  loc_141A5F0:       var_1B4 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_114))), 3)) = var_134)
  loc_141A610:       If CBool(var_1B4) Then
  loc_141A61F:         Me.Image1.Visible = False
  loc_141A62A:       Else
  loc_141A662:         Me.Image1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_141A67F:         var_B4 = "PicPath"
  loc_141A693:         var_A0 = var_88.Fields.Item(var_B4)
  loc_141A6AD:         Call 0.Method_Txt_Validate4 (CStr(var_A0.Value), var_96)
  loc_141A6C2:         If var_96 Then
  loc_141A6DF:           Set var_9C = Me.Image1
  loc_141A6F7:           Me.Global.LoadPicture CVar(Me.Image1.Tag), var_B4, var_E4, var_114, var_134
  loc_141A70C:           Me.Image1.Picture = var_A0
  loc_141A721:           Set var_9C = Me.Image1
  loc_141A727:           var_9C.Refresh
  loc_141A732:         Else
  loc_141A750:           Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_141A765:           Me.Image1.Picture = var_9C
  loc_141A771:         End If
  loc_141A771:       End If
  loc_141A771:     End If
  loc_141A780:     var_9C = var_88.Fields
  loc_141A799:     var_134 = IsNull(CVar(var_9C.Item("SigPath")))
  loc_141A7A0:     var_E4 = "SigPath"
  loc_141A7CB:     var_114 = vbNullString
  loc_141A7ED:     If CBool(var_134 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_114)) Then
  loc_141A80E:       Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_141A823:       Me.Image2.Picture = var_9C
  loc_141A832:     Else
  loc_141A858:       var_F4 = Trim(CVar(var_88.Fields.Item("SigPath")))
  loc_141A860:       var_114 = "SigPath"
  loc_141A893:       var_104 = Right(var_F4, 3)
  loc_141A89E:       var_124 = Ucase(var_104)
  loc_141A8A6:       var_E4 = "DAT"
  loc_141A8CE:       var_134 = "AVI"
  loc_141A8F8:       If CBool((var_124 = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_114))), 3)) = var_134)) Then
  loc_141A907:         Me.Image2.Visible = False
  loc_141A912:       Else
  loc_141A94A:         Me.Image2.Tag = CStr(var_88.Fields.Item("SigPath").Value)
  loc_141A967:         var_B4 = "SigPath"
  loc_141A973:         var_9C = var_88.Fields
  loc_141A97B:         var_A0 = var_9C.Item(var_B4)
  loc_141A995:         Call 0.Method_Txt_Validate4 (CStr(var_A0.Value), var_96, var_9C)
  loc_141A9AA:         If var_96 Then
  loc_141A9C7:           Set var_9C = Me.Image2
  loc_141A9CD:           var_A4 = Me.Image2.Tag
  loc_141A9DF:           Me.Global.LoadPicture CVar(var_A4), var_B4, var_E4, var_114, var_134
  loc_141A9F4:           Me.Image2.Picture = var_A0
  loc_141AA09:           Set var_9C = Me.Image2
  loc_141AA0F:           var_9C.Refresh
  loc_141AA1A:         Else
  loc_141AA38:           Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_141AA4D:           Me.Image2.Picture = var_9C
  loc_141AA59:         End If
  loc_141AA59:       End If
  loc_141AA59:     End If
  loc_141AA59:   End If
  loc_141AA59: End If
  loc_141AA5E: Set var_88 = Nothing
  loc_141AA61: ' Referenced from: 141A054
  loc_141AA6F: Call 0.Method_arg_1C (var_94, Err(), var_A0)
  loc_141AA80: If (var_94 <> 0) Then
  loc_141AA9F:   Call 0.Method_arg_2C (var_A4, 0, var_F4, var_104)
  loc_141AAAA:   MsgBox(CVar(var_A4), var_124, Err(), var_A0, Err())
  loc_141AABD: End If
  loc_141AABD: Exit Sub
End Sub

Public Property Let Mode(vNewValue) 'E1095C
  'Data Table: 432870
  loc_E10954: global_84 = vNewValue
  loc_E10958: Exit Sub
End Sub

Public Property Get Mode() 'E109A4
  'Data Table: 432870
  loc_E10998: var_88 = global_84
  loc_E1099B: Mode = 
End Sub

Public Property Let subcode(vNewValue) 'E10A34
  'Data Table: 432870
  loc_E10A2C: global_80 = vNewValue
  loc_E10A30: Exit Sub
End Sub

Public Property Get subcode() 'E114E4
  'Data Table: 432870
  loc_E114D8: var_88 = global_80
  loc_E114DB: subcode = 
  loc_E114E2: Loop Until ( = ) 'do at: E10D0E
End Sub

Public Sub Proc_274_12_F307F0(arg_C) 'F307F0
  'Data Table: 432870
  Dim var_98 As Variant
  Dim var_8C As Image
  loc_F306E0: Set var_8C = Me.Txt
  loc_F306E6: Call 0.Method_Proc_274_12_F307F08 (var_8E, var_86)
  loc_F306F1: For var_92 =  To var_8E: 1 = var_92 'Integer
  loc_F30709:   Set var_8C = Me.Txt
  loc_F3070F:   Call 0.Method_Proc_274_12_F307F00 (var_86, var_98)
  loc_F30717:   var_98.Enabled = CBool(arg_C)
  loc_F30726: Next var_92 'Integer
  loc_F30738: Set var_8C = Me.Txt
  loc_F3073E: Call 0.Method_Proc_274_12_F307F00 (CInt(1), var_98)
  loc_F30746: var_98.Enabled = False
  loc_F3075F: Set var_8C = Me.Txt
  loc_F30765: Call 0.Method_Proc_274_12_F307F00 (CInt(3), var_98)
  loc_F3076D: var_98.Enabled = False
  loc_F3078B: Me.Image1.Enabled = CBool(arg_C)
  loc_F307A6: Set var_8C = Me.Cmd
  loc_F307AC: Call 0.Method_Proc_274_12_F307F00 (CInt(2), var_98)
  loc_F307B4: var_98.Enabled = CBool(arg_C)
  loc_F307D3: Set var_8C = Me.Cmd
  loc_F307D9: Call 0.Method_Proc_274_12_F307F00 (CInt(3), var_98)
  loc_F307E1: var_98.Enabled = CBool(arg_C)
  loc_F307ED: Exit Sub
End Sub

Public Sub Proc_274_13_F43E80
  'Data Table: 432870
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F43D68: Set var_8C = Me.Txt
  loc_F43D6E: Call 0.Method_Proc_274_13_F43E808 (var_8E, var_86)
  loc_F43D79: For var_92 =  To var_8E: 1 = var_92 'Integer
  loc_F43D8C:   Set var_8C = Me.Txt
  loc_F43D92:   Call 0.Method_Proc_274_13_F43E800 (var_86, var_98)
  loc_F43D9A:   var_98.Text = vbNullString
  loc_F43DA9: Next var_92 'Integer
  loc_F43DCC: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F43DE1: Me.Image1.Picture = var_8C
  loc_F43DFA: Me.Image1.Tag = vbNullString
  loc_F43E08: Set var_8C = Me.Image1
  loc_F43E0E: var_8C.Visible = True
  loc_F43E34: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F43E49: Me.Image2.Picture = var_8C
  loc_F43E62: Me.Image2.Tag = vbNullString
  loc_F43E76: Me.Image2.Visible = True
  loc_F43E7E: Exit Sub
End Sub

Public Sub Proc_274_14_1383518(arg_C) '1383518
  'Data Table: 432870
  Dim var_94 As String
  Dim unk_43287F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_C4 As Variant
  Dim var_138 As Variant
  Dim var_E4 As String
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_1B8 As Variant
  Dim var_D0 As Field20
  Dim var_90 As String
  Dim var_E8 As Variant
  loc_1382C9C: On Error Goto loc_13834B8
  loc_1382C9F: Call Proc_274_13_F43E80()
  loc_1382CC0: var_94 = "Select MCG.SNo,MCG.PMemCode,S.Name,S.ConPrefix,S.CardNo,P.PicPath,P.SigPath From ((MemProposedMemInf MCG Left join SubGroup S On MCG.PMemCode=S.SubCode) Left Join MemberFamily P On MCG.PMemCode= P.Subcode And P.SNo=1) Where MCG.SubCode='" & subcode
  loc_1382CE3: unk_43287F.Execute var_94 & "' And MCG.Mark='' And  MCG.SNo=" & CStr(arg_C) & vbNullString, var_C4, -1
  loc_1382CEE: Set var_88 = var_C8
  loc_1382D0C: var_CC = var_88.RecordCount
  loc_1382D1A: If (var_CC > 0) Then
  loc_1382D2C:   var_C8 = var_88.Fields
  loc_1382D45:   var_138 = IsNull(CVar(var_C8.Item("PicPath")))
  loc_1382D4C:   var_E4 = "PicPath"
  loc_1382D77:   var_118 = vbNullString
  loc_1382D99:   If CBool(var_138 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_118)) Then
  loc_1382DBA:     Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_1382DCF:     Me.Image1.Picture = var_C8
  loc_1382DDE:   Else
  loc_1382E0C:     var_118 = "PicPath"
  loc_1382E52:     var_E4 = "DAT"
  loc_1382E7A:     var_138 = "AVI"
  loc_1382E84:     var_1B8 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_118))), 3)) = var_138)
  loc_1382EA4:     If CBool(var_1B8) Then
  loc_1382EB3:       Me.Image1.Visible = False
  loc_1382EBE:     Else
  loc_1382EF6:       Me.Image1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_1382F13:       var_B4 = "PicPath"
  loc_1382F27:       var_D0 = var_88.Fields.Item(var_B4)
  loc_1382F41:       Call 0.Method_Proc_274_14_13835184 (CStr(var_D0.Value), var_1BA)
  loc_1382F56:       If var_1BA Then
  loc_1382F73:         Set var_C8 = Me.Image1
  loc_1382F8B:         Me.Global.LoadPicture CVar(Me.Image1.Tag), var_B4, var_E4, var_118, var_138
  loc_1382FA0:         Me.Image1.Picture = var_D0
  loc_1382FB5:         Set var_C8 = Me.Image1
  loc_1382FBB:         var_C8.Refresh
  loc_1382FC6:       Else
  loc_1382FE4:         Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_1382FF9:         Me.Image1.Picture = var_C8
  loc_1383005:       End If
  loc_1383005:     End If
  loc_1383005:   End If
  loc_1383014:   var_C8 = var_88.Fields
  loc_138302D:   var_138 = IsNull(CVar(var_C8.Item("SigPath")))
  loc_1383034:   var_E4 = "SigPath"
  loc_138305F:   var_118 = vbNullString
  loc_1383081:   If CBool(var_138 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_118)) Then
  loc_13830A2:     Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_13830B7:     Me.Image2.Picture = var_C8
  loc_13830C6:   Else
  loc_13830EC:     var_F8 = Trim(CVar(var_88.Fields.Item("SigPath")))
  loc_13830F4:     var_118 = "SigPath"
  loc_1383127:     var_108 = Right(var_F8, 3)
  loc_1383132:     var_128 = Ucase(var_108)
  loc_138313A:     var_E4 = "DAT"
  loc_1383162:     var_138 = "AVI"
  loc_138318C:     If CBool((var_128 = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_118))), 3)) = var_138)) Then
  loc_138319B:       Me.Image2.Visible = False
  loc_13831A6:     Else
  loc_13831DE:       Me.Image2.Tag = CStr(var_88.Fields.Item("SigPath").Value)
  loc_13831FB:       var_B4 = "SigPath"
  loc_1383207:       var_C8 = var_88.Fields
  loc_138320F:       var_D0 = var_C8.Item(var_B4)
  loc_1383229:       Call 0.Method_Proc_274_14_13835184 (CStr(var_D0.Value), var_1BA, var_C8, var_C8)
  loc_138323E:       If var_1BA Then
  loc_138325B:         Set var_C8 = Me.Image2
  loc_1383273:         Me.Global.LoadPicture CVar(Me.Image2.Tag), var_B4, var_E4, var_118, var_138
  loc_1383282:         Set var_E8 = Me.Image2
  loc_1383288:         var_E8.Picture = var_D0
  loc_138329D:         Set var_C8 = Me.Image2
  loc_13832A3:         var_C8.Refresh
  loc_13832AE:       Else
  loc_13832CC:         Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_13832E1:         Me.Image2.Picture = var_C8
  loc_13832ED:       End If
  loc_13832ED:     End If
  loc_13832ED:   End If
  loc_13832FC:   var_C8 = var_88.Fields
  loc_1383304:   var_D0 = var_C8.Item("SNo")
  loc_1383313:   Proc_6_39_E7D3A0(var_F8, CVar(var_D0), var_C8, var_D0)
  loc_138332A:   Set var_D4 = Me.Txt
  loc_1383330:   Call 0.Method_Proc_274_14_13835180 (CInt(0), var_E8, CStr(var_F8))
  loc_1383338:   var_E8.Text = var_D0
  loc_138335F:   var_C8 = var_88.Fields
  loc_1383386:   Set var_D4 = Me.Txt
  loc_138338C:   Call 0.Method_Proc_274_14_13835180 (CInt(1), var_E8)
  loc_1383394:   var_E8.Text = Proc_6_38_E69628(CVar(var_C8.Item("ConPrefix")), var_C8)
  loc_13833DE:   Set var_D4 = Me.Txt
  loc_13833E4:   Call 0.Method_Proc_274_14_13835180 (CInt(2), var_E8)
  loc_13833EC:   var_E8.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")))
  loc_1383436:   Set var_D4 = Me.Txt
  loc_138343C:   Call 0.Method_Proc_274_14_13835180 (CInt(2), var_E8)
  loc_1383444:   var_E8.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("PMemCode")))
  loc_1383480:   var_90 = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_138348E:   Set var_D4 = Me.Txt
  loc_1383494:   Call 0.Method_Proc_274_14_13835180 (CInt(3), var_E8)
  loc_138349C:   var_E8.Text = var_90
  loc_13834B0: End If
  loc_13834B5: Set var_88 = Nothing
  loc_13834B8: ' Referenced from: 1382C9C
  loc_13834C0: Set var_C8 = Err()
  loc_13834C6: Call 0.Method_arg_1C (var_CC)
  loc_13834D7: If (var_CC <> 0) Then
  loc_13834F6:   Call 0.Method_arg_2C (var_90, 0, var_F8)
  loc_1383501:   MsgBox(CVar(var_90), var_108, var_128, Err(), )
  loc_1383514: End If
  loc_1383514: Exit Sub
End Sub

Public Sub Proc_274_15_F21278
  'Data Table: 432870
  Dim var_90 As Variant
  loc_F21173: Call Proc_274_16_F7C088(var_86)
  loc_F2117E: global_52 = var_86
  loc_F21197: Set var_8C = Me.Txt
  loc_F2119D: Call 0.Method_Proc_274_15_F212780 (CInt(0), var_90)
  loc_F211A5: var_90.Text = CStr(global_52)
  loc_F211BD: Call Proc_274_14_1383518(global_52)
  loc_F211D5: If ((global_52 = 0) Or (global_52 = 1)) Then
  loc_F211E5:   Set var_8C = Me.Cmd
  loc_F211EB:   Call 0.Method_Proc_274_15_F212780 (CInt(0), var_90)
  loc_F211F3:   var_90.Enabled = False
  loc_F2120C:   Set var_8C = Me.Cmd
  loc_F21212:   Call 0.Method_Proc_274_15_F212780 (CInt(1), var_90)
  loc_F2121A:   var_90.Enabled = False
  loc_F21229: Else
  loc_F21236:   Set var_8C = Me.Cmd
  loc_F2123C:   Call 0.Method_Proc_274_15_F212780 (CInt(0), var_90)
  loc_F21244:   var_90.Enabled = True
  loc_F2125D:   Set var_8C = Me.Cmd
  loc_F21263:   Call 0.Method_Proc_274_15_F212780 (CInt(1), var_90)
  loc_F2126B:   var_90.Enabled = False
  loc_F21277: End If
  loc_F21277: Exit Sub
End Sub

Public Sub Proc_274_16_F7C088
  'Data Table: 432870
  Dim unk_43287F As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_8E As Integer
  loc_F7BF5B: If (Mode = "Browse") Then
  loc_F7BF8A:   unk_43287F.Execute "Select Max(SNo) As SNo From MemProposedMemInf MCG Where MCG.SubCode='" & subcode & "' And Mark=''", var_BC, -1
  loc_F7BFB6:   var_C0 = var_C0.Fields
  loc_F7BFC6:   var_BC = CVar(var_C0.Item("SNo")) 'Address
  loc_F7BFCD:   Proc_6_39_E7D3A0(var_D4, var_BC)
  loc_F7BFD6:   var_8E = CInt(var_D4)
  loc_F7BFE6: Else
  loc_F7C012:   unk_43287F.Execute "Select Max(SNo) As SNo From MemProposedMemInf MCG Where MCG.SubCode='" & subcode & "' And Mark=''", var_BC, -1
  loc_F7C03E:   var_C0 = var_C0.Fields
  loc_F7C055:   Proc_6_39_E7D3A0(var_D4, CVar(var_C0.Item("SNo")), var_C0)
  loc_F7C05E:   var_8E = CInt(var_D4)
  loc_F7C071:   var_8E = (var_8E + 1)
  loc_F7C074: End If
  loc_F7C07F: Set var_8C = Nothing
  loc_F7C082: Proc_274_16_F7C088 = var_8E
End Sub

Public Sub Proc_274_17_E84198
  'Data Table: 432870
  loc_E84144: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_E84156:   Me.DGMember.Visible = False
  loc_E8415E: End If
  loc_E8417A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8418C:   Me.FGPoint.Visible = False
  loc_E84194: End If
  loc_E84194: Exit Sub
End Sub
