VERSION 5.00
Begin VB.Form fdRoomOcc
  Caption = "Reservation Look Up Room Wise"
  BackColor = &HE0E0E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7830
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
    Top = 7380
    Width = 11820
    Height = 450
    Visible = 0   'False
    TabIndex = 2
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 420
    Top = 780
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 1
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
  Begin MSHFlexGrid FGrid
    Left = -15
    Top = 675
    Width = 11820
    Height = 6270
    TabIndex = 0
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 0
    Top = 0
    Width = 16665
    Height = 670
    TabIndex = 3
    BorderStyle = 0 'None
    Begin BtnEnh Cmd
      Index = 1
      Left = 14520
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 16
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 11280
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 17
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 12360
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 18
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 13440
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 19
    End
    Begin Label lblTotalRoom
      Caption = "."
      Left = 135
      Top = 210
      Width = 60
      Height = 240
      TabIndex = 14
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Vacant "
      Index = 0
      ForeColor = &H0&
      Left = 7065
      Top = 210
      Width = 600
      Height = 240
      TabIndex = 13
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 6510
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 0
      BackColor = &HFF0000&
      ForeColor = &H80FFFF&
      Left = 3135
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 1
      BackColor = &HFF&
      ForeColor = &HFFFFFF&
      Left = 4860
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Out Of Order"
      Index = 2
      ForeColor = &H0&
      Left = 5415
      Top = 210
      Width = 1005
      Height = 240
      TabIndex = 9
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Room Change"
      Index = 1
      ForeColor = &H0&
      Left = 3630
      Top = 210
      Width = 1155
      Height = 240
      TabIndex = 8
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 7755
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Guest In House"
      Index = 3
      ForeColor = &H0&
      Left = 8265
      Top = 210
      Width = 1305
      Height = 225
      TabIndex = 6
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Check Out"
      Index = 4
      ForeColor = &H0&
      Left = 10155
      Top = 210
      Width = 855
      Height = 240
      TabIndex = 5
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Index = 4
      BackColor = &HFFFFC0&
      ForeColor = &HFFFFFF&
      Left = 9615
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LBLRoomName
      ForeColor = &HC00000&
      Left = 30
      Top = 180
      Width = 11235
      Height = 330
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
End

Attribute VB_Name = "fdRoomOcc"

Private global_60 As Integer
Private global_62 As Integer
Private global_100 As Integer
Private global_104 As Integer
Private global_132 As Long
Private global_124 As Long
Private global_128 As Long
Private global_120 As Long
Private global_116 As Long
Private global_112 As Long
Private global_144 As Double
Private global_152 As Double
Private global_140 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) 'F09A28
  'Data Table: 450B6C
  Dim var_88 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0995E: Set var_88 = Me.TxtGrid
  loc_F09964: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F09972: Proc_6_74_E23240(var_8C)
  loc_F0998A: If (Index = 0) Then
  loc_F099DF:   Set var_108 = Me.TxtGrid
  loc_F099E5:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)), CVar(CLng(Me.FGrid.Col)))
  loc_F099ED:   var_10C.Tag = CVar(CLng(Me.FGrid.Row))
  loc_F09A1E:   var_114 = CLng(Me.FGrid.Col)
  loc_F09A27: End If
  loc_F09A27: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F008F8
  'Data Table: 450B6C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F00830: If (KeyCode = 0) Then
  loc_F0083D:   If (CLng(Shift) = &H1B) Then
  loc_F0084D:     Set var_8C = Me.TxtGrid
  loc_F00853:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F0086D:     Set var_98 = Me.TxtGrid
  loc_F00873:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F0087B:     var_9C.Text = var_90.Tag
  loc_F00897:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F008A0:     Set var_8C = Me.FGrid
  loc_F008BD:     Set var_8C = Me.TxtGrid
  loc_F008C3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F008CB:     var_90.Visible = FGrid.DispID_8001
  loc_F008D7:     Exit Sub
  loc_F008D8:   End If
  loc_F008EB:   var_B0 = CLng(Me.FGrid.Col)
  loc_F008F4: End If
  loc_F008F4: Exit Sub
  loc_F008F5: BranchFVar 5119
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E520C8
  'Data Table: 450B6C
  Dim var_A0 As Long
  loc_E52097: Proc_6_58_E06050(arg_10)
  loc_E520A8: If (KeyAscii = 0) Then
  loc_E520BE:   var_A0 = CLng(Me.FGrid.Col)
  loc_E520C7: End If
  loc_E520C7: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E5550C
  'Data Table: 450B6C
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim MemVar_0 As Currency
  loc_E554D4: On Error Goto loc_E55503
  loc_E554DA: var_86 = KeyCode
  loc_E554E3: If (var_86 = 0) Then
  loc_E554F9:   var_A0 = CLng(Me.FGrid.Col)
  loc_E55502: End If
  loc_E55502: Exit Sub
  loc_E55503: ' Referenced from: E554D4
  loc_E55503: Proc_6_60_E63754(var_A0)
  loc_E55508: Exit Sub
  loc_E55509: MemVar_0 = var_86
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E219F8
  'Data Table: 450B6C
  Dim arg_10 As Integer
  loc_E219E0: If (Cancel = 0) Then
  loc_E219E9:   Call Proc_111_30_E5557C(Cancel, var_88)
  loc_E219F2:   arg_10 = Not(var_88)
  loc_E219F5: End If
  loc_E219F5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5D7C4
  'Data Table: 450B6C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5D793: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5D7A6: Set var_A8 = Me.TxtGrid
  loc_E5D7AC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5D7B4: var_AC.Visible = False
  loc_E5D7C0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'DFE290
  'Data Table: 450B6C
  loc_DFE28C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E9F750
  'Data Table: 450B6C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9F6F3: var_BC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_E9F70B: var_DC = CVar(CLng(Me.FGrid.ColSel)) 'Long
  loc_E9F733: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9F74E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103F2C4
  'Data Table: 450B6C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_103F078: Set var_88 = Me.TopCtrl1
  loc_103F07E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103F0C3: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_103F0CC:   Call Form_KeyDown(Cancel, arg_10)
  loc_103F0D1: End If
  loc_103F0D5: Set var_88 = Me.TopCtrl1
  loc_103F0DB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103F0F4: If (CStr() = "Browse") Then
  loc_103F0F7:   Exit Sub
  loc_103F0F8: End If
  loc_103F16C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103F185:   Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_103F195:   var_9C = "+{Tab}"
  loc_103F19B:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_103F1A5:   Cancel = 0
  loc_103F1AB: Else
  loc_103F1B5:   var_B0 = Me.FGrid.Rows
  loc_103F202:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103F21B:     Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_103F231:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_103F23B:     Cancel = 0
  loc_103F23E:   End If
  loc_103F23E: End If
  loc_103F244: global_60 = Cancel
  loc_103F26A: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103F28E: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_103F2A4:   var_EC = CLng(Me.FGrid.Col)
  loc_103F2AD: End If
  loc_103F2B3: If (Cancel = &HD) Then
  loc_103F2BB:   global_62 = 0
  loc_103F2BE: End If
  loc_103F2C0: Cancel = 0
  loc_103F2C3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0CE50
  'Data Table: 450B6C
  loc_E0CE41: Call FGrid_UnknownEvent_C()
  loc_E0CE4B: global_62 = 0
  loc_E0CE4E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4D670
  'Data Table: 450B6C
  loc_E4D666: If (CLng(Cancel) = &HD) Then
  loc_E4D669:   Call Proc_111_29_1301774(CLng(Me.FGrid.Col))
  loc_E4D66E: End If
  loc_E4D66E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFDF50
  'Data Table: 450B6C
  loc_DFDF4C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E9F5D0
  'Data Table: 450B6C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9F573: var_BC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_E9F58B: var_DC = CVar(CLng(Me.FGrid.ColSel)) 'Long
  loc_E9F5B3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9F5CE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3A2C4
  'Data Table: 450B6C
  Dim var_8C As TextBox
  loc_E3A2A7: Set var_88 = Me.TxtGrid
  loc_E3A2AD: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3A2B5: var_8C.Visible = False
  loc_E3A2C1: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 'E52BC4
  'Data Table: 450B6C
  Dim var_86 As Integer
  loc_E52B8F: var_86 = Cancel
  loc_E52B98: If (var_86 = 0) Then
  loc_E52B9B:   Call Proc_111_33_1494430(var_86)
  loc_E52BA3: Else
  loc_E52BA9:   If (var_86 = 1) Then
  loc_E52BB9:     Me.Global.Unload Me
  loc_E52BC1:   End If
  loc_E52BC1: End If
  loc_E52BC1: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '12B7928
  'Data Table: 450B6C
  Dim unk_450B75 As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Boolean
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953D0 As String
  loc_12B7314: On Error Goto loc_12B7920
  loc_12B731C: global_100 = &HFF
  loc_12B7335: unk_450B75.Execute "Select * From FAEnviro", var_B8, -1
  loc_12B7340: Set var_94 = var_BC
  loc_12B7358: var_BC = var_94.Fields
  loc_12B73BC: var_13C = IIf((Proc_6_38_E69628(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_12B73C5: MemVar_1F953C4 = CStr(var_13C)
  loc_12B7459: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_12B7462: MemVar_1F953C8 = CStr(var_13C)
  loc_12B74F6: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_12B7537: var_C0 = var_94.Fields.Item("linefiller")
  loc_12B754E: var_D8 = "linefiller"
  loc_12B7573: var_12C = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item(var_D8)))) 'String
  loc_12B7576: var_10C = "-"
  loc_12B757B: var_11C = "M"
  loc_12B758C: var_FC = (Proc_6_38_E69628(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_12B759C: MemVar_1F953D0 = CStr(IIf(var_FC, var_11C, var_12C))
  loc_12B75C3: global_92 = "23 Day Room Availability Forecast (Report)"
  loc_12B75CA: var_88 = "RoomHistory"
  loc_12B75D3: var_A8 = global_92
  loc_12B75EA: global_96 = CStr(Ucase(var_A8))
  loc_12B7606: If ((global_100 = 0) Or (var_88 = vbNullString)) Then
  loc_12B7609:   Exit Sub
  loc_12B760A: End If
  loc_12B760A: Call Day23RoomAvail()
  loc_12B7636: Set var_BC = global_108 
  loc_12B763D: CreateFieldDefFile(var_BC, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_12B766F: var_C4 = "\" & var_88
  loc_12B7683: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_12B768E: MemVar_1F951E8 = var_BC
  loc_12B76BA: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_12B76C2: Call 0.Method_arg_2C (var_FC, MemVar_1F953D0)
  loc_12B76D0: Call 0.Method_arg_150 (global_100)
  loc_12B76E6: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_12B76EE: Call 0.Method_arg_24 (var_8A)
  loc_12B76FA: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_12B7713:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B771B:   Call 0.Method_arg_20 (var_C0)
  loc_12B7723:   Call 0.Method_arg_30 (var_C4)
  loc_12B7739:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_12B7769:   If (var_160 = Ucase("Title")) Then
  loc_12B7790:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B7798:     Call 0.Method_arg_20 (var_C0)
  loc_12B77A0:     Call 0.Method_arg_38 ("'" & global_92 & "'")
  loc_12B77B6:   Else
  loc_12B77D8:     If (var_160 = Ucase("Dater")) Then
  loc_12B77FC:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B7804:       Call 0.Method_arg_20 (var_C0)
  loc_12B780C:       Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_12B7822:     Else
  loc_12B7844:       If (var_160 = Ucase("Pager")) Then
  loc_12B7868:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B7870:         Call 0.Method_arg_20 (var_C0)
  loc_12B7878:         Call 0.Method_arg_38 ("'" & MemVar_1F953C8 & "'")
  loc_12B788B:       End If
  loc_12B788B:     End If
  loc_12B788B:   End If
  loc_12B788E: Next var_150 'Integer
  loc_12B7899: If (Cancel = 1) Then
  loc_12B78BD:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", var_11C, var_12C)
  loc_12B78D0: Else
  loc_12B78D5:   Set var_C0 = Nothing
  loc_12B78EC:   Set var_BC = MemVar_1F951E8 
  loc_12B78F8:   Proc_6_99_1484404(var_BC, Cancel, global_96)
  loc_12B7903:   MemVar_1F951E8 = var_BC
  loc_12B790E: End If
  loc_12B7913: global_104 = 0
  loc_12B791B: MemVar_1F951E8 = Nothing
  loc_12B791F: Exit Sub
  loc_12B7920: ' Referenced from: 12B7314
  loc_12B7920: Proc_6_60_E63754(global_104, &HFF)
  loc_12B7925: Exit Sub
End Sub

Private Sub Form_Load() '1047BE8
  'Data Table: 450B6C
  Dim var_8C As Label
  loc_104798A: Set var_88 = Me.Cmd
  loc_1047990: Call 0.Method_Form_Load0 (0, var_8C)
  loc_1047998: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_10479B2: Set var_88 = Me.BtnPrint
  loc_10479B8: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10479C0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_10479DA: Set var_88 = Me.BtnPrint
  loc_10479E0: Call 0.Method_Form_Load0 (2, var_8C)
  loc_10479E8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_10479F4: On Error Goto loc_1047BE2
  loc_10479FF: global_132 = &HFF0000
  loc_1047A0A: global_124 = &HFF
  loc_1047A15: global_128 = &HFFFFFF
  loc_1047A20: global_120 = &HFF00
  loc_1047A2B: global_116 = &HFDC293
  loc_1047A3F: Set var_88 = Me.Label2
  loc_1047A45: Call 0.Method_Form_Load0 (CInt(0), var_8C, global_132, global_116)
  loc_1047A4D: var_8C.BackColor = global_120
  loc_1047A69: Set var_88 = Me.Label2
  loc_1047A6F: Call 0.Method_Form_Load0 (CInt(0), var_8C, &HFFFFFF)
  loc_1047A77: var_8C.ForeColor = global_128
  loc_1047A94: Set var_88 = Me.Label2
  loc_1047A9A: Call 0.Method_Form_Load0 (CInt(1), var_8C, global_124)
  loc_1047AA2: var_8C.BackColor = global_124
  loc_1047ABE: Set var_88 = Me.Label2
  loc_1047AC4: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1047ACC: var_8C.ForeColor = &HFFFFFF
  loc_1047AE9: Set var_88 = Me.Label2
  loc_1047AEF: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_1047AF7: var_8C.BackColor = global_128
  loc_1047B13: Set var_88 = Me.Label2
  loc_1047B19: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_1047B21: var_8C.ForeColor = 0
  loc_1047B3E: Set var_88 = Me.Label2
  loc_1047B44: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1047B4C: var_8C.BackColor = global_120
  loc_1047B68: Set var_88 = Me.Label2
  loc_1047B6E: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1047B76: var_8C.ForeColor = 0
  loc_1047B93: Set var_88 = Me.Label2
  loc_1047B99: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1047BA1: var_8C.BackColor = global_116
  loc_1047BBD: Set var_88 = Me.Label2
  loc_1047BC3: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1047BCB: var_8C.ForeColor = &HFF0000
  loc_1047BDD: MemVar_1F95124 = Me
  loc_1047BE1: Exit Sub
  loc_1047BE2: ' Referenced from: 10479F4
  loc_1047BE2: Proc_6_60_E63754(global_132)
  loc_1047BE7: Exit Sub
End Sub

Private Sub Form_Resize() 'F2A978
  'Data Table: 450B6C
  Dim var_98 As Variant
  loc_F2A870: On Error Resume Next
  loc_F2A87B: Call 0.Method_arg_100 (var_88)
  loc_F2A887: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_F2A896: Me.FGrid.Width = var_98
  loc_F2A8A6: Call 0.Method_arg_108 (var_88)
  loc_F2A8B3: var_98 = CVar((var_88 - CDbl(700))) 'Single
  loc_F2A8C2: Me.FGrid.Height = var_98
  loc_F2A8F7: var_98 = CVar((Me.Frame1.Top + Me.Frame1.Height)) 'Single
  loc_F2A906: Me.FGrid.Top = var_98
  loc_F2A934: Me.Frame1.Left = CDbl(Me.FGrid.Left)
  loc_F2A963: Me.Frame1.Width = CDbl(Me.FGrid.Width)
  loc_F2A974: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0DA1C
  'Data Table: 450B6C
  loc_E0DA13: Set global_108 = Nothing
  loc_E0DA1A: Exit Sub
End Sub

Private Sub Form_Activate() 'E16B44
  'Data Table: 450B6C
  loc_E16B30: Set var_88 = Me.FGrid
  loc_E16B41: Exit Sub
End Sub

Private Sub Form_Deactivate() 'DFDA70
  'Data Table: 450B6C
  loc_DFDA6C: Exit Sub
  loc_DFDA6D:  = var_C00
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27C98
  'Data Table: 450B6C
  loc_E27C70: On Error Goto loc_E27C90
  loc_E27C87: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27C8F: Exit Sub
  loc_E27C90: ' Referenced from: E27C70
  loc_E27C90: Proc_6_60_E63754(Shift)
  loc_E27C95: Exit Sub
End Sub

Public Function global_52Get() '451528
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '451537
  global_52 = Value
End Sub

Public Sub Day23RoomAvail() '1101ED4
  'Data Table: 450B6C
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_1101BA8: On Error Goto loc_1101EC5
  loc_1101BC5: Call Proc_111_35_F89124(New)
  loc_1101BE0: Set var_8C = Me.FGrid
  loc_1101BFC: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1101C08:   Set var_A4 = var_8C 
  loc_1101C17:   var_A4.AddNew var_B4, var_C4
  loc_1101C41:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_1101C9F:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_1101D07:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_86))))
  loc_1101D25:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_1101D6F:     If (Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_1101DA1:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_1101DB6:     Else
  loc_1101E28:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_1101E4A:     End If
  loc_1101E4D:   Next var_120 'Integer
  loc_1101E52:   var_C4 = "*"
  loc_1101E5B:   var_B4 = "Mark"
  loc_1101E77:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_1101E8E:   var_A4.Update var_B4, var_C4
  loc_1101E95:   Set var_A4 = Nothing 
  loc_1101E9C: Next var_A0 'Integer
  loc_1101EB8: If (Me.RecordCount <= 0) Then
  loc_1101EC0:   global_100 = 0
  loc_1101EC3:   Exit Sub
  loc_1101EC4: End If
  loc_1101EC4: Exit Sub
  loc_1101EC5: ' Referenced from: 1101BA8
  loc_1101ECD: Proc_6_60_E63754(0)
  loc_1101ED2: Exit Sub
End Sub

Public Property Get OpenMode() 'E09E90
  'Data Table: 450B6C
  loc_E09E89: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E017D4
  'Data Table: 450B6C
  loc_E017CE: global_112 = vNewValue
  loc_E017D1: Exit Sub
End Sub

Public Sub RetBack(mParamForm) 'EFB10C
  'Data Table: 450B6C
  Dim var_98 As Variant
  Dim var_B8 As Integer
  Dim var_E8 As Variant
  loc_EFB033: Set var_88 = mParamForm 
  loc_EFB037: On Error Goto loc_EFB103
  loc_EFB03A: var_98 = 0
  loc_EFB041: var_B8 = 1
  loc_EFB05C: global_144 = CDate(var_88.FGrid.TextMatrix)
  loc_EFB066: var_98 = 1
  loc_EFB06D: var_B8 = 1
  loc_EFB088: global_152 = CDate(var_88.FGrid.TextMatrix)
  loc_EFB0AD: var_98 = global_144
  loc_EFB0C0: var_B8 = 1
  loc_EFB0C5: var_E8 = (DateDiff("d", var_98, global_152, 1, 1) + var_B8)
  loc_EFB0CD: global_140 = CInt(var_88.FGrid.TextMatrix)
  loc_EFB0E9: ReDim Preserve global_136(0 To CLng(global_140))
  loc_EFB0F3: Call Proc_111_28_111D120(global_140, global_152, var_B8, var_98)
  loc_EFB0FD: Call Cmd_UnknownEvent_9()
  loc_EFB102: Exit Sub
  loc_EFB103: ' Referenced from: EFB037
  loc_EFB103: Proc_6_60_E63754(0, global_144)
  loc_EFB108: Exit Sub
End Sub

Public Sub Proc_111_28_111D120
  'Data Table: 450B6C
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_C4 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_111CDD2: Me.FGrid.Left = CVar(CDbl(0))
  loc_111CE05: var_9C = CVar((Me.Frame1.Top + Me.Frame1.Height)) 'Single
  loc_111CE14: Me.FGrid.Top = CVar(CDbl(0))
  loc_111CE27: var_88 = &H249
  loc_111CE2E: Set var_C4 = Me.FGrid
  loc_111CE45: global_56 = CStr(CLng(var_C4.BackColor))
  loc_111CE59: var_9C = CVar(CLng((global_140 + 5))) 'Long
  loc_111CE61: var_C4.Cols = CVar(CDbl(0))
  loc_111CE66: var_9C = 0
  loc_111CE72: var_E8 = CVar(CLng(1)) 'Long
  loc_111CE77: var_108 = "SNo"
  loc_111CE80: LateIdCallSt
  loc_111CE8B: var_9C = CVar(CLng(1)) 'Long
  loc_111CE90: var_E8 = 0
  loc_111CE9C: LateIdCallSt
  loc_111CEA4: var_9C = 0
  loc_111CEB0: var_E8 = CVar(CLng(1)) 'Long
  loc_111CEB5: var_108 = "Room No"
  loc_111CEBE: LateIdCallSt
  loc_111CEC9: var_9C = CVar(CLng(1)) 'Long
  loc_111CED4: var_E8 = CVar(CInt(4)) 'Integer
  loc_111CEDB: LateIdCallSt
  loc_111CEE6: var_9C = CVar(CLng(1)) 'Long
  loc_111CEF1: var_E8 = CVar(CInt(4)) 'Integer
  loc_111CEF8: LateIdCallSt
  loc_111CF03: var_9C = CVar(CLng(1)) 'Long
  loc_111CF08: var_E8 = &H384
  loc_111CF14: LateIdCallSt
  loc_111CF1C: var_9C = 0
  loc_111CF28: var_E8 = CVar(CLng(2)) 'Long
  loc_111CF2D: var_108 = "Room No Code"
  loc_111CF36: LateIdCallSt
  loc_111CF41: var_9C = CVar(CLng(2)) 'Long
  loc_111CF4C: var_E8 = CVar(CInt(1)) 'Integer
  loc_111CF53: LateIdCallSt
  loc_111CF5E: var_9C = CVar(CLng(2)) 'Long
  loc_111CF63: var_E8 = 0
  loc_111CF6F: LateIdCallSt
  loc_111CF77: var_9C = 0
  loc_111CF83: var_E8 = CVar(CLng(3)) 'Long
  loc_111CF88: var_108 = "Category"
  loc_111CF91: LateIdCallSt
  loc_111CF9C: var_9C = CVar(CLng(3)) 'Long
  loc_111CFA7: var_E8 = CVar(CInt(4)) 'Integer
  loc_111CFAE: LateIdCallSt
  loc_111CFB9: var_9C = CVar(CLng(3)) 'Long
  loc_111CFC4: var_E8 = CVar(CInt(4)) 'Integer
  loc_111CFCB: LateIdCallSt
  loc_111CFD6: var_9C = CVar(CLng(3)) 'Long
  loc_111CFDB: var_E8 = &H3E8
  loc_111CFE7: LateIdCallSt
  loc_111CFEF: var_9C = 0
  loc_111CFFB: var_E8 = CVar(CLng(4)) 'Long
  loc_111D000: var_108 = "Rate"
  loc_111D009: LateIdCallSt
  loc_111D014: var_9C = CVar(CLng(4)) 'Long
  loc_111D01F: var_E8 = CVar(CInt(4)) 'Integer
  loc_111D026: LateIdCallSt
  loc_111D031: var_9C = CVar(CLng(4)) 'Long
  loc_111D03C: var_E8 = CVar(CInt(4)) 'Integer
  loc_111D043: LateIdCallSt
  loc_111D04E: var_9C = CVar(CLng(4)) 'Long
  loc_111D053: var_E8 = &H1F4
  loc_111D05F: LateIdCallSt
  loc_111D079: For var_11C = CByte(5) To CByte((global_140 + 4)): var_8A = var_11C 'Byte
  loc_111D07F:   var_9C = 0
  loc_111D08D:   var_E8 = CVar(CLng(var_8A)) 'Long
  loc_111D09F:   var_D4 = CVar("Day" & CStr(var_8A)) 'String
  loc_111D0A6:   LateIdCallSt
  loc_111D0B9:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_111D0C4:   var_E8 = CVar(CInt(4)) 'Integer
  loc_111D0CB:   LateIdCallSt
  loc_111D0D8:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_111D0E3:   var_E8 = CVar(CInt(1)) 'Integer
  loc_111D0EA:   LateIdCallSt
  loc_111D0F7:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_111D106:   LateIdCallSt
  loc_111D111: Next var_11C 'Byte
  loc_111D119: Set var_C4 = Nothing 
  loc_111D11D: Exit Sub
  loc_111D11E:  = 
End Sub

Public Sub Proc_111_29_1301774
  'Data Table: 450B6C
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_340 As Variant
  loc_13010FB: If (CLng(Me.FGrid.Col) = 4) Then
  loc_13010FE:   Exit Sub
  loc_13010FF: End If
  loc_1301112: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130112A: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301139: var_108 = Me.FGrid.TextMatrix)
  loc_130114E: var_118 = CVar(CStr(var_108)) 'String
  loc_130117A: If (Left(var_118, 1) = "@") Then
  loc_130119E:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_13011AE:   Exit Sub
  loc_13011AF: End If
  loc_13011CF: If (CLng(Me.FGrid.CellBackColor) = global_120) Then
  loc_13011F3:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1301203:   Exit Sub
  loc_1301204: End If
  loc_1301224: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_1301248:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1301258:   Exit Sub
  loc_1301259: End If
  loc_130126C: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301284: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13012D4: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_13012F8:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_1301311:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301329:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301379:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_130137C:       var_C4 = 1
  loc_130138C:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_13013BF:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_13013D1:     Else
  loc_13013D1:       Exit For
  loc_13013D4:     End If
  loc_13013D7:   Next var_14C 'Integer
  loc_13013DC:   ' Referenced from: 13013D1
  loc_13013DF: Else
  loc_13013DF:   var_C4 = 1
  loc_1301401:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_1301434:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_1301449: End If
  loc_1301455: If (global_112 = 1) Then
  loc_130146B:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301473:   var_E4 = CVar(CLng(1)) 'Long
  loc_1301493:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13014AF:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13014B7:   var_16C = CVar(CLng(3)) 'Long
  loc_13014D1:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13014EF:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13014F7:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301517:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1301526:   Call unk_450BA8.SEARCHBACKRoomNo
  loc_1301557: Else
  loc_130156A:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301572:   var_E4 = CVar(CLng(1)) 'Long
  loc_13015AA:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13015B2:   var_16C = CVar(CLng(3)) 'Long
  loc_13015E0:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13015E8:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301620:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301638:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13016A1:   var_340 = Me.FGrid.TextMatrix)
  loc_1301701:   Proc_146_0_E7E558(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_130175B: End If
  loc_1301768: Me.var_340.Unload Me
  loc_1301770: Exit Sub
End Sub

Public Sub Proc_111_30_E5557C(arg_C) 'E5557C
  'Data Table: 450B6C
  Dim var_A0 As Long
  loc_E55550: If (arg_C = 0) Then
  loc_E55566:   var_A0 = CLng(Me.FGrid.Col)
  loc_E5556F: End If
  loc_E55574: Proc_111_30_E5557C = &HFF
End Sub

Public Sub Proc_111_31_E0C504
  'Data Table: 450B6C
  loc_E0C4FD: Proc_111_31_E0C504 = &HFF
End Sub

Public Sub Proc_111_32_E94288
  'Data Table: 450B6C
  Dim var_BC As Variant
  loc_E94223: Me.FGrid.Rows = 1
  loc_E94249: var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_E94251: Set var_C0 = Me.FGrid
  loc_E9427E: Me.FGrid.FixedRows = 1
  loc_E94286: Exit Sub
End Sub

Public Sub Proc_111_33_1494430
  'Data Table: 450B6C
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_AA As Integer
  Dim var_AC As Integer
  Dim var_FC As String
  Dim unk_450B75 As Connection15
  Dim var_10C As Variant
  Dim var_F4 As String
  Dim var_C4 As Integer
  Dim var_140 As Variant
  Dim var_1B4 As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1C8 As Variant
  Dim var_C6 As Integer
  Dim var_CA As Integer
  Dim var_C2 As Integer
  Dim var_C8 As Integer
  Dim var_98 As Long
  Dim var_A8 As Double
  Dim var_1D8 As Long
  Dim var_260 As Variant
  Dim var_12C As Variant
  Dim var_180 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_240 As Variant
  Dim var_280 As Variant
  loc_14937EB: Me.FGrid.FixedCols = 0
  loc_1493806: Me.FGrid.FixedRows = 1
  loc_1493821: Me.FGrid.RowHeightMin = &H1F4
  loc_1493832: Set var_F0 = Me.FGrid
  loc_1493838: var_F0.Redraw = False
  loc_1493842: var_AA = 5
  loc_149384B: var_AC = global_140
  loc_1493874: Call Proc_111_34_1100594(CStr(global_144), var_F4, "SHAPE {select R.Code as RoomNo,RC.Name as Category,RC.Code as RoomCat,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat)Left Join RateList RL on RC.Code=RL.RoomCat Where R.Type='RO' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} APPEND ({SELECT Distinct Max(R.Code) as RoomNo, ", var_10C, -1)
  loc_1493884: var_FC = var_F0 & var_F4 & " FROM (((RoomMast R Left Join RoomOcc RO on R.Code=RO.RoomNo) Left Join RoomBlockOut RB ON R.Code=RB.RoomCode) Left Join GuestFolio GF on RO.Docid=GF.DocId) Where IsNull(R.Type,'') In ('RO','') Group By R.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_149388D: unk_450B75.Execute var_FC, 1, var_AC
  loc_1493898: Set var_90 = var_F0
  loc_14938B0: CVarUnk
  loc_14938B5: VerifyVarObj
  loc_14938BB: Set var_F0 = Me.FGrid
  loc_14938C1: LateIdStAd
  loc_14938F6: For var_114 = 1 To (CLng(Me.FGrid.Rows) - 1): var_94 = var_114 'Long
  loc_149390E:   For var_11C = 5 To CLng((global_140 + 4)): var_98 = var_11C 'Long
  loc_1493958:     If (InStr(var_98, CStr(Me.FGrid.TextMatrix)), "#*", 0) <> 0) Then
  loc_1493961:       var_C4 = (var_C4 + 1)
  loc_1493975:       Me.FGrid.Row = var_94
  loc_149398E:       Me.FGrid.Col = var_98
  loc_14939AE:       var_10C = Me.FGrid.TextMatrix)
  loc_14939DA:       Set var_140 = Me.FGrid
  loc_14939FF:       var_170 = Left(CVar(CStr(var_10C)), (Len(CStr(var_140.TextMatrix))) - 2))
  loc_1493A16:       LateIdCallSt
  loc_1493A45:       Set var_F0 = Me.Label2
  loc_1493A4B:       Call 0.Method_Proc_111_33_14944300 (CInt(3), var_140, var_1B8, Me.FGrid, CVar(CStr(var_170)), var_98, var_94)
  loc_1493A53:       var_98 = var_140.BackColor
  loc_1493A6A:       Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_1493A86:       Set var_F0 = Me.Label2
  loc_1493A8C:       Call 0.Method_Proc_111_33_14944300 (CInt(3), var_140, var_1B8, var_94, var_10C)
  loc_1493A94:       var_98 = var_140.ForeColor
  loc_1493AAB:       Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_1493AC9:       Me.FGrid.CellFontName = "Arial Narrow"
  loc_1493AE3:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1493B4A:       var_170 = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_1493B66:       var_1C8 = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_170))) 'String
  loc_1493B6E:       Set var_1B4 = Me.FGrid
  loc_1493B74:       LateIdCallSt
  loc_1493B9A:     Else
  loc_1493BDE:       If (InStr(var_98, CStr(Me.FGrid.TextMatrix)), "*B", 0) <> 0) Then
  loc_1493BE7:         var_C6 = (var_C6 + 1)
  loc_1493BFB:         Me.FGrid.Row = var_94
  loc_1493C14:         Me.FGrid.Col = var_98
  loc_1493C34:         var_10C = Me.FGrid.TextMatrix)
  loc_1493C60:         Set var_140 = Me.FGrid
  loc_1493C85:         var_170 = Left(CVar(CStr(var_10C)), (Len(CStr(var_140.TextMatrix))) - 2))
  loc_1493C9C:         LateIdCallSt
  loc_1493CCB:         Set var_F0 = Me.Label2
  loc_1493CD1:         Call 0.Method_Proc_111_33_14944300 (CInt(1), var_140, var_1B8, Me.FGrid, CVar(CStr(var_170)), var_98, var_94)
  loc_1493CD9:         var_98 = var_140.BackColor
  loc_1493CF0:         Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_1493D0C:         Set var_F0 = Me.Label2
  loc_1493D12:         Call 0.Method_Proc_111_33_14944300 (CInt(1), var_140, var_1B8, var_94, var_10C)
  loc_1493D1A:         var_98 = var_140.ForeColor
  loc_1493D31:         Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_1493D4F:         Me.FGrid.CellFontName = "Arial Narrow"
  loc_1493D69:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1493D74:       Else
  loc_1493DB8:         If (InStr(var_98, CStr(Me.FGrid.TextMatrix)), "#C", 0) <> 0) Then
  loc_1493DC1:           var_CA = (var_CA + 1)
  loc_1493DD5:           Me.FGrid.Row = var_94
  loc_1493DEE:           Me.FGrid.Col = var_98
  loc_1493E0E:           var_10C = Me.FGrid.TextMatrix)
  loc_1493E3A:           Set var_140 = Me.FGrid
  loc_1493E5F:           var_170 = Left(CVar(CStr(var_10C)), (Len(CStr(var_140.TextMatrix))) - 2))
  loc_1493E76:           LateIdCallSt
  loc_1493EA5:           Set var_F0 = Me.Label2
  loc_1493EAB:           Call 0.Method_Proc_111_33_14944300 (CInt(0), var_140, var_1B8, Me.FGrid, CVar(CStr(var_170)), var_98, var_94)
  loc_1493EB3:           var_98 = var_140.BackColor
  loc_1493ECA:           Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_1493EE6:           Set var_F0 = Me.Label2
  loc_1493EEC:           Call 0.Method_Proc_111_33_14944300 (CInt(0), var_140, var_1B8, var_94, var_10C)
  loc_1493EF4:           var_98 = var_140.ForeColor
  loc_1493F0B:           Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_1493F29:           Me.FGrid.CellFontName = "Arial Narrow"
  loc_1493F43:           Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1493F4E:         Else
  loc_1493F82:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1493F8B:             var_C2 = (var_C2 + 1)
  loc_1493F9F:             Me.FGrid.Row = var_94
  loc_1493FB8:             Me.FGrid.Col = var_98
  loc_1493FCE:             Set var_F0 = Me.Label2
  loc_1493FD4:             Call 0.Method_Proc_111_33_14944300 (CInt(4), var_140, var_1B8, var_C2, var_98)
  loc_1493FDC:             var_94 = var_140.BackColor
  loc_1493FF3:             Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_149400F:             Set var_F0 = Me.Label2
  loc_1494015:             Call 0.Method_Proc_111_33_14944300 (CInt(4), var_140, var_1B8)
  loc_149401D:             var_94 = var_140.ForeColor
  loc_1494034:             Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_1494052:             Me.FGrid.CellFontName = "Arial Narrow"
  loc_149406C:             Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1494077:           Else
  loc_149407D:             var_C8 = (var_C8 + 1)
  loc_1494080:           End If
  loc_1494080:         End If
  loc_1494080:       End If
  loc_1494080:     End If
  loc_1494083:   Next var_11C 'Long
  loc_149408B: Next var_114 'Long
  loc_1494095: var_98 = 0
  loc_14940AA: For var_1E0 = CLng(var_AA) To CLng(((var_AC + var_AA) - 1)): var_94 = var_1E0 'Long
  loc_14940B8:   If (var_94 = CLng(var_AA)) Then
  loc_14940C1:     var_A8 = global_144
  loc_14940C7:   Else
  loc_14940E2:     var_A8 = CDate(DateAdd("d", CDbl(1), CDate(var_A8)))
  loc_14940EC:   End If
  loc_14940EC:   var_1D8 = 1
  loc_14940FE:   var_260 = CVar((var_94 - 4)) 'Long
  loc_149412F:   var_170 = (Format(CDate(var_A8), "DDD") + vbCr)
  loc_149415B:   var_1F0 = (1 + Format(var_A8, "dd/MM"))
  loc_149416F:   var_210 = (var_1F0 + Space(5))
  loc_149419B:   var_240 = (1 + Format(var_A8, "dd/MMM/yy"))
  loc_14941A0:   var_280 = CVar(CStr(var_240)) 'String
  loc_14941A8:   Set var_F0 = Me.FGrid
  loc_14941AE:   LateIdCallSt
  loc_14941DF:   var_DC = CVar((var_94 - 4)) 'Long
  loc_14941E4:   var_12C = 1
  loc_14941ED:   var_180 = &H1F4
  loc_14941FA:   Set var_F0 = Me.FGrid
  loc_1494200:   LateIdCallSt
  loc_149420E: Next var_1E0 'Long
  loc_1494226: Set var_F0 = Me.Label2
  loc_149422C: Call 0.Method_Proc_111_33_14944300 (CInt(0), var_140)
  loc_1494234: var_140.Caption = CStr(var_CA)
  loc_1494256: Set var_F0 = Me.Label2
  loc_149425C: Call 0.Method_Proc_111_33_14944300 (CInt(1), var_140)
  loc_1494264: var_140.Caption = CStr(var_C6)
  loc_1494286: Set var_F0 = Me.Label2
  loc_149428C: Call 0.Method_Proc_111_33_14944300 (CInt(2), var_140)
  loc_1494294: var_140.Caption = CStr(var_C8)
  loc_14942B6: Set var_F0 = Me.Label2
  loc_14942BC: Call 0.Method_Proc_111_33_14944300 (CInt(3), var_140)
  loc_14942C4: var_140.Caption = CStr(var_C4)
  loc_14942E6: Set var_F0 = Me.Label2
  loc_14942EC: Call 0.Method_Proc_111_33_14944300 (CInt(4), var_140)
  loc_14942F4: var_140.Caption = CStr(var_C2)
  loc_149431B: var_F4 = CStr(((((var_CA + var_C6) + var_C8) + var_C4) + var_C2))
  loc_149432C: Me.lblTotalRoom.Caption = "No. of Rooms:  " & CStr(var_C2)
  loc_149433B: var_DC = 0
  loc_1494344: var_12C = &H1F4
  loc_1494351: Set var_F0 = Me.FGrid
  loc_1494357: LateIdCallSt
  loc_1494362: var_DC = 0
  loc_149436B: var_12C = 1
  loc_1494374: var_180 = 0
  loc_1494381: Set var_F0 = Me.FGrid
  loc_1494387: LateIdCallSt
  loc_14943A5: Me.FGrid.FixedCols = 4
  loc_14943C0: Me.FGrid.Col = 5
  loc_14943DB: Me.FGrid.Row = 1
  loc_14943E3: var_DC = 0
  loc_14943EC: var_12C = False
  loc_14943F5: Set var_F0 = Me.FGrid
  loc_14943FB: LateIdCallSt
  loc_1494414: Me.FGrid.Redraw = True
  loc_1494421: Set var_8C = Nothing
  loc_1494429: Set var_90 = Nothing
  loc_149442C: Exit Sub
End Sub

Public Sub Proc_111_34_1100594(arg_C) '1100594
  'Data Table: 450B6C
  Dim var_B4 As Variant
  Dim var_124 As Date
  Dim var_154 As String
  Dim var_184 As Date
  Dim var_1C4 As Variant
  Dim var_1E4 As Date
  Dim var_244 As Date
  Dim var_274 As String
  Dim var_2A4 As Date
  Dim var_2E4 As Variant
  Dim var_304 As Date
  Dim var_364 As Date
  Dim var_394 As String
  Dim var_3C4 As Date
  Dim var_404 As Variant
  Dim var_424 As Date
  Dim var_484 As Date
  Dim var_4A8 As String
  Dim var_4CC As Variant
  loc_1100318: For var_94 = 0 To (global_140 - 1): var_8A = var_94 'Integer
  loc_1100333:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_110033A:   Proc_6_7_F26918(var_C4, var_B4)
  loc_110035A:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100361:   Proc_6_7_F26918(var_134, var_124)
  loc_110036D:   var_154 = ") AND RB.Type='O' THEN RB.Reasons +'*B' WHEN ((RO.ChkInDate <="
  loc_1100381:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100388:   Proc_6_7_F26918(var_194, var_184)
  loc_1100399:   var_1C4 = CVar(var_88 & "Max(Case WHEN (RB.FromDate <=") & var_C4 & " And RB.ToDate >=" & var_134 & var_154 & var_194 & " And RO.ChkOutDate Is Null) OR (RO.ChkInDate<=" 
  loc_11003A8:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11003AF:   Proc_6_7_F26918(var_1F4, var_1E4)
  loc_11003CF:   var_244 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11003D6:   Proc_6_7_F26918(var_254, var_244)
  loc_11003E2:   var_274 = " )) AND RO.Type='C' THEN GF.Name +'#C' WHEN ((RO.ChkInDate <="
  loc_11003F6:   var_2A4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11003FD:   Proc_6_7_F26918(var_2B4, var_2A4)
  loc_110040E:   var_2E4 = var_1C4 & var_1F4 & " And RO.ChkOutDate>=" & var_254 & var_274 & var_2B4 & " And RO.ChkOutDate Is Null) OR (RO.ChkInDate<=" 
  loc_110041D:   var_304 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100424:   Proc_6_7_F26918(var_314, var_304)
  loc_1100444:   var_364 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_110044B:   Proc_6_7_F26918(var_374, var_364)
  loc_1100457:   var_394 = " )) AND IsNull(RO.Type,'')='' THEN GF.Name +'#*' WHEN ((RO.ChkInDate <="
  loc_110046B:   var_3C4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100472:   Proc_6_7_F26918(var_3D4, var_3C4)
  loc_1100483:   var_404 = var_2E4 & var_314 & " And RO.ChkOutDate>=" & var_374 & var_394 & var_3D4 & " And RO.ChkOutDate Is Null) OR (RO.ChkInDate<=" 
  loc_1100492:   var_424 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100499:   Proc_6_7_F26918(var_434, var_424)
  loc_11004B9:   var_484 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11004C0:   Proc_6_7_F26918(var_494, var_484)
  loc_11004D7:   var_4A8 = CStr((var_8A + 1))
  loc_11004E5:   var_4CC = var_404 & var_434 & " And RO.ChkOutDate>=" & var_494 & CVar(" )) AND RO.Type='O' THEN GF.Name Else '' End) as Day" & var_4A8 & ",") 
  loc_11004EA:   var_88 = CStr(var_4CC)
  loc_1100556: Next var_94 'Integer
  loc_1100565: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_1100582: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_110058C: Proc_111_34_1100594 = 
  loc_1100592: Result  End Sub 'Currency
End Sub

Public Sub Proc_111_35_F89124(arg_C) 'F89124
  'Data Table: 450B6C
  Dim var_90 As Recordset15
  loc_F88FCD: Set var_90 = arg_C 
  loc_F88FF5: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F89021: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F8904D: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F8905C: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F89092:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F890A4: Next var_A8 'Integer
  loc_F890CD: var_90.Fields.Append "Mark", &HC8, 1
  loc_F890DD: var_90.CursorType = 3
  loc_F890EA: var_90.LockType = 3
  loc_F89109: var_90.Open var_A4, var_C0, -1
  loc_F89110: Set var_90 = Nothing 
  loc_F89117: Set var_88 = arg_C 
  loc_F8911B: Proc_111_35_F89124 = -1
End Sub
