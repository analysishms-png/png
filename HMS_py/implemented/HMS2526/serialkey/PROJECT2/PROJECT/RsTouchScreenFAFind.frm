VERSION 5.00
Begin VB.Form RsTouchScreenFAFind
  BackColor = &HFFFFC0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 15
  ClientTop = 15
  ClientWidth = 11640
  ClientHeight = 6015
  LockControls = -1  'True
  StartUpPosition = 1 'CenterOwner
  Begin Frame FrameFgrid
    Caption = "Frame1"
    BackColor = &H404040&
    Left = 10470
    Top = 0
    Width = 1140
    Height = 4185
    TabIndex = 4
    BorderStyle = 0 'None
    Begin CommandButton CmFgrid
      Caption = "Up"
      Index = 0
      Left = 75
      Top = 90
      Width = 1000
      Height = 1000
      TabIndex = 8
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":0
      DisabledPicture = "RsTouchScreenFAFind.frx":49D
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Down"
      Index = 1
      Left = 75
      Top = 1095
      Width = 1000
      Height = 1000
      TabIndex = 7
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":8A7
      DisabledPicture = "RsTouchScreenFAFind.frx":D36
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Select"
      Index = 2
      Left = 75
      Top = 2100
      Width = 1000
      Height = 1000
      TabIndex = 6
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":1144
      DisabledPicture = "RsTouchScreenFAFind.frx":1750
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Exit"
      Index = 3
      Left = 75
      Top = 3105
      Width = 1000
      Height = 1000
      TabIndex = 5
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":1C38
      DisabledPicture = "RsTouchScreenFAFind.frx":2119
      Style = 1
    End
  End
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "RsTouchScreenFAFind.frx":2556
    Left = 435
    Top = 2550
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin CommandButton Command1
    Caption = "Help.?"
    Left = 0
    Top = 5715
    Width = 885
    Height = 300
    TabIndex = 2
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 345
    Top = 675
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
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
    Left = 15
    Top = 0
    Width = 10965
    Height = 5685
    TabIndex = 0
  End
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu FSR
      Index = 0
      Caption = "Filter Same Records"
    End
    Begin Menu FNSR
      Index = 1
      Caption = "Filter Not Same Records"
    End
    Begin Menu RF
      Index = 2
      Caption = "Remove Filter"
    End
    Begin Menu SA
      Index = 3
      Caption = "Sort Ascending"
    End
    Begin Menu SD
      Index = 4
      Caption = "Sort Descending"
    End
  End
End

Attribute VB_Name = "RsTouchScreenFAFind"


Private Sub Form_Load() '11CB4A4
  'Data Table: 426590
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim unk_42659C As Connection15
  Dim MemVar_1F953AC As Integer
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_8C As Double
  Dim var_160 As Variant
  Dim var_12C As Frame
  loc_11CB058: On Error Goto loc_11CB442
  loc_11CB05B: var_9C = vbNullString
  loc_11CB060: ImpAdStVarCopy
  loc_11CB06A: If (MemVar_1F953AC = &HFF) Then
  loc_11CB077:   var_BC = var_AC.Execute
  loc_11CB089:   Set global_52 = var_BC
  loc_11CB096: Else
  loc_11CB0AC:   unk_42659C.Execute MemVar_1F950E4, var_BC, -1
  loc_11CB0BD:   Set global_52 = var_C0
  loc_11CB0CB: End If
  loc_11CB0CD: MemVar_1F953AC = 0
  loc_11CB0D9: CVarUnk
  loc_11CB0DE: VerifyVarObj
  loc_11CB0E4: Set var_C0 = Me.GridSel
  loc_11CB0EA: LateIdStAd
  loc_11CB0F8: var_9C = 0
  loc_11CB101: var_E4 = 0
  loc_11CB10E: Set var_C0 = Me.GridSel
  loc_11CB114: LateIdCallSt
  loc_11CB136: If (Me.RecordCount > 0) Then
  loc_11CB146:   If (UBound(MemVar_1F95008, 1) = 0) Then
  loc_11CB149:     ' Referenced from: 11CB464
  loc_11CB173:     var_D4 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11CB17A:     For var_128 = 1 To var_D4: var_108 = var_128 'Variant
  loc_11CB1B8:       If (Me.Fields.Item(var_108).ActualSize = 0) Then
  loc_11CB1C0:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB1F6:         var_E4 = CVar((Me.Fields.Item(var_108).DefinedSize * &H78)) 'Long
  loc_11CB1FF:         Set var_12C = Me.GridSel
  loc_11CB205:         LateIdCallSt
  loc_11CB219:       Else
  loc_11CB21E:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB254:         var_E4 = CVar((Me.Fields.Item(var_108).ActualSize * &H78)) 'Long
  loc_11CB25D:         Set var_12C = Me.GridSel
  loc_11CB263:         LateIdCallSt
  loc_11CB274:       End If
  loc_11CB279:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB29E:       var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11CB2AA:     Next var_128 'Variant
  loc_11CB2B3:   Else
  loc_11CB2C6:     For var_14C = 1 To CVar(UBound(MemVar_1F95008, 1)):   var_108 = var_14C 'Variant
  loc_11CB2D1:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB2EA:       Set var_C0 = Me.GridSel
  loc_11CB2F0:       LateIdCallSt
  loc_11CB30C:       var_8C = (var_8C + CDbl(MemVar_1F95008(CLng(var_108))))
  loc_11CB312:     Next var_14C 'Variant
  loc_11CB318:   End If
  loc_11CB318: End If
  loc_11CB320: If (var_8C > CDbl(11085)) Then
  loc_11CB336:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11CB346:   Call 0.Method_Me4 (CDbl(11085))
  loc_11CB34E: Else
  loc_11CB356:   var_9C = CVar((var_8C + CDbl(350))) 'Single
  loc_11CB365:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11CB37A:   var_F8 = Me.FrameFgrid.Width
  loc_11CB38F:   Call 0.Method_Me4 (((var_8C + CDbl(450)) + var_F8))
  loc_11CB397: End If
  loc_11CB3A1: var_160 = Me.GridSel.Width
  loc_11CB3CE: Me.FrameFgrid.Left = (CDbl(Me.GridSel.Left) + CDbl(var_160))
  loc_11CB402: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11CB405:   var_9C = vbNullString
  loc_11CB40F:   Set var_C0 = Me.GridSel
  loc_11CB420: End If
  loc_11CB429: Call 0.Method_arg_160 (var_C0, GridSel.DispID_10000)
  loc_11CB435: Call 0.Method_arg_164 (var_C0, var_9C)
  loc_11CB441: Exit Sub
  loc_11CB442: ' Referenced from: 11CB058
  loc_11CB44A: Set var_C0 = Err()
  loc_11CB450: Call 0.Method_arg_1C (var_F8)
  loc_11CB461: If (var_F8 = 9) Then
  loc_11CB464:   GoTo loc_11CB149
  loc_11CB467: End If
  loc_11CB47D: Set var_C0 = Err()
  loc_11CB483: Call 0.Method_arg_2C (var_164, 0, var_160)
  loc_11CB48E: MsgBox(CVar(var_164), var_174, var_184, var_160, )
  loc_11CB4A1: Exit Sub
End Sub

Private Sub Command1_Click() 'E5EDC8
  'Data Table: 426590
  loc_E5ED97: If (Me.Picture1.Visible = &HFF) Then
  loc_E5EDA6:   Me.Picture1.Visible = False
  loc_E5EDB1: Else
  loc_E5EDBD:   Me.Picture1.Visible = True
  loc_E5EDC5: End If
  loc_E5EDC5: Exit Sub
End Sub

Private Sub CmFgrid_Click(Index As Integer) 'FF280C
  'Data Table: 426590
  Dim var_86 As Integer
  Dim var_AC As Variant
  loc_FF261B: var_86 = Index
  loc_FF2626: If (var_86 = CInt(0)) Then
  loc_FF2648:   If (CLng(Me.GridSel.Row) > 1) Then
  loc_FF2664:     var_AC = CVar((CLng(Me.GridSel.Row) - 1)) 'Long
  loc_FF2673:     Me.GridSel.Row = var_AC
  loc_FF269B:     var_AC = CVar((CLng(Me.GridSel.Cols) - 1)) 'Long
  loc_FF26AA:     Me.GridSel.ColSel = var_AC
  loc_FF26DB:     Me.GridSel.TopRow = CVar(CLng(Me.GridSel.Row))
  loc_FF26EA:   End If
  loc_FF26ED: Else
  loc_FF26F5:   If (var_86 = CInt(1)) Then
  loc_FF2733:     If (CLng(Me.GridSel.Row) < (CLng(Me.GridSel.Rows) - 1)) Then
  loc_FF274F:       var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_FF275E:       Me.GridSel.Row = CVar(CLng(Me.GridSel.Row))
  loc_FF2786:       var_AC = CVar((CLng(Me.GridSel.Cols) - 1)) 'Long
  loc_FF2795:       Me.GridSel.ColSel = CVar(CLng(Me.GridSel.Row))
  loc_FF27C6:       Me.GridSel.TopRow = CVar(CLng(Me.GridSel.Row))
  loc_FF27D5:     End If
  loc_FF27D8:   Else
  loc_FF27E0:     If (var_86 = CInt(2)) Then
  loc_FF27E3:       Call GridSel_UnknownEvent_B()
  loc_FF27EB:     Else
  loc_FF27F3:       If (var_86 = CInt(3)) Then
  loc_FF2803:         Me.Global.Unload Me
  loc_FF280B:       End If
  loc_FF280B:     End If
  loc_FF280B:   End If
  loc_FF280B: End If
  loc_FF280B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'F75D94
  'Data Table: 426590
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F95110 As Variant
  loc_F75C58: var_94 = 1
  loc_F75C61: var_B4 = 0
  loc_F75C7F: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F75C90: If (var_DC <> vbNullString) Then
  loc_F75CA6:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F75CD3:   Call unk_4265AC.SEARCHBACK
  loc_F75CED:   Set var_C8 = 0(CVar(CStr(Me.GridSel.TextMatrix))))
  loc_F75CFC:   var_94 = CVar(CLng(unk_4265AC.GridSel.Row)) 'Long
  loc_F75D01:   var_B4 = 0
  loc_F75D14:   var_F0 = Me.GridSel.TextMatrix)
  loc_F75D1F:   var_100 = CVar(CStr(var_F0)) 'String
  loc_F75D22:   MemVar_1F95110 = var_100
  loc_F75D37: Else
  loc_F75D37:   var_94 = vbNullString
  loc_F75D3C:   ImpAdStVarCopy
  loc_F75D40: End If
  loc_F75D4D: Me.Global.Unload Me
  loc_F75D55: Exit Sub
  loc_F75D5E: Set var_C8 = Err()
  loc_F75D64: Call 0.Method_arg_2C (var_DC, var_94, MemVar_1F95110, var_B4)
  loc_F75D7D: MsgBox(CVar(var_DC), &H40, var_F0, var_100, var_120)
  loc_F75D90: Exit Sub
End Sub
