VERSION 5.00
Begin VB.Form frmRevGroup
  Caption = "Revenue Group"
  BackColor = &HE8F4F3&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 7755
  ClientHeight = 6480
  LockControls = -1  'True
  Begin Frame Frame2
    BackColor = &HC1C1C1&
    Left = 6075
    Top = 5010
    Width = 1560
    Height = 1305
    TabIndex = 5
    BorderStyle = 0 'None
    Begin CommandButton CmdExit
      Caption = "&Cancel"
      BackColor = &HC6B7A4&
      Left = 210
      Top = 720
      Width = 1155
      Height = 480
      TabIndex = 7
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdSave
      Caption = "&Save"
      BackColor = &HC6B7A4&
      Left = 210
      Top = 195
      Width = 1155
      Height = 480
      TabIndex = 6
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin Frame Frame1
    BackColor = &HC1C1C1&
    Left = 6675
    Top = 1935
    Width = 555
    Height = 2040
    TabIndex = 1
    BorderStyle = 0 'None
    Begin CommandButton CmdDown
      Caption = "â"
      BackColor = &HC6B7A4&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 3
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &HC6B7A4&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 2
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin MSFlexGrid FGrid
    Left = 15
    Top = 30
    Width = 5970
    Height = 6390
    TabIndex = 0
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7755
    Height = 375
    Visible = 0   'False
    TabIndex = 4
  End
End

Attribute VB_Name = "frmRevGroup"


Private Sub Form_Load() 'EAF54C
  'Data Table: 426CC8
  loc_EAF4BC: On Error Goto loc_EAF545
  loc_EAF4D1: Set var_88 = Me
  loc_EAF4D7: Proc_6_23_DFC5B8(var_88, 6885)
  loc_EAF4DF: Call Proc_72_9_F96DA4(8205)
  loc_EAF4EE: Set global_60 = New 
  loc_EAF50B: Me.Connection15.Execute "Select GroupSrNo as Sno,Name as Revenue,code as RevCode,FlagAMR from revmast Order by GroupSrNo", var_AC, -1
  loc_EAF51C: Set global_60 = var_88
  loc_EAF52A: Call Proc_72_10_106FC1C(var_88)
  loc_EAF533: Set var_88 = Me.FGrid
  loc_EAF544: Exit Sub
  loc_EAF545: ' Referenced from: EAF4BC
  loc_EAF545: Proc_6_60_E63754(FGrid.DispID_FFFF)
  loc_EAF54A: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E14D24
  'Data Table: 426CC8
  loc_E14D1B: Set global_60 = Nothing
  loc_E14D22: Exit Sub
  loc_E14D23: Result  End Sub 'Long
End Sub

Private Sub Form_Activate() 'E17938
  'Data Table: 426CC8
  loc_E17924: Set var_88 = Me.FGrid
  loc_E17935: Exit Sub
End Sub

Private Sub Form_Deactivate() 'DFD868
  'Data Table: 426CC8
  loc_DFD864: Exit Sub
  loc_DFD865:  = var_C00
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BCEC
  'Data Table: 426CC8
  loc_E2BCC4: On Error Goto loc_E2BCE4
  loc_E2BCDB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2BCE3: Exit Sub
  loc_E2BCE4: ' Referenced from: E2BCC4
  loc_E2BCE4: Proc_6_60_E63754(Shift)
  loc_E2BCE9: Exit Sub
End Sub

Private Sub CmdUp_Click() '107CA9C
  'Data Table: 426CC8
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_128 As MSFlexGrid
  Dim var_19C As Variant
  loc_107C87F: If (CLng(Me.FGrid.Row) = 1) Then
  loc_107C882:   Exit Sub
  loc_107C883: End If
  loc_107C897: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_107C8C5: For var_DC = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_DC 'Integer
  loc_107C8CF:   var_EC = CVar(CLng(var_86)) 'Long
  loc_107C8D8:   var_10C = CVar(CLng(var_C2)) 'Long
  loc_107C8FC:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_107C909: Next var_DC 'Integer
  loc_107C933: For var_124 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_124 'Integer
  loc_107C94C:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107C955:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_107C973:   var_EC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_107C97C:   var_10C = CVar(CLng(var_C2)) 'Long
  loc_107C996:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_107C99E:   Set var_1B0 = Me.FGrid
  loc_107C9A4:   LateIdCallSt
  loc_107C9C5: Next var_124 'Integer
  loc_107C9EF: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_107CA0E:   var_EC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_107CA17:   var_10C = CVar(CLng(var_C2)) 'Long
  loc_107CA2C:   Set var_128 = Me.FGrid
  loc_107CA32:   LateIdCallSt
  loc_107CA47: Next var_1B4 'Integer
  loc_107CA53: var_EC = CVar(CLng((var_86 - 1))) 'Long
  loc_107CA62: Me.FGrid.Row = var_EC
  loc_107CA8C: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_107CA9B: Exit Sub
End Sub

Private Sub CmdDown_Click() '106EDB4
  'Data Table: 426CC8
  Dim var_C0 As MSFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_106EB97: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_106EB9A:   Exit Sub
  loc_106EB9B: End If
  loc_106EBAF: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_106EBDD: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_106EBE7:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_106EBF0:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_106EC14:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_106EC21: Next var_D4 'Integer
  loc_106EC4B: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_106EC64:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106EC6D:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_106EC8B:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106EC94:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_106ECAE:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_106ECB6:   Set var_194 = Me.FGrid
  loc_106ECBC:   LateIdCallSt
  loc_106ECDD: Next var_11C 'Integer
  loc_106ED07: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_106ED26:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106ED2F:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_106ED44:   Set var_C0 = Me.FGrid
  loc_106ED4A:   LateIdCallSt
  loc_106ED5F: Next var_198 'Integer
  loc_106ED6B: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_106ED7A: Me.FGrid.Row = var_E4
  loc_106EDA4: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_106EDB3: Exit Sub
End Sub

Private Sub CmdSave_Click() 'F87234
  'Data Table: 426CC8
  Dim unk_426CD2 As Connection15
  Dim var_90 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A8 As String
  loc_F870F8: On Error Goto loc_F871E1
  loc_F870FF: var_88 = CByte(1) 'Byte
  loc_F8710C: unk_426CD2.BeginTrans var_8C
  loc_F87136: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F87140:   var_BC = CVar(CLng(var_86)) 'Long
  loc_F87148:   var_DC = CVar(CLng(2)) 'Long
  loc_F87178:   var_A8 = CStr(var_86)
  loc_F8719E:   unk_426CD2.Execute "Update Revmast set GroupSrNo=" & var_A8 & " where code='" & CStr(Me.FGrid.TextMatrix)) & "'", var_11C, -1
  loc_F871C3: Next var_A4 'Integer
  loc_F871CC: var_88 = CByte(0) 'Byte
  loc_F871D6: unk_426CD2.CommitTrans
  loc_F871DB: Call CmdExit_Click()
  loc_F871E0: Exit Sub
  loc_F871E1: ' Referenced from: F870F8
  loc_F871EA: If (CInt(var_88) = 1) Then
  loc_F871F3:   unk_426CD2.RollbackTrans
  loc_F871F8: End If
  loc_F87200: Set var_90 = Err()
  loc_F87206: Call 0.Method_arg_2C (var_A8)
  loc_F8721F: MsgBox(CVar(var_A8), &H10, var_11C, var_130, var_140)
  loc_F87232: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E2A47C
  'Data Table: 426CC8
  loc_E2A45F: Set global_60 = Nothing
  loc_E2A473: Me.Global.Unload Me
  loc_E2A47B: Exit Sub
End Sub

Public Sub Proc_72_9_F96DA4
  'Data Table: 426CC8
  Dim var_A0 As Variant
  Dim var_90 As MSFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_F96C28: Set var_90 = Me.FGrid
  loc_F96C37: var_90.Cols = 4
  loc_F96C48: var_90.Rows = 2
  loc_F96C4D: var_A0 = 0
  loc_F96C59: var_C0 = CVar(CLng(0)) 'Long
  loc_F96C5E: var_E0 = "SNo"
  loc_F96C67: LateIdCallSt
  loc_F96C72: var_A0 = CVar(CLng(0)) 'Long
  loc_F96C77: var_C0 = &H1F4
  loc_F96C83: LateIdCallSt
  loc_F96C8B: var_A0 = 0
  loc_F96C97: var_C0 = CVar(CLng(1)) 'Long
  loc_F96C9C: var_E0 = "Revenue"
  loc_F96CA5: LateIdCallSt
  loc_F96CB0: var_A0 = CVar(CLng(1)) 'Long
  loc_F96CBB: var_C0 = CVar(CInt(1)) 'Integer
  loc_F96CC2: LateIdCallSt
  loc_F96CCD: var_A0 = CVar(CLng(1)) 'Long
  loc_F96CD2: var_C0 = &H1388
  loc_F96CDE: LateIdCallSt
  loc_F96CE6: var_A0 = 0
  loc_F96CF2: var_C0 = CVar(CLng(2)) 'Long
  loc_F96CF7: var_E0 = "RevCode"
  loc_F96D00: LateIdCallSt
  loc_F96D0B: var_A0 = CVar(CLng(2)) 'Long
  loc_F96D16: var_C0 = CVar(CInt(1)) 'Integer
  loc_F96D1D: LateIdCallSt
  loc_F96D28: var_A0 = CVar(CLng(2)) 'Long
  loc_F96D2D: var_C0 = 0
  loc_F96D39: LateIdCallSt
  loc_F96D41: var_A0 = 0
  loc_F96D4D: var_C0 = CVar(CLng(3)) 'Long
  loc_F96D52: var_E0 = "FlagAMR"
  loc_F96D5B: LateIdCallSt
  loc_F96D66: var_A0 = CVar(CLng(3)) 'Long
  loc_F96D71: var_C0 = CVar(CInt(7)) 'Integer
  loc_F96D78: LateIdCallSt
  loc_F96D83: var_A0 = CVar(CLng(3)) 'Long
  loc_F96D88: var_C0 = 0
  loc_F96D94: LateIdCallSt
  loc_F96D9E: Set var_90 = Nothing 
  loc_F96DA2: Exit Sub
End Sub

Public Sub Proc_72_10_106FC1C
  'Data Table: 426CC8
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_A8 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_D8 As Variant
  loc_106F9A7: Me.FGrid.Row = 1
  loc_106F9AF: ' Referenced from: 106FC16
  loc_106F9C1: If Not(Me.EOF) Then
  loc_106F9C8:   Set var_B4 = Me.FGrid
  loc_106F9DE:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106F9E6:   var_10C = CVar(CLng(0)) 'Long
  loc_106FA14:   Proc_6_39_E7D3A0(var_D8, CVar(Me.Fields.Item("SNo")))
  loc_106FA1D:   var_12C = CVar(CStr(var_D8)) 'String
  loc_106FA24:   LateIdCallSt
  loc_106FA89:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Revenue")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B4)) 'String
  loc_106FA90:   LateIdCallSt
  loc_106FAF3:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)), var_B4)) 'String
  loc_106FAFA:   LateIdCallSt
  loc_106FB5D:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("FlagAMR")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_B4, var_EC)) 'String
  loc_106FB64:   LateIdCallSt
  loc_106FB7E:   Set var_B4 = Nothing 
  loc_106FB88:   Me.MoveNext
  loc_106FBC1:   If ((CLng(Me.FGrid.Row) >= 1) And (Me.EOF = 0)) Then
  loc_106FBC4:     var_98 = vbNullString
  loc_106FBCE:     Set var_AC = Me.FGrid
  loc_106FBF8:     var_98 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106FC07:     Me.FGrid.Row = var_98
  loc_106FC16:   End If
  loc_106FC16:   GoTo loc_106F9AF
  loc_106FC19: End If
  loc_106FC19: Exit Sub
End Sub
