VERSION 5.00
Begin VB.Form SmartCardRegistration
  Caption = "Smart Card Registration Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11355
  ClientHeight = 7980
  LockControls = -1  'True
  Begin BtnEnh CmdCardIss
    Index = 1
    Left = 11670
    Top = 7095
    Width = 1080
    Height = 570
    Visible = 0   'False
    TabIndex = 40
  End
  Begin BtnEnh CmdCardIss
    Index = 0
    Left = 13320
    Top = 7125
    Width = 1080
    Height = 570
    Visible = 0   'False
    TabIndex = 39
  End
  Begin BtnEnh FrCardIssue
    Left = 11130
    Top = 6120
    Width = 4035
    Height = 1920
    Visible = 0   'False
    TabIndex = 38
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 450
    TabIndex = 37
  End
  Begin CommandButton Command2
    Caption = "PDF Preview"
    Left = 10605
    Top = 4185
    Width = 1155
    Height = 885
    Visible = 0   'False
    TabIndex = 36
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
  Begin CommandButton CmdPrintCard
    Caption = "Crystal Preview"
    Left = 9435
    Top = 4185
    Width = 1155
    Height = 885
    Visible = 0   'False
    TabIndex = 35
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1770
    Width = 1380
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
    ForeColor = &HFF0000&
    Left = 3735
    Top = 1770
    Width = 4320
    Height = 285
    TabIndex = 3
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
  Begin Frame FrCardIssueZ
    Left = 1020
    Top = 8655
    Width = 4680
    Height = 1215
    Visible = 0   'False
    TabIndex = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdCardIssZ
      Caption = "Cancel"
      Index = 0
      Left = 2430
      Top = 690
      Width = 1590
      Height = 390
      TabIndex = 33
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
    Begin CommandButton CmdCardIssZ
      Caption = "OK"
      Index = 1
      Left = 645
      Top = 675
      Width = 1590
      Height = 390
      TabIndex = 32
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
    Begin Label LblCardIssue
      Caption = "PLEASE PUT A CARD TO ISSUE"
      Left = 165
      Top = 210
      Width = 4290
      Height = 345
      TabIndex = 31
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrFamilyMember
    Caption = "Member/Family Members Info.:"
    Left = 2235
    Top = 4590
    Width = 8880
    Height = 3480
    Visible = 0   'False
    TabIndex = 27
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 270
      Top = 360
      Width = 915
      Height = 195
      Visible = 0   'False
      TabIndex = 29
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid GridSel
      Left = 195
      Top = 300
      Width = 8505
      Height = 3000
      TabIndex = 28
    End
  End
  Begin DataGrid DGMember
    Left = 13485
    Top = 555
    Width = 5595
    Height = 2265
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2400
    Width = 5400
    Height = 285
    TabIndex = 5
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
  Begin PictureBox Picture1
    Left = 7515
    Top = 2400
    Width = 540
    Height = 270
    TabIndex = 21
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
  Begin PictureBox Picture3
    ForeColor = &HFF0000&
    Left = 3735
    Top = 1485
    Width = 300
    Height = 285
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrmList
    Left = 2235
    Top = 4965
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 4215
    Width = 630
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1140
    Width = 1380
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3600
    Width = 5715
    Height = 285
    TabIndex = 7
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3915
    Width = 1380
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2715
    Width = 5715
    Height = 855
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2085
    Width = 5715
    Height = 285
    TabIndex = 4
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1455
    Width = 1380
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
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
    Left = 150
    Top = 5145
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 16
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 10965
    Top = 2025
    Width = 2520
    Height = 255
    TabIndex = 42
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
    Left = 10950
    Top = 2355
    Width = 2430
    Height = 285
    TabIndex = 41
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
  Begin Image ImgTemp
    Left = 12435
    Top = 3420
    Width = 2295
    Height = 705
    Visible = 0   'False
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Member"
    Index = 3
    ForeColor = &HFF0000&
    Left = 720
    Top = 1770
    Width = 780
    Height = 240
    TabIndex = 34
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
  Begin Image ImgSign
    Left = 8295
    Top = 3450
    Width = 2295
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8355
    Top = 1155
    Width = 2070
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Member Photo"
    ForeColor = &H80&
    Left = 8835
    Top = 2130
    Width = 1275
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSign
    Caption = "Member Signature"
    ForeColor = &H80&
    Left = 8655
    Top = 3660
    Width = 1590
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Member ID"
    Index = 4
    ForeColor = &HFF0000&
    Left = 720
    Top = 2400
    Width = 1035
    Height = 240
    TabIndex = 23
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
    Caption = "Phone"
    Index = 1
    ForeColor = &HFF0000&
    Left = 720
    Top = 3600
    Width = 615
    Height = 240
    TabIndex = 22
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
    Caption = "Yes/No"
    ForeColor = &H80&
    Left = 3000
    Top = 4230
    Width = 645
    Height = 240
    TabIndex = 19
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
    Caption = "Issue Date"
    Index = 0
    ForeColor = &HFF0000&
    Left = 720
    Top = 1140
    Width = 975
    Height = 240
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
  Begin Label LblName
    Caption = "Valid Upto Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 720
    Top = 3915
    Width = 1485
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
  Begin Label LblLedgerAc
    Caption = "Address"
    Index = 0
    ForeColor = &HFF0000&
    Left = 720
    Top = 2715
    Width = 750
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
    Caption = "Blocked"
    Index = 6
    ForeColor = &HFF0000&
    Left = 720
    Top = 4230
    Width = 765
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
  Begin Label LblName
    Caption = "Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 720
    Top = 2130
    Width = 555
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
  Begin Label LblLedgerAc
    Caption = "Card Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 720
    Top = 1455
    Width = 975
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
End

Attribute VB_Name = "SmartCardRegistration"

Private global_88 As Integer
Private global_90 As Integer
Private global_68 As Variant

Private Sub Form_Load() '117E708
  'Data Table: 4FC804
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  Dim unk_4FC80F As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  Dim var_FC As TextBox
  Dim var_100 As DataGrid
  Dim var_104 As TextBox
  loc_117E348: On Error Goto loc_117E6C2
  loc_117E352: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_117E36A: Me.GridSel.BackColor = CVar(CLng(MemVar_1F951B4))
  loc_117E380: Me.FrFamilyMember.BackColor = CLng(MemVar_1F951B4)
  loc_117E393: Set var_B0 = Me.FrCardIssue
  loc_117E399: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F951B4))
  loc_117E3AF: Me.FrFamilyMember.BackColor = CLng(MemVar_1F951B4)
  loc_117E3C4: Set var_B0 = Me.GridSel
  loc_117E3CA: var_B0.BackColor = CVar(CLng(MemVar_1F951B4))
  loc_117E3EF: Proc_6_17_EAAE40(var_C0, MemVar_1F95078, "SELECT CashCardApplYN FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_117E405: unk_4FC80F.Execute CStr(var_F4 & var_C0), -1, var_B0
  loc_117E410: Set var_8C = var_B0
  loc_117E436: If (var_8C.RecordCount > 0) Then
  loc_117E450:   var_FC = var_8C.Fields.Item("CashCardApplYN")
  loc_117E458:   var_C0 = CVar(var_FC) 'Address
  loc_117E467:   global_96 = Proc_6_38_E69628(var_C0)
  loc_117E474: End If
  loc_117E482: Set var_B0 = Me.Txt
  loc_117E488: Call 0.Method_Form_Load0 (CInt(2), var_FC)
  loc_117E4A7: Me.DGMember.Left = CVar(var_FC.Left)
  loc_117E4C3: Set var_100 = Me.Txt
  loc_117E4C9: Call 0.Method_Form_Load0 (CInt(2), var_104)
  loc_117E4E4: Set var_B0 = Me.Txt
  loc_117E4EA: Call 0.Method_Form_Load0 (CInt(2), var_FC)
  loc_117E502: var_9C = CVar(((var_FC.Top + var_104.Height) + CDbl(&H1E))) 'Single
  loc_117E511: Me.DGMember.Top = CVar(var_FC.Left)
  loc_117E536: If (SmartCardApplicable = "No") Then
  loc_117E54D:   var_D4 = "SELECT R.Code As SearchCode,R.*,S.PicPath,S.IdPicPath SigPath,S.Name MemberName From SmartCardRegistration R Left Join GuestProf S On R.MemberCode=S.Code where R.CardType='Cash Card' And R.Site_Code='" & MemVar_1F95070
  loc_117E56B:   unk_4FC80F.Execute var_D4 & "' And (R.LOGSITE_CODE='" & MemVar_1F95078 & "' or R.LOGSITE_CODE='HO') Order By R.IssDate,R.Code", var_C0, -1
  loc_117E57C:   Set global_52 = var_B0
  loc_117E598: Else
  loc_117E5AC:   var_D4 = "SELECT R.Code As SearchCode,R.*,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardRegistration R Left Join MemberFamily MF On R.Code=MF.CardRegId Left Join Subgroup S On R.MemberCode=S.SubCode where R.Site_Code='" & MemVar_1F95070
  loc_117E5CA:   unk_4FC80F.Execute var_D4 & "' And (R.LOGSITE_CODE='" & MemVar_1F95078 & "' or R.LOGSITE_CODE='HO') Order By R.IssDate,R.Code", var_C0, -1
  loc_117E5DB:   Set global_52 = var_B0
  loc_117E5F4: End If
  loc_117E609: var_D4 = "INI"
  loc_117E617: Call Proc_286_29_EB397C(Proc_5_1_100EC1C(var_D4, Me, global_52), Me)
  loc_117E62B: Set var_B0 = Me.TopCtrl1
  loc_117E631: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_117E642: Call 0.Method_arg_160 (var_B0)
  loc_117E650: Call 0.Method_arg_164 (var_B0)
  loc_117E661: Set var_B0 = Me.SMSJobTimer
  loc_117E667: MDIForm1.SMSJobTimer.Left = CDbl(13500)
  loc_117E67E: Me.LblUser.Top = CDbl(7800)
  loc_117E695: Me.LblLDt.Top = CDbl(8160)
  loc_117E6A6: Set var_B0 = Me.LblLDt
  loc_117E6AC: var_B0.Left = CDbl(13500)
  loc_117E6B4: Call Proc_286_32_139DBDC(var_B0)
  loc_117E6BE: Set var_8C = Nothing
  loc_117E6C1: Exit Sub
  loc_117E6C2: ' Referenced from: 117E348
  loc_117E6CA: Set var_B0 = Err()
  loc_117E6D0: Call 0.Method_arg_2C (var_D4)
  loc_117E6F1: MsgBox(CVar(var_D4), &H40, "Information", var_F4, var_12C)
  loc_117E704: Exit Sub
  loc_117E705: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E136EC
  'Data Table: 4FC804
  loc_E136E3: Set global_52 = Nothing
  loc_E136EA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27F78
  'Data Table: 4FC804
  loc_E27F50: On Error Goto loc_E27F6F
  loc_E27F67: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27F6F: ' Referenced from: E27F50
  loc_E27F6F: Proc_6_60_E63754(Shift)
  loc_E27F74: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EF48B8
  'Data Table: 4FC804
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_AC As TextBox
  loc_EF4826: If (Me.ListView.ListItems.Count > 0) Then
  loc_EF4841:   Set var_9C = Me.ListView.SelectedItem
  loc_EF485A:   Set var_A8 = Me.Txt
  loc_EF4860:   Call 0.Method_ListView_UnknownEvent_130 (CInt(1), var_AC)
  loc_EF4868:   var_AC.Text = var_9C.Text
  loc_EF487E: End If
  loc_EF488A: Me.FrmList.Visible = False
  loc_EF489D: Set var_88 = Me.Txt
  loc_EF48A3: Call 0.Method_ListView_UnknownEvent_130 (CInt(1))
  loc_EF48AB: var_9C.SetFocus
  loc_EF48B7: Exit Sub
End Sub

Private Sub CmdPrintCard_Click() '175E0C4
  'Data Table: 4FC804
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_130 As String
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_8C As Field20
  Dim var_DC As Variant
  Dim unk_4FC80F As Connection15
  Dim var_110 As Recordset15
  Dim var_148 As Recordset15
  Dim var_14C As Fields15
  Dim var_FC As String
  Dim var_114 As Recordset15
  loc_175C33F: Set var_88 = Me.Txt
  loc_175C345: Call 0.Method_CmdPrintCard_Click0 (CInt(3))
  loc_175C35C: var_BC = Len(Trim(CVar(var_8C)))
  loc_175C372: If (var_BC = 0) Then
  loc_175C396:   MsgBox("No Record Found to Print.", &H10, "Validation Error", var_BC, var_DC)
  loc_175C3A6:   Exit Sub
  loc_175C3A7: End If
  loc_175C3AE: var_130 = "Select MF.Subcode,MF.SNo,MF.RelationShip,MF.ConPrefix,MF.Name As Name,MF.Gender,MF.MaritalStatus,MF.DOB As Birthday,MF.POB,MF.WedDate As Anniversary," & "MF.Phone,MF.Mobile,MF.Fax,MF.EMail,MF.Nationality,MF.Religion,MF.BloodGroup,MF.ProOcc,MF.EdQuali,MF.TBusiness,MF.TurnOver,MF.Desig,MF.Passport,MF.PAN,"
  loc_175C3BC: var_138 = var_130 & "MF.SpInterest,MF.SigPath,MF.PicPath,MF.CardNo,MF.CardIssDate,MF.CardRegId,MF.CardValidUpto," & "MCat.Name as CompanyType,S.Name As AcName,S.AllowCredit,S.CreditLimit,S.Discount,S.ActiveYN,S.BlackListed,S.ReasonBlackList,S.BlackListedBy,"
  loc_175C3C3: var_13C = var_138 & "IsNull(S.AddName,'')AddType,IsNull(S.Add1,'')Add1,IsNull(S.Add2,'')Add2,IsNull(S.Add3,'')Add3,IsNull(C.CityName,'')City,IsNull(S.Name,'')State,IsNull(S.Name,'')Country,IsNull(S.Pin,'')PinCode "
  loc_175C3CA: var_140 = var_13C & ",SP.* From ((((((Subgroup S Inner Join MemberFamily MF On S.SubCode=MF.Subcode) Inner Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) "
  loc_175C3D1: var_AC = CVar(var_140 & "Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Inner Join SmartCardRegistration SCR On SCR.Code=MF.CardRegId) Left Join SmartCardPrintParameter SP On S.CompanyType=SP.MemCatcode And MF.RelationShip=SP.CardType where SCR.Code='") 'String
  loc_175C3E9: var_88 = Me.Fields
  loc_175C3F9: var_9C = var_88.Item("SearchCode").Value
  loc_175C401: var_BC = var_AC & var_9C 
  loc_175C405: var_EC = "'"
  loc_175C40A: var_DC = var_BC & var_EC 
  loc_175C447: unk_4FC80F.Execute CStr(var_DC), var_9C, -1
  loc_175C452: Set var_110 = var_88
  loc_175C46F: If (var_110.RecordCount = 0) Then
  loc_175C480:   var_CC = "No Record Found to Print."
  loc_175C48B:   MsgBox(var_CC, &H30, var_AC, var_BC, var_DC)
  loc_175C49B:   Exit Sub
  loc_175C49C: End If
  loc_175C4A9: Call Proc_286_28_13B3284(New, var_88)
  loc_175C4B1: Set var_12C = var_88
  loc_175C4B7: Set var_148 = var_12C 
  loc_175C4C6: var_148.AddNew var_CC, var_EC
  loc_175C4F0: var_148.Fields.Item("mLine").Value = vbNullString
  loc_175C50B: var_88 = var_110.Fields
  loc_175C547: var_148.Fields.Item("Relation").Value = CVar(Proc_6_38_E69628(CVar(var_88.Item("RelationShip")), var_88))
  loc_175C5A7: var_148.Fields.Item("ConPrefix").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("ConPrefix"))))
  loc_175C607: var_148.Fields.Item("Name").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Name"))))
  loc_175C667: var_148.Fields.Item("Sex").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Gender"))))
  loc_175C6C7: var_148.Fields.Item("MaritalStatus").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("MaritalStatus"))))
  loc_175C71F: var_148.Fields.Item("Birthday").Value = CVar(var_110.Fields.Item("Birthday"))
  loc_175C77B: var_148.Fields.Item("PlaceOfBirth").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("POB"))))
  loc_175C7D3: var_148.Fields.Item("Anniversary").Value = CVar(var_110.Fields.Item("Anniversary"))
  loc_175C82F: var_148.Fields.Item("Phone").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Phone"))))
  loc_175C88F: var_148.Fields.Item("Mobile").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Mobile"))))
  loc_175C8EF: var_148.Fields.Item("Religion").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Religion"))))
  loc_175C94F: var_148.Fields.Item("BloodGroup").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("bloodGroup"))))
  loc_175C9AF: var_148.Fields.Item("Desig").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Desig"))))
  loc_175CA0F: var_148.Fields.Item("Passport").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Passport"))))
  loc_175CA6F: var_148.Fields.Item("PAN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("PAN"))))
  loc_175CACF: var_148.Fields.Item("MemberId").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("CardNo"))))
  loc_175CB2F: var_148.Fields.Item("CardRegId").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("CardRegId"))))
  loc_175CB87: var_148.Fields.Item("CardIssDate").Value = CVar(var_110.Fields.Item("CardIssDate"))
  loc_175CBDB: var_148.Fields.Item("CardValidUpto").Value = CVar(var_110.Fields.Item("CardValidUpto"))
  loc_175CC37: var_148.Fields.Item("MemberType").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("CompanyType"))))
  loc_175CC97: var_148.Fields.Item("AcName").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("AcName"))))
  loc_175CCF7: var_148.Fields.Item("AddRType").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("AddType"))))
  loc_175CD57: var_148.Fields.Item("AddR1").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Add1"))))
  loc_175CDB7: var_148.Fields.Item("AddR2").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Add2"))))
  loc_175CE17: var_148.Fields.Item("AddR3").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Add3"))))
  loc_175CE77: var_148.Fields.Item("CityR").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("City"))))
  loc_175CED7: var_148.Fields.Item("StateR").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("State"))))
  loc_175CF37: var_148.Fields.Item("CountryR").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Country"))))
  loc_175CF97: var_148.Fields.Item("PinCodeR").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("PinCode"))))
  loc_175CFF7: var_148.Fields.Item("CardAbbr").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("CardAbbr"))))
  loc_175D057: var_148.Fields.Item("Guardian").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Guardian"))))
  loc_175D0B7: var_148.Fields.Item("ConPrefixYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("ConPrefixYN"))))
  loc_175D117: var_148.Fields.Item("CardNoYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("CardNoYN"))))
  loc_175D177: var_148.Fields.Item("CardValidYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("CardValidYN"))))
  loc_175D1D7: var_148.Fields.Item("GenderYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("GenderYN"))))
  loc_175D237: var_148.Fields.Item("BloodGroupYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("BloodGroupYN"))))
  loc_175D297: var_148.Fields.Item("DobYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DobYN"))))
  loc_175D2F7: var_148.Fields.Item("MobileYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("MobileYN"))))
  loc_175D357: var_148.Fields.Item("AddrYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("AddrYN"))))
  loc_175D3B7: var_148.Fields.Item("EmailYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("EmailYN"))))
  loc_175D417: var_148.Fields.Item("DesigYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DesigYN"))))
  loc_175D477: var_148.Fields.Item("PictureYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("PictureYN"))))
  loc_175D4D7: var_148.Fields.Item("SignatureYN").Value = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("SignatureYN"))))
  loc_175D50D: If Not((Me.ImgPhoto.Picture Is Nothing)) Then
  loc_175D51A:   var_130 = "Picture"
  loc_175D523:   Set var_8C = var_12C 
  loc_175D533:   Proc_142_0_F977BC(Me.ImgPhoto, var_8C)
  loc_175D53E:   Set var_12C = var_8C
  loc_175D54D: End If
  loc_175D56E: If Not((Me.ImgSign.Picture Is Nothing)) Then
  loc_175D575:   Set var_14C = Me.ImgSign
  loc_175D584:   Set var_8C = var_12C 
  loc_175D594:   Proc_142_0_F977BC(var_14C, var_8C, "Signature")
  loc_175D59F:   Set var_12C = var_8C
  loc_175D5AE: End If
  loc_175D5BB: var_EC = "Select (S.ConPrefix+S.ConPerson + Case When IsNull(S.ConPersonMName,'')<>'' Then ' '+S.ConPersonMName Else '' End + Case When IsNull(S.ConPersonLName,'')<>'' Then ' '+S.ConPersonLName Else '' End) As Member,S.FatherName,SP.CardFrontImage,SP.CardBackImage,SP.FrontFontColor,SP.BackFontColor From Subgroup S Left Join SmartCardPrintParameter SP On S.CompanyType=SP.MemCatcode And SP.CardType='Member' Where S.Subcode='"
  loc_175D5EE: var_FC = "'"
  loc_175D5F7: var_130 = CStr("SignatureYN" & var_110.Fields.Item("subcode").Value & var_FC)
  loc_175D601: unk_4FC80F.Execute var_130, var_DC, -1
  loc_175D60C: Set var_114 = var_14C
  loc_175D62C: var_144 = var_114.RecordCount
  loc_175D63A: If (var_144 > 0) Then
  loc_175D688:   var_148.Fields.Item("MemberName").Value = CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("Member")), var_148.Fields))
  loc_175D6E8:   var_148.Fields.Item("FatherName").Value = CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("FatherName")), var_130))
  loc_175D748:   var_148.Fields.Item("FrontFontColor").Value = CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("FrontFontColor"))))
  loc_175D7A8:   var_148.Fields.Item("BackFontColor").Value = CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("BackFontColor"))))
  loc_175D7EE:   If (IsNull(CVar(var_110.Fields.Item("CardFrontImage"))) = 0) Then
  loc_175D7FB:     var_130 = "CardFrontImage"
  loc_175D804:     Set var_8C = var_114 
  loc_175D814:     Proc_142_1_F342F8(Me.ImgTemp, var_8C)
  loc_175D81F:     Set var_114 = var_8C
  loc_175D841:     Set var_8C = var_12C 
  loc_175D851:     Proc_142_0_F977BC(Me.ImgTemp, var_8C, "CardFrontImage")
  loc_175D85C:     Set var_12C = var_8C
  loc_175D86B:   End If
  loc_175D89C:   If (IsNull(CVar(var_110.Fields.Item("CardBackImage"))) = 0) Then
  loc_175D8B2:     Set var_8C = var_114 
  loc_175D8C2:     Proc_142_1_F342F8(Me.ImgTemp, var_8C, "CardBackImage")
  loc_175D8CD:     Set var_114 = var_8C
  loc_175D8EF:     Set var_8C = var_12C 
  loc_175D8FF:     Proc_142_0_F977BC(Me.ImgTemp, var_8C, "CardBackImage")
  loc_175D90A:     Set var_12C = var_8C
  loc_175D919:   End If
  loc_175D919: End If
  loc_175D919: var_EC = "*"
  loc_175D922: var_CC = "Mark"
  loc_175D936: var_8C = var_148.Fields.Item(var_CC)
  loc_175D93E: var_8C.Value = var_EC
  loc_175D955: var_148.Update var_CC, var_EC
  loc_175D95C: Set var_148 = Nothing 
  loc_175D969: var_120 = "Smart Card Front Print"
  loc_175D990: Set var_88 = var_12C 
  loc_175D997: CreateFieldDefFile(var_88, MemVar_1F950B4 & "\" & "SmartCardPrint" & ".ttx", &HFF)
  loc_175D9A3: Set var_12C = var_88
  loc_175D9C5: var_130 = "\" & "SmartCardFrontPrint"
  loc_175D9D9: Call 0.Method_arg_1C (MemVar_1F950B4 & var_130 & ".RPT", var_CC, var_88)
  loc_175D9E4: MemVar_1F951E8 = var_88
  loc_175DA0D: Call 0.Method_arg_64 (var_88, CVar(var_12C), var_EC)
  loc_175DA15: Call 0.Method_arg_2C (var_FC, var_130)
  loc_175DA23: Call 0.Method_arg_150 (var_8C)
  loc_175DA39: Call 0.Method_arg_90 (var_88, var_144)
  loc_175DA41: Call 0.Method_arg_24 (var_126)
  loc_175DA4D: For var_154 =  To CInt(var_144): 1 = var_154 'Integer
  loc_175DA66:   Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DA6E:   Call 0.Method_arg_20 (var_8C)
  loc_175DA76:   Call 0.Method_arg_30 (var_130)
  loc_175DA8C:   var_164 = Ucase(CVar(var_130)) 'Variant
  loc_175DABC:   If (var_164 = Ucase("comp_name")) Then
  loc_175DAE0:     Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DAE8:     Call 0.Method_arg_20 (var_8C)
  loc_175DAF0:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_175DB06:   Else
  loc_175DB28:     If (var_164 = Ucase("comp_add1")) Then
  loc_175DB4C:       Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DB54:       Call 0.Method_arg_20 (var_8C)
  loc_175DB5C:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_175DB72:     Else
  loc_175DB94:       If (var_164 = Ucase("comp_pin")) Then
  loc_175DBB8:         Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DBC0:         Call 0.Method_arg_20 (var_8C)
  loc_175DBC8:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_175DBDE:       Else
  loc_175DC00:         If (var_164 = Ucase("comp_GSTIN")) Then
  loc_175DC0A:           var_130 = "'" & MemVar_1F95154
  loc_175DC24:           Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DC2C:           Call 0.Method_arg_20 (var_8C)
  loc_175DC34:           Call 0.Method_arg_38 (var_130 & "'")
  loc_175DC4A:         Else
  loc_175DC6C:           If (var_164 = Ucase("Title")) Then
  loc_175DC78:             Call 0.Method_arg_50 (var_130)
  loc_175DC9B:             Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DCA3:             Call 0.Method_arg_20 (var_8C)
  loc_175DCAB:             Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_175DCC0:           End If
  loc_175DCC0:         End If
  loc_175DCC0:       End If
  loc_175DCC0:     End If
  loc_175DCC0:   End If
  loc_175DCC3: Next var_154 'Integer
  loc_175DCCD: Set var_8C = Nothing
  loc_175DCE3: Set var_88 = MemVar_1F951E8 
  loc_175DCEA: var_CC = var_88
  loc_175DCEF: Proc_6_99_1484404(var_CC, 3, var_120)
  loc_175DCFA: MemVar_1F951E8 = var_88
  loc_175DD0E: var_120 = "Smart Card Back Print"
  loc_175DD35: Set var_88 = var_12C 
  loc_175DD3C: CreateFieldDefFile(var_88, MemVar_1F950B4 & "\" & "SmartCardPrint" & ".ttx", &HFF)
  loc_175DD6A: var_130 = "\" & "SmartCardBackPrint"
  loc_175DD7E: Call 0.Method_arg_1C (MemVar_1F950B4 & var_130 & ".RPT", var_CC, var_88)
  loc_175DD89: MemVar_1F951E8 = var_88
  loc_175DDB2: Call 0.Method_arg_64 (var_88, CVar(var_88), var_EC)
  loc_175DDBA: Call 0.Method_arg_2C (var_FC, &HFF)
  loc_175DDC8: Call 0.Method_arg_150 (var_8C)
  loc_175DDDE: Call 0.Method_arg_90 (var_88, var_144)
  loc_175DDE6: Call 0.Method_arg_24 (var_126)
  loc_175DDF2: For var_16C =  To CInt(var_144): 1 = var_16C 'Integer
  loc_175DE0B:   Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DE13:   Call 0.Method_arg_20 (var_8C)
  loc_175DE1B:   Call 0.Method_arg_30 (var_130)
  loc_175DE31:   var_17C = Ucase(CVar(var_130)) 'Variant
  loc_175DE61:   If (var_17C = Ucase("comp_name")) Then
  loc_175DE85:     Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DE8D:     Call 0.Method_arg_20 (var_8C)
  loc_175DE95:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_175DEAB:   Else
  loc_175DECD:     If (var_17C = Ucase("comp_add1")) Then
  loc_175DEF1:       Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DEF9:       Call 0.Method_arg_20 (var_8C)
  loc_175DF01:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_175DF17:     Else
  loc_175DF39:       If (var_17C = Ucase("comp_pin")) Then
  loc_175DF5D:         Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DF65:         Call 0.Method_arg_20 (var_8C)
  loc_175DF6D:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_175DF83:       Else
  loc_175DFA5:         If (var_17C = Ucase("comp_GSTIN")) Then
  loc_175DFAF:           var_130 = "'" & MemVar_1F95154
  loc_175DFC9:           Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175DFD1:           Call 0.Method_arg_20 (var_8C)
  loc_175DFD9:           Call 0.Method_arg_38 (var_130 & "'")
  loc_175DFEF:         Else
  loc_175E011:           If (var_17C = Ucase("Title")) Then
  loc_175E01D:             Call 0.Method_arg_50 (var_130)
  loc_175E040:             Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175E048:             Call 0.Method_arg_20 (var_8C)
  loc_175E050:             Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_175E065:           End If
  loc_175E065:         End If
  loc_175E065:       End If
  loc_175E065:     End If
  loc_175E065:   End If
  loc_175E068: Next var_16C 'Integer
  loc_175E072: Set var_8C = Nothing
  loc_175E088: Set var_88 = MemVar_1F951E8 
  loc_175E094: Proc_6_99_1484404(var_88, 3, var_120)
  loc_175E09F: MemVar_1F951E8 = var_88
  loc_175E0AF: Set var_110 = Nothing
  loc_175E0B7: Set var_114 = Nothing
  loc_175E0BA: Exit Sub
  loc_175E0BB: Proc_6_60_E63754(&HFF)
  loc_175E0C0: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'FDB844
  'Data Table: 4FC804
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDB692: If (Index = &HD) Then
  loc_FDB6A3:   Proc_303_0_FBACC8("	")
  loc_FDB6AB: End If
  loc_FDB6CA: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDB6CD:   Exit Sub
  loc_FDB6CE: End If
  loc_FDB6F8: If ((CLng(Index) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDB70B:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDB725:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDB740:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDB745:   var_D4 = 0
  loc_FDB777:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDB77C:   var_19C = 0
  loc_FDB7B7:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDB7BF:   Set var_1D0 = Me.GridSel
  loc_FDB7C5:   LateIdCallSt
  loc_FDB7FF:   var_86 = CInt((UBound(global_100, 1) + 1))
  loc_FDB811:   ReDim Preserve global_100(0 To CLng(var_86))
  loc_FDB839:   global_100(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDB840: End If
  loc_FDB840: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D004
  'Data Table: 4FC804
  loc_E5CFDF: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CFE2:   Exit Sub
  loc_E5CFE3: End If
  loc_E5CFFA: global_88 = CInt(CLng(Me.GridSel.Row))
  loc_E5D003: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '12130A4
  'Data Table: 4FC804
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_10C As Variant
  Dim var_124 As String
  Dim var_164 As Variant
  Dim var_184 As Long
  Dim var_1A4 As Variant
  Dim var_144 As Variant
  Dim var_86 As Integer
  loc_1212C01: If ((CLng(Me.GridSel.Col) <> 0) Or (global_88 = 0)) Then
  loc_1212C04:   Exit Sub
  loc_1212C05: End If
  loc_1212C61: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1212C64:   Exit Sub
  loc_1212C65: End If
  loc_1212C7C: global_90 = CInt(CLng(Me.GridSel.RowSel))
  loc_1212CAA: For var_BA = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_88 = var_BA 'Integer
  loc_1212CC3:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1212CDE:   Me.GridSel.Col = 0
  loc_1212CF6:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1212D10:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1212D1C:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1212D21:   var_EC = 0
  loc_1212D2A:   var_10C = " "
  loc_1212D34:   Set var_8C = Me.GridSel
  loc_1212D3A:   LateIdCallSt
  loc_1212D48: Next var_BA 'Integer
  loc_1212D5C: For var_120 = global_88 To global_90: var_88 = var_120 'Integer
  loc_1212D75:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1212D90:   Me.GridSel.Col = 0
  loc_1212DA8:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1212DC2:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1212DDD:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1212DE2:   var_EC = 7
  loc_1212E19:   If (CStr(Me.GridSel.TextMatrix)) = vbNullString) Then
  loc_1212E20:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1212E25:     var_EC = 0
  loc_1212E48:     var_164 = CVar(CLng(var_88)) 'Long
  loc_1212E4D:     var_184 = 0
  loc_1212E7F:     var_154 = IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü")
  loc_1212E88:     var_1A4 = CVar(CStr(var_154)) 'String
  loc_1212E90:     Set var_A0 = Me.GridSel
  loc_1212E96:     LateIdCallSt
  loc_1212ECA:     var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1212ECF:     var_EC = 0
  loc_1212F06:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_1212F1C:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1212F21:       var_EC = 4
  loc_1212F57:       Me.GridSel.Tag = CVar(CStr(Val(CStr(Me.GridSel.TextMatrix)))))
  loc_1212F7B:       var_9C = Me.GridSel.Row
  loc_1212F84:       var_CC = CVar(CLng(var_9C)) 'Long
  loc_1212F96:       Set var_A0 = Me.GridSel
  loc_1212F9C:       var_B0 = var_A0.TextMatrix)
  loc_1212FB2:       var_144 = Me.GridSel.Tag
  loc_1212FBA:       var_124 = CStr(var_144)
  loc_1212FCA:       Call Proc_286_34_124F8F8(CStr(var_B0), CInt(Val(var_124)), var_B0, 3, var_CC, 3, var_CC, 3)
  loc_1212FE8:     End If
  loc_1212FEB:   Else
  loc_1212FEB:     Call Proc_286_31_F2DC4C(var_CC, var_A0, var_1A4, var_184)
  loc_1213000:     Me.GridSel.Tag = vbNullString
  loc_121300E:     Call 0.Method_arg_50 (var_124, var_164, var_9C)
  loc_121302F:     MsgBox("Smart Card Already Issued.", &H40, CVar(var_124), var_144, var_154)
  loc_121303F:   End If
  loc_1213050:   var_86 = CInt((UBound(global_100, 1) + 1))
  loc_1213062:   ReDim Preserve global_100(0 To CLng(var_86))
  loc_121308A:   global_100(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1213094: Next var_120 'Integer
  loc_121309E: global_88 = 0
  loc_12130A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10B22F0
  'Data Table: 4FC804
  Dim var_88 As Label
  Dim var_8C As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_BC As TextBox
  loc_10B2020: On Error Goto loc_10B22AB
  loc_10B2030: Me.LblUser.Caption = vbNullString
  loc_10B2045: Me.LblLDt.Caption = vbNullString
  loc_10B2060: If (SmartCardApplicable = "No") Then
  loc_10B207F:   Me.Recordset15.CursorLocation = 3
  loc_10B20A2:   var_8C = "Select S.Code as Code,S.Name,S.MobileNo As SearchKey From GuestProf S Where S.POS=1 And S.Code Not In (Select Distinct MemberCode from SmartCardRegistration Where CardType='Cash Card' And LogSite_Code='" & MemVar_1F95078
  loc_10B20B7:   var_A4 = CVar(var_8C & "' or LogSite_Code='HO') And (S.LOGSITE_CODE='" & MemVar_1F95078 & "' or S.LOGSITE_CODE='HO') Order By S.Name") 'String
  loc_10B20C1:   Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_10B20DB:   CVarUnk
  loc_10B20E0:   VerifyVarObj
  loc_10B20EC:   LateIdStAd
  loc_10B20FA:   Call Proc_286_30_F097E8(Me.DGMember, New)
  loc_10B2122:   Call Proc_286_29_EB397C(Proc_5_1_100EC1C("ADD", Me, global_52), 1)
  loc_10B2140:   Set var_88 = Me.Txt
  loc_10B2146:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_BC)
  loc_10B214E:   var_BC.Text = CStr(MemVar_1F950EC)
  loc_10B216B:   Set var_88 = Me.Txt
  loc_10B2171:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_BC)
  loc_10B2179:   var_BC.Text = "Cash Card"
  loc_10B2193:   Set var_88 = Me.Txt
  loc_10B2199:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_BC)
  loc_10B21A1:   var_BC.Text = "No"
  loc_10B21BA:   Set var_88 = Me.Txt
  loc_10B21C0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_BC)
  loc_10B21C8:   var_BC.Enabled = False
  loc_10B21DF:   Set var_88 = Me.Txt
  loc_10B21E5:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_BC)
  loc_10B21ED:   var_BC.SetFocus
  loc_10B21FC: Else
  loc_10B2200:   Set var_88 = Me.FrCardIssue
  loc_10B2206:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(-1)
  loc_10B2218:   If (CBool() = 0) Then
  loc_10B221B:     Call Proc_286_30_F097E8()
  loc_10B2235:     var_8C = "ADD"
  loc_10B223B:     Proc_5_1_100EC1C(var_8C, Me)
  loc_10B224E:     Set var_88 = Me.FrCardIssue
  loc_10B2254:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_10B2269:     Set var_88 = Me.CmdCardIss
  loc_10B226F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_BC)
  loc_10B2277:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_10B2290:     Set var_88 = Me.CmdCardIss
  loc_10B2296:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (1, var_BC)
  loc_10B229E:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_10B22AA:   End If
  loc_10B22AA: End If
  loc_10B22AA: Exit Sub
  loc_10B22AB: ' Referenced from: 10B2020
  loc_10B22B3: Set var_88 = Err()
  loc_10B22B9: Call 0.Method_arg_2C (var_8C)
  loc_10B22DA: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_10B22ED: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'FAF298
  'Data Table: 4FC804
  loc_FAF108: On Error Goto loc_FAF290
  loc_FAF142: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_FAF168:   Call Proc_286_29_EB397C(Proc_5_1_100EC1C("INI", Me))
  loc_FAF17C:   Set var_110 = Me.TopCtrl1
  loc_FAF182:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_FAF18A:   Call Proc_286_32_139DBDC(global_52)
  loc_FAF192: Else
  loc_FAF198:   Call 0.Method_arg_1E8 (var_110)
  loc_FAF1A0:   Call var_110.SetFocus
  loc_FAF1A9: End If
  loc_FAF1AD: Set var_110 = ()
  loc_FAF1B3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FAF1C5: If (CBool() = &HFF) Then
  loc_FAF1D1:   Set var_110 = (False)
  loc_FAF1D7:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FAF1DF: End If
  loc_FAF1E8: Set var_110 = Me.CmdCardIss
  loc_FAF1EE: Call 0.Method_TopCtrl1_UnknownEvent_B0 (0)
  loc_FAF1F6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_118)
  loc_FAF20C: If (CBool() = &HFF) Then
  loc_FAF21D:   Set var_110 = Me.CmdCardIss
  loc_FAF223:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (0, var_118)
  loc_FAF22B:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_FAF237: End If
  loc_FAF240: Set var_110 = Me.CmdCardIss
  loc_FAF246: Call 0.Method_TopCtrl1_UnknownEvent_B0 (1)
  loc_FAF24E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_118)
  loc_FAF264: If (CBool() = &HFF) Then
  loc_FAF275:   Set var_110 = Me.CmdCardIss
  loc_FAF27B:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (1, var_118)
  loc_FAF283:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_FAF28F: End If
  loc_FAF28F: Exit Sub
  loc_FAF290: ' Referenced from: FAF108
  loc_FAF290: Proc_6_60_E63754()
  loc_FAF295: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10C8D70
  'Data Table: 4FC804
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_10C8A80: On Error Goto loc_10C8D2D
  loc_10C8A91: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_10C8A94:   Exit Sub
  loc_10C8A95: End If
  loc_10C8AAC: If (Me.RecordCount > 0) Then
  loc_10C8AD2:   Call Proc_286_29_EB397C(Proc_5_1_100EC1C("EDIT", Me))
  loc_10C8AEA:   Set var_90 = Me.Txt
  loc_10C8AF0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10C8AF8:   var_98.Enabled = False
  loc_10C8B11:   Set var_90 = Me.Txt
  loc_10C8B17:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_10C8B1F:   var_98.Enabled = False
  loc_10C8B38:   Set var_90 = Me.Txt
  loc_10C8B3E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_98)
  loc_10C8B46:   var_98.Enabled = False
  loc_10C8B60:   Set var_90 = Me.Txt
  loc_10C8B66:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10C8B85:   If (var_98.Text = "Member") Then
  loc_10C8B95:     Set var_90 = Me.Txt
  loc_10C8B9B:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_10C8BA3:     var_98.Enabled = False
  loc_10C8BBC:     Set var_90 = Me.Txt
  loc_10C8BC2:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_10C8BCA:     var_98.Enabled = False
  loc_10C8BE3:     Set var_90 = Me.Txt
  loc_10C8BE9:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_10C8BF1:     var_98.Enabled = False
  loc_10C8C0A:     Set var_90 = Me.Txt
  loc_10C8C10:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_10C8C18:     var_98.Enabled = False
  loc_10C8C2F:     Set var_90 = Me.Txt
  loc_10C8C35:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_98)
  loc_10C8C3D:     var_98.SetFocus
  loc_10C8C4C:   Else
  loc_10C8C5A:     Set var_90 = Me.Txt
  loc_10C8C60:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10C8C68:     var_8C = var_98.Text
  loc_10C8C7F:     If (var_8C = "Cash Card") Then
  loc_10C8C8F:       Set var_90 = Me.Txt
  loc_10C8C95:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_10C8C9D:       var_98.Enabled = False
  loc_10C8CB4:       Set var_90 = Me.Txt
  loc_10C8CBA:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_10C8CC2:       var_98.SetFocus
  loc_10C8CCE:     End If
  loc_10C8CCE:   End If
  loc_10C8CD1: Else
  loc_10C8CF2:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_10C8D02: End If
  loc_10C8D0F: Me.LblUser.Caption = vbNullString
  loc_10C8D24: Me.LblLDt.Caption = vbNullString
  loc_10C8D2C: Exit Sub
  loc_10C8D2D: ' Referenced from: 10C8A80
  loc_10C8D35: Set var_90 = Err()
  loc_10C8D3B: Call 0.Method_arg_2C (var_8C)
  loc_10C8D5C: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_10C8D6F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19A2C
  'Data Table: 4FC804
  loc_E19A21: Me.Global.Unload Me
  loc_E19A29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F274A8
  'Data Table: 4FC804
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F273A8: On Error Goto loc_F27440
  loc_F273B4: var_88 = Me.RecordCount
  loc_F273C2: If (var_88 <= 0) Then
  loc_F273CB:   var_B8 = "Information"
  loc_F273E6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F273F6:   Exit Sub
  loc_F273F7: End If
  loc_F273FE: var_10C = "Select SCR.Code As SearchCode,SCR.Code,Convert(Varchar(11),SCR.IssDate,103) IssueDate,SCR.CardType,S.Name As MemberName,SCR.Name As Name,SCR.CardNo As MemberID,SCR.Addr As Address,SCR.Phone,Convert(Varchar(11),SCR.ValidUpTo,103) As ValidUpTo,SCR.BlockedYN FROM SmartCardRegistration SCR Left Join Subgroup S On SCR.Membercode=S.SubCode WHERE (SCR.LOGSITE_CODE='" & MemVar_1F95078
  loc_F27405: MemVar_1F950E4 = var_10C & "' or SCR.LOGSITE_CODE='HO') Order by SCR.IssDate,SCR.Code"
  loc_F2740F: var_10C = "1200,900,900,3500,3500,1500,3500,2000,900,500"
  loc_F27415: Proc_6_126_F1C850(var_10C)
  loc_F27423: MemVar_1F95120 = Me
  loc_F2743A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2743F: Exit Sub
  loc_F27440: ' Referenced from: F273A8
  loc_F27448: Set var_110 = Err()
  loc_F2744E: Call 0.Method_arg_1C (var_88)
  loc_F2745F: If (var_88 <> 0) Then
  loc_F2746A:   Set var_110 = Err()
  loc_F27470:   Call 0.Method_arg_2C (var_10C)
  loc_F27491:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F274A4: End If
  loc_F274A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33848
  'Data Table: 4FC804
  loc_E33838: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33840: Call Proc_286_32_139DBDC(global_52)
  loc_E33845: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33A28
  'Data Table: 4FC804
  loc_E33A18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33A20: Call Proc_286_32_139DBDC(global_52)
  loc_E33A25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33968
  'Data Table: 4FC804
  loc_E33958: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33960: Call Proc_286_32_139DBDC(global_52)
  loc_E33965: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33908
  'Data Table: 4FC804
  loc_E338F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33900: Call Proc_286_32_139DBDC(global_52)
  loc_E33905: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A790
  'Data Table: 4FC804
  Dim Me As Recordset15
  loc_E0A787: Me.Requery -1
  loc_E0A78C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1674238
  'Data Table: 4FC804
  Dim var_AC As Variant
  Dim var_BC As TextBox
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim var_C0 As String
  Dim unk_4FC80F As Connection15
  Dim var_A8 As Variant
  Dim var_B0 As Field20
  Dim Me As Recordset15
  Dim var_124 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Variant
  Dim var_4DC As Variant
  Dim var_524 As TextBox
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_1B4 As Variant
  Dim var_1FC As Variant
  Dim var_29C As Variant
  Dim var_2D4 As Variant
  Dim var_3AC As Variant
  Dim var_3EC As Variant
  Dim var_42C As Variant
  Dim var_4CC As Variant
  Dim var_558 As Variant
  Dim var_578 As Variant
  Dim var_A2 As Integer
  Dim var_174 As TextBox
  Dim var_1B8 As MSHFlexGrid
  Dim var_5AC As Double
  Dim var_104 As Variant
  Dim var_26C As Variant
  Dim var_194 As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_2C4 As Variant
  Dim var_39C As Variant
  loc_1672BC0: On Error Goto loc_1674188
  loc_1672BC7: var_86 = CByte(0) 'Byte
  loc_1672BD6: Set var_A8 = Me.Txt
  loc_1672BDC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1672BE4: var_B4 = "Card Type"
  loc_1672C05: If (Proc_183_19_E8E68C(var_AC, var_B4) = 0) Then
  loc_1672C0F:   Call Txt_GotFocus()
  loc_1672C14:   Exit Sub
  loc_1672C15: End If
  loc_1672C23: Set var_A8 = Me.Txt
  loc_1672C29: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4)
  loc_1672C31: CInt(1) = var_AC.Text
  loc_1672C4C: Set var_B0 = Me.Txt
  loc_1672C52: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC, var_C0)
  loc_1672C5A: (var_B4 = "Member") = var_BC.Text
  loc_1672C8D: If (var_AC Or ((var_C0 = "Cash Card") And (SmartCardApplicable = "No"))) Then
  loc_1672C9E:   Set var_A8 = Me.Txt
  loc_1672CA4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1672CC3:   If (var_AC.Tag = vbNullString) Then
  loc_1672CE7:     MsgBox("Member Name is a required field.", &H10, "Validation Error", var_124, var_144)
  loc_1672D02:     Set var_A8 = Me.Txt
  loc_1672D08:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1672D10:     var_AC.SetFocus
  loc_1672D1C:     Exit Sub
  loc_1672D1D:   End If
  loc_1672D1D: End If
  loc_1672D28: Set var_A8 = Me.Txt
  loc_1672D2E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1672D57: If (Proc_183_19_E8E68C(var_AC, "Name") = 0) Then
  loc_1672D61:   Call Txt_GotFocus()
  loc_1672D66:   Exit Sub
  loc_1672D67: End If
  loc_1672D72: Set var_A8 = Me.Txt
  loc_1672D78: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1672DA1: If (Proc_183_19_E8E68C(var_AC, "Card Id") = 0) Then
  loc_1672DAB:   Call Txt_GotFocus()
  loc_1672DB0:   Exit Sub
  loc_1672DB1: End If
  loc_1672DBC: Set var_A8 = Me.Txt
  loc_1672DC2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, CInt(4))
  loc_1672DCA: var_B4 = "Valid Upto Date"
  loc_1672DEB: If (Proc_183_19_E8E68C(var_AC, var_B4) = 0) Then
  loc_1672DF5:   Call Txt_GotFocus()
  loc_1672DFA:   Exit Sub
  loc_1672DFB: End If
  loc_1672E09: Set var_B0 = Me.Txt
  loc_1672E0F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_C0)
  loc_1672E17: CInt(7) = var_BC.Text
  loc_1672E2A: Set var_A8 = Me.Txt
  loc_1672E30: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, var_B4)
  loc_1672E38: CInt(3) = var_AC.Text
  loc_1672E5A: If (CDate(var_B4) < CDate(var_C0)) Then
  loc_1672E68:   var_104 = "Validation Error"
  loc_1672E78:   var_E4 = "Valid Upto Date should be greater than Issue Date."
  loc_1672E7E:   MsgBox(var_E4, &H10, var_104, var_124, var_144)
  loc_1672E95:   Call Txt_GotFocus()
  loc_1672E9A:   Exit Sub
  loc_1672E9B: End If
  loc_1672E9F: Set var_A8 = Me.TopCtrl1
  loc_1672EA5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(CInt(7))
  loc_1672EBE: If (CStr(var_AC) = "Add") Then
  loc_1672EC7:   var_F4 = 0
  loc_1672EE4:   var_B4 = "Select IsNull(Max(CAST(Code AS INT)),0)+1 AS MyCode From SmartCardRegistration Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1672EF4:   unk_4FC80F.Execute CStr(var_AC) & "' AND  IsNumeric(Code)=1", var_E4, -1
  loc_1672EFC:   var_A8 = var_A8.Fields
  loc_1672F04:   var_F4 = var_AC.Item(var_AC)
  loc_1672F0C:   var_B0 = var_B0.Value
  loc_1672F6A:   global_60 = CStr(Format(CStr(Format(CStr(var_104), "00000000")), "00000000"))
  loc_1672F7B: Else
  loc_1672F98:   var_AC = Me.Fields.Item("Code")
  loc_1672FAF:   global_60 = CStr(var_AC.Value)
  loc_1672FC0: End If
  loc_1672FC9: unk_4FC80F.BeginTrans var_148
  loc_1672FD2: var_86 = CByte(1) 'Byte
  loc_1672FDA: Set var_A8 = Me.TopCtrl1
  loc_1672FE0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(1)
  loc_1672FF9: If (CStr(1) = "Add") Then
  loc_167300D:   var_124 = CVar("Agnst.New Reg." & global_60 & "/") 'String
  loc_167301B:   Set var_A8 = Me.Txt
  loc_1673021:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_167303D:   var_90 = CStr(var_124 & Trim(CVar(var_AC)))
  loc_1673064:   If (SmartCardApplicable = "No") Then
  loc_1673075:     Set var_A8 = Me.Txt
  loc_167307B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1673083:     var_C0 = var_AC.Text
  loc_1673093:     Set var_B0 = Me.Txt
  loc_1673099:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BC)
  loc_16730A8:     var_104 = Trim(CVar(var_BC))
  loc_16730B3:     Proc_6_17_EAAE40(var_124, var_104)
  loc_16730C3:     Set var_170 = Me.Txt
  loc_16730C9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_16730D8:     Proc_6_17_EAAE40(var_194, CVar(var_174))
  loc_16730E8:     Set var_1B8 = Me.Txt
  loc_16730EE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_16730FD:     Proc_6_17_EAAE40(var_1DC, CVar(var_1BC))
  loc_167310D:     Set var_200 = Me.Txt
  loc_1673113:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_204)
  loc_1673122:     Proc_6_17_EAAE40(var_224, CVar(var_204))
  loc_1673132:     Set var_248 = Me.Txt
  loc_1673138:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_24C)
  loc_1673147:     Proc_6_7_F26918(var_26C, CVar(var_24C))
  loc_1673157:     Set var_2A0 = Me.Txt
  loc_167315D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2A4)
  loc_167316C:     Proc_6_7_F26918(var_2C4, CVar(var_2A4))
  loc_167317C:     Set var_2F8 = Me.Txt
  loc_1673182:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2FC)
  loc_16731D3:     var_4DC = MemVar_1F95078
  loc_16731DB:     Proc_6_17_EAAE40(var_4EC)
  loc_16731EE:     Set var_520 = Me.Txt
  loc_16731F4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_524)
  loc_167320A:     Proc_6_17_EAAE40(var_548, CVar(var_524.Tag))
  loc_1673226:     var_B4 = "Insert Into SmartCardRegistration(Code,CardType,CardNo,Name,Addr,Phone,IssDate,ValidUpto,BlockedYN,SerialNo,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,MemberCode) Values('" & global_60
  loc_1673291:     var_2D4 = CVar(var_B4 & "','" & var_C0 & "',") & var_124 & "," & var_194 & "," & var_1DC & "," & var_224 & "," & var_26C & "," & var_2C4 
  loc_16732CA:     var_42C = var_2D4 & ",'" & IIf((Trim(CVar(var_2FC)) = "Yes"), "Y", "N") & "','" & CVar(global_64) & "','" & CVar(MemVar_1F95070) 
  loc_1673319:     var_578 = var_42C & "','" & CVar(MemVar_1F950C8) & "','" & CVar(Proc_6_14_EF402C(var_104)) & "','A'," & var_4EC & "," & var_548 & ")" 
  loc_1673327:     unk_4FC80F.Execute CStr(var_578), var_59C, -1
  loc_16733C1:     var_A2 = &HFF
  loc_16733C7:   Else
  loc_16733D8:     If (Proc_275_11_10CC4B0(var_9C, var_94, var_A0) = &HFF) Then
  loc_16733E6:       If (global_64 = var_A0) Then
  loc_16733F4:         If (global_96 = "Yes") Then
  loc_1673405:           Set var_A8 = Me.Txt
  loc_167340B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_C0)
  loc_1673413:           var_A2 = var_AC.Text
  loc_1673423:           Set var_B0 = Me.Txt
  loc_1673429:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BC)
  loc_1673443:           Proc_6_17_EAAE40(var_124, Trim(CVar(var_BC)))
  loc_1673453:           Set var_170 = Me.Txt
  loc_1673459:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_1673468:           Proc_6_17_EAAE40(var_194, CVar(var_174))
  loc_1673478:           Set var_1B8 = Me.Txt
  loc_167347E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_167348D:           Proc_6_17_EAAE40(var_1DC, CVar(var_1BC))
  loc_167349D:           Set var_200 = Me.Txt
  loc_16734A3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_204)
  loc_16734B2:           Proc_6_17_EAAE40(var_224, CVar(var_204))
  loc_16734C2:           Set var_248 = Me.Txt
  loc_16734C8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_24C)
  loc_16734D7:           Proc_6_7_F26918(var_26C, CVar(var_24C))
  loc_16734E7:           Set var_2A0 = Me.Txt
  loc_16734ED:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2A4)
  loc_16734FC:           Proc_6_7_F26918(var_2C4, CVar(var_2A4))
  loc_167350C:           Set var_2F8 = Me.Txt
  loc_1673512:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2FC)
  loc_1673563:           var_4DC = MemVar_1F95078
  loc_167356B:           Proc_6_17_EAAE40(var_4EC, var_4DC)
  loc_167357E:           Set var_520 = Me.Txt
  loc_1673584:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_524)
  loc_167359A:           Proc_6_17_EAAE40(var_548, CVar(var_524.Tag))
  loc_16735B6:           var_B4 = "Insert Into SmartCardRegistration(Code,CardType,CardNo,Name,Addr,Phone,IssDate,ValidUpto,BlockedYN,SerialNo,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,MemberCode) Values('" & global_60
  loc_167361A:           var_29C = CVar(var_B4 & "','" & var_C0 & "',") & var_124 & "," & var_194 & "," & var_1DC & "," & var_224 & "," & var_26C & "," 
  loc_167365A:           var_42C = var_29C & var_2C4 & ",'" & IIf((Trim(CVar(var_2FC)) = "Yes"), "Y", "N") & "','" & CVar(global_64) & "','" & CVar(MemVar_1F95070) 
  loc_16736A0:           var_558 = var_42C & "','" & CVar(MemVar_1F950C8) & "','" & CVar(Proc_6_14_EF402C(var_5A0)) & "','A'," & var_4EC & "," & var_548 
  loc_16736B7:           unk_4FC80F.Execute CStr(var_558 & ")"), var_59C, -1
  loc_1673752:         Else
  loc_1673760:           Set var_A8 = Me.Txt
  loc_1673766:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_C0)
  loc_167376E:           var_5A0 = var_AC.Text
  loc_167377E:           Set var_B0 = Me.Txt
  loc_1673784:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BC)
  loc_167378C:           var_E4 = CVar(var_BC) 'Address
  loc_167379E:           Proc_6_17_EAAE40(var_124, Trim(var_E4))
  loc_16737AE:           Set var_170 = Me.Txt
  loc_16737B4:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_16737C3:           Proc_6_17_EAAE40(var_194, CVar(var_174))
  loc_16737D3:           Set var_1B8 = Me.Txt
  loc_16737D9:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_16737E8:           Proc_6_17_EAAE40(var_1DC, CVar(var_1BC))
  loc_16737F8:           Set var_200 = Me.Txt
  loc_16737FE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_204)
  loc_167380D:           Proc_6_17_EAAE40(var_224, CVar(var_204))
  loc_167381D:           Set var_248 = Me.Txt
  loc_1673823:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_24C)
  loc_1673832:           Proc_6_7_F26918(var_26C, CVar(var_24C))
  loc_1673842:           Set var_2A0 = Me.Txt
  loc_1673848:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2A4)
  loc_1673857:           Proc_6_7_F26918(var_2C4, CVar(var_2A4))
  loc_1673867:           Set var_2F8 = Me.Txt
  loc_167386D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2FC)
  loc_1673891:           var_36C = "Y"
  loc_16738BE:           var_4DC = MemVar_1F95078
  loc_16738C6:           Proc_6_17_EAAE40(var_4EC)
  loc_16738D9:           Set var_520 = Me.Txt
  loc_16738DF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_524)
  loc_16738F5:           Proc_6_17_EAAE40(var_548, CVar(var_524.Tag))
  loc_1673911:           var_B4 = "Insert Into SmartCardRegistration(Code,CardType,CardNo,Name,Addr,Phone,IssDate,ValidUpto,BlockedYN,SerialNo,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,MemberCode) Values('" & global_60
  loc_167392C:           var_15C = CVar(var_B4 & "','" & var_C0 & "',") & var_124 
  loc_167398C:           var_3AC = var_15C & "," & var_194 & "," & var_1DC & "," & var_224 & "," & var_26C & "," & var_2C4 & ",'" & IIf((Trim(CVar(var_2FC)) = "Yes"), var_36C, "N") 
  loc_16739A2:           var_3EC = var_3AC & "','" & CVar(global_64) 
  loc_16739E4:           var_4CC = var_3EC & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "','" & CVar(Proc_6_14_EF402C(var_4DC)) & "','A'," 
  loc_1673A12:           unk_4FC80F.Execute CStr(var_4CC & var_4EC & "," & var_548 & ")"), var_59C, -1
  loc_1673AB8:           Proc_6_17_EAAE40(var_E4, global_64)
  loc_1673AC8:           Set var_A8 = Me.Txt
  loc_1673ACE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1673ADD:           Proc_6_7_F26918(var_15C, CVar(var_AC))
  loc_1673AF0:           Proc_6_17_EAAE40(var_194, global_60)
  loc_1673B00:           Set var_B0 = Me.Txt
  loc_1673B06:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_BC)
  loc_1673B15:           Proc_6_7_F26918(var_1DC, CVar(var_BC))
  loc_1673B28:           Set var_170 = Me.Txt
  loc_1673B2E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174, var_B4)
  loc_1673B36:           var_5A0 = var_174.Tag
  loc_1673B44:           Proc_6_17_EAAE40(var_224, CVar(var_B4))
  loc_1673B63:           var_5AC = Val(CStr(Me.GridSel.Tag))
  loc_1673B7B:           var_104 = "Update MemberFamily Set HW_Id=" & var_E4 
  loc_1673BA4:           var_1B4 = var_104 & ",CardIssDate=" & var_15C & ",CardRegId=" & var_194 & ",CardValidUpto=" 
  loc_1673BB4:           var_1FC = var_1B4 & var_1DC & " Where SubCode=" 
  loc_1673BF9:           unk_4FC80F.Execute CStr(var_1FC & var_224 & " And SNo=" & CVar(var_5AC) & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_2C4, -1
  loc_1673C47:         End If
  loc_1673C67:         Set var_A8 = Me.Txt
  loc_1673C6D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC, var_B4, "Update SmartCardMaster Set MemberCode=", var_1B4)
  loc_1673C75:         -1 = var_AC.Tag
  loc_1673C83:         Proc_6_17_EAAE40(var_104, CVar(var_B4), var_B0)
  loc_1673CA6:         Proc_6_17_EAAE40(var_15C, global_60, var_1BC & var_104 & ",CardRegId=")
  loc_1673CAE:         var_16C = var_5AC & var_15C 
  loc_1673CC9:         Proc_6_17_EAAE40(var_194, global_64)
  loc_1673CDF:         unk_4FC80F.Execute CStr(var_16C & " Where HW_Id=" & var_194), var_4DC, 
  loc_1673D25:         Set var_A8 = Me.Txt
  loc_1673D2B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1673D4A:         var_124 = Left(Trim(CVar(var_AC)), &H14)
  loc_1673D5D:         var_144 = CVar(Proc_6_45_EADFB8(global_60)) 'String
  loc_1673D63:         var_15C = (var_144 + var_124)
  loc_1673D8A:         If (Proc_275_3_1212B74(CStr(var_15C), CDbl(0), CDbl(0)) = &HFF) Then
  loc_1673D8F:           var_A2 = &HFF
  loc_1673D95:         Else
  loc_1673D98:         Else
  loc_1673D9B:         Else
  loc_1673DA6:           var_104 = "Smart Card Verification"
  loc_1673DBC:           MsgBox("Smart Card is Changed", &H10, var_104, var_124, var_144)
  loc_1673DCF:         Else
  loc_1673DD2:         Else
  loc_1673DD5:         Else
  loc_1673DD5:         End If
  loc_1673DD8:       Else
  loc_1673DE3:         Set var_A8 = Me.Txt
  loc_1673DE9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_A2)
  loc_1673DF8:         Proc_6_17_EAAE40(var_104, CVar(var_AC))
  loc_1673E08:         Set var_B0 = Me.Txt
  loc_1673E0E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_BC)
  loc_1673E1D:         Proc_6_17_EAAE40(var_16C, CVar(var_BC))
  loc_1673E2D:         Set var_170 = Me.Txt
  loc_1673E33:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_174)
  loc_1673E42:         Proc_6_17_EAAE40(var_1B4, CVar(var_174))
  loc_1673E52:         Set var_1B8 = Me.Txt
  loc_1673E58:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1BC)
  loc_1673E67:         Proc_6_7_F26918(var_1FC, CVar(var_1BC))
  loc_1673E77:         Set var_200 = Me.Txt
  loc_1673E7D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_204)
  loc_1673ECE:         Proc_183_7_EB17D4(var_36C, CVar(Proc_6_15_EF37AC(var_A0)))
  loc_1673EE8:         var_124 = "UPDATE SmartCardRegistration SET Name=" & var_104 
  loc_1673EF1:         var_144 = var_124 & ",Addr=" 
  loc_1673F28:         var_2C4 = var_144 & var_16C & ",Phone=" & var_1B4 & ",ValidUpto=" & var_1FC & ",BlockedYN='" & IIf((Trim(CVar(var_204)) = "Yes"), "Y", "N") 
  loc_1673F67:         var_39C = var_2C4 & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_36C & ",U_AE='E' WHERE Code='" 
  loc_1673F8B:         unk_4FC80F.Execute CStr(var_39C & CVar(global_60) & "'"), var_3EC, -1
  loc_1673FEB:       End If
  loc_1673FF1:       unk_4FC80F.CommitTrans
  loc_1673FFA:       var_86 = CByte(0) 'Byte
  loc_1673FFE:       Call Proc_286_33_EB8E9C(var_248)
  loc_1674007:       Set var_A8 = Me.TopCtrl1
  loc_167400D:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(&HC)
  loc_167403B:       If ((CStr() = "Add") And (SmartCardApplicable = "No")) Then
  loc_1674043:         var_B4 = 0
  loc_167404F:         Proc_233_15_15FBA2C(global_60)
  loc_1674057:       End If
  loc_1674062:       Me.Requery -1
  loc_167407F:       var_B4 = "Code='" & global_60
  loc_167408F:       Me.Find var_B4 & "'", 0, 1
  loc_16740A1:       If (var_A2 = &HFF) Then
  loc_16740BA:         var_D4 = "Registration Completed Successfully."
  loc_16740C5:         MsgBox(var_D4, &H40, "Cash Card Detail", var_124, var_144)
  loc_16740D5:       End If
  loc_16740D9:       Set var_A8 = Me.FrCardIssue
  loc_16740DF:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_D4)
  loc_16740F1:       If (CBool(var_B4) = &HFF) Then
  loc_16740FD:         Set var_A8 = Me.FrCardIssue
  loc_1674103:         Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_167410B:       End If
  loc_1674126:       If (Me.FrFamilyMember.Visible = &HFF) Then
  loc_1674135:         Me.FrFamilyMember.Visible = False
  loc_167413D:       End If
  loc_1674152:       var_B4 = "INI"
  loc_1674160:       Call Proc_286_29_EB397C(Proc_5_1_100EC1C(var_B4, Me))
  loc_1674174:       Set var_A8 = Me.TopCtrl1
  loc_167417A:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1674182:       Call Proc_286_32_139DBDC(global_52)
  loc_1674187:       Exit Sub
  loc_1674188:     End If
  loc_1674188:   End If
  loc_1674188: End If
  loc_1674188: ' Referenced from: 1672BC0
  loc_1674191: If (CInt(var_86) = 1) Then
  loc_167419A:   unk_4FC80F.RollbackTrans
  loc_167419F: End If
  loc_16741A5: If (var_A2 = 0) Then
  loc_16741B3:   var_104 = "Cash Card Detail"
  loc_16741C9:   MsgBox("Registration Failed.", &H10, var_104, var_124, var_144)
  loc_16741D9: End If
  loc_16741E1: Set var_A8 = Err()
  loc_16741E7: Call 0.Method_arg_1C (var_148)
  loc_16741F8: If (var_148 <> 0) Then
  loc_1674203:   Set var_A8 = Err()
  loc_1674209:   Call 0.Method_arg_2C (var_B4)
  loc_1674222:   MsgBox(CVar(var_B4), &H10, var_104, var_124, var_144)
  loc_1674235: End If
  loc_1674235: Exit Sub
End Sub

Public Sub CmdCardIss_UnknownEvent_9(Index As Integer) '1218844
  'Data Table: 4FC804
  Dim var_8E As Integer
  Dim var_98 As Frame
  Dim var_94 As String
  Dim var_D8 As Variant
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  loc_121836F: var_8E = Index
  loc_121837A: If (var_8E = CInt(0)) Then
  loc_121837D:   Call TopCtrl1_UnknownEvent_11()
  loc_1218382:   Call Proc_286_32_139DBDC(var_8E)
  loc_12183AA:   Call Proc_286_29_EB397C(Proc_5_1_100EC1C("INI", Me))
  loc_12183BE:   Set var_98 = Me.FrCardIssue
  loc_12183C4:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_12183DA:   Set var_98 = Me.CmdCardIss
  loc_12183E0:   Call 0.Method_CmdCardIss_UnknownEvent_90 (0, var_C0)
  loc_12183E8:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1218402:   Set var_98 = Me.CmdCardIss
  loc_1218408:   Call 0.Method_CmdCardIss_UnknownEvent_90 (1, var_C0)
  loc_1218410:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1218428:   Me.FrFamilyMember.Visible = False
  loc_1218433: Else
  loc_121843B:   If (var_8E = CInt(1)) Then
  loc_1218452:     If (Proc_275_11_10CC4B0(var_88, var_8C) = &HFF) Then
  loc_1218460:       If (global_96 = "Yes") Then
  loc_121847F:         Me.Recordset15.CursorLocation = 3
  loc_12184A2:         var_94 = "Select S.Code as Code,S.Name,S.MobileNo As SearchKey From GuestProf S Where S.POS=1 And S.Code Not In (Select Distinct MemberCode from SmartCardRegistration Where CardType='Cash Card' And LogSite_Code='" & MemVar_1F95078
  loc_12184B7:         var_D8 = CVar(var_94 & "' or LogSite_Code='HO') And (S.LOGSITE_CODE='" & MemVar_1F95078 & "' or S.LOGSITE_CODE='HO') Order By S.Name") 'String
  loc_12184C1:         Me.Open var_D8, CVar(MemVar_1F95044), 3
  loc_12184DB:         CVarUnk
  loc_12184E0:         VerifyVarObj
  loc_12184E6:         Set var_98 = Me.DGMember
  loc_12184EC:         LateIdStAd
  loc_121851D:         Call Proc_286_29_EB397C(Proc_5_1_100EC1C("ADD", Me, global_52, Me, New), 1, -1)
  loc_121853B:         Set var_98 = Me.Txt
  loc_1218541:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(0), var_C0, CStr(MemVar_1F950EC))
  loc_1218549:         var_C0.Text = global_64
  loc_1218566:         Set var_98 = Me.Txt
  loc_121856C:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_1218574:         var_C0.Text = "Cash Card"
  loc_121858E:         Set var_98 = Me.Txt
  loc_1218594:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(8), var_C0)
  loc_121859C:         var_C0.Text = "No"
  loc_12185B1:         Set var_98 = Me.FrCardIssue
  loc_12185B7:         Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_12185CD:         Set var_98 = Me.CmdCardIss
  loc_12185D3:         Call 0.Method_CmdCardIss_UnknownEvent_90 (0, var_C0)
  loc_12185DB:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_12185F5:         Set var_98 = Me.CmdCardIss
  loc_12185FB:         Call 0.Method_CmdCardIss_UnknownEvent_90 (1, var_C0)
  loc_1218603:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_121861C:         Set var_98 = Me.Txt
  loc_1218622:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_121862A:         var_C0.Enabled = False
  loc_1218641:         Set var_98 = Me.Txt
  loc_1218647:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(9), var_C0)
  loc_121864F:         var_C0.SetFocus
  loc_121865E:       Else
  loc_121867A:         Me.CursorLocation = 3
  loc_121869D:         var_94 = "Select S.SubCode as Code,S.Name,S.CardNo As SearchKey From SubGroup S where S.ActiveYN=1 And S.BlackListed<>'Y' And S.CompanyType In (Select Code From MemCatMast Where (S.LOGSITE_CODE='" & MemVar_1F95078
  loc_12186AE:         Me.Open CVar(var_94 & "' or S.LOGSITE_CODE='HO')) Order By S.Name"), CVar(MemVar_1F95044), 3
  loc_12186C2:         CVarUnk
  loc_12186C7:         VerifyVarObj
  loc_12186CD:         Set var_98 = Me.DGMember
  loc_12186D3:         LateIdStAd
  loc_1218704:         Call Proc_286_29_EB397C(Proc_5_1_100EC1C("ADD", Me, global_52, Me), New, 1)
  loc_1218722:         Set var_98 = Me.Txt
  loc_1218728:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(0), var_C0, CStr(MemVar_1F950EC))
  loc_1218730:         var_C0.Text = -1
  loc_121874D:         Set var_98 = Me.Txt
  loc_1218753:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_121875B:         var_C0.Text = "Member"
  loc_1218775:         Set var_98 = Me.Txt
  loc_121877B:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(8), var_C0)
  loc_1218783:         var_C0.Text = "No"
  loc_1218798:         Set var_98 = Me.FrCardIssue
  loc_121879E:         Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_12187B4:         Set var_98 = Me.CmdCardIss
  loc_12187BA:         Call 0.Method_CmdCardIss_UnknownEvent_90 (0, var_C0)
  loc_12187C2:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_12187DC:         Set var_98 = Me.CmdCardIss
  loc_12187E2:         Call 0.Method_CmdCardIss_UnknownEvent_90 (1, var_C0)
  loc_12187EA:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1218803:         Set var_98 = Me.Txt
  loc_1218809:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_1218811:         var_C0.Enabled = False
  loc_1218828:         Set var_98 = Me.Txt
  loc_121882E:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(9), var_C0)
  loc_1218836:         var_C0.SetFocus
  loc_1218842:       End If
  loc_1218842:     End If
  loc_1218842:   End If
  loc_1218842: End If
  loc_1218842: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1233790
  'Data Table: 4FC804
  Dim var_86 As Integer
  Dim var_AC As String
  Dim var_C4 As TextBox
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_CC As Fields15
  Dim var_100 As Variant
  loc_1233284: Call Proc_286_33_EB8E9C()
  loc_1233289: On Error Goto loc_123374A
  loc_123328F: var_86 = Index
  loc_123329A: If (var_86 = CInt(1)) Then
  loc_12332AA:   ReDim var_8C(0 To 1)
  loc_12332C1:   var_8C(0) = "Member"
  loc_12332C3:   var_AC = "Cash Card"
  loc_12332D0:   var_8C(1) = var_AC
  loc_12332E7:   global_68 = Array(var_8C)
  loc_12332F2:   Set var_D0 = Me.ListView
  loc_123330D:   Set var_C4 = Me.Txt
  loc_1233327:   Set global_84 = Proc_6_66_F0048C(var_D0, var_C4, Index, global_68)
  loc_1233345:   Set var_C0 = Me.Txt
  loc_123334B:   Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8)
  loc_1233353:   2 = var_C4.Text
  loc_1233365:   Set var_CC = Me.Txt
  loc_123336B:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_1233373:   var_D0.Tag = global_68
  loc_1233389: Else
  loc_1233391:   If (var_86 = CInt(2)) Then
  loc_12333A2:     Set var_C0 = Me.Txt
  loc_12333A8:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_C4)
  loc_12333B0:     var_D8 = var_C4.Text
  loc_12333C7:     If (var_D8 = "Member") Then
  loc_12333E1:       If (Me.RecordCount > 0) Then
  loc_12333EF:         Set var_C4 = Me.FGPoint
  loc_1233407:         Proc_6_137_1192FDC(Me.DGMember, global_56, Index)
  loc_1233415:       End If
  loc_1233463:       Set var_C0 = Me.Txt
  loc_1233469:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8)
  loc_1233471:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_1233489:       If (var_C4 Or (var_D8 = vbNullString)) Then
  loc_123348C:         Exit Sub
  loc_123348D:       End If
  loc_123349A:       Set var_C0 = Me.Txt
  loc_12334A0:       Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_12334A8:       var_D8 = var_C4.Text
  loc_12334B0:       var_F0 = CVar(var_D8) 'String
  loc_12334F5:       If CBool(var_F0 <> Me.Fields.Item("Name").Value) Then
  loc_12334FE:         Me.MoveFirst
  loc_1233523:         Set var_C0 = Me.Txt
  loc_1233529:         Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8, "Name =")
  loc_1233531:         0 = var_C4.Text
  loc_123353F:         Proc_6_17_EAAE40(var_F0, CVar(var_D8), 1)
  loc_1233555:         Me.Find CStr(var_AC & var_F0), var_86, 
  loc_123356D:       End If
  loc_1233570:     Else
  loc_123357E:       Set var_C0 = Me.Txt
  loc_1233584:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_C4)
  loc_123358C:       var_D8 = var_C4.Text
  loc_12335A3:       If (var_D8 = "Cash Card") Then
  loc_12335BD:         If (Me.RecordCount > 0) Then
  loc_12335CB:           Set var_C4 = Me.FGPoint
  loc_12335E3:           Proc_6_137_1192FDC(Me.DGMember, global_56)
  loc_12335F1:         End If
  loc_123363F:         Set var_C0 = Me.Txt
  loc_1233645:         Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8)
  loc_123364D:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_1233665:         If (Index Or (var_D8 = vbNullString)) Then
  loc_1233668:           Exit Sub
  loc_1233669:         End If
  loc_1233676:         Set var_C0 = Me.Txt
  loc_123367C:         Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_1233684:         var_D8 = var_C4.Text
  loc_123368C:         var_F0 = CVar(var_D8) 'String
  loc_12336D1:         If CBool(var_F0 <> Me.Fields.Item("Name").Value) Then
  loc_12336DA:           Me.MoveFirst
  loc_12336FF:           Set var_C0 = Me.Txt
  loc_1233705:           Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8, "Name =")
  loc_123370D:           0 = var_C4.Text
  loc_123371B:           Proc_6_17_EAAE40(var_F0, CVar(var_D8), 1)
  loc_1233723:           var_100 = var_AC & var_F0 
  loc_1233731:           Me.Find CStr(var_100), var_C4, 
  loc_1233749:         End If
  loc_1233749:       End If
  loc_1233749:     End If
  loc_1233749:   End If
  loc_1233749: End If
  loc_1233749: Exit Sub
  loc_123374A: ' Referenced from: 1233289
  loc_1233752: Set var_C0 = Err()
  loc_1233758: Call 0.Method_arg_2C (var_D8)
  loc_1233779: MsgBox(CVar(var_D8), &H40, "Information", var_100, var_124)
  loc_123378C: Exit Sub
  loc_123378D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1108FF4
  'Data Table: 4FC804
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Frame
  loc_1108CDF: var_86 = Shift
  loc_1108CEC: If (CLng(Shift) = &H1B) Then
  loc_1108CEF:   Call Proc_286_33_EB8E9C(var_86)
  loc_1108CF4:   Exit Sub
  loc_1108CF5: End If
  loc_1108CF8: var_88 = KeyCode
  loc_1108D03: If (var_88 = CInt(1)) Then
  loc_1108D28:   Set var_8C = Me.Txt
  loc_1108D2E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1108D36:   var_94 = var_90.Left
  loc_1108D48:   Set var_98 = Me.Txt
  loc_1108D4E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1108D56:   var_A0 = var_9C.Top
  loc_1108D68:   Set var_A4 = Me.Txt
  loc_1108D6E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_1108D76:   var_AC = var_A8.Height
  loc_1108D88:   Set var_B0 = Me.Txt
  loc_1108D8E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_1108D96:   var_B8 = var_B4.Width
  loc_1108DDE:   Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1108E05: Else
  loc_1108E0D:   If (var_88 = CInt(2)) Then
  loc_1108E1E:     Set var_8C = Me.Txt
  loc_1108E24:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_DC, CInt(var_94))
  loc_1108E2C:     CInt((var_A0 + var_AC)) = var_90.Text
  loc_1108E47:     Set var_98 = Me.Txt
  loc_1108E4D:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_9C, var_E0, (var_DC = "Member"))
  loc_1108E55:     CInt(var_B8) = var_9C.Text
  loc_1108E75:     If (520 Or (var_E0 = "Cash Card")) Then
  loc_1108E95:       Set var_9C = Me.FGPoint
  loc_1108EA0:       Set var_98 = Nothing
  loc_1108ECE:       Proc_6_69_134A630(Me.DGMember, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_1108F3D:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1108F44:         Set var_98 = Me.DGMember
  loc_1108F63:         Proc_6_138_106E830(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_1108F71:       End If
  loc_1108F71:     End If
  loc_1108F71:   End If
  loc_1108F71: End If
  loc_1108FAA: If ((Me.FrmList.Visible = 0) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_1108FC2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1108FCB:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_1108FD0:   End If
  loc_1108FE3:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_1108FEC:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_1108FF1:   End If
  loc_1108FF1: End If
  loc_1108FF1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '100BF68
  'Data Table: 4FC804
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_A0 As String
  Dim var_D4 As TextBox
  Dim var_DC As TextBox
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_100BD6A: Proc_6_133_E7FB08(var_94)
  loc_100BD73: arg_10 = CInt(var_94)
  loc_100BD7C: Proc_6_58_E06050(arg_10, arg_10)
  loc_100BD84: var_96 = KeyAscii
  loc_100BD8F: If (var_96 = CInt(8)) Then
  loc_100BD96:   Set var_9C = Me.TopCtrl1
  loc_100BD9C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_96)
  loc_100BDB5:   If (CStr(arg_10) = "Edit") Then
  loc_100BDE1:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_100BDF1:       Set var_9C = Me.Txt
  loc_100BDF7:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D4)
  loc_100BDFF:       var_D4.Text = "Yes"
  loc_100BE0E:     Else
  loc_100BE37:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_100BE47:         Set var_9C = Me.Txt
  loc_100BE4D:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D4)
  loc_100BE55:         var_D4.Text = "No"
  loc_100BE61:       End If
  loc_100BE61:     End If
  loc_100BE61:   End If
  loc_100BE63:   arg_10 = 0
  loc_100BE69: Else
  loc_100BE71:   If (var_96 = CInt(2)) Then
  loc_100BE82:     Set var_9C = Me.Txt
  loc_100BE88:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_D4)
  loc_100BEAB:     Set var_D8 = Me.Txt
  loc_100BEB1:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_DC, var_E0)
  loc_100BEB9:     (var_D4.Text = "Member") = var_DC.Text
  loc_100BED9:     If (arg_10 Or (var_E0 = "Cash Card")) Then
  loc_100BEF8:       If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_100BF0A:         var_A0 = "Name"
  loc_100BF25:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56)
  loc_100BF57:         Proc_6_138_106E830(Me.DGMember, global_56, KeyAscii, Me.FGPoint)
  loc_100BF65:       End If
  loc_100BF65:     End If
  loc_100BF65:   End If
  loc_100BF65: End If
  loc_100BF65: Exit Sub
  loc_100BF66: BranchFVar -29441
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E89614
  'Data Table: 4FC804
  loc_E895B6: If (KeyCode = CInt(1)) Then
  loc_E895D4:   If (Me.FrmList.Visible = &HFF) Then
  loc_E89603:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_E89613:   End If
  loc_E89613: End If
  loc_E89613: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13FDD08
  'Data Table: 4FC804
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_A4 As String
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_94 As Frame
  loc_13FD2D4: On Error Goto loc_13FDCC2
  loc_13FD2DA: var_86 = Cancel
  loc_13FD2E5: If (var_86 = CInt(7)) Then
  loc_13FD2F2:   Set var_8C = Me.Txt
  loc_13FD2F8:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD318:   Set var_98 = Me.Txt
  loc_13FD31E:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13FD326:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_13FD33C: Else
  loc_13FD344:   If (var_86 = CInt(1)) Then
  loc_13FD347:     GoTo loc_13FDCC1
  loc_13FD34A:   End If
  loc_13FD352:   If (var_86 = CInt(9)) Then
  loc_13FD363:     Set var_8C = Me.Txt
  loc_13FD369:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FD38C:     Set var_94 = Me.Txt
  loc_13FD392:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A4)
  loc_13FD39A:     (var_90.Text = "Member") = var_98.Text
  loc_13FD3BA:     If (var_86 Or (var_A4 = "Cash Card")) Then
  loc_13FD3D4:       If (Me.RecordCount > 0) Then
  loc_13FD3DD:         Me.MoveFirst
  loc_13FD3E2:       End If
  loc_13FD423:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_13FD433:         Set var_8C = Me.Txt
  loc_13FD439:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD458:         If (var_90.Text = vbNullString) Then
  loc_13FD468:           Set var_8C = Me.Txt
  loc_13FD46E:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD476:           var_90.Text = vbNullString
  loc_13FD48F:           Set var_8C = Me.Txt
  loc_13FD495:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD49D:           var_90.Tag = vbNullString
  loc_13FD4A9:         End If
  loc_13FD4AC:       Else
  loc_13FD4B9:         Set var_8C = Me.Txt
  loc_13FD4BF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD4DE:         If (var_90.Text = vbNullString) Then
  loc_13FD4EE:           Set var_8C = Me.Txt
  loc_13FD4F4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD4FC:           var_A0 = var_90.Text
  loc_13FD513:           If (var_A0 = vbNullString) Then
  loc_13FD523:             Set var_8C = Me.Txt
  loc_13FD529:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD531:             var_90.Text = vbNullString
  loc_13FD54A:             Set var_8C = Me.Txt
  loc_13FD550:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD558:             var_90.Tag = vbNullString
  loc_13FD564:           End If
  loc_13FD567:         Else
  loc_13FD587:           Set var_8C = Me.Txt
  loc_13FD58D:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "SearchKey =")
  loc_13FD595:           0 = var_90.Text
  loc_13FD5A3:           Proc_6_17_EAAE40(var_CC, CVar(var_A0))
  loc_13FD5AB:           var_EC = 1 & var_CC 
  loc_13FD5AF:           var_A4 = CStr(var_EC)
  loc_13FD5B9:           Me.Find var_A4, var_FC, 
  loc_13FD5FA:           If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_13FD5FF:             arg_10 = &HFF
  loc_13FD602:             Exit Sub
  loc_13FD606:           Else
  loc_13FD642:             Set var_94 = Me.Txt
  loc_13FD648:             Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_13FD650:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13FD683:             var_90 = Me.Fields.Item("Code")
  loc_13FD6A2:             Set var_94 = Me.Txt
  loc_13FD6A8:             Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_13FD6B0:             var_98.Tag = CStr(var_90.Value)
  loc_13FD6D1:             Set var_8C = Me.Txt
  loc_13FD6D7:             Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_13FD6DF:             var_90.SetFocus
  loc_13FD6EB:           End If
  loc_13FD6EB:         End If
  loc_13FD6EB:       End If
  loc_13FD6EB:     End If
  loc_13FD6EE:   Else
  loc_13FD6F6:     If (var_86 = CInt(2)) Then
  loc_13FD707:       Set var_8C = Me.Txt
  loc_13FD70D:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FD730:       Set var_94 = Me.Txt
  loc_13FD736:       Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A4)
  loc_13FD73E:       (var_90.Text = "Member") = var_98.Text
  loc_13FD75E:       If (arg_10 Or (var_A4 = "Cash Card")) Then
  loc_13FD7A2:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_13FD7B2:           Set var_8C = Me.Txt
  loc_13FD7B8:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD7D7:           If (var_90.Text = vbNullString) Then
  loc_13FD7E7:             Set var_8C = Me.Txt
  loc_13FD7ED:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD7F5:             var_90.Text = vbNullString
  loc_13FD80E:             Set var_8C = Me.Txt
  loc_13FD814:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD81C:             var_90.Tag = vbNullString
  loc_13FD843:             If (Me.FrFamilyMember.Visible = &HFF) Then
  loc_13FD852:               Me.FrFamilyMember.Visible = False
  loc_13FD85A:             End If
  loc_13FD85A:           End If
  loc_13FD85D:         Else
  loc_13FD86A:           Set var_8C = Me.Txt
  loc_13FD870:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD88F:           If (var_90.Text = vbNullString) Then
  loc_13FD89F:             Set var_8C = Me.Txt
  loc_13FD8A5:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD8C4:             If (var_90.Text = vbNullString) Then
  loc_13FD8D4:               Set var_8C = Me.Txt
  loc_13FD8DA:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD8E2:               var_90.Text = vbNullString
  loc_13FD8FB:               Set var_8C = Me.Txt
  loc_13FD901:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FD909:               var_90.Tag = vbNullString
  loc_13FD930:               If (Me.FrFamilyMember.Visible = &HFF) Then
  loc_13FD93F:                 Me.FrFamilyMember.Visible = False
  loc_13FD947:               End If
  loc_13FD947:             End If
  loc_13FD94A:           Else
  loc_13FD985:             Set var_94 = Me.Txt
  loc_13FD98B:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13FD993:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13FD9E4:             Set var_94 = Me.Txt
  loc_13FD9EA:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13FD9F2:             var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13FDA25:             var_90 = Me.Fields.Item("SearchKey")
  loc_13FDA44:             Set var_94 = Me.Txt
  loc_13FDA4A:             Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_13FDA52:             var_98.Text = CStr(var_90.Value)
  loc_13FDA75:             Set var_8C = Me.Txt
  loc_13FDA7B:             Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_13FDA83:             var_90.Enabled = False
  loc_13FDA9C:             Set var_8C = Me.Txt
  loc_13FDAA2:             Call 0.Method_Txt_Validate0 (CInt(9), var_90)
  loc_13FDAAA:             var_90.Enabled = False
  loc_13FDAC3:             Set var_8C = Me.Txt
  loc_13FDAC9:             Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_13FDAD1:             var_90.Enabled = False
  loc_13FDAEA:             Set var_8C = Me.Txt
  loc_13FDAF0:             Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_13FDAF8:             var_90.Enabled = False
  loc_13FDB11:             Set var_8C = Me.Txt
  loc_13FDB17:             Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_13FDB1F:             var_90.Enabled = False
  loc_13FDB38:             Set var_8C = Me.Txt
  loc_13FDB3E:             Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_13FDB46:             var_90.Enabled = False
  loc_13FDB60:             Set var_8C = Me.Txt
  loc_13FDB66:             Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FDB85:             If (var_90.Text = "Member") Then
  loc_13FDB88:               Call Proc_286_37_10663F0()
  loc_13FDBCC:               Me.FrFamilyMember.Caption = Proc_6_38_E69628(CVar(Me.Fields.Item("Name"))) & " && Family Members Info.:"
  loc_13FDBFF:               var_90 = Me.Fields.Item("Code")
  loc_13FDC1D:               Me.FrFamilyMember.Tag = CStr(var_90.Value)
  loc_13FDC3D:               Me.FrFamilyMember.Visible = True
  loc_13FDC48:             Else
  loc_13FDC56:               Set var_8C = Me.Txt
  loc_13FDC5C:               Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FDC7B:               If (var_90.Text = "Cash Card") Then
  loc_13FDCAC:                 var_A0 = CStr(Me.Fields.Item("Code").Value)
  loc_13FDCAF:                 Call Proc_286_35_1249F08(var_A0)
  loc_13FDCC1:               End If
  loc_13FDCC1:             End If
  loc_13FDCC1:           End If
  loc_13FDCC1:         End If
  loc_13FDCC1:         ' Referenced from:   13FD347
  loc_13FDCC1:       End If
  loc_13FDCC1:     End If
  loc_13FDCC1:   End If
  loc_13FDCC1: End If
  loc_13FDCC1: Exit Sub
  loc_13FDCC2: ' Referenced from: 13FD2D4
  loc_13FDCCA: Set var_8C = Err()
  loc_13FDCD0: Call 0.Method_arg_2C (var_A0)
  loc_13FDCF1: MsgBox(CVar(var_A0), &H40, "Information", var_EC, var_11C)
  loc_13FDD04: Exit Sub
  loc_13FDD05: Exit Sub
End Sub

Public Property Let SmartCardApplicable(vNewValue) 'E11FDC
  'Data Table: 4FC804
  Dim var_8C As String
  loc_E11FD4: global_92 = vNewValue
  loc_E11FD8: Exit Sub
  loc_E11FD9: var_8C = 
End Sub

Public Property Get SmartCardApplicable() 'E127BC
  'Data Table: 4FC804
  Dim var_8C As String
  loc_E127B0: var_88 = global_92
  loc_E127B3: SmartCardApplicable = 
  loc_E127B9: var_8C = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3AB4
  'Data Table: 4FC804
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC3A2A: On Error Goto loc_EC3A6F
  loc_EC3A33: Me.MoveFirst
  loc_EC3A4D: var_8C = "code='" & MyValue
  loc_EC3A5D: Me.Find var_8C & "'", 0, 1
  loc_EC3A69: Call Proc_286_32_139DBDC(var_A0)
  loc_EC3A6E: Exit Sub
  loc_EC3A6F: ' Referenced from: EC3A2A
  loc_EC3A77: Set var_A4 = Err()
  loc_EC3A7D: Call 0.Method_arg_2C (var_8C)
  loc_EC3A9E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3AB1: Exit Sub
  loc_EC3AB2: Exit Sub
End Sub

Public Sub Proc_286_28_13B3284(arg_C) '13B3284
  'Data Table: 4FC804
  Dim var_8C As Recordset15
  loc_13B2915: Set var_8C = arg_C 
  loc_13B293D: var_8C.Fields.Append "mLine", &HC8, 2
  loc_13B2969: var_8C.Fields.Append "Relation", &HC8, &H14
  loc_13B2995: var_8C.Fields.Append "ConPrefix", &HC8, &HA
  loc_13B29C1: var_8C.Fields.Append "Name", &HC8, &H4B
  loc_13B29ED: var_8C.Fields.Append "Sex", &HC8, 6
  loc_13B2A19: var_8C.Fields.Append "MaritalStatus", &HC8, 7
  loc_13B2A45: var_8C.Fields.Append "Birthday", 7, 0
  loc_13B2A71: var_8C.Fields.Append "PlaceOfBirth", &HC8, &H32
  loc_13B2A9D: var_8C.Fields.Append "Anniversary", 7, 0
  loc_13B2AC9: var_8C.Fields.Append "Phone", &HC8, &H23
  loc_13B2AF5: var_8C.Fields.Append "Mobile", &HC8, &H19
  loc_13B2B21: var_8C.Fields.Append "Religion", &HC8, &H1E
  loc_13B2B4D: var_8C.Fields.Append "BloodGroup", &HC8, 3
  loc_13B2B79: var_8C.Fields.Append "Desig", &HC8, &H32
  loc_13B2BA5: var_8C.Fields.Append "Passport", &HC8, &H32
  loc_13B2BD1: var_8C.Fields.Append "PAN", &HC8, &H14
  loc_13B2BFD: var_8C.Fields.Append "MemberId", &HC8, &H19
  loc_13B2C29: var_8C.Fields.Append "CardRegId", &HC8, &HB
  loc_13B2C55: var_8C.Fields.Append "CardIssDate", 7, 0
  loc_13B2C81: var_8C.Fields.Append "CardValidUpto", 7, 0
  loc_13B2CAD: var_8C.Fields.Append "MemberType", &HC8, &H4B
  loc_13B2CD9: var_8C.Fields.Append "AcName", &HC8, &H4B
  loc_13B2D05: var_8C.Fields.Append "AddRType", &HC8, &H1E
  loc_13B2D31: var_8C.Fields.Append "AddR1", &HC8, &H32
  loc_13B2D5D: var_8C.Fields.Append "AddR2", &HC8, &H32
  loc_13B2D89: var_8C.Fields.Append "AddR3", &HC8, &H32
  loc_13B2DB5: var_8C.Fields.Append "CityR", &HC8, &H23
  loc_13B2DE1: var_8C.Fields.Append "StateR", &HC8, &H23
  loc_13B2E0D: var_8C.Fields.Append "CountryR", &HC8, &H23
  loc_13B2E39: var_8C.Fields.Append "PinCodeR", &HC8, &HC
  loc_13B2E65: var_8C.Fields.Append "CardAbbr", &HC8, &H14
  loc_13B2E91: var_8C.Fields.Append "Guardian", &HC8, &H14
  loc_13B2EBD: var_8C.Fields.Append "ConPrefixYN", &HC8, 1
  loc_13B2EE9: var_8C.Fields.Append "CardNoYN", &HC8, 1
  loc_13B2F15: var_8C.Fields.Append "CardValidYN", &HC8, 1
  loc_13B2F41: var_8C.Fields.Append "GenderYN", &HC8, 1
  loc_13B2F6D: var_8C.Fields.Append "BloodGroupYN", &HC8, 1
  loc_13B2F99: var_8C.Fields.Append "DobYN", &HC8, 1
  loc_13B2FC5: var_8C.Fields.Append "MobileYN", &HC8, 1
  loc_13B2FF1: var_8C.Fields.Append "AddrYN", &HC8, 1
  loc_13B301D: var_8C.Fields.Append "EmailYN", &HC8, 1
  loc_13B3049: var_8C.Fields.Append "DesigYN", &HC8, 1
  loc_13B3075: var_8C.Fields.Append "PictureYN", &HC8, 1
  loc_13B30A1: var_8C.Fields.Append "SignatureYN", &HC8, 1
  loc_13B30CD: var_8C.Fields.Append "MemberName", &HC8, &H4B
  loc_13B30F9: var_8C.Fields.Append "FatherName", &HC8, &H4B
  loc_13B3125: var_8C.Fields.Append "Picture", &HCD, &H3E8
  loc_13B3151: var_8C.Fields.Append "Signature", &HCD, &H3E8
  loc_13B317D: var_8C.Fields.Append "CardFrontImage", &HCD, &H3E8
  loc_13B31A9: var_8C.Fields.Append "CardBackImage", &HCD, &H3E8
  loc_13B31D5: var_8C.Fields.Append "FrontFontColor", &HC8, &HF
  loc_13B3201: var_8C.Fields.Append "BackFontColor", &HC8, &HF
  loc_13B322D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_13B323D: var_8C.CursorType = 3
  loc_13B324A: var_8C.LockType = 3
  loc_13B3269: var_8C.Open var_A0, var_B0, -1
  loc_13B3270: Set var_8C = Nothing 
  loc_13B3277: Set var_88 = arg_C 
  loc_13B327B: Proc_286_28_13B3284 = -1
End Sub

Public Sub Proc_286_29_EB397C(arg_C) 'EB397C
  'Data Table: 4FC804
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_EB38EE: Set var_8C = Me.Txt
  loc_EB38F4: Call 0.Method_Proc_286_29_EB397CC (var_8E, var_86)
  loc_EB3904: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB391A:   Set var_8C = Me.Txt
  loc_EB3920:   Call 0.Method_Proc_286_29_EB397C0 (CInt(var_86), var_98)
  loc_EB3928:   var_98.Enabled = arg_C
  loc_EB3937: Next var_92 'Byte
  loc_EB394A: Set var_8C = Me.Txt
  loc_EB3950: Call 0.Method_Proc_286_29_EB397C0 (CInt(0), var_98)
  loc_EB3958: var_98.Enabled = False
  loc_EB3972: Me.CmdPrintCard.Enabled = Not(arg_C)
  loc_EB397A: Exit Sub
End Sub

Public Sub Proc_286_30_F097E8
  'Data Table: 4FC804
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F09712: Set var_8C = Me.Txt
  loc_F09718: Call 0.Method_Proc_286_30_F097E8C (var_8E, var_86)
  loc_F09728: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F0973E:   Set var_8C = Me.Txt
  loc_F09744:   Call 0.Method_Proc_286_30_F097E80 (CInt(var_86), var_98)
  loc_F0974C:   var_98.Text = vbNullString
  loc_F09768:   Set var_8C = Me.Txt
  loc_F0976E:   Call 0.Method_Proc_286_30_F097E80 (CInt(var_86), var_98)
  loc_F09776:   var_98.Tag = vbNullString
  loc_F09785: Next var_92 'Byte
  loc_F09791: global_64 = vbNullString
  loc_F097A2: Me.FrFamilyMember.Tag = vbNullString
  loc_F097BC: Me.GridSel.Tag = CVar(CStr(0))
  loc_F097CA: var_C0 = vbNullString
  loc_F097D9: Call Proc_286_36_11F9BF8(vbNullString)
  loc_F097E5: Exit Sub
End Sub

Public Sub Proc_286_31_F2DC4C
  'Data Table: 4FC804
  Dim var_8C As TextBox
  loc_F2DB4A: Set var_88 = Me.Txt
  loc_F2DB50: Call 0.Method_Proc_286_31_F2DC4C0 (CInt(3), var_8C)
  loc_F2DB58: var_8C.Text = vbNullString
  loc_F2DB72: Set var_88 = Me.Txt
  loc_F2DB78: Call 0.Method_Proc_286_31_F2DC4C0 (CInt(3), var_8C)
  loc_F2DB80: var_8C.Tag = vbNullString
  loc_F2DB9A: Set var_88 = Me.Txt
  loc_F2DBA0: Call 0.Method_Proc_286_31_F2DC4C0 (CInt(4), var_8C)
  loc_F2DBA8: var_8C.Text = vbNullString
  loc_F2DBC2: Set var_88 = Me.Txt
  loc_F2DBC8: Call 0.Method_Proc_286_31_F2DC4C0 (CInt(5), var_8C)
  loc_F2DBD0: var_8C.Text = vbNullString
  loc_F2DBEA: Set var_88 = Me.Txt
  loc_F2DBF0: Call 0.Method_Proc_286_31_F2DC4C0 (CInt(6), var_8C)
  loc_F2DBF8: var_8C.Text = vbNullString
  loc_F2DC12: Set var_88 = Me.Txt
  loc_F2DC18: Call 0.Method_Proc_286_31_F2DC4C0 (CInt(7), var_8C)
  loc_F2DC20: var_8C.Text = vbNullString
  loc_F2DC2F: var_94 = vbNullString
  loc_F2DC3E: Call Proc_286_36_11F9BF8(vbNullString)
  loc_F2DC4A: Exit Sub
End Sub

Public Sub Proc_286_32_139DBDC
  'Data Table: 4FC804
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_EC As TextBox
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_E8 As Fields15
  Dim var_1CC As Variant
  loc_139D308: On Error Goto loc_139DB97
  loc_139D311: Proc_183_45_E5CCA8(global_52)
  loc_139D32D: If (Me.RecordCount <= 0) Then
  loc_139D330:   Call Proc_286_30_F097E8()
  loc_139D338: Else
  loc_139D369:   global_64 = Proc_6_38_E69628(CVar(Me.Fields.Item("SerialNo")))
  loc_139D3CB:   Set var_E8 = Me.Txt
  loc_139D3D1:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(0), var_EC, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_139D3D9:   var_EC.Text = 1
  loc_139D42F:   Set var_E8 = Me.Txt
  loc_139D435:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(1), var_EC)
  loc_139D43D:   var_EC.Text = CStr(Me.Fields.Item("CardType").Value)
  loc_139D48C:   Set var_E8 = Me.Txt
  loc_139D492:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(2), var_EC)
  loc_139D49A:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberName")))
  loc_139D4E7:   Set var_E8 = Me.Txt
  loc_139D4ED:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(2), var_EC)
  loc_139D4F5:   var_EC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberCode")))
  loc_139D542:   Set var_E8 = Me.Txt
  loc_139D548:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(3), var_EC)
  loc_139D550:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_139D59D:   Set var_E8 = Me.Txt
  loc_139D5A3:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(3), var_EC)
  loc_139D5AB:   var_EC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_139D5DC:   var_A0 = Me.Fields.Item("CardNo")
  loc_139D5FB:   Set var_E8 = Me.Txt
  loc_139D601:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(4), var_EC)
  loc_139D609:   var_EC.Text = CStr(var_A0.Value)
  loc_139D62D:   Set var_8C = Me.Txt
  loc_139D633:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(9), var_A0)
  loc_139D665:   Set var_8C = Me.Txt
  loc_139D66B:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(1), var_A0, var_F0)
  loc_139D673:   (SmartCardApplicable = "Yes") = vbNullString
  loc_139D68F:   If (1 And (var_F0 = "Member")) Then
  loc_139D6CE:     Set var_E8 = Me.Txt
  loc_139D6D4:     Call 0.Method_Proc_286_32_139DBDC0 (CInt(9), var_EC)
  loc_139D6DC:     var_EC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_139D6F2:   End If
  loc_139D72B:   Set var_E8 = Me.Txt
  loc_139D731:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(5), var_EC)
  loc_139D739:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Addr")))
  loc_139D786:   Set var_E8 = Me.Txt
  loc_139D78C:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(6), var_EC)
  loc_139D794:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")))
  loc_139D7FD:   Set var_E8 = Me.Txt
  loc_139D803:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(7), var_EC, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_139D80B:   var_EC.Text = 1
  loc_139D892:   Set var_E8 = Me.Txt
  loc_139D898:   Call 0.Method_Proc_286_32_139DBDC0 (CInt(8), var_EC)
  loc_139D8A0:   var_EC.Text = CStr(IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("BlockedYN"))) = "Y"), "Yes", "No"))
  loc_139D928:   Call Proc_286_36_11F9BF8(Proc_6_38_E69628(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E69628(CVar(Me.Fields.Item("SigPath"))))
  loc_139D9ED:   var_184 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_139DA35:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")), var_184)))
  loc_139DACE:   var_120 = "entdt :   "
  loc_139DAD9:   var_E4 = "Last Update :   "
  loc_139DB07:   var_B4 = Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE")))
  loc_139DB4C:   var_1CC = IIf((var_B4 = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), var_E4, var_120)) & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))) 
  loc_139DB5E:   Me.LblLDt.Caption = CStr(var_1CC)
  loc_139DB96: End If
  loc_139DB96: Exit Sub
  loc_139DB97: ' Referenced from: 139D308
  loc_139DB9F: Set var_8C = Err()
  loc_139DBA5: Call 0.Method_arg_2C (var_B4)
  loc_139DBC6: MsgBox(CVar(var_B4), &H40, "Information", var_E4, var_120)
  loc_139DBD9: Exit Sub
End Sub

Public Sub Proc_286_33_EB8E9C
  'Data Table: 4FC804
  loc_EB8E17: If (Me.FrmList.Visible = &HFF) Then
  loc_EB8E26:   Me.FrmList.Visible = False
  loc_EB8E2E: End If
  loc_EB8E4A: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EB8E5C:   Me.DGMember.Visible = False
  loc_EB8E64: End If
  loc_EB8E80: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8E92:   Me.FGPoint.Visible = False
  loc_EB8E9A: End If
  loc_EB8E9A: Exit Sub
End Sub

Public Sub Proc_286_34_124F8F8(arg_C, arg_10) '124F8F8
  'Data Table: 4FC804
  Dim var_9C As String
  Dim unk_4FC80F As Connection15
  Dim var_8C As Recordset15
  Dim var_144 As Fields15
  Dim var_154 As Variant
  Dim var_14C As Variant
  Dim var_150 As Fields15
  loc_124F3C3: var_88 = arg_C
  loc_124F3DA: var_9C = "Select MF.SubCode As MemberCode,MF.ConPrefix + ' ' + MF.Name As Name,S.CardNo, S.Add1 + ' ' + S.Add2 As Address,MF.CardValidUpto, Case When IsNull(MF.Mobile,'')='' Then MF.Phone Else MF.Mobile End PhoneNo,MF.PicPath,MF.SigPath From MemberFamily MF Inner Join SubGroup S On MF.Subcode=S.Subcode Where MF.LogSite_Code='" & MemVar_1F95078
  loc_124F418: unk_4FC80F.Execute CStr(CVar(var_9C & "' And MF.SubCode='") & Trim(var_88) & "' And MF.SNo=" & CVar(arg_10)), var_140, -1
  loc_124F423: Set var_8C = var_144
  loc_124F453: If (var_8C.RecordCount > 0) Then
  loc_124F46D:   var_14C = var_8C.Fields.Item("Name")
  loc_124F48C:   Set var_150 = Me.Txt
  loc_124F492:   Call 0.Method_Proc_286_34_124F8F80 (CInt(3), var_154)
  loc_124F49A:   var_154.Text = Proc_6_38_E69628(CVar(var_14C))
  loc_124F4BC:   Set var_144 = Me.Txt
  loc_124F4C2:   Call 0.Method_Proc_286_34_124F8F80 (CInt(3), var_14C)
  loc_124F4CA:   var_14C.Tag = var_88
  loc_124F50C:   Set var_150 = Me.Txt
  loc_124F512:   Call 0.Method_Proc_286_34_124F8F80 (CInt(4), var_154)
  loc_124F51A:   var_154.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")))
  loc_124F564:   Set var_150 = Me.Txt
  loc_124F56A:   Call 0.Method_Proc_286_34_124F8F80 (CInt(5), var_154)
  loc_124F572:   var_154.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Address")))
  loc_124F5BC:   Set var_150 = Me.Txt
  loc_124F5C2:   Call 0.Method_Proc_286_34_124F8F80 (CInt(6), var_154)
  loc_124F5CA:   var_154.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("PhoneNo")))
  loc_124F5F5:   var_14C = var_8C.Fields.Item("CardValidUpto")
  loc_124F630:   Set var_150 = Me.Txt
  loc_124F636:   Call 0.Method_Proc_286_34_124F8F80 (CInt(7), var_154, CStr(Format(CVar(var_14C), "dd/MMM/yyyy")))
  loc_124F63E:   var_154.Text = 1
  loc_124F665:   Set var_144 = Me.Txt
  loc_124F66B:   Call 0.Method_Proc_286_34_124F8F80 (CInt(1), var_14C, 0)
  loc_124F673:   var_14C.Enabled = True
  loc_124F68C:   Set var_144 = Me.Txt
  loc_124F692:   Call 0.Method_Proc_286_34_124F8F80 (CInt(4), var_14C)
  loc_124F69A:   var_14C.Enabled = False
  loc_124F6B3:   Set var_144 = Me.Txt
  loc_124F6B9:   Call 0.Method_Proc_286_34_124F8F80 (CInt(3), var_14C)
  loc_124F6C1:   var_14C.Enabled = False
  loc_124F6DA:   Set var_144 = Me.Txt
  loc_124F6E0:   Call 0.Method_Proc_286_34_124F8F80 (CInt(5), var_14C)
  loc_124F6E8:   var_14C.Enabled = False
  loc_124F701:   Set var_144 = Me.Txt
  loc_124F707:   Call 0.Method_Proc_286_34_124F8F80 (CInt(6), var_14C)
  loc_124F70F:   var_14C.Enabled = False
  loc_124F729:   Set var_144 = Me.Txt
  loc_124F72F:   Call 0.Method_Proc_286_34_124F8F80 (CInt(7), var_14C)
  loc_124F74E:   If (var_14C.Text <> vbNullString) Then
  loc_124F75E:     Set var_144 = Me.Txt
  loc_124F764:     Call 0.Method_Proc_286_34_124F8F80 (CInt(7), var_14C)
  loc_124F76C:     var_14C.Enabled = False
  loc_124F778:   End If
  loc_124F78A:   var_144 = var_8C.Fields
  loc_124F792:   var_14C = var_144.Item("PicPath")
  loc_124F7D6:   Call Proc_286_36_11F9BF8(CStr(var_14C.Value), CStr(var_8C.Fields.Item("SigPath").Value))
  loc_124F7F7: Else
  loc_124F7F7:   Call Proc_286_31_F2DC4C(var_144)
  loc_124F809:   Set var_144 = Me.Txt
  loc_124F80F:   Call 0.Method_Proc_286_34_124F8F80 (CInt(1), var_14C)
  loc_124F817:   var_14C.Enabled = True
  loc_124F830:   Set var_144 = Me.Txt
  loc_124F836:   Call 0.Method_Proc_286_34_124F8F80 (CInt(3), var_14C)
  loc_124F83E:   var_14C.Enabled = True
  loc_124F857:   Set var_144 = Me.Txt
  loc_124F85D:   Call 0.Method_Proc_286_34_124F8F80 (CInt(4), var_14C)
  loc_124F865:   var_14C.Enabled = True
  loc_124F87E:   Set var_144 = Me.Txt
  loc_124F884:   Call 0.Method_Proc_286_34_124F8F80 (CInt(5), var_14C)
  loc_124F88C:   var_14C.Enabled = True
  loc_124F8A5:   Set var_144 = Me.Txt
  loc_124F8AB:   Call 0.Method_Proc_286_34_124F8F80 (CInt(6), var_14C)
  loc_124F8B3:   var_14C.Enabled = True
  loc_124F8CC:   Set var_144 = Me.Txt
  loc_124F8D2:   Call 0.Method_Proc_286_34_124F8F80 (CInt(7), var_14C)
  loc_124F8DA:   var_14C.Enabled = True
  loc_124F8E6: End If
  loc_124F8EB: Set var_8C = Nothing
  loc_124F8F3: Set var_90 = Nothing
  loc_124F8F6: Exit Sub
End Sub

Public Sub Proc_286_35_1249F08(arg_C) '1249F08
  'Data Table: 4FC804
  Dim var_9C As String
  Dim unk_4FC80F As Connection15
  Dim var_8C As Recordset15
  Dim var_124 As Fields15
  Dim var_134 As Variant
  Dim var_12C As Variant
  Dim var_130 As Fields15
  loc_12499DF: var_88 = arg_C
  loc_12499F6: var_9C = "Select MF.Code As MemberCode,MF.ConPrefix + ' ' + MF.Name As Name,MF.Code CardNo, MF.Add1 + ' ' + MF.Add2 As Address,'' As CardValidUpto,MF.MobileNo,MF.PicPath,'' As SigPath From GuestProf MF Where MF.LogSite_Code='" & MemVar_1F95078
  loc_1249A2A: unk_4FC80F.Execute CStr(CVar(var_9C & "' And MF.Code='") & Trim(var_88) & "'"), var_120, -1
  loc_1249A35: Set var_8C = var_124
  loc_1249A63: If (var_8C.RecordCount > 0) Then
  loc_1249A7D:   var_12C = var_8C.Fields.Item("Name")
  loc_1249A9C:   Set var_130 = Me.Txt
  loc_1249AA2:   Call 0.Method_Proc_286_35_1249F080 (CInt(3), var_134)
  loc_1249AAA:   var_134.Text = Proc_6_38_E69628(CVar(var_12C))
  loc_1249ACC:   Set var_124 = Me.Txt
  loc_1249AD2:   Call 0.Method_Proc_286_35_1249F080 (CInt(3), var_12C)
  loc_1249ADA:   var_12C.Tag = var_88
  loc_1249B1C:   Set var_130 = Me.Txt
  loc_1249B22:   Call 0.Method_Proc_286_35_1249F080 (CInt(4), var_134)
  loc_1249B2A:   var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")))
  loc_1249B74:   Set var_130 = Me.Txt
  loc_1249B7A:   Call 0.Method_Proc_286_35_1249F080 (CInt(5), var_134)
  loc_1249B82:   var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Address")))
  loc_1249BCC:   Set var_130 = Me.Txt
  loc_1249BD2:   Call 0.Method_Proc_286_35_1249F080 (CInt(6), var_134)
  loc_1249BDA:   var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("MobileNo")))
  loc_1249C05:   var_12C = var_8C.Fields.Item("CardValidUpto")
  loc_1249C40:   Set var_130 = Me.Txt
  loc_1249C46:   Call 0.Method_Proc_286_35_1249F080 (CInt(7), var_134, CStr(Format(CVar(var_12C), "dd/MMM/yyyy")))
  loc_1249C4E:   var_134.Text = 1
  loc_1249C75:   Set var_124 = Me.Txt
  loc_1249C7B:   Call 0.Method_Proc_286_35_1249F080 (CInt(1), var_12C, 0)
  loc_1249C83:   var_12C.Enabled = True
  loc_1249C9C:   Set var_124 = Me.Txt
  loc_1249CA2:   Call 0.Method_Proc_286_35_1249F080 (CInt(4), var_12C)
  loc_1249CAA:   var_12C.Enabled = False
  loc_1249CC3:   Set var_124 = Me.Txt
  loc_1249CC9:   Call 0.Method_Proc_286_35_1249F080 (CInt(3), var_12C)
  loc_1249CD1:   var_12C.Enabled = False
  loc_1249CEA:   Set var_124 = Me.Txt
  loc_1249CF0:   Call 0.Method_Proc_286_35_1249F080 (CInt(5), var_12C)
  loc_1249CF8:   var_12C.Enabled = False
  loc_1249D11:   Set var_124 = Me.Txt
  loc_1249D17:   Call 0.Method_Proc_286_35_1249F080 (CInt(6), var_12C)
  loc_1249D1F:   var_12C.Enabled = False
  loc_1249D39:   Set var_124 = Me.Txt
  loc_1249D3F:   Call 0.Method_Proc_286_35_1249F080 (CInt(7), var_12C)
  loc_1249D5E:   If (var_12C.Text <> vbNullString) Then
  loc_1249D6E:     Set var_124 = Me.Txt
  loc_1249D74:     Call 0.Method_Proc_286_35_1249F080 (CInt(7), var_12C)
  loc_1249D7C:     var_12C.Enabled = False
  loc_1249D88:   End If
  loc_1249D9A:   var_124 = var_8C.Fields
  loc_1249DA2:   var_12C = var_124.Item("PicPath")
  loc_1249DE6:   Call Proc_286_36_11F9BF8(CStr(var_12C.Value), CStr(var_8C.Fields.Item("SigPath").Value))
  loc_1249E07: Else
  loc_1249E07:   Call Proc_286_31_F2DC4C(var_124)
  loc_1249E19:   Set var_124 = Me.Txt
  loc_1249E1F:   Call 0.Method_Proc_286_35_1249F080 (CInt(1), var_12C)
  loc_1249E27:   var_12C.Enabled = True
  loc_1249E40:   Set var_124 = Me.Txt
  loc_1249E46:   Call 0.Method_Proc_286_35_1249F080 (CInt(3), var_12C)
  loc_1249E4E:   var_12C.Enabled = True
  loc_1249E67:   Set var_124 = Me.Txt
  loc_1249E6D:   Call 0.Method_Proc_286_35_1249F080 (CInt(4), var_12C)
  loc_1249E75:   var_12C.Enabled = True
  loc_1249E8E:   Set var_124 = Me.Txt
  loc_1249E94:   Call 0.Method_Proc_286_35_1249F080 (CInt(5), var_12C)
  loc_1249E9C:   var_12C.Enabled = True
  loc_1249EB5:   Set var_124 = Me.Txt
  loc_1249EBB:   Call 0.Method_Proc_286_35_1249F080 (CInt(6), var_12C)
  loc_1249EC3:   var_12C.Enabled = True
  loc_1249EDC:   Set var_124 = Me.Txt
  loc_1249EE2:   Call 0.Method_Proc_286_35_1249F080 (CInt(7), var_12C)
  loc_1249EEA:   var_12C.Enabled = True
  loc_1249EF6: End If
  loc_1249EFB: Set var_8C = Nothing
  loc_1249F03: Set var_90 = Nothing
  loc_1249F06: Exit Sub
End Sub

Public Sub Proc_286_36_11F9BF8(arg_C, arg_10) '11F9BF8
  'Data Table: 4FC804
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11F9773: Set var_8C = Me.ImgPhoto
  loc_11F978C: If (var_8C.Tag <> arg_C) Then
  loc_11F979C:   var_F0 = IsNull(arg_C)
  loc_11F97A3:   var_B0 = arg_C
  loc_11F97B3:   var_D0 = vbNullString
  loc_11F97CA:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11F97EB:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11F9800:     Me.ImgPhoto.Picture = var_8C
  loc_11F9819:     Me.ImgPhoto.Tag = vbNullString
  loc_11F9824:   Else
  loc_11F9827:     var_A0 = arg_C
  loc_11F9837:     var_D0 = arg_C
  loc_11F9862:     var_B0 = "DAT"
  loc_11F988A:     var_F0 = "AVI"
  loc_11F98A9:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11F98B8:       Me.ImgPhoto.Visible = False
  loc_11F98C3:     Else
  loc_11F98D0:       Me.ImgPhoto.Tag = arg_C
  loc_11F98E4:       Call 0.Method_Proc_286_36_11F9BF84 (arg_C, var_17A)
  loc_11F98EC:       If var_17A Then
  loc_11F9909:         Set var_8C = Me.ImgPhoto
  loc_11F9921:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11F9936:         Me.ImgPhoto.Picture = var_114
  loc_11F994B:         Set var_8C = Me.ImgPhoto
  loc_11F9951:         var_8C.Refresh
  loc_11F995C:       Else
  loc_11F997A:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11F998F:         Me.ImgPhoto.Picture = var_8C
  loc_11F99A8:         Me.ImgPhoto.Tag = vbNullString
  loc_11F99B0:       End If
  loc_11F99B0:     End If
  loc_11F99B0:   End If
  loc_11F99B0: End If
  loc_11F99B7: Set var_8C = Me.ImgSign
  loc_11F99D0: If (var_8C.Tag <> arg_10) Then
  loc_11F99E0:   var_F0 = IsNull(arg_10)
  loc_11F99E7:   var_B0 = arg_10
  loc_11F99F7:   var_D0 = vbNullString
  loc_11F9A0E:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11F9A2F:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11F9A44:     Me.ImgSign.Picture = var_8C
  loc_11F9A5D:     Me.ImgSign.Tag = vbNullString
  loc_11F9A68:   Else
  loc_11F9A6B:     var_A0 = arg_10
  loc_11F9A7B:     var_D0 = arg_10
  loc_11F9AA6:     var_B0 = "DAT"
  loc_11F9ACE:     var_F0 = "AVI"
  loc_11F9AED:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11F9AFC:       Me.ImgSign.Visible = False
  loc_11F9B07:     Else
  loc_11F9B0E:       Set var_8C = Me.ImgSign
  loc_11F9B14:       var_8C.Tag = arg_10
  loc_11F9B28:       Call 0.Method_Proc_286_36_11F9BF84 (arg_10, var_17A, var_8C)
  loc_11F9B30:       If var_17A Then
  loc_11F9B4D:         Set var_8C = Me.ImgSign
  loc_11F9B65:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11F9B7A:         Me.ImgSign.Picture = var_114
  loc_11F9B8F:         Set var_8C = Me.ImgSign
  loc_11F9B95:         var_8C.Refresh
  loc_11F9BA0:       Else
  loc_11F9BBE:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11F9BD3:         Me.ImgSign.Picture = var_8C
  loc_11F9BEC:         Me.ImgSign.Tag = vbNullString
  loc_11F9BF4:       End If
  loc_11F9BF4:     End If
  loc_11F9BF4:   End If
  loc_11F9BF4: End If
  loc_11F9BF4: Exit Sub
End Sub

Public Sub Proc_286_37_10663F0
  'Data Table: 4FC804
  Dim var_90 As String
  Dim var_98 As TextBox
  Dim var_B4 As Variant
  Dim var_D8 As MSHFlexGrid
  Dim var_E8 As Long
  Dim var_94 As CheckBox
  loc_1066183: var_90 = "Select '' as [_],MF.RelationShip Relation,MF.ConPrefix + ' ' + MF.Name As Name,MF.SubCode,MF.SNo,S.CardNo [Card No.],Convert(Varchar(11),MF.CardIssDate,103) [Card Iss. Date],MF.CardRegId [Card Reg.ID],MF.CardValidUpto,MF.PicPath,MF.SigPath From MemberFamily MF Inner Join SubGroup S On MF.Subcode=S.Subcode Where MF.LogSite_Code='" & MemVar_1F95078
  loc_106619B: Set var_94 = Me.Txt
  loc_10661A1: Call 0.Method_Proc_286_37_10663F00 (CInt(2), var_98)
  loc_10661DD: Me.Recordset15.CursorLocation = 3
  loc_1066203: New.Open CVar(var_90 & "' And S.SubCode='" & var_98.Tag & "'"), CVar(MemVar_1F95044), 3
  loc_106620E: CVarUnk
  loc_1066213: VerifyVarObj
  loc_1066219: Set var_94 = Me.GridSel
  loc_106621F: LateIdStAd
  loc_106623D: ReDim Preserve global_100(0 To 0)
  loc_1066254: global_100(0) = 0
  loc_1066259: Set var_D8 = Me.GridSel
  loc_1066268: var_D8.Height = CVar(CDbl(3000))
  loc_1066279: var_D8.Width = CVar(CDbl(8500))
  loc_106627E: var_B4 = 0
  loc_1066287: var_E8 = &H258
  loc_1066293: LateIdCallSt
  loc_106629B: var_B4 = 1
  loc_10662A4: var_E8 = &H4B0
  loc_10662B0: LateIdCallSt
  loc_10662B8: var_B4 = 2
  loc_10662C1: var_E8 = &HDAC
  loc_10662CD: LateIdCallSt
  loc_10662D5: var_B4 = 3
  loc_10662DE: var_E8 = 0
  loc_10662EA: LateIdCallSt
  loc_10662F2: var_B4 = 4
  loc_10662FB: var_E8 = 0
  loc_1066307: LateIdCallSt
  loc_106630F: var_B4 = 5
  loc_1066318: var_E8 = 0
  loc_1066324: LateIdCallSt
  loc_106632C: var_B4 = 6
  loc_1066335: var_E8 = &H5DC
  loc_1066341: LateIdCallSt
  loc_1066349: var_B4 = 7
  loc_1066352: var_E8 = &H514
  loc_106635E: LateIdCallSt
  loc_1066366: var_B4 = 8
  loc_106636F: var_E8 = 0
  loc_106637B: LateIdCallSt
  loc_1066383: var_B4 = 9
  loc_106638C: var_E8 = 0
  loc_1066398: LateIdCallSt
  loc_10663A0: var_B4 = &HA
  loc_10663A9: var_E8 = 0
  loc_10663B5: LateIdCallSt
  loc_10663BF: Set var_D8 = Nothing 
  loc_10663CF: Me.Check1.Visible = False
  loc_10663E7: Me.Check1.Value = CInt(0)
  loc_10663EF: Exit Sub
End Sub
