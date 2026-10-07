VERSION 5.00
Begin VB.Form FrmForExRec
  Caption = "Forex Receive Entry"
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
  ClientWidth = 7725
  ClientHeight = 2595
  LockControls = -1  'True
  Begin Frame frmprint
    Caption = "frmPrint"
    Left = 870
    Top = 600
    Width = 5580
    Height = 2130
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    Begin CommandButton CmdExit
      Caption = "&Exit"
      Left = 3000
      Top = 885
      Width = 1470
      Height = 390
      TabIndex = 29
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
    Begin CommandButton CmdPrint
      Caption = "&Print"
      Left = 1515
      Top = 885
      Width = 1470
      Height = 390
      TabIndex = 28
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
    Begin TextBox Txt
      Index = 9
      Left = 2295
      Top = 450
      Width = 1500
      Height = 255
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 21
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
      Index = 8
      Left = 2295
      Top = 105
      Width = 1500
      Height = 255
      TabIndex = 26
      BorderStyle = 0 'None
      MaxLength = 21
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
    Begin Label Label3
      Caption = "To Date"
      ForeColor = &HC00000&
      Left = 705
      Top = 510
      Width = 750
      Height = 240
      TabIndex = 25
      AutoSize = -1  'True
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
    Begin Label Label2
      Caption = "From Date"
      ForeColor = &HC00000&
      Left = 705
      Top = 135
      Width = 990
      Height = 240
      TabIndex = 24
      AutoSize = -1  'True
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
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 1530
    Width = 4200
    Height = 1050
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7725
    Height = 435
    TabIndex = 30
  End
  Begin PictureBox Picture3
    Picture = "FrmForExRec.frx":0
    Left = 3780
    Top = 975
    Width = 300
    Height = 270
    TabIndex = 22
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGHelp
    Left = 5340
    Top = 3330
    Width = 2520
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 5040
    Top = 1260
    Width = 1155
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2250
    Top = 990
    Width = 1500
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 1
    Left = 2250
    Top = 720
    Width = 720
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 5040
    Top = 720
    Width = 1155
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 0
    Left = 7200
    Top = 480
    Width = 420
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 7
    BackColor = &HFFFFFF&
    Left = 7875
    Top = 720
    Width = 1830
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 10
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 5040
    Top = 990
    Width = 1155
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 2250
    Top = 1260
    Width = 1830
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin Frame FrmList
    Left = 5085
    Top = 2970
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 11
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 2310
    Top = 3075
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 21
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1155
    Top = 5790
    Width = 2880
    Height = 255
    TabIndex = 33
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
    Left = 4530
    Top = 5790
    Width = 2790
    Height = 285
    TabIndex = 32
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
  Begin Label LblName
    Caption = "Remaks"
    Index = 0
    ForeColor = &HC00000&
    Left = 885
    Top = 1545
    Width = 675
    Height = 240
    TabIndex = 31
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
  Begin Label LblName
    Caption = "Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 4290
    Top = 1260
    Width = 660
    Height = 240
    TabIndex = 19
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 4275
    Top = 720
    Width = 390
    Height = 240
    TabIndex = 18
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC00000&
    Left = 3210
    Top = 735
    Width = 600
    Height = 240
    TabIndex = 17
    Alignment = 1 'Right Justify
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
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 885
    Top = 720
    Width = 480
    Height = 240
    TabIndex = 16
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &HC00000&
    Left = 6495
    Top = 495
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
  Begin Label LblName
    Caption = "PayMode"
    Index = 7
    ForeColor = &HC00000&
    Left = 6825
    Top = 735
    Width = 765
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
  Begin Label LblName
    Caption = "Rate"
    Index = 5
    ForeColor = &HC00000&
    Left = 4290
    Top = 990
    Width = 390
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
  Begin Label LblName
    Caption = "Qty"
    Index = 4
    ForeColor = &HC00000&
    Left = 885
    Top = 1260
    Width = 285
    Height = 240
    TabIndex = 12
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
  Begin Label LblName
    Caption = "Currency"
    Index = 3
    ForeColor = &HC00000&
    Left = 885
    Top = 990
    Width = 765
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmForExRec"

Private global_72 As Variant
Private global_68 As Recordset15
Private MasterFormExit As Integer

Private Sub CmdPrint_Click() '11134A4
  'Data Table: 4A64FC
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_14C As String
  Dim var_160 As String
  Dim unk_4A6503 As Connection15
  Dim var_88 As Recordset15
  Dim var_18E As Integer
  Dim var_A0 As Frame
  Dim var_C4 As Variant
  loc_1113184: On Error Goto loc_111345A
  loc_11131A4: Set var_A0 = Me.Txt
  loc_11131AA: Call 0.Method_CmdPrint_Click0 (CInt(8), var_A4, "SELECT * FROM ForExTrans Left Join ForEx on Forex.Code=ForexTrans.ForexCode where Vdate Between ")
  loc_11131B9: Proc_6_7_F26918(var_C4, CVar(var_A4), var_180)
  loc_11131C1: var_E4 = -1 & var_C4 
  loc_11131C5: var_F4 = " and "
  loc_11131CA: var_104 = var_E4 & var_F4 
  loc_11131D9: Set var_108 = Me.Txt
  loc_11131DF: Call 0.Method_CmdPrint_Click0 (CInt(9), var_10C)
  loc_11131EE: Proc_6_7_F26918(var_12C, CVar(var_10C))
  loc_11131FA: var_14C = " ORDER BY Forex.Name"
  loc_111320D: unk_4A6503.Execute CStr(var_104 & var_12C & var_14C), var_184, 
  loc_1113218: Set var_88 = var_184
  loc_1113242: var_188 = var_88.RecordCount
  loc_1113250: If (var_188 = 0) Then
  loc_111326C:   MsgBox("No Record Present For Printing", 0, var_C4, var_E4, var_104)
  loc_111327C:   Exit Sub
  loc_111327D: End If
  loc_111328C: var_18C = MemVar_1F950B4 & "\ForExRec.ttx"
  loc_1113293: Set var_A0 = var_88 
  loc_111329F: var_18E = CreateFieldDefFile(var_A0, var_18C)
  loc_11132A9: Set var_88 = var_A0
  loc_11132AF: var_D4 = CVar(var_18E) 'Integer
  loc_11132B2: var_98 = var_D4 'Variant
  loc_11132CE: var_160 = MemVar_1F950B4 & "\ForExRec.RPT"
  loc_11132D7: Call 0.Method_arg_1C (var_160, var_D4, var_A0)
  loc_11132E2: MemVar_1F951E8 = var_A0
  loc_11132FD: Call 0.Method_arg_90 (var_A0, var_188, var_9A)
  loc_1113305: Call 0.Method_arg_24 (1, var_18E)
  loc_1113311: For var_192 =  To CInt(var_188): &HFF = var_192 'Integer
  loc_111332A:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1113332:   Call 0.Method_arg_20 (var_A4)
  loc_111333A:   Call 0.Method_arg_30 (var_160)
  loc_1113380:   If (Ucase(CVar(var_160)) = Ucase("Title")) Then
  loc_1113396:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_111339E:     Call 0.Method_arg_20 (var_A4)
  loc_11133A6:     Call 0.Method_arg_38 ("'Forex Recieve Report'")
  loc_11133B2:   End If
  loc_11133B5: Next var_192 'Integer
  loc_11133D3: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_11133DB: Call 0.Method_arg_2C (var_F4)
  loc_11133E9: Call 0.Method_arg_150 (var_14C)
  loc_11133F4: Call 0.Method_arg_50 (var_160)
  loc_11133FE: Set var_A4 = Nothing
  loc_1113418: Set var_A0 = MemVar_1F951E8 
  loc_1113424: Proc_6_99_1484404(var_A0, 0, var_160)
  loc_111342F: MemVar_1F951E8 = var_A0
  loc_1113442: Set var_88 = Nothing
  loc_1113451: Me.frmprint.Visible = False
  loc_1113459: Exit Sub
  loc_111345A: ' Referenced from: 1113184
  loc_1113462: Set var_A0 = Err()
  loc_1113468: Call 0.Method_arg_2C (var_160, &HFF)
  loc_1113473: Call 0.Method_arg_50 (var_18C)
  loc_111348F: MsgBox(CVar(var_160), &H10, CVar(var_18C), var_E4, var_104)
  loc_11134A2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11158E4
  'Data Table: 4A64FC
  Dim var_92 As Integer
  Dim var_B0 As String
  Dim var_8C As TextBox
  Dim var_E4 As Variant
  Dim var_90 As Fields15
  loc_11155B6: Set var_88 = Me.Txt
  loc_11155BC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11155CA: Proc_6_74_E23240(var_8C)
  loc_11155D6: Call Proc_322_31_EB9124(var_8C)
  loc_11155DE: var_92 = Index
  loc_11155E9: If Not (var_92 = CInt(1)) Then
  loc_11155F4:   If Not (var_92 = CInt(2)) Then
  loc_11155FF:     If Not (var_92 = CInt(4)) Then
  loc_111560A:       If (var_92 = CInt(5)) Then
  loc_111560D:       End If
  loc_111560D:     End If
  loc_111560D:   End If
  loc_1115615:   var_98 = "{Home}+{End}"
  loc_111561B:   Proc_303_0_FBACC8(var_98, 0)
  loc_1115626: Else
  loc_111562E:   If (var_92 = CInt(7)) Then
  loc_111563E:     ReDim var_A0(0 To 2)
  loc_1115655:     var_A0(0) = "Cash"
  loc_1115664:     var_A0(1) = "T.C."
  loc_1115673:     var_A0(2) = "CreditCard"
  loc_111568A:     global_72 = Array(var_A0)
  loc_1115695:     Set var_E4 = Me.ListView
  loc_11156B0:     Set var_8C = Me.Txt
  loc_11156CA:     Set global_88 = Proc_6_66_F0048C(var_E4, var_8C, Index, global_72)
  loc_11156E8:     Set var_88 = Me.Txt
  loc_11156EE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11156F6:     3 = var_8C.Text
  loc_1115708:     Set var_90 = Me.Txt
  loc_111570E:     Call 0.Method_Txt_GotFocus0 (Index, var_E4, var_98)
  loc_1115716:     var_E4.Tag = global_72
  loc_111572C:   Else
  loc_1115734:     If (var_92 = CInt(3)) Then
  loc_1115751:       If (Me.Recordset15.RecordCount > 0) Then
  loc_111575F:         Set var_8C = Me.FGPoint
  loc_111577B:         Proc_6_137_1192FDC(Me.DGHelp, global_68, Index)
  loc_1115789:       End If
  loc_11157E0:       Set var_88 = Me.Txt
  loc_11157E6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11157EE:       ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1115806:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_1115809:         Exit Sub
  loc_111580A:       End If
  loc_1115817:       Set var_88 = Me.Txt
  loc_111581D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1115825:       var_98 = var_8C.Text
  loc_1115837:       var_B0 = "Name"
  loc_1115875:       If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B0).Value) Then
  loc_1115881:         Me.Recordset15.MoveFirst
  loc_11158A4:         Set var_88 = Me.Txt
  loc_11158AA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11158B2:         0 = var_8C.Text
  loc_11158CE:         Me.Recordset15.Find 1 & var_98 & "'", var_B0, var_92
  loc_11158E3:       End If
  loc_11158E3:     End If
  loc_11158E3:   End If
  loc_11158E3: End If
  loc_11158E3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11D7250
  'Data Table: 4A64FC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_8C As DataGrid
  Dim var_DC As String
  loc_11D6E07: var_86 = Shift
  loc_11D6E14: If (CLng(Shift) = &H1B) Then
  loc_11D6E17:   Call Proc_322_31_EB9124(var_86)
  loc_11D6E1C:   Exit Sub
  loc_11D6E1D: End If
  loc_11D6E20: var_88 = KeyCode
  loc_11D6E2B: If (var_88 = CInt(7)) Then
  loc_11D6E50:   Set var_8C = Me.Txt
  loc_11D6E56:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11D6E5E:   var_94 = var_90.Left
  loc_11D6E70:   Set var_98 = Me.Txt
  loc_11D6E76:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D6E7E:   var_A0 = var_9C.Top
  loc_11D6E90:   Set var_A4 = Me.Txt
  loc_11D6E96:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11D6E9E:   var_AC = var_A8.Height
  loc_11D6EB0:   Set var_B0 = Me.Txt
  loc_11D6EB6:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_11D6EBE:   var_B8 = var_B4.Width
  loc_11D6F06:   Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D6F2D: Else
  loc_11D6F35:   If (var_88 = CInt(3)) Then
  loc_11D6F55:     Set var_9C = Me.FGPoint
  loc_11D6F96:     Proc_6_69_134A630(Me.DGHelp, Me.Txt, CInt(3), global_68, Shift, 0, 1, Nothing)
  loc_11D6FB8:     var_94 = Me.FGPoint.RecordCount
  loc_11D7008:     If ((var_94 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11D7016:       Set var_90 = Me.FGPoint
  loc_11D7032:       Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, var_90, var_9C, 0)
  loc_11D7040:     End If
  loc_11D7043:   Else
  loc_11D704B:     If (var_88 = CInt(&HA)) Then
  loc_11D7058:       If (CLng(Shift) = &H2D) Then
  loc_11D7068:         Set var_8C = Me.Txt
  loc_11D706E:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_94))
  loc_11D7076:         CInt((var_A0 + var_AC)) = var_90.Text
  loc_11D7081:         Call Proc_322_34_EE3D48(var_DC, var_E0, CInt(var_B8))
  loc_11D7097:         Set var_98 = Me.Txt
  loc_11D709D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D70A5:         var_9C.Text = 780 & var_DC
  loc_11D70CB:         Set var_8C = Me.Txt
  loc_11D70D1:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11D70EC:         Set var_98 = Me.Txt
  loc_11D70F2:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D70FA:         var_9C.SelStart = Len(var_90.Text)
  loc_11D710D:         Exit Sub
  loc_11D710E:       End If
  loc_11D710E:     End If
  loc_11D710E:   End If
  loc_11D710E: End If
  loc_11D7147: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11D7168:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_11D7171:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11D7176:   End If
  loc_11D717A:   Set var_8C = Me.TopCtrl1
  loc_11D7180:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_88)
  loc_11D71AB:   If (((CStr() = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11D71C3:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11D71CC:       Proc_6_76_E533C8(Shift)
  loc_11D71D1:     End If
  loc_11D71D4:   Else
  loc_11D71D8:     Set var_8C = Me.TopCtrl1
  loc_11D71DE:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(arg_14)
  loc_11D7200:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11D7218:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11D7221:         Proc_6_76_E533C8(Shift)
  loc_11D7226:       End If
  loc_11D7226:     End If
  loc_11D7226:   End If
  loc_11D7244:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_11D724A:     Call Proc_322_32_E90E50(KeyCode)
  loc_11D724F:   End If
  loc_11D724F: End If
  loc_11D724F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FD1EA8
  'Data Table: 4A64FC
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FD1CDC: On Error Goto loc_FD1EA2
  loc_FD1CE2: Proc_6_58_E06050(arg_10)
  loc_FD1CEA: var_86 = KeyAscii
  loc_FD1CF5: If (var_86 = CInt(1)) Then
  loc_FD1D02:   Set var_8C = Me.Txt
  loc_FD1D08:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FD1D23:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_FD1D32: Else
  loc_FD1D3A:   If (var_86 = CInt(4)) Then
  loc_FD1D47:     Set var_8C = Me.Txt
  loc_FD1D4D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FD1D68:     Proc_6_42_129B55C(var_90, arg_10, 4)
  loc_FD1D77:   Else
  loc_FD1D7F:     If (var_86 = CInt(5)) Then
  loc_FD1D8C:       Set var_8C = Me.Txt
  loc_FD1D92:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 0)
  loc_FD1DAD:       Proc_6_42_129B55C(var_90, arg_10, 6)
  loc_FD1DBC:     Else
  loc_FD1DC4:       If (var_86 = CInt(6)) Then
  loc_FD1DD1:         Set var_8C = Me.Txt
  loc_FD1DD7:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 2)
  loc_FD1DF2:         Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_FD1E01:       Else
  loc_FD1E09:         If (var_86 = CInt(3)) Then
  loc_FD1E28:           If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FD1E5D:             Proc_6_89_1470B00(Me.Txt, CInt(3), global_68, arg_10, "Name")
  loc_FD1E93:             Proc_6_138_106E830(Me.DGHelp, global_68, KeyAscii, Me.FGPoint)
  loc_FD1EA1:           End If
  loc_FD1EA1:         End If
  loc_FD1EA1:       End If
  loc_FD1EA1:     End If
  loc_FD1EA1:   End If
  loc_FD1EA1: End If
  loc_FD1EA1: Exit Sub
  loc_FD1EA2: ' Referenced from: FD1CDC
  loc_FD1EA2: Proc_6_60_E63754(0, 2)
  loc_FD1EA7: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1193C
  'Data Table: 4A64FC
  Dim var_86 As Integer
  loc_F11853: var_86 = KeyCode
  loc_F1185E: If (var_86 = CInt(7)) Then
  loc_F1187C:   If (Me.FrmList.Visible = &HFF) Then
  loc_F118AB:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_F118BB:   End If
  loc_F118BE: Else
  loc_F118C6:   If (var_86 = CInt(3)) Then
  loc_F118E5:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F118F9:       var_B0 = "Name"
  loc_F11925:       Proc_6_68_12A2818(Me.DGHelp, Me.Txt, CInt(3), global_68, Shift)
  loc_F11938:     End If
  loc_F11938:   End If
  loc_F11938: End If
  loc_F11938: Exit Sub
  loc_F11939: Put global_88, Shift, var_B0
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AF04
  'Data Table: 4A64FC
  loc_E4AEE2: Set var_88 = Me.Txt
  loc_E4AEE8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AEF6: Proc_6_73_E23294(var_8C)
  loc_E4AF02: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1363D9C
  'Data Table: 4A64FC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_11C As String
  Dim unk_4A6503 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_12C As TextBox
  Dim var_8C As Variant
  loc_136355B: var_86 = Cancel
  loc_1363566: If (var_86 = CInt(1)) Then
  loc_1363574:   Set var_8C = Me.Txt
  loc_136357A:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1363582:   var_98 = "Vr No"
  loc_13635A3:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_13635B1:     Set var_8C = Me.Txt
  loc_13635B7:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13635BF:     var_90.SetFocus
  loc_13635CD:     arg_10 = &HFF
  loc_13635D0:     Exit Sub
  loc_13635D1:   End If
  loc_13635DF:   Set var_8C = Me.Txt
  loc_13635E5:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_13635ED:   arg_10 = var_90.Text
  loc_1363605:   If (CDbl(var_98) = CDbl(0)) Then
  loc_136361B:     var_B8 = "Vr. No. Can Not Be 0"
  loc_1363621:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_136363B:     Set var_8C = Me.Txt
  loc_1363641:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363649:     var_90.SetFocus
  loc_1363657:     arg_10 = &HFF
  loc_136365A:     Exit Sub
  loc_136365B:   End If
  loc_136365F:   Set var_8C = Me.TopCtrl1
  loc_1363665:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(arg_10)
  loc_136366D:   var_98 = CStr(var_86)
  loc_136367E:   If (var_98 = "Add") Then
  loc_1363687:     Call Proc_322_33_115C048(MemVar_1F95044)
  loc_136369A:     Set var_8C = Me.Txt
  loc_13636A0:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13636A8:     var_90.Text = var_98
  loc_13636B7:   End If
  loc_13636BB:   Set var_8C = Me.TopCtrl1
  loc_13636C1:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_98)
  loc_13636C9:   var_98 = CStr()
  loc_13636DA:   If (var_98 = "Add") Then
  loc_136370A:     Set var_8C = Me.Txt
  loc_1363710:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_1363721:     var_11C = var_124 & var_98
  loc_1363731:     unk_4A6503.Execute var_11C & "'", 0, var_128
  loc_1363741:      = var_124.Item()
  loc_1363749:      = var_128.Value
  loc_1363776:     If (var_90.Text.Fields > 0) Then
  loc_136377F:       Call 0.Method_arg_50 (var_98)
  loc_13637A0:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_13637B6:       Call Proc_322_33_115C048(MemVar_1F95044)
  loc_13637C6:       If (var_98 = vbNullString) Then
  loc_13637D3:         Set var_8C = Me.Txt
  loc_13637D9:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13637E1:         var_90.SetFocus
  loc_13637EF:         arg_10 = &HFF
  loc_13637F2:         Exit Sub
  loc_13637F3:       End If
  loc_13637F9:       Call Proc_322_33_115C048(MemVar_1F95044, var_98)
  loc_136380C:       Set var_8C = Me.Txt
  loc_1363812:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_136381A:       var_90.Text = arg_10
  loc_136382B:       arg_10 = &HFF
  loc_136382E:       Exit Sub
  loc_136382F:     End If
  loc_136382F:   End If
  loc_1363832: Else
  loc_136383A:   If (var_86 = CInt(2)) Then
  loc_136384B:     Set var_8C = Me.Txt
  loc_1363851:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_1363859:     arg_10 = var_90.Text
  loc_1363889:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_136389F:       Set var_8C = Me.Txt
  loc_13638A5:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_13638AD:       var_90.Text = CStr(MemVar_1F950EC)
  loc_13638BF:     Else
  loc_13638C9:       Set var_8C = Me.Txt
  loc_13638CF:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13638E2:       var_98 = Proc_6_33_15125B8(var_90)
  loc_13638EF:       Set var_124 = Me.Txt
  loc_13638F5:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_13638FD:       var_128.Text = var_98
  loc_1363910:     End If
  loc_1363914:     Set var_8C = Me.TopCtrl1
  loc_136391A:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_98)
  loc_1363922:     var_98 = CStr()
  loc_1363933:     If (var_98 = "Add") Then
  loc_136393C:       Call Proc_322_33_115C048(MemVar_1F95044)
  loc_136394C:       If (var_98 = vbNullString) Then
  loc_1363959:         Set var_8C = Me.Txt
  loc_136395F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363967:         var_90.SetFocus
  loc_1363975:         arg_10 = &HFF
  loc_1363978:         Exit Sub
  loc_1363979:       End If
  loc_136397F:       Call Proc_322_33_115C048(MemVar_1F95044, var_98)
  loc_1363992:       Set var_8C = Me.Txt
  loc_1363998:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_13639A0:       var_90.Text = arg_10
  loc_13639AF:     End If
  loc_13639B2:   Else
  loc_13639BA:     If (var_86 = CInt(4)) Then
  loc_13639CB:       Set var_8C = Me.Txt
  loc_13639D1:       Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_13639E6:       var_134 = Val(var_90.Text)
  loc_13639F7:       Set var_94 = Me.Txt
  loc_13639FD:       Call 0.Method_Txt_Validate0 (CInt(5), var_124, var_11C)
  loc_1363A12:       var_13C = Val(var_11C)
  loc_1363A24:       var_D8 = "0.00"
  loc_1363A4F:       Set var_128 = Me.Txt
  loc_1363A55:       Call 0.Method_Txt_Validate0 (CInt(6), var_12C, CStr(Format(CVar((var_124.Text * var_13C)), var_D8)), 1)
  loc_1363A5D:       var_12C.Text = 1
  loc_1363A86:     Else
  loc_1363A8E:       If (var_86 = CInt(3)) Then
  loc_1363AAB:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1363ACB:           var_90 = Me.Recordset15.Fields.Item("Rate")
  loc_1363ADA:           Proc_6_39_E7D3A0(var_D8, CVar(var_90))
  loc_1363AF1:           Set var_94 = Me.Txt
  loc_1363AF7:           Call 0.Method_Txt_Validate0 (CInt(5), var_124, CStr(var_D8))
  loc_1363AFF:           var_124.Text = var_13C
  loc_1363B17:         End If
  loc_1363B1A:       Else
  loc_1363B22:         If (var_86 = CInt(5)) Then
  loc_1363B2F:           Set var_8C = Me.Txt
  loc_1363B35:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363B61:           var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_1363B70:           Set var_94 = Me.Txt
  loc_1363B76:           Call 0.Method_Txt_Validate0 (CInt(5), var_124, var_98)
  loc_1363BA6:           Set var_8C = Me.Txt
  loc_1363BAC:           Call 0.Method_Txt_Validate0 (CInt(4), var_90, var_98)
  loc_1363BB4:           1 = var_90.Text
  loc_1363BC1:           var_134 = Val(var_98)
  loc_1363BD2:           Set var_94 = Me.Txt
  loc_1363BD8:           Call 0.Method_Txt_Validate0 (CInt(5), var_124, var_11C)
  loc_1363C2A:           Set var_128 = Me.Txt
  loc_1363C30:           Call 0.Method_Txt_Validate0 (CInt(6), var_12C, CStr(Format(CVar((1 * Val(var_11C))), "0.00")), 1)
  loc_1363C38:           var_12C.Text = 1
  loc_1363C61:         Else
  loc_1363C69:           If (var_86 = CInt(7)) Then
  loc_1363C79:             Set var_8C = Me.Txt
  loc_1363C7F:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1363C87:             var_13C = var_90.Text
  loc_1363C9E:             If (var_98 <> vbNullString) Then
  loc_1363CB9:               Set var_90 = Me.ListView.SelectedItem
  loc_1363CD1:               Set var_94 = Me.Txt
  loc_1363CD7:               Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1363CDF:               var_124.Text = var_90.Text
  loc_1363CF5:             End If
  loc_1363CF8:           Else
  loc_1363D00:             If Not (var_86 = CInt(8)) Then
  loc_1363D0B:               If (var_86 = CInt(9)) Then
  loc_1363D0E:               End If
  loc_1363D18:               Set var_8C = Me.Txt
  loc_1363D1E:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363D3E:               Set var_124 = Me.Txt
  loc_1363D44:               Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1363D4C:               var_128.Text = Proc_6_33_15125B8(var_90)
  loc_1363D6C:               Set var_8C = Me.Txt
  loc_1363D72:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363D91:               If (var_90.Text = vbNullString) Then
  loc_1363D96:                 arg_10 = 0
  loc_1363D99:               End If
  loc_1363D99:             End If
  loc_1363D99:           End If
  loc_1363D99:         End If
  loc_1363D99:       End If
  loc_1363D99:     End If
  loc_1363D99:   End If
  loc_1363D99: End If
  loc_1363D99: Exit Sub
End Sub

Private Sub Form_Load() '10299B0
  'Data Table: 4A64FC
  Dim var_88 As Label
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim unk_4A6503 As Connection15
  Dim var_B4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  loc_1029784: On Error Goto loc_10299A8
  loc_102978E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10297A2: Me.LblUser.Left = CDbl(13500)
  loc_10297B9: Me.LblUser.Top = CDbl(7800)
  loc_10297D0: Me.LblLDt.Top = CDbl(8160)
  loc_10297E1: Set var_88 = Me.LblLDt
  loc_10297E7: var_88.Left = CDbl(13500)
  loc_102980B: Me.Recordset15.CursorLocation = 3
  loc_1029835: var_9C = CVar("Select DocID as SearchCode,DocID,logsite_code,site_code From ForExTrans where  LOGSITE_CODE='" & MemVar_1F95078 & "' Order by DocID") 'String
  loc_102983F: Me.Open var_9C, CVar(MemVar_1F95044), 2
  loc_1029850: global_60 = "HTFEX"
  loc_1029878: unk_4A6503.Execute "SELECT Code,Name,Rate FROM ForEx where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_9C, -1
  loc_1029889: Set global_68 = var_88
  loc_10298AA: CVarUnk
  loc_10298AF: VerifyVarObj
  loc_10298B5: Set var_88 = Me.DGHelp
  loc_10298BB: LateIdStAd
  loc_10298DD: Call 0.Method_Form_Load0 (CInt(3), var_B4, var_B8, Me.Txt)
  loc_10298E5: global_68 = var_B4.Left
  loc_10298FC: Me.DGHelp.Left = CVar(var_B8)
  loc_1029918: Set var_CC = Me.Txt
  loc_102991E: Call 0.Method_Form_Load0 (CInt(3), var_D0, var_D4)
  loc_1029926: var_88 = var_D0.Height
  loc_1029939: Set var_88 = Me.Txt
  loc_102993F: Call 0.Method_Form_Load0 (CInt(3), var_B4, var_B8)
  loc_1029947: 3 = var_B4.Top
  loc_1029953: var_AC = CVar((var_B8 + var_D4)) 'Single
  loc_1029962: Me.DGHelp.Top = CVar(var_B8)
  loc_1029997: Call Proc_322_30_F8E49C(Proc_5_1_100EC1C("INI", Me), New)
  loc_10299A2: Call Proc_322_28_EB955C(-1)
  loc_10299A7: Exit Sub
  loc_10299A8: ' Referenced from: 1029784
  loc_10299A8: Proc_6_60_E63754()
  loc_10299AD: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E209E0
  'Data Table: 4A64FC
  loc_E209CF: Set global_64 = Nothing
  loc_E209DB: MasterFormExit = 0
  loc_E209DE: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E251B4
  'Data Table: 4A64FC
  loc_E25199: If (MasterFormExit = &HFF) Then
  loc_E251A9:   Me.Global.Unload Me
  loc_E251B1: End If
  loc_E251B1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27A70
  'Data Table: 4A64FC
  loc_E27A48: On Error Goto loc_E27A68
  loc_E27A5F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27A67: Exit Sub
  loc_E27A68: ' Referenced from: E27A48
  loc_E27A68: Proc_6_60_E63754(Shift)
  loc_E27A6D: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5BD2C
  'Data Table: 4A64FC
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5BC4E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5BC55:   Set var_A8 = Me.ListView
  loc_F5BC9F:   Set var_C0 = Me.Txt
  loc_F5BCA5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5BCAD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5BCCD: End If
  loc_F5BCD9: Me.FrmList.Visible = False
  loc_F5BD09: Set var_9C = Me.Txt
  loc_F5BD0F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5BD17: var_A8.SetFocus
  loc_F5BD2B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F97CF0
  'Data Table: 4A64FC
  Dim var_8C As Label
  Dim var_88 As String
  Dim var_B4 As TextBox
  loc_F97B78: On Error Goto loc_F97CE8
  loc_F97B9E: Call Proc_322_30_F8E49C(Proc_5_1_100EC1C("ADD", Me))
  loc_F97BB2: Set var_8C = Me.TopCtrl1
  loc_F97BB8: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030010(False)
  loc_F97BC9: Set var_8C = Me.TopCtrl1
  loc_F97BCF: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030011(False)
  loc_F97BE0: Set var_8C = Me.TopCtrl1
  loc_F97BE6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030013(False)
  loc_F97BF7: Set var_8C = Me.TopCtrl1
  loc_F97BFD: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030012(False)
  loc_F97C05: Call Proc_322_28_EB955C(global_64)
  loc_F97C17: Me.LblUser.Caption = vbNullString
  loc_F97C2C: Me.LblLDt.Caption = vbNullString
  loc_F97C39: var_88 = CStr(MemVar_1F950EC)
  loc_F97C47: Set var_8C = Me.Txt
  loc_F97C4D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_B4)
  loc_F97C55: var_B4.Text = var_88
  loc_F97C72: Set var_8C = Me.Txt
  loc_F97C78: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_B4)
  loc_F97C80: var_B4.Text = "Cash"
  loc_F97C92: Call Proc_322_33_115C048(MemVar_1F95044)
  loc_F97CA5: Set var_8C = Me.Txt
  loc_F97CAB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B4)
  loc_F97CB3: var_B4.Text = var_88
  loc_F97CCD: Set var_8C = Me.Txt
  loc_F97CD3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B4)
  loc_F97CDB: var_B4.SetFocus
  loc_F97CE7: Exit Sub
  loc_F97CE8: ' Referenced from: F97B78
  loc_F97CE8: Proc_6_60_E63754(var_88)
  loc_F97CED: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F05458
  'Data Table: 4A64FC
  loc_F05380: On Error Goto loc_F05452
  loc_F053BA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F053E0:   Call Proc_322_30_F8E49C(Proc_5_1_100EC1C("INI", Me))
  loc_F053F4:   Set var_10C = Me.TopCtrl1
  loc_F053FA:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030010(False)
  loc_F0540B:   Set var_10C = Me.TopCtrl1
  loc_F05411:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030011(False)
  loc_F05422:   Set var_10C = Me.TopCtrl1
  loc_F05428:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030013(False)
  loc_F05439:   Set var_10C = Me.TopCtrl1
  loc_F0543F:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030012(False)
  loc_F05447:   Call Proc_322_31_EB9124(global_64)
  loc_F0544C:   Call Proc_322_28_EB955C()
  loc_F05451: End If
  loc_F05451: Exit Sub
  loc_F05452: ' Referenced from: F05380
  loc_F05452: Proc_6_60_E63754()
  loc_F05457: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1105730
  'Data Table: 4A64FC
  Dim var_96 As Integer
  Dim unk_4A6503 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_1105428: On Error Goto loc_11056D8
  loc_1105439: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_110543C:   Exit Sub
  loc_110543D: End If
  loc_1105474: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1105485:   unk_4A6503.BeginTrans var_11C
  loc_110549B:   var_94 = Me.Bookmark 'Variant
  loc_11054BD:   Set var_120 = Me.Txt
  loc_11054C3:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From ForExTrans Where DocID='")
  loc_11054CB:   var_B8 = var_124.Text
  loc_11054D4:   var_12C = -1 & var_128
  loc_11054E4:   unk_4A6503.Execute var_12C & "'", var_134, &HFF
  loc_110550C:   Set var_120 = Me.Txt
  loc_1105512:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_1105524:   var_168 = 0
  loc_1105537:   var_160 = 0
  loc_1105542:   var_15C = 0
  loc_1105555:   var_154 = 0
  loc_1105560:   var_150 = 0
  loc_1105573:   var_148 = 0
  loc_11055B2:   var_128 = "ForExTrans"
  loc_11055BB:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_11055E6:   unk_4A6503.CommitTrans
  loc_11055ED:   var_96 = 0
  loc_11055FB:   Me.Requery -1
  loc_110561B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1105628:     Me.Bookmark = var_94
  loc_1105630:   Else
  loc_1105644:     If (Me.EOF = 0) Then
  loc_110564D:       Me.MoveLast
  loc_1105652:     End If
  loc_1105652:   End If
  loc_1105652:   Call Proc_322_28_EB955C(var_96, var_148, 0, var_150, var_154)
  loc_1105673:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_1105684:   Set var_120 = Me.TopCtrl1
  loc_110568A:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030010(False)
  loc_110569B:   Set var_120 = Me.TopCtrl1
  loc_11056A1:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030011(False)
  loc_11056B2:   Set var_120 = Me.TopCtrl1
  loc_11056B8:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030013(False)
  loc_11056C9:   Set var_120 = Me.TopCtrl1
  loc_11056CF:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030012(False)
  loc_11056D7: End If
  loc_11056D7: Exit Sub
  loc_11056D8: ' Referenced from: 1105428
  loc_11056DE: If (var_96 = &HFF) Then
  loc_11056E7:   unk_4A6503.RollbackTrans
  loc_11056EC: End If
  loc_11056F4: Set var_120 = Err()
  loc_11056FA: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_110571B: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_110572E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F64E6C
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F64D48: On Error Goto loc_F64E26
  loc_F64D59: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F64D5C:   Exit Sub
  loc_F64D5D: End If
  loc_F64D74: If (Me.RecordCount > 0) Then
  loc_F64D8C:   var_8C = "EDIT"
  loc_F64D9A:   Call Proc_322_30_F8E49C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F64DB2:   Set var_90 = Me.Txt
  loc_F64DB8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F64DC0:   var_98.Enabled = False
  loc_F64DD7:   Set var_90 = Me.Txt
  loc_F64DDD:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_F64DE5:   var_98.SetFocus
  loc_F64DF4: Else
  loc_F64E15:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F64E25: End If
  loc_F64E25: Exit Sub
  loc_F64E26: ' Referenced from: F64D48
  loc_F64E2E: Set var_90 = Err()
  loc_F64E34: Call 0.Method_arg_2C (var_8C)
  loc_F64E55: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F64E68: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A198
  'Data Table: 4A64FC
  loc_E1A18D: Me.Global.Unload Me
  loc_E1A195: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB3F3C
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB3EAC: On Error Goto loc_EB3F36
  loc_EB3EC6: If (Me.RecordCount <= 0) Then
  loc_EB3ECF:   var_B8 = "Information"
  loc_EB3EEA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3EFA:   Exit Sub
  loc_EB3EFB: End If
  loc_EB3EFE: MemVar_1F950E4 = "Select DocID as SearchCode,VNo,cast(VDate as Varchar(11)) as Vdate,ForExCode,cast(Qty as char(9)) As Qty,cast(Rate as char(9)) As Rate,Cast(Amount as char(12)) As Amount,Remarks From ForExTrans Order by DocID,VNo"
  loc_EB3F0B: Proc_6_126_F1C850("500,2000,2000,1500,1500,1500,3000")
  loc_EB3F19: MemVar_1F95120 = Me
  loc_EB3F30: Call 0.Method_arg_2B0 (1)
  loc_EB3F35: Exit Sub
  loc_EB3F36: ' Referenced from: EB3EAC
  loc_EB3F36: Proc_6_60_E63754(var_B8)
  loc_EB3F3B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E4F074
  'Data Table: 4A64FC
  loc_E4F05B: If (Me.frmprint.Visible = 0) Then
  loc_E4F06A:   Me.frmprint.Visible = True
  loc_E4F072: End If
  loc_E4F072: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14531A0
  'Data Table: 4A64FC
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim unk_4A6503 As Connection15
  Dim var_98 As Recordset15
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_F4 As Fields15
  Dim var_F8 As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_86 As Integer
  Dim var_138 As String
  Dim var_168 As String
  Dim var_118 As Variant
  Dim var_B8 As Variant
  Dim var_128 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1E4 As TextBox
  Dim var_230 As TextBox
  Dim var_274 As Variant
  Dim var_27C As TextBox
  Dim var_420 As Variant
  Dim var_8C As Recordset15
  Dim var_510 As Double
  Dim Me As Recordset15
  loc_145275C: On Error Goto loc_1453184
  loc_145276A: Set var_98 = Me.Txt
  loc_1452770: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1452799: If (Proc_6_27_EA61EC(var_9C, "Date") = 0) Then
  loc_145279C:   Exit Sub
  loc_145279D: End If
  loc_14527A8: Set var_98 = Me.Txt
  loc_14527AE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_14527D7: If (Proc_6_27_EA61EC(var_9C, "Vr No") = 0) Then
  loc_14527DA:   Exit Sub
  loc_14527DB: End If
  loc_14527E6: Set var_98 = Me.Txt
  loc_14527EC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_1452815: If (Proc_6_27_EA61EC(var_9C, "Foreign Currency") = 0) Then
  loc_1452818:   Exit Sub
  loc_1452819: End If
  loc_145281C: Call Proc_322_27_F8E2CC(var_A6)
  loc_1452827: If (var_A6 = 0) Then
  loc_145282A:   Exit Sub
  loc_145282B: End If
  loc_145282F: Set var_98 = Me.TopCtrl1
  loc_1452835: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_9C)
  loc_145284E: If (CStr() = "Add") Then
  loc_1452857:   var_DC = 0
  loc_1452874:   var_A4 = "Select ncur from enviro where LOGsite_code='" & MemVar_1F95078
  loc_1452884:   unk_4A6503.Execute var_A4 & "'", var_B8, -1
  loc_145288C:   var_98 = var_98.Fields
  loc_1452894:   var_DC = var_9C.Item(var_9C)
  loc_145289C:   var_A0 = var_A0.Value
  loc_14528C6:   Call Proc_322_33_115C048(MemVar_1F95044, var_A4)
  loc_14528D9:   Set var_98 = Me.Txt
  loc_14528DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_1452923:   Set var_98 = Me.Txt
  loc_1452929:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_1452931:   var_A0 = CDate(var_EC)
  loc_145294A:   unk_4A6503.Execute var_F4 & var_A4 & "'", 0, var_F8
  loc_1452952:   var_EC = var_A0.Fields
  loc_145295A:    = var_F4.Item(var_EC)
  loc_1452962:    = var_F8.Value
  loc_145298F:   If (var_EC > 0) Then
  loc_1452998:     Call 0.Method_arg_50 (var_A4)
  loc_14529A6:     var_EC = CVar(var_A4) 'String
  loc_14529B3:     var_B8 = "Duplicate Vr. No."
  loc_14529B9:     MsgBox(var_B8, &H40, var_EC, var_118, var_128)
  loc_14529CF:     Call Proc_322_33_115C048(MemVar_1F95044)
  loc_14529DF:     If (var_A4 = vbNullString) Then
  loc_14529E2:       Exit Sub
  loc_14529E3:     End If
  loc_14529E9:     Call Proc_322_33_115C048(MemVar_1F95044, var_A4)
  loc_14529FC:     Set var_98 = Me.Txt
  loc_1452A02:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_1452A0A:     var_9C.Text = var_A4
  loc_1452A19:     Exit Sub
  loc_1452A1A:   End If
  loc_1452A1A: End If
  loc_1452A28: unk_4A6503.BeginTrans var_12C
  loc_1452A4B: Set var_98 = Me.Txt
  loc_1452A51: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Delete From ForExTrans Where DocID='", var_B8)
  loc_1452A59: -1 = var_9C.Text
  loc_1452A72: unk_4A6503.Execute var_A0 & var_A4 & "'", &HFF, var_A4
  loc_1452A90: Set var_424 = Me.TopCtrl1
  loc_1452A96: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1452AB4: var_F0 = "Insert Into ForExTrans(" & "DocID,VType,VPrefix,Site_Code,VNo,VDate," & "ForExCode,Qty,Rate,Amount,PayMode,Remarks," & "U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_1452AC2: var_138 = var_F0 & " Values(" & "'"
  loc_1452AD3: Set var_98 = Me.Txt
  loc_1452AD9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_1452B0C: Set var_A0 = Me.LblVPrefix
  loc_1452B41: Set var_F4 = Me.Txt
  loc_1452B47: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F8)
  loc_1452B62: var_168 = var_138 & var_9C.Text & "','" & global_60 & "','" & var_A0.Caption & "','" & MemVar_1F95070 & "'," & CStr(Val(var_F8.Text))
  loc_1452B77: Set var_16C = Me.Txt
  loc_1452B7D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_170)
  loc_1452B85: var_B8 = CVar(var_170) 'Address
  loc_1452B8C: Proc_6_7_F26918(var_EC, var_B8)
  loc_1452BB8: Set var_194 = Me.Txt
  loc_1452BBE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_198)
  loc_1452BD4: Proc_6_17_EAAE40(var_1BC, CVar(var_198.Tag))
  loc_1452BF7: Set var_1E0 = Me.Txt
  loc_1452BFD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1E4)
  loc_1452C31: Set var_22C = Me.Txt
  loc_1452C37: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_1452C59: var_274 = CVar(var_168 & ",") & var_EC & "," & vbNullString & var_1BC & "," & CVar(Val(var_1E4.Text)) & "," & CVar(Val(var_230.Text)) & "," 
  loc_1452C6B: Set var_278 = Me.Txt
  loc_1452C71: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_27C)
  loc_1452CA2: Set var_2C4 = Me.Txt
  loc_1452CA8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2C8)
  loc_1452CB7: Proc_6_17_EAAE40(var_2E8, CVar(var_2C8))
  loc_1452CD7: Set var_31C = Me.Txt
  loc_1452CDD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_320)
  loc_1452CEC: Proc_6_17_EAAE40(var_340, CVar(var_320))
  loc_1452D2B: Proc_6_7_F26918(var_3F0, Date)
  loc_1452D3C: var_420 = var_274 & CVar(Val(var_27C.Text)) & "," & var_2E8 & "," & var_340 & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_3F0 & ",'" 
  loc_1452E52: unk_4A6503.Execute CStr(var_420 & IIf((CStr(var_434) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_B8, -1
  loc_1452E67: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(Me.TopCtrl1)
  loc_1452E80: If (CStr() = "Add") Then
  loc_1452E97:   var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1452EBD:   var_118 = CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_1452ECE:   Set var_98 = Me.Txt
  loc_1452ED4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, var_138, var_118)
  loc_1452EDC:   var_190 = var_9C.Text
  loc_1452EEA:   Proc_6_7_F26918(var_EC, CVar(var_138))
  loc_1452EF2:   var_128 = -1 & var_EC 
  loc_1452EFB:   var_180 = CVar(var_168 & ",") & var_EC & " Order By VP.Date_From DESC" 
  loc_1452F09:   unk_4A6503.Execute CStr(var_180), var_A0, 
  loc_1452F14:   Set var_8C = var_A0
  loc_1452F52:   If (var_8C.RecordCount > 0) Then
  loc_1452F63:     Set var_98 = Me.Txt
  loc_1452F69:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_1452F71:     var_A4 = var_9C.Text
  loc_1452F7E:     var_510 = Val(var_A4)
  loc_1452F84:     var_CC = "Date_From"
  loc_1452FA7:     Proc_6_7_F26918(var_EC, CVar(var_8C.Fields.Item(var_CC)))
  loc_1452FDA:     var_138 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_510) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_145300D:     unk_4A6503.Execute CStr(CVar(var_138 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_EC), var_180, -1
  loc_1453041:   End If
  loc_1453041: End If
  loc_1453047: unk_4A6503.CommitTrans
  loc_145305A: Set var_98 = Me.Txt
  loc_1453060: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_1453068: var_F8 = var_9C.Text
  loc_145307C: var_86 = 0
  loc_145308A: Me.Requery -1
  loc_14530B4: Me.Find "SearchCode ='" & "SearchCode ='" & var_A4 & "'", 0, 1
  loc_14530C4: Set var_98 = Me.TopCtrl1
  loc_14530CA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_CC)
  loc_14530E3: If (CStr(var_86) = "Add") Then
  loc_14530E6:   Call TopCtrl1_UnknownEvent_A()
  loc_14530EB:   Exit Sub
  loc_14530EC: End If
  loc_145310F: Call Proc_322_30_F8E49C(Proc_5_1_100EC1C("INI", Me), global_64)
  loc_1453123: Set var_98 = Me.TopCtrl1
  loc_1453129: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030010(False)
  loc_145313A: Set var_98 = Me.TopCtrl1
  loc_1453140: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030011(False)
  loc_1453151: Set var_98 = Me.TopCtrl1
  loc_1453157: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030013(False)
  loc_1453168: Set var_98 = Me.TopCtrl1
  loc_145316E: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030012(False)
  loc_1453176: Call Proc_322_28_EB955C(var_510)
  loc_1453180: Set var_8C = Nothing
  loc_1453183: Exit Sub
  loc_1453184: ' Referenced from: 145275C
  loc_145318A: If (var_86 = &HFF) Then
  loc_1453193:   unk_4A6503.RollbackTrans
  loc_1453198: End If
  loc_1453198: Proc_6_60_E63754()
  loc_145319D: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E1A2C8
  'Data Table: 4A64FC
  loc_E1A2BC: Me.frmprint.Visible = False
  loc_E1A2C4: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E34B64
  'Data Table: 4A64FC
  loc_E34B58: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E34B5B:   Call DGHelp_UnknownEvent_9()
  loc_E34B60: End If
  loc_E34B60: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F59308
  'Data Table: 4A64FC
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F591F1: Set var_A8 = Me.DGHelp
  loc_F591F7: var_A8.Visible = False
  loc_F59219: If (Me.var_A8.RecordCount > 0) Then
  loc_F5925B:   Set var_B4 = Me.Txt
  loc_F59261:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F59269:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F5929F:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F592BE:   Set var_B4 = Me.Txt
  loc_F592C4:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F592CC:   var_B8.Text = CStr(var_B0.Value)
  loc_F592E2: End If
  loc_F592ED: Set var_A8 = Me.Txt
  loc_F592F3: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3))
  loc_F592FB: var_B0.SetFocus
  loc_F59307: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A73B4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A73C3
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EF6DF8
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_A0 As Boolean
  loc_EF6D2A: On Error Goto loc_EF6DEF
  loc_EF6D33: Me.MoveFirst
  loc_EF6D5D: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EF6D85: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_EF6D96: Set var_A8 = Me.TopCtrl1
  loc_EF6D9C: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030010(False)
  loc_EF6DAD: Set var_A8 = Me.TopCtrl1
  loc_EF6DB3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030011(False)
  loc_EF6DC4: Set var_A8 = Me.TopCtrl1
  loc_EF6DCA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030013(False)
  loc_EF6DD2: var_A0 = False
  loc_EF6DDB: Set var_A8 = Me.TopCtrl1
  loc_EF6DE1: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030012(var_A0)
  loc_EF6DE9: Call Proc_322_29_131E82C(0)
  loc_EF6DEE: Exit Sub
  loc_EF6DEF: ' Referenced from: EF6D2A
  loc_EF6DEF: Proc_6_60_E63754(var_A0)
  loc_EF6DF4: Exit Sub
  loc_EF6DF5: Exit Sub
  loc_EF6DF6: Exit Sub
End Sub

Public Sub Proc_322_26_DFC244
  'Data Table: 4A64FC
  Dim .global_9984 As Currency
  loc_DFC240: Exit Sub
  loc_DFC241: .global_9984 = 
End Sub

Public Sub Proc_322_27_F8E2CC
  'Data Table: 4A64FC
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4A6503 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8E18D: Set var_8C = Me.TopCtrl1
  loc_F8E193: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(&HFF)
  loc_F8E19B: var_A0 = CStr()
  loc_F8E1AC: If (var_A0 = "Add") Then
  loc_F8E1DC:   Set var_8C = Me.Txt
  loc_F8E1E2:   Call 0.Method_Proc_322_27_F8E2CC0 (CInt(0), var_A4, var_A0, "Select Count(*) From ForExTrans Where DocID='", var_9C, -1)
  loc_F8E203:   unk_4A6503.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8E213:    = var_C4.Item()
  loc_F8E21B:    = var_D8.Value
  loc_F8E248:   If (var_A4.Text.Fields > 0) Then
  loc_F8E251:     Call 0.Method_arg_50 (var_A0)
  loc_F8E272:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8E288:     Call Proc_322_33_115C048(MemVar_1F95044)
  loc_F8E29B:     Set var_8C = Me.Txt
  loc_F8E2A1:     Call 0.Method_Proc_322_27_F8E2CC0 (CInt(0), var_A4)
  loc_F8E2A9:     var_A4.Text = var_A0
  loc_F8E2BD:     Proc_322_27_F8E2CC = 0
  loc_F8E2C3:   End If
  loc_F8E2C3: End If
  loc_F8E2C3: Proc_322_27_F8E2CC = var_A0
End Sub

Public Sub Proc_322_28_EB955C
  'Data Table: 4A64FC
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EB94CA: Set var_8C = Me.Txt
  loc_EB94D0: Call 0.Method_Proc_322_28_EB955CC (var_8E, var_86)
  loc_EB94E0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB94F6:   Set var_8C = Me.Txt
  loc_EB94FC:   Call 0.Method_Proc_322_28_EB955C0 (CInt(var_86), var_98)
  loc_EB9504:   var_98.Text = vbNullString
  loc_EB9520:   Set var_8C = Me.Txt
  loc_EB9526:   Call 0.Method_Proc_322_28_EB955C0 (CInt(var_86), var_98)
  loc_EB952E:   var_98.Tag = vbNullString
  loc_EB953D: Next var_92 'Byte
  loc_EB9550: Me.LblVPrefix.Caption = vbNullString
  loc_EB9558: Exit Sub
  loc_EB9559: Result  End Sub 'Currency
End Sub

Public Sub Proc_322_29_131E82C
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_D8 As Variant
  Dim unk_4A6503 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_1E4 As Recordset15
  Dim var_124 As TextBox
  loc_131E0F4: On Error Goto loc_131E826
  loc_131E10E: If (Me.RecordCount > 0) Then
  loc_131E11E:   var_C8 = "SELECT ForEx.Name as ForCurrency, ForExTrans.* FROM ForExTrans LEFT JOIN ForEx ON ForExTrans.ForExCode = ForEx.Code Where DocID='"
  loc_131E167:   unk_4A6503.Execute CStr(var_C8 & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_131E172:   Set var_88 = var_120
  loc_131E1C6:   var_120 = var_88.Fields
  loc_131E22F:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_131E274:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_131E2EE:   var_124 = var_88.Fields.Item("U_AE")
  loc_131E34F:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124)) = "E"), "Last Update : ", "entdt : "))
  loc_131E394:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_131E3CF:   Set var_1E4 = var_88 
  loc_131E40C:   Set var_120 = Me.Txt
  loc_131E412:   Call 0.Method_Proc_322_29_131E82C0 (CInt(0), var_124)
  loc_131E41A:   var_124.Text = CStr(var_1E4.Fields.Item("DocID").Value)
  loc_131E468:   Me.LblVPrefix.Caption = CStr(var_1E4.Fields.Item("vPrefix").Value)
  loc_131E4A7:   var_D8 = "dd/MMM/yyyy"
  loc_131E4CE:   Set var_120 = Me.Txt
  loc_131E4D4:   Call 0.Method_Proc_322_29_131E82C0 (CInt(2), var_124, CStr(Format(CVar(var_1E4.Fields.Item("VDate")), var_D8)))
  loc_131E4DC:   var_124.Text = 1
  loc_131E52F:   Set var_120 = Me.Txt
  loc_131E535:   Call 0.Method_Proc_322_29_131E82C0 (CInt(1), var_124)
  loc_131E53D:   var_124.Text = CStr(var_1E4.Fields.Item("VNo").Value)
  loc_131E589:   Set var_120 = Me.Txt
  loc_131E58F:   Call 0.Method_Proc_322_29_131E82C0 (CInt(3), var_124)
  loc_131E597:   var_124.Tag = Proc_6_38_E69628(CVar(var_1E4.Fields.Item("ForExCode")))
  loc_131E5E1:   Set var_120 = Me.Txt
  loc_131E5E7:   Call 0.Method_Proc_322_29_131E82C0 (CInt(3), var_124)
  loc_131E5EF:   var_124.Text = Proc_6_38_E69628(CVar(var_1E4.Fields.Item("ForCurrency")))
  loc_131E629:   Proc_6_39_E7D3A0(var_D8, CVar(var_1E4.Fields.Item("qty")))
  loc_131E640:   Set var_120 = Me.Txt
  loc_131E646:   Call 0.Method_Proc_322_29_131E82C0 (CInt(4), var_124)
  loc_131E64E:   var_124.Text = CStr(var_D8)
  loc_131E6B8:   Set var_120 = Me.Txt
  loc_131E6BE:   Call 0.Method_Proc_322_29_131E82C0 (CInt(5), var_124, CStr(Format(CVar(var_1E4.Fields.Item("Rate")), "0.00")))
  loc_131E6C6:   var_124.Text = 1
  loc_131E732:   Set var_120 = Me.Txt
  loc_131E738:   Call 0.Method_Proc_322_29_131E82C0 (CInt(6), var_124, CStr(Format(CVar(var_1E4.Fields.Item("Amount")), "0.00")), 1)
  loc_131E740:   var_124.Text = 1
  loc_131E790:   Set var_120 = Me.Txt
  loc_131E796:   Call 0.Method_Proc_322_29_131E82C0 (CInt(7), var_124)
  loc_131E79E:   var_124.Text = Proc_6_38_E69628(CVar(var_1E4.Fields.Item("PayMode")), 1)
  loc_131E7E8:   Set var_120 = Me.Txt
  loc_131E7EE:   Call 0.Method_Proc_322_29_131E82C0 (CInt(&HA), var_124)
  loc_131E7F6:   var_124.Text = Proc_6_38_E69628(CVar(var_1E4.Fields.Item("Remarks")))
  loc_131E80C:   Set var_1E4 = Nothing 
  loc_131E813: Else
  loc_131E813:   Call Proc_322_28_EB955C(1)
  loc_131E818: End If
  loc_131E818: Call Proc_322_31_EB9124()
  loc_131E822: Set var_88 = Nothing
  loc_131E825: Exit Sub
  loc_131E826: ' Referenced from: 131E0F4
  loc_131E826: Proc_6_60_E63754()
  loc_131E82B: Exit Sub
End Sub

Public Sub Proc_322_30_F8E49C(arg_C) 'F8E49C
  'Data Table: 4A64FC
  Dim var_98 As TextBox
  loc_F8E33A: Set var_8C = Me.Txt
  loc_F8E340: Call 0.Method_Proc_322_30_F8E49CC (var_8E, var_86)
  loc_F8E350: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F8E366:   Set var_8C = Me.Txt
  loc_F8E36C:   Call 0.Method_Proc_322_30_F8E49C0 (CInt(var_86), var_98)
  loc_F8E374:   var_98.Enabled = arg_C
  loc_F8E383: Next var_92 'Byte
  loc_F8E396: Set var_8C = Me.Txt
  loc_F8E39C: Call 0.Method_Proc_322_30_F8E49C0 (CInt(0), var_98)
  loc_F8E3A4: var_98.Enabled = False
  loc_F8E3BD: Set var_8C = Me.Txt
  loc_F8E3C3: Call 0.Method_Proc_322_30_F8E49C0 (CInt(1), var_98)
  loc_F8E3CB: var_98.Enabled = False
  loc_F8E3E4: Set var_8C = Me.Txt
  loc_F8E3EA: Call 0.Method_Proc_322_30_F8E49C0 (CInt(2), var_98)
  loc_F8E3F2: var_98.Enabled = False
  loc_F8E40B: Set var_8C = Me.Txt
  loc_F8E411: Call 0.Method_Proc_322_30_F8E49C0 (CInt(7), var_98)
  loc_F8E419: var_98.Enabled = False
  loc_F8E432: Set var_8C = Me.Txt
  loc_F8E438: Call 0.Method_Proc_322_30_F8E49C0 (CInt(6), var_98)
  loc_F8E440: var_98.Enabled = False
  loc_F8E459: Set var_8C = Me.Txt
  loc_F8E45F: Call 0.Method_Proc_322_30_F8E49C0 (CInt(8), var_98)
  loc_F8E467: var_98.Enabled = True
  loc_F8E480: Set var_8C = Me.Txt
  loc_F8E486: Call 0.Method_Proc_322_30_F8E49C0 (CInt(9), var_98)
  loc_F8E48E: var_98.Enabled = True
  loc_F8E49A: Exit Sub
End Sub

Public Sub Proc_322_31_EB9124
  'Data Table: 4A64FC
  loc_EB909F: If (Me.FrmList.Visible = &HFF) Then
  loc_EB90AE:   Me.FrmList.Visible = False
  loc_EB90B6: End If
  loc_EB90D2: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB90E4:   Me.DGHelp.Visible = False
  loc_EB90EC: End If
  loc_EB9108: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB911A:   Me.FGPoint.Visible = False
  loc_EB9122: End If
  loc_EB9122: Exit Sub
End Sub

Public Sub Proc_322_32_E90E50(arg_C) 'E90E50
  'Data Table: 4A64FC
  Dim var_10C As TextBox
  loc_E90DE4: Call Proc_322_31_EB9124()
  loc_E90E20: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90E23:   Call TopCtrl1_UnknownEvent_16()
  loc_E90E2B: Else
  loc_E90E35:   Set var_108 = Me.Txt
  loc_E90E3B:   Call 0.Method_Proc_322_32_E90E500 (arg_C)
  loc_E90E43:   var_10C.SetFocus
  loc_E90E4F: End If
  loc_E90E4F: Exit Sub
End Sub

Public Sub Proc_322_33_115C048
  'Data Table: 4A64FC
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
  loc_115BCE0: var_90 = global_60
  loc_115BCF7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115BD1A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115BD28: Set var_B4 = Me.Txt
  loc_115BD2E: Call 0.Method_Proc_322_33_115C0480 (CInt(2), var_B8, var_E8)
  loc_115BD3D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115BD45: var_F8 = -1 & var_D8 
  loc_115BD59: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115BD64: Set var_8C = var_140
  loc_115BDA0: If (var_8C.RecordCount <= 0) Then
  loc_115BDBC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115BDCF:   var_88 = vbNullString
  loc_115BDD2:   Proc_322_33_115C048 = 
  loc_115BDD8: End If
  loc_115BDEC: If (var_8C.RecordCount > 0) Then
  loc_115BE2B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115BE48:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115BE59:     var_9C = CStr(var_B8.Value)
  loc_115BE74:     Set var_B4 = Me.Txt
  loc_115BE7A:     Call 0.Method_Proc_322_33_115C0480 (CInt(1), var_B8)
  loc_115BE90:     var_94 = CLng(Val(var_B8.Text))
  loc_115BEA0:   Else
  loc_115BECB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115BEF2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115BF07:     var_D8 = (var_B8.Value + 1)
  loc_115BF0D:     var_94 = CLng(var_D8)
  loc_115BF1E:   End If
  loc_115BF1E: End If
  loc_115BF49: var_C8 = Space((5 - Len(var_90)))
  loc_115BF51: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115BF5B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115BF6C: var_118 = Space((5 - Len(var_9C)))
  loc_115BF74: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115BF8A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115BF92: var_188 = (var_13C + var_178)
  loc_115BF9E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115BFA3: var_98 = CStr(var_1A8)
  loc_115BFD3: Me.LblVPrefix.Caption = var_9C
  loc_115BFE9: Set var_B4 = Me.Txt
  loc_115BFEF: Call 0.Method_Proc_322_33_115C0480 (CInt(0), var_B8)
  loc_115BFF7: var_B8.Text = var_98
  loc_115C016: Set var_B4 = Me.Txt
  loc_115C01C: Call 0.Method_Proc_322_33_115C0480 (CInt(1), var_B8)
  loc_115C024: var_B8.Text = CStr(var_94)
  loc_115C036: var_88 = var_98
  loc_115C03E: Set var_8C = Nothing
  loc_115C041: Proc_322_33_115C048 = var_94
End Sub

Public Sub Proc_322_34_EE3D48
  'Data Table: 4A64FC
  loc_EE3C96: On Error Goto loc_EE3CDC
  loc_EE3CAE: Call 0.Method_arg_18C (var_8C)
  loc_EE3CB6: Call var_8C.Show
  loc_EE3CCB: Call 0.Method_arg_188 (var_B0)
  loc_EE3CD3: var_88 = var_B0
  loc_EE3CD6: Proc_322_34_EE3D48 = 1
  loc_EE3CDC: ' Referenced from: EE3C96
  loc_EE3CE4: Set var_8C = Err()
  loc_EE3CEA: Call 0.Method_arg_1C (var_B4)
  loc_EE3CFB: If (var_B4 <> 0) Then
  loc_EE3D06:   Set var_8C = Err()
  loc_EE3D0C:   Call 0.Method_arg_2C (var_B0)
  loc_EE3D2D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE3D40: End If
  loc_EE3D40: Proc_322_34_EE3D48 = 
End Sub
