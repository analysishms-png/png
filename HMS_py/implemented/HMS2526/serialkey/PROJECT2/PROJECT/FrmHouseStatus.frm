VERSION 5.00
Begin VB.Form FrmHouseStatus
  Caption = "Property Status"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin Frame Frame10
    Caption = "Frame4"
    BackColor = &HC0FFC0&
    Left = 0
    Top = 2565
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    Begin BtnEnh LblExpArv
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 31
    End
    Begin Label CmdExpArv
      Caption = "."
      ForeColor = &HFF0000&
      Left = 2040
      Top = 15
      Width = 12225
      Height = 285
      TabIndex = 32
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
  Begin Frame Frame9
    Caption = "Frame3"
    BackColor = &HC0E0FF&
    Left = 0
    Top = 3255
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 27
    BorderStyle = 0 'None
    Begin BtnEnh LblExpOut
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 28
    End
    Begin BtnEnh CmdExpOut
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 29
    End
  End
  Begin Timer Timer1
    Interval = 2500
    Left = 17805
    Top = 285
  End
  Begin Frame FrOutlet
    Caption = "Frame9"
    BackColor = &HFF8080&
    Left = 0
    Top = 4920
    Width = 17115
    Height = 3015
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin BtnEnh CmdPos
      Index = 0
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 25
    End
    Begin BtnEnh CmdTB
      Index = 0
      Left = 2025
      Top = 0
      Width = 885
      Height = 345
      TabIndex = 26
    End
  End
  Begin Frame Frame8
    Caption = "Frame8"
    BackColor = &H80C0FF&
    Left = 0
    Top = 2220
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Begin BtnEnh CmdRChk
      Index = 0
      Left = 2010
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 22
    End
    Begin BtnEnh LblChk
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 23
    End
  End
  Begin Frame Frame7
    Caption = "Frame7"
    BackColor = &H8080FF&
    Left = -15
    Top = 4635
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin BtnEnh CmdRVd
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 19
    End
    Begin BtnEnh LblVD
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 20
    End
  End
  Begin Frame Frame6
    Caption = "Frame6"
    BackColor = &HC0C0FF&
    Left = -15
    Top = 4290
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Begin BtnEnh CmdRod
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 16
    End
    Begin BtnEnh LblRod
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 17
    End
  End
  Begin Frame Frame5
    Caption = "Frame5"
    BackColor = &HC0FFFF&
    Left = -15
    Top = 3945
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin BtnEnh LblRoo
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 13
    End
    Begin BtnEnh CmdRoo
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 14
    End
  End
  Begin Frame Frame4
    Caption = "Frame4"
    BackColor = &HC0FFC0&
    Left = 0
    Top = 0
    Width = 17115
    Height = 692
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin BtnEnh LblBnq
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 10
    End
    Begin BtnEnh CmdPT
      Index = 0
      Left = 2025
      Top = 0
      Width = 6165
      Height = 345
      TabIndex = 11
    End
  End
  Begin Frame Frame3
    Caption = "Frame3"
    BackColor = &HFFFFC0&
    Left = 0
    Top = 3600
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin BtnEnh LblPP
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 7
    End
    Begin BtnEnh CmdPP
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 8
    End
  End
  Begin Frame Frame2
    BackColor = &HFFC0C0&
    Left = 0
    Top = 2910
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin BtnEnh LblCOR
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 4
    End
    Begin BtnEnh CmdRoomCOR
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 5
    End
  End
  Begin Frame Frame1
    BackColor = &HFFC0FF&
    Left = 0
    Top = 705
    Width = 17115
    Height = 1515
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Begin BtnEnh LBLOR
      Left = 15
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 2
    End
    Begin BtnEnh CmdRoomSt
      Index = 0
      Left = 2040
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 1
    End
  End
  Begin BtnEnh CmdPosStatus
    Index = 0
    Left = 0
    Top = 7920
    Width = 1185
    Height = 585
    TabIndex = 33
  End
End

Attribute VB_Name = "FrmHouseStatus"


Private Sub CmdPosStatus_UnknownEvent_9 'E134F4
  'Data Table: 4F16B0
  loc_E134ED: Call New RsStatusScreen.Show
  loc_E134F3: Exit Sub
End Sub

Private Sub Timer1_Timer() '11F2F7C
  'Data Table: 4F16B0
  Dim var_EC As Single
  Dim var_F0 As Single
  Dim var_F4 As Single
  Dim var_E8 As Label
  Dim arg_500 As Double
  loc_11F2ADB: Call 0.Method_arg_2A0 ()
  loc_11F2B2B: Me.CmdExpArv.ForeColor = RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))
  loc_11F2B86: Set var_E8 = Me.LblExpArv
  loc_11F2B8C: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2BE7: Set var_E8 = Me.LblBnq
  loc_11F2BED: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2C48: Set var_E8 = Me.LblChk
  loc_11F2C4E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2CA9: Set var_E8 = Me.LblCOR
  loc_11F2CAF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2D0A: Set var_E8 = Me.LblExpOut
  loc_11F2D10: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2D6B: Set var_E8 = Me.LBLOR
  loc_11F2D71: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2DCC: Set var_E8 = Me.LblPP
  loc_11F2DD2: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2E2D: Set var_E8 = Me.LblRod
  loc_11F2E33: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2E8E: Set var_E8 = Me.LblRoo
  loc_11F2E94: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2EEF: Set var_E8 = Me.LblVD
  loc_11F2EF5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2F0E: var_EC = Rnd(var_A4)
  loc_11F2F19: var_F0 = Rnd(var_C4)
  loc_11F2F24: var_F4 = Rnd(var_E4)
  loc_11F2F55: Set var_E8 = Me.CmdPos
  loc_11F2F5B: Call 0.Method_Timer1_Timer0 (0, var_118, CVar(RGB(CInt((CDbl(255) * var_EC)), CInt((CDbl(255) * var_F0)), CInt((CDbl(255) * var_F4)))), var_F4, var_F0, var_EC, var_F4)
  loc_11F2F63: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(var_F0)
  loc_11F2F78: Exit Sub
  loc_11F2F79: arg_500 = var_EC
End Sub

Private Sub Form_Load() '10CEC5C
  'Data Table: 4F16B0
  Dim var_88 As Variant
  loc_10CE952: If (MemVar_1F950B8 = 0) Then
  loc_10CE963:   Set var_88 = Me.CmdPosStatus
  loc_10CE969:   Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CE971:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_10CE97D: End If
  loc_10CE984: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10CE997: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_10CE9AD: Me.Frame4.BackColor = CLng(MemVar_1F951B4)
  loc_10CE9C3: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_10CE9D9: Me.Frame2.BackColor = CLng(MemVar_1F951B4)
  loc_10CE9EF: Me.Frame3.BackColor = CLng(MemVar_1F951B4)
  loc_10CEA05: Me.Frame5.BackColor = CLng(MemVar_1F951B4)
  loc_10CEA1B: Me.Frame6.BackColor = CLng(MemVar_1F951B4)
  loc_10CEA31: Me.Frame7.BackColor = CLng(MemVar_1F951B4)
  loc_10CEA47: Me.Frame8.BackColor = CLng(MemVar_1F951B4)
  loc_10CEA5D: Me.Frame9.BackColor = CLng(MemVar_1F951B4)
  loc_10CEA73: Me.Frame10.BackColor = CLng(MemVar_1F951B4)
  loc_10CEA89: Me.FrOutlet.BackColor = CLng(MemVar_1F951B4)
  loc_10CEAA1: Set var_88 = Me.CmdRoomSt
  loc_10CEAA7: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEAAF: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEACB: Set var_88 = Me.CmdRod
  loc_10CEAD1: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEAD9: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEAF5: Set var_88 = Me.CmdPP
  loc_10CEAFB: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEB03: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEB1F: Set var_88 = Me.CmdRChk
  loc_10CEB25: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEB2D: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEB49: Set var_88 = Me.CmdRVd
  loc_10CEB4F: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEB57: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEB73: Set var_88 = Me.CmdRoo
  loc_10CEB79: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEB81: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEB9D: Set var_88 = Me.CmdRoomCOR
  loc_10CEBA3: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEBAB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEBC7: Set var_88 = Me.CmdTB
  loc_10CEBCD: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEBD5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEBF1: Set var_88 = Me.CmdExpOut
  loc_10CEBF7: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CEBFF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F951B4))
  loc_10CEC19: Me.CmdExpArv.BackColor = CLng(MemVar_1F951B4)
  loc_10CEC21: Call Proc_243_16_1243A8C()
  loc_10CEC26: Call Proc_243_14_11B8F30()
  loc_10CEC2B: Call Proc_243_7_11C6000()
  loc_10CEC30: Call Proc_243_11_11B85F4()
  loc_10CEC35: Call Proc_243_12_11B0B58()
  loc_10CEC3A: Call Proc_243_13_10EF3F4()
  loc_10CEC3F: Call Proc_243_15_119CFC8()
  loc_10CEC44: Call Proc_243_10_11C7770()
  loc_10CEC49: Call Proc_243_9_119E138()
  loc_10CEC4E: Call Proc_243_8_11EEF9C()
  loc_10CEC53: Call Proc_243_5_1229A8C()
  loc_10CEC58: Exit Sub
End Sub

Private Sub Form_Resize() '12A0E94
  'Data Table: 4F16B0
  loc_12A089A: Me.Frame4.Top = CDbl(0)
  loc_12A08C1: Me.Frame1.Top = Me.Frame4.Height
  loc_12A0903: Me.Frame8.Top = (Me.Frame4.Height + Me.Frame1.Height)
  loc_12A095D: Me.Frame10.Top = ((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height)
  loc_12A09CF: Me.Frame2.Top = (((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame10.Height)
  loc_12A0A59: Me.Frame9.Top = ((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame10.Height)
  loc_12A0AFB: Me.Frame3.Top = (((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A0BB5: Me.Frame5.Top = ((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A0C87: Me.Frame6.Top = (((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A0D71: Me.Frame7.Top = ((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A0E73: Me.FrOutlet.Top = (((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame7.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A0E91: Exit Sub
End Sub

Private Sub Form_Activate() '12A21C0
  'Data Table: 4F16B0
  loc_12A1BC6: Me.Frame4.Top = CDbl(0)
  loc_12A1BED: Me.Frame1.Top = Me.Frame4.Height
  loc_12A1C2F: Me.Frame8.Top = (Me.Frame4.Height + Me.Frame1.Height)
  loc_12A1C89: Me.Frame10.Top = ((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height)
  loc_12A1CFB: Me.Frame2.Top = (((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame10.Height)
  loc_12A1D85: Me.Frame9.Top = ((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame10.Height)
  loc_12A1E27: Me.Frame3.Top = (((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A1EE1: Me.Frame5.Top = ((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A1FB3: Me.Frame6.Top = (((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A209D: Me.Frame7.Top = ((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A219F: Me.FrOutlet.Top = (((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame7.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A21BD: Exit Sub
End Sub

Public Sub Proc_243_5_1229A8C
  'Data Table: 4F16B0
  Dim unk_4F16B2 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_C8 As Field20
  Dim var_96 As Integer
  Dim var_E4 As String
  Dim var_8C As Recordset15
  loc_12295AA: unk_4F16B2.Execute "SELECT Code,Name from Depart Where OutletYN='Y' Order By Name ", var_B8, -1
  loc_12295B5: Set var_90 = var_BC
  loc_12295D2: If (var_90.RecordCount > 0) Then
  loc_12295E1:   Me.FrOutlet.Visible = True
  loc_12295E9: End If
  loc_12295EB: var_86 = 0
  loc_12295F0: var_88 = 0
  loc_12295F3: ' Referenced from: 1229A77
  loc_1229602: If Not(var_90.EOF) Then
  loc_1229633:   Set var_CC = Me.CmdPos
  loc_1229639:   Call 0.Method_Proc_243_5_1229A8C0 (var_86, var_D0, CVar(var_90.Fields.Item("Name")))
  loc_1229641:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_88)
  loc_1229664:   var_BC = var_90.Fields
  loc_1229674:   var_B8 = var_BC.Item("Code").Value
  loc_122968C:   var_96 = &HFF
  loc_12296A3:   var_E4 = "Select DISTINCT RoomNo as Name from Kot where Pending='Y' and NcKot<>'Y' and Delflag='' and VoidYN='N' and restcode='" & CStr(var_B8)
  loc_12296B3:   unk_4F16B2.Execute var_E4 & "'", var_B8, -1
  loc_12296BE:   Set var_8C = var_BC
  loc_12296CE:   ' Referenced from: 1229970
  loc_12296DD:   If Not(var_8C.EOF) Then
  loc_12296E6:     If (var_96 = &HFF) Then
  loc_12296F3:       Set var_C8 = Me.CmdPos
  loc_12296F9:       Call 0.Method_Proc_243_5_1229A8C0 (var_86, var_CC, var_BC)
  loc_1229701:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_96)
  loc_1229714:       Set var_D0 = Me.CmdPos
  loc_122971A:       Call 0.Method_Proc_243_5_1229A8C0 (var_86, var_EC)
  loc_1229722:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_122974C:       var_A8 = CVar(((Me.FrOutlet.Left + CDbl(var_B8)) + CDbl(var_FC))) 'Single
  loc_122975B:       Set var_100 = Me.CmdTB
  loc_1229761:       Call 0.Method_Proc_243_5_1229A8C0 (var_88, var_104)
  loc_1229769:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003("Code")
  loc_1229796:       Call 0.Method_Proc_243_5_1229A8C0 (var_86, var_C8)
  loc_122979E:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(Me.CmdPos)
  loc_12297B6:       Set var_CC = Me.CmdTB
  loc_12297BC:       Call 0.Method_Proc_243_5_1229A8C0 (var_88, var_D0)
  loc_12297C4:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_12297D9:       var_96 = 0
  loc_12297DF:     Else
  loc_12297EC:       Set var_CC = Me.CmdTB
  loc_12297F2:       Call 0.Method_Proc_243_5_1229A8C0 ((var_88 - 1), var_D0)
  loc_12297FA:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_96)
  loc_1229810:       Set var_BC = Me.CmdTB
  loc_1229816:       Call 0.Method_Proc_243_5_1229A8C0 ((var_88 - 1))
  loc_122981E:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C8)
  loc_1229831:       var_A8 = CVar(((CDbl() + CDbl(var_FC)) + CDbl(0))) 'Single
  loc_1229840:       Set var_EC = Me.CmdTB
  loc_1229846:       Call 0.Method_Proc_243_5_1229A8C0 (var_88, var_100)
  loc_122984E:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_1229876:       Set var_BC = Me.CmdTB
  loc_122987C:       Call 0.Method_Proc_243_5_1229A8C0 ((var_88 - 1))
  loc_1229884:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_122989C:       Set var_CC = Me.CmdTB
  loc_12298A2:       Call 0.Method_Proc_243_5_1229A8C0 (var_88, var_D0)
  loc_12298AA:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_12298BD:     End If
  loc_12298D4:     var_C8 = var_8C.Fields.Item("Name")
  loc_12298EB:     Set var_CC = Me.CmdTB
  loc_12298F1:     Call 0.Method_Proc_243_5_1229A8C0 (var_88, var_D0)
  loc_12298F9:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(var_C8))
  loc_1229918:     Set var_BC = Me.CmdTB
  loc_122991E:     Call 0.Method_Proc_243_5_1229A8C0 (var_88, var_C8)
  loc_1229926:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1229938:     var_88 = (var_88 + 1)
  loc_1229945:     Set var_BC = Me.CmdTB
  loc_122994B:     Call 0.Method_Proc_243_5_1229A8C0 (var_88, var_C8)
  loc_122995C:     Me.CmdTB.Load var_C8
  loc_122996B:     var_8C.MoveNext
  loc_1229970:     GoTo loc_12296CE
  loc_1229973:   End If
  loc_1229976:   var_90.MoveNext
  loc_1229981:   var_86 = (var_86 + 1)
  loc_1229995:   If (var_90.EOF = 0) Then
  loc_12299A2:     Set var_BC = Me.CmdPos
  loc_12299A8:     Call 0.Method_Proc_243_5_1229A8C0 (var_86, var_C8)
  loc_12299B9:     Me.CmdPos.Load var_C8
  loc_12299D3:     Set var_BC = Me.CmdPos
  loc_12299D9:     Call 0.Method_Proc_243_5_1229A8C0 (var_86, var_C8, True)
  loc_12299E1:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_86)
  loc_12299FA:     Set var_CC = Me.CmdPos
  loc_1229A00:     Call 0.Method_Proc_243_5_1229A8C0 ((var_86 - 1), var_D0)
  loc_1229A08:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_88)
  loc_1229A1E:     Set var_BC = Me.CmdPos
  loc_1229A24:     Call 0.Method_Proc_243_5_1229A8C0 ((var_86 - 1))
  loc_1229A2C:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_1229A3F:     var_A8 = CVar(((CDbl() + CDbl(var_FC)) + CDbl(0))) 'Single
  loc_1229A4E:     Set var_EC = Me.CmdPos
  loc_1229A54:     Call 0.Method_Proc_243_5_1229A8C0 (var_86, var_100)
  loc_1229A5C:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(True)
  loc_1229A77:   End If
  loc_1229A77:   GoTo loc_12295F3
  loc_1229A7A: End If
  loc_1229A7F: Set var_90 = Nothing
  loc_1229A87: Set var_8C = Nothing
  loc_1229A8A: Exit Sub
End Sub

Public Sub Proc_243_6_E7E5E4(arg_C) 'E7E5E4
  'Data Table: 4F16B0
  Dim var_90 As String
  Dim unk_4F16B2 As Connection15
  loc_E7E5A5: var_90 = "Select  DISTINCT roomno as Name from Kot where Pending='Y' and NcKot<>'Y' and Delflag='' and VoidYN='N' and restcode='" & arg_C
  loc_E7E5B5: unk_4F16B2.Execute var_90 & "'", var_B4, -1
  loc_E7E5C0: Set var_8C = var_B8
  loc_E7E5D6: If (0 > 0) Then
  loc_E7E5D9: End If
  loc_E7E5DE: Set var_8C = Nothing
  loc_E7E5E1: Exit Sub
End Sub

Public Sub Proc_243_7_11C6000
  'Data Table: 4F16B0
  Dim var_86 As Integer
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_118 As Variant
  Dim var_B0 As Variant
  Dim var_130 As Frame
  loc_11C5BBA: var_86 = 0
  loc_11C5BD8: var_C0 = CVar("Select Roomno as Name FROM RoomOcc Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Type <>'C' AND ChkInDate=  ") 'String
  loc_11C5BE6: Proc_6_7_F26918(var_B0, MemVar_1F950EC, var_C0, var_114)
  loc_11C5BEE: var_D0 = -1 & var_B0 
  loc_11C5C05: unk_4F16B2.Execute CStr(var_D0 & "  ORDER BY RoomNo"), var_118, var_86
  loc_11C5C10: Set var_8C = var_118
  loc_11C5C3E: If (var_8C.RecordCount > 0) Then
  loc_11C5C4D:   Me.Frame8.Visible = True
  loc_11C5C74:   Set var_118 = Me.LblChk
  loc_11C5C7A:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar("Check In Room: " & CStr(var_8C.RecordCount)))
  loc_11C5C88:   ' Referenced from: 11C5FEA
  loc_11C5C88: End If
  loc_11C5C97: If Not(var_8C.EOF) Then
  loc_11C5CB1:   var_124 = var_8C.Fields.Item("Name")
  loc_11C5CC8:   Set var_128 = Me.CmdRChk
  loc_11C5CCE:   Call 0.Method_Proc_243_7_11C60000 (var_86, var_12C)
  loc_11C5CD6:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar(var_124))
  loc_11C5CEA:   var_8C.MoveNext
  loc_11C5CF5:   var_86 = (var_86 + 1)
  loc_11C5D09:   If (var_8C.EOF = 0) Then
  loc_11C5D16:     Set var_118 = Me.CmdRChk
  loc_11C5D1C:     Call 0.Method_Proc_243_7_11C60000 (var_86, var_124)
  loc_11C5D2D:     Me.CmdRChk.Load var_124
  loc_11C5D46:     Set var_128 = Me.CmdRChk
  loc_11C5D4C:     Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1), var_12C)
  loc_11C5D54:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_86)
  loc_11C5D7C:     Set var_118 = Me.CmdRChk
  loc_11C5D82:     Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1))
  loc_11C5D8A:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C5DB2:     If (CSng((CDbl() + CDbl(var_C0))) > Me.Frame8.Width) Then
  loc_11C5DBE:       Set var_118 = Me.CmdRChk
  loc_11C5DC4:       Call 0.Method_Proc_243_7_11C60000 (0)
  loc_11C5DCC:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C5DE7:       Set var_128 = Me.CmdRChk
  loc_11C5DED:       Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1), var_12C)
  loc_11C5DF5:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11C5E11:       Set var_128 = Me.CmdRChk
  loc_11C5E17:       Call 0.Method_Proc_243_7_11C60000 (0)
  loc_11C5E1F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_12C)
  loc_11C5E31:       Set var_118 = Me.CmdRChk
  loc_11C5E37:       Call 0.Method_Proc_243_7_11C60000 (0)
  loc_11C5E3F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C5E52:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C5E64:       Set var_130 = Me.CmdRChk
  loc_11C5E6A:       Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1), var_134)
  loc_11C5E72:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C5E9A:       Set var_118 = Me.CmdRChk
  loc_11C5EA0:       Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1))
  loc_11C5EA8:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C5EC0:       Set var_128 = Me.CmdRChk
  loc_11C5EC6:       Call 0.Method_Proc_243_7_11C60000 (var_86, var_12C)
  loc_11C5ECE:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C5EE4:     Else
  loc_11C5EF1:       Set var_128 = Me.CmdRChk
  loc_11C5EF7:       Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1))
  loc_11C5EFF:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_12C)
  loc_11C5F15:       Set var_118 = Me.CmdRChk
  loc_11C5F1B:       Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1))
  loc_11C5F23:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C5F36:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C5F45:       Set var_130 = Me.CmdRChk
  loc_11C5F4B:       Call 0.Method_Proc_243_7_11C60000 (var_86, var_134)
  loc_11C5F53:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11C5F7B:       Set var_118 = Me.CmdRChk
  loc_11C5F81:       Call 0.Method_Proc_243_7_11C60000 ((var_86 - 1))
  loc_11C5F89:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C5FA1:       Set var_128 = Me.CmdRChk
  loc_11C5FA7:       Call 0.Method_Proc_243_7_11C60000 (var_86, var_12C)
  loc_11C5FAF:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C5FC2:     End If
  loc_11C5FD0:     Set var_118 = Me.CmdRChk
  loc_11C5FD6:     Call 0.Method_Proc_243_7_11C60000 (var_86, var_124)
  loc_11C5FDE:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_11C5FEA:   End If
  loc_11C5FEA:   GoTo loc_11C5C88
  loc_11C5FED: End If
  loc_11C5FF3: If (var_86 > 0) Then
  loc_11C5FF6: End If
  loc_11C5FFB: Set var_8C = Nothing
  loc_11C5FFE: Exit Sub
End Sub

Public Sub Proc_243_8_11EEF9C
  'Data Table: 4F16B0
  Dim var_86 As Integer
  Dim var_94 As String
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim var_C0 As Variant
  Dim var_140 As Frame
  loc_11EEB32: var_86 = 0
  loc_11EEB50: var_94 = "Select Roommast.code as Name FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_11EEB5E: var_9C = var_94 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_11EEB6C: var_D0 = CVar(var_9C & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And ") 'String
  loc_11EEB7A: Proc_6_7_F26918(var_C0, MemVar_1F950EC, var_D0, var_124)
  loc_11EEB82: var_E0 = -1 & var_C0 
  loc_11EEB99: unk_4F16B2.Execute CStr(var_E0 & " between Fromdate and ToDate) And Roomstat='D' ORDER BY Roommast.Code"), var_128, var_86
  loc_11EEBA4: Set var_8C = var_128
  loc_11EEBDA: If (var_8C.RecordCount > 0) Then
  loc_11EEBE9:   Me.Frame7.Visible = True
  loc_11EEC10:   Set var_128 = Me.LblVD
  loc_11EEC16:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar("Vaicent Dirty: " & CStr(var_8C.RecordCount)))
  loc_11EEC24:   ' Referenced from: 11EEF86
  loc_11EEC24: End If
  loc_11EEC33: If Not(var_8C.EOF) Then
  loc_11EEC4D:   var_134 = var_8C.Fields.Item("Name")
  loc_11EEC64:   Set var_138 = Me.CmdRVd
  loc_11EEC6A:   Call 0.Method_Proc_243_8_11EEF9C0 (var_86, var_13C)
  loc_11EEC72:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar(var_134))
  loc_11EEC86:   var_8C.MoveNext
  loc_11EEC91:   var_86 = (var_86 + 1)
  loc_11EECA5:   If (var_8C.EOF = 0) Then
  loc_11EECB2:     Set var_128 = Me.CmdRVd
  loc_11EECB8:     Call 0.Method_Proc_243_8_11EEF9C0 (var_86, var_134)
  loc_11EECC9:     Me.CmdRVd.Load var_134
  loc_11EECE2:     Set var_138 = Me.CmdRVd
  loc_11EECE8:     Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1), var_13C)
  loc_11EECF0:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_86)
  loc_11EED18:     Set var_128 = Me.CmdRVd
  loc_11EED1E:     Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1))
  loc_11EED26:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_134)
  loc_11EED4E:     If (CSng((CDbl() + CDbl(var_D0))) > Me.Frame7.Width) Then
  loc_11EED5A:       Set var_128 = Me.CmdRVd
  loc_11EED60:       Call 0.Method_Proc_243_8_11EEF9C0 (0)
  loc_11EED68:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_134)
  loc_11EED83:       Set var_138 = Me.CmdRVd
  loc_11EED89:       Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1), var_13C)
  loc_11EED91:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11EEDAD:       Set var_138 = Me.CmdRVd
  loc_11EEDB3:       Call 0.Method_Proc_243_8_11EEF9C0 (0)
  loc_11EEDBB:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_13C)
  loc_11EEDCD:       Set var_128 = Me.CmdRVd
  loc_11EEDD3:       Call 0.Method_Proc_243_8_11EEF9C0 (0)
  loc_11EEDDB:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_134)
  loc_11EEDEE:       var_B0 = CVar(((CDbl() + CDbl(var_D0)) + CDbl(0))) 'Single
  loc_11EEE00:       Set var_140 = Me.CmdRVd
  loc_11EEE06:       Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1), var_144)
  loc_11EEE0E:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11EEE36:       Set var_128 = Me.CmdRVd
  loc_11EEE3C:       Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1))
  loc_11EEE44:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_134)
  loc_11EEE5C:       Set var_138 = Me.CmdRVd
  loc_11EEE62:       Call 0.Method_Proc_243_8_11EEF9C0 (var_86, var_13C)
  loc_11EEE6A:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11EEE80:     Else
  loc_11EEE8D:       Set var_138 = Me.CmdRVd
  loc_11EEE93:       Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1))
  loc_11EEE9B:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_13C)
  loc_11EEEB1:       Set var_128 = Me.CmdRVd
  loc_11EEEB7:       Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1))
  loc_11EEEBF:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_134)
  loc_11EEED2:       var_B0 = CVar(((CDbl() + CDbl(var_D0)) + CDbl(0))) 'Single
  loc_11EEEE1:       Set var_140 = Me.CmdRVd
  loc_11EEEE7:       Call 0.Method_Proc_243_8_11EEF9C0 (var_86, var_144)
  loc_11EEEEF:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11EEF17:       Set var_128 = Me.CmdRVd
  loc_11EEF1D:       Call 0.Method_Proc_243_8_11EEF9C0 ((var_86 - 1))
  loc_11EEF25:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_134)
  loc_11EEF3D:       Set var_138 = Me.CmdRVd
  loc_11EEF43:       Call 0.Method_Proc_243_8_11EEF9C0 (var_86, var_13C)
  loc_11EEF4B:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11EEF5E:     End If
  loc_11EEF6C:     Set var_128 = Me.CmdRVd
  loc_11EEF72:     Call 0.Method_Proc_243_8_11EEF9C0 (var_86, var_134)
  loc_11EEF7A:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_11EEF86:   End If
  loc_11EEF86:   GoTo loc_11EEC24
  loc_11EEF89: End If
  loc_11EEF8F: If (var_86 > 0) Then
  loc_11EEF92: End If
  loc_11EEF97: Set var_8C = Nothing
  loc_11EEF9A: Exit Sub
End Sub

Public Sub Proc_243_9_119E138
  'Data Table: 4F16B0
  Dim var_86 As Integer
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_EC As Frame
  loc_119DD36: var_86 = 0
  loc_119DD4F: unk_4F16B2.Execute "SELECT Roommast.code as name from RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO' ORDER BY Roommast.Code", var_AC, -1
  loc_119DD5A: Set var_8C = var_B0
  loc_119DD77: If (var_8C.RecordCount > 0) Then
  loc_119DD86:   Me.Frame6.Visible = True
  loc_119DDAD:   Set var_B0 = Me.LblRod
  loc_119DDB3:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar("Occupied Dirty: " & CStr(var_8C.RecordCount)))
  loc_119DDC1:   ' Referenced from: 119E123
  loc_119DDC1: End If
  loc_119DDD0: If Not(var_8C.EOF) Then
  loc_119DDE2:   var_B0 = var_8C.Fields
  loc_119DDEA:   var_C0 = var_B0.Item("Name")
  loc_119DE01:   Set var_C4 = Me.CmdRod
  loc_119DE07:   Call 0.Method_Proc_243_9_119E1380 (var_86, var_C8, CVar(var_C0))
  loc_119DE0F:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(var_B0)
  loc_119DE23:   var_8C.MoveNext
  loc_119DE2E:   var_86 = (var_86 + 1)
  loc_119DE42:   If (var_8C.EOF = 0) Then
  loc_119DE4F:     Set var_B0 = Me.CmdRod
  loc_119DE55:     Call 0.Method_Proc_243_9_119E1380 (var_86, var_C0)
  loc_119DE66:     Me.CmdRod.Load var_C0
  loc_119DE7F:     Set var_C4 = Me.CmdRod
  loc_119DE85:     Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1), var_C8)
  loc_119DE8D:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_86)
  loc_119DEB5:     Set var_B0 = Me.CmdRod
  loc_119DEBB:     Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1), var_C0)
  loc_119DEC3:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_86)
  loc_119DEEB:     If (CSng((CDbl() + CDbl(var_E8))) > Me.Frame6.Width) Then
  loc_119DEF7:       Set var_B0 = Me.CmdRod
  loc_119DEFD:       Call 0.Method_Proc_243_9_119E1380 (0)
  loc_119DF05:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_C0)
  loc_119DF20:       Set var_C4 = Me.CmdRod
  loc_119DF26:       Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1), var_C8)
  loc_119DF2E:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_119DF4A:       Set var_C4 = Me.CmdRod
  loc_119DF50:       Call 0.Method_Proc_243_9_119E1380 (0)
  loc_119DF58:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_C8)
  loc_119DF6A:       Set var_B0 = Me.CmdRod
  loc_119DF70:       Call 0.Method_Proc_243_9_119E1380 (0)
  loc_119DF78:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_C0)
  loc_119DF8B:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119DF9D:       Set var_EC = Me.CmdRod
  loc_119DFA3:       Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1), var_F0)
  loc_119DFAB:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_119DFD3:       Set var_B0 = Me.CmdRod
  loc_119DFD9:       Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1))
  loc_119DFE1:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_C0)
  loc_119DFF9:       Set var_C4 = Me.CmdRod
  loc_119DFFF:       Call 0.Method_Proc_243_9_119E1380 (var_86, var_C8)
  loc_119E007:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_119E01D:     Else
  loc_119E02A:       Set var_C4 = Me.CmdRod
  loc_119E030:       Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1))
  loc_119E038:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_C8)
  loc_119E04E:       Set var_B0 = Me.CmdRod
  loc_119E054:       Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1))
  loc_119E05C:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_C0)
  loc_119E06F:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119E07E:       Set var_EC = Me.CmdRod
  loc_119E084:       Call 0.Method_Proc_243_9_119E1380 (var_86, var_F0)
  loc_119E08C:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_119E0B4:       Set var_B0 = Me.CmdRod
  loc_119E0BA:       Call 0.Method_Proc_243_9_119E1380 ((var_86 - 1))
  loc_119E0C2:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_C0)
  loc_119E0DA:       Set var_C4 = Me.CmdRod
  loc_119E0E0:       Call 0.Method_Proc_243_9_119E1380 (var_86, var_C8)
  loc_119E0E8:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_119E0FB:     End If
  loc_119E109:     Set var_B0 = Me.CmdRod
  loc_119E10F:     Call 0.Method_Proc_243_9_119E1380 (var_86, var_C0)
  loc_119E117:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_119E123:   End If
  loc_119E123:   GoTo loc_119DDC1
  loc_119E126: End If
  loc_119E12C: If (var_86 > 0) Then
  loc_119E12F: End If
  loc_119E134: Set var_8C = Nothing
  loc_119E137: Exit Sub
End Sub

Public Sub Proc_243_10_11C7770
  'Data Table: 4F16B0
  Dim var_86 As Integer
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_118 As Variant
  Dim var_B0 As Variant
  Dim var_130 As Frame
  loc_11C732A: var_86 = 0
  loc_11C7348: var_C0 = CVar("SELECT Roomcode as name FROM RoomBlockOut WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and Type ='O' And ") 'String
  loc_11C7356: Proc_6_7_F26918(var_B0, MemVar_1F950EC, var_C0, var_114)
  loc_11C735E: var_D0 = -1 & var_B0 
  loc_11C7375: unk_4F16B2.Execute CStr(var_D0 & " between Fromdate and ToDate"), var_118, var_86
  loc_11C7380: Set var_8C = var_118
  loc_11C73AE: If (var_8C.RecordCount > 0) Then
  loc_11C73BD:   Me.Frame5.Visible = True
  loc_11C73E4:   Set var_118 = Me.LblRoo
  loc_11C73EA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar("Out of Order: " & CStr(var_8C.RecordCount)))
  loc_11C73F8:   ' Referenced from: 11C775A
  loc_11C73F8: End If
  loc_11C7407: If Not(var_8C.EOF) Then
  loc_11C7421:   var_124 = var_8C.Fields.Item("Name")
  loc_11C7438:   Set var_128 = Me.CmdRoo
  loc_11C743E:   Call 0.Method_Proc_243_10_11C77700 (var_86, var_12C)
  loc_11C7446:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar(var_124))
  loc_11C745A:   var_8C.MoveNext
  loc_11C7465:   var_86 = (var_86 + 1)
  loc_11C7479:   If (var_8C.EOF = 0) Then
  loc_11C7486:     Set var_118 = Me.CmdRoo
  loc_11C748C:     Call 0.Method_Proc_243_10_11C77700 (var_86, var_124)
  loc_11C749D:     Me.CmdRoo.Load var_124
  loc_11C74B6:     Set var_128 = Me.CmdRoo
  loc_11C74BC:     Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1), var_12C)
  loc_11C74C4:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_86)
  loc_11C74EC:     Set var_118 = Me.CmdRoo
  loc_11C74F2:     Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1))
  loc_11C74FA:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C7522:     If (CSng((CDbl() + CDbl(var_C0))) > Me.Frame5.Width) Then
  loc_11C752E:       Set var_118 = Me.CmdRoo
  loc_11C7534:       Call 0.Method_Proc_243_10_11C77700 (0)
  loc_11C753C:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C7557:       Set var_128 = Me.CmdRoo
  loc_11C755D:       Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1), var_12C)
  loc_11C7565:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11C7581:       Set var_128 = Me.CmdRoo
  loc_11C7587:       Call 0.Method_Proc_243_10_11C77700 (0)
  loc_11C758F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_12C)
  loc_11C75A1:       Set var_118 = Me.CmdRoo
  loc_11C75A7:       Call 0.Method_Proc_243_10_11C77700 (0)
  loc_11C75AF:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C75C2:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C75D4:       Set var_130 = Me.CmdRoo
  loc_11C75DA:       Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1), var_134)
  loc_11C75E2:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C760A:       Set var_118 = Me.CmdRoo
  loc_11C7610:       Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1))
  loc_11C7618:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C7630:       Set var_128 = Me.CmdRoo
  loc_11C7636:       Call 0.Method_Proc_243_10_11C77700 (var_86, var_12C)
  loc_11C763E:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C7654:     Else
  loc_11C7661:       Set var_128 = Me.CmdRoo
  loc_11C7667:       Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1))
  loc_11C766F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_12C)
  loc_11C7685:       Set var_118 = Me.CmdRoo
  loc_11C768B:       Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1))
  loc_11C7693:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C76A6:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C76B5:       Set var_130 = Me.CmdRoo
  loc_11C76BB:       Call 0.Method_Proc_243_10_11C77700 (var_86, var_134)
  loc_11C76C3:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11C76EB:       Set var_118 = Me.CmdRoo
  loc_11C76F1:       Call 0.Method_Proc_243_10_11C77700 ((var_86 - 1))
  loc_11C76F9:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C7711:       Set var_128 = Me.CmdRoo
  loc_11C7717:       Call 0.Method_Proc_243_10_11C77700 (var_86, var_12C)
  loc_11C771F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C7732:     End If
  loc_11C7740:     Set var_118 = Me.CmdRoo
  loc_11C7746:     Call 0.Method_Proc_243_10_11C77700 (var_86, var_124)
  loc_11C774E:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_11C775A:   End If
  loc_11C775A:   GoTo loc_11C73F8
  loc_11C775D: End If
  loc_11C7763: If (var_86 > 0) Then
  loc_11C7766: End If
  loc_11C776B: Set var_8C = Nothing
  loc_11C776E: Exit Sub
End Sub

Public Sub Proc_243_11_11B85F4
  'Data Table: 4F16B0
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_CC As Variant
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_114 As Variant
  Dim var_AC As Variant
  Dim var_12C As Frame
  loc_11B81BE: var_86 = 0
  loc_11B81DE: Proc_6_7_F26918(var_AC, MemVar_1F950EC, "SELECT RoomNo as Name FROM RoomOcc WHERE Type ='O'and (ChkOutDate=", var_110)
  loc_11B81E6: var_CC = -1 & var_AC 
  loc_11B81FD: unk_4F16B2.Execute CStr(var_CC & ") ORDER BY RoomNo"), var_114, var_86
  loc_11B8208: Set var_8C = var_114
  loc_11B8230: If (var_8C.RecordCount > 0) Then
  loc_11B823F:   Me.Frame2.Visible = True
  loc_11B8266:   Set var_114 = Me.LblCOR
  loc_11B826C:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar("Chkout Room: " & CStr(var_8C.RecordCount)))
  loc_11B827A:   ' Referenced from: 11B85DC
  loc_11B827A: End If
  loc_11B8289: If Not(var_8C.EOF) Then
  loc_11B82A3:   var_120 = var_8C.Fields.Item("Name")
  loc_11B82BA:   Set var_124 = Me.CmdRoomCOR
  loc_11B82C0:   Call 0.Method_Proc_243_11_11B85F40 (var_86, var_128)
  loc_11B82C8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar(var_120))
  loc_11B82DC:   var_8C.MoveNext
  loc_11B82E7:   var_86 = (var_86 + 1)
  loc_11B82FB:   If (var_8C.EOF = 0) Then
  loc_11B8308:     Set var_114 = Me.CmdRoomCOR
  loc_11B830E:     Call 0.Method_Proc_243_11_11B85F40 (var_86, var_120)
  loc_11B831F:     Me.CmdRoomCOR.Load var_120
  loc_11B8338:     Set var_124 = Me.CmdRoomCOR
  loc_11B833E:     Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1), var_128)
  loc_11B8346:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_86)
  loc_11B836E:     Set var_114 = Me.CmdRoomCOR
  loc_11B8374:     Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1))
  loc_11B837C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_120)
  loc_11B83A4:     If (CSng((CDbl() + CDbl(var_CC))) > Me.Frame2.Width) Then
  loc_11B83B0:       Set var_114 = Me.CmdRoomCOR
  loc_11B83B6:       Call 0.Method_Proc_243_11_11B85F40 (0)
  loc_11B83BE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_120)
  loc_11B83D9:       Set var_124 = Me.CmdRoomCOR
  loc_11B83DF:       Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1), var_128)
  loc_11B83E7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl()))
  loc_11B8403:       Set var_124 = Me.CmdRoomCOR
  loc_11B8409:       Call 0.Method_Proc_243_11_11B85F40 (0)
  loc_11B8411:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_128)
  loc_11B8423:       Set var_114 = Me.CmdRoomCOR
  loc_11B8429:       Call 0.Method_Proc_243_11_11B85F40 (0)
  loc_11B8431:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_120)
  loc_11B8444:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_11B8456:       Set var_12C = Me.CmdRoomCOR
  loc_11B845C:       Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1), var_130)
  loc_11B8464:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_11B848C:       Set var_114 = Me.CmdRoomCOR
  loc_11B8492:       Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1))
  loc_11B849A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_120)
  loc_11B84B2:       Set var_124 = Me.CmdRoomCOR
  loc_11B84B8:       Call 0.Method_Proc_243_11_11B85F40 (var_86, var_128)
  loc_11B84C0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_11B84D6:     Else
  loc_11B84E3:       Set var_124 = Me.CmdRoomCOR
  loc_11B84E9:       Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1))
  loc_11B84F1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_128)
  loc_11B8507:       Set var_114 = Me.CmdRoomCOR
  loc_11B850D:       Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1))
  loc_11B8515:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_120)
  loc_11B8528:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_11B8537:       Set var_12C = Me.CmdRoomCOR
  loc_11B853D:       Call 0.Method_Proc_243_11_11B85F40 (var_86, var_130)
  loc_11B8545:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl()))
  loc_11B856D:       Set var_114 = Me.CmdRoomCOR
  loc_11B8573:       Call 0.Method_Proc_243_11_11B85F40 ((var_86 - 1))
  loc_11B857B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_120)
  loc_11B8593:       Set var_124 = Me.CmdRoomCOR
  loc_11B8599:       Call 0.Method_Proc_243_11_11B85F40 (var_86, var_128)
  loc_11B85A1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_11B85B4:     End If
  loc_11B85C2:     Set var_114 = Me.CmdRoomCOR
  loc_11B85C8:     Call 0.Method_Proc_243_11_11B85F40 (var_86, var_120)
  loc_11B85D0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_11B85DC:   End If
  loc_11B85DC:   GoTo loc_11B827A
  loc_11B85DF: End If
  loc_11B85E5: If (var_86 > 0) Then
  loc_11B85E8: End If
  loc_11B85ED: Set var_8C = Nothing
  loc_11B85F0: Exit Sub
End Sub

Public Sub Proc_243_12_11B0B58
  'Data Table: 4F16B0
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_104 As Variant
  Dim var_11C As Frame
  loc_11B0732: var_86 = 0
  loc_11B0742: var_9C = "select Foliono= case When GuestFolio.mFoliono<>0 then GuestFolio.mFoliono else GuestFolio.Foliono end,RoomOcc.RoomNo as Name from (guestfolio inner join  RoomOcc on guestfolio.docid=roomocc.docid)  where RoomOcc.ChkoutDAte is NUll and RoomOcc.DepDate='"
  loc_11B0757: var_DC = var_9C & CDate(MemVar_1F950EC) & "' Order by RoomOcc.RoomNo" 
  loc_11B0765: unk_4F16B2.Execute CStr(var_DC), var_100, -1
  loc_11B0770: Set var_8C = var_104
  loc_11B0796: If (var_8C.RecordCount > 0) Then
  loc_11B07A5:   Me.Frame9.Visible = True
  loc_11B07CC:   Set var_104 = Me.LblExpOut
  loc_11B07D2:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar("Expected ChkOut: " & CStr(var_8C.RecordCount)))
  loc_11B07E0:   ' Referenced from: 11B0B42
  loc_11B07E0: End If
  loc_11B07EF: If Not(var_8C.EOF) Then
  loc_11B0801:   var_104 = var_8C.Fields
  loc_11B0809:   var_110 = var_104.Item("Name")
  loc_11B0820:   Set var_114 = Me.CmdExpOut
  loc_11B0826:   Call 0.Method_Proc_243_12_11B0B580 (var_86, var_118, CVar(var_110))
  loc_11B082E:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_104)
  loc_11B0842:   var_8C.MoveNext
  loc_11B084D:   var_86 = (var_86 + 1)
  loc_11B0861:   If (var_8C.EOF = 0) Then
  loc_11B086E:     Set var_104 = Me.CmdExpOut
  loc_11B0874:     Call 0.Method_Proc_243_12_11B0B580 (var_86, var_110)
  loc_11B0885:     Me.CmdExpOut.Load var_110
  loc_11B089E:     Set var_114 = Me.CmdExpOut
  loc_11B08A4:     Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1), var_118)
  loc_11B08AC:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_11B08D4:     Set var_104 = Me.CmdExpOut
  loc_11B08DA:     Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1), var_110)
  loc_11B08E2:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_86)
  loc_11B090A:     If (CSng((CDbl() + CDbl(var_DC))) > Me.Frame2.Width) Then
  loc_11B0916:       Set var_104 = Me.CmdExpOut
  loc_11B091C:       Call 0.Method_Proc_243_12_11B0B580 (0)
  loc_11B0924:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_110)
  loc_11B093F:       Set var_114 = Me.CmdExpOut
  loc_11B0945:       Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1), var_118)
  loc_11B094D:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11B0969:       Set var_114 = Me.CmdExpOut
  loc_11B096F:       Call 0.Method_Proc_243_12_11B0B580 (0)
  loc_11B0977:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_118)
  loc_11B0989:       Set var_104 = Me.CmdExpOut
  loc_11B098F:       Call 0.Method_Proc_243_12_11B0B580 (0)
  loc_11B0997:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_110)
  loc_11B09AA:       var_9C = CVar(((CDbl() + CDbl(var_DC)) + CDbl(0))) 'Single
  loc_11B09BC:       Set var_11C = Me.CmdExpOut
  loc_11B09C2:       Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1), var_120)
  loc_11B09CA:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B09F2:       Set var_104 = Me.CmdExpOut
  loc_11B09F8:       Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1))
  loc_11B0A00:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_110)
  loc_11B0A18:       Set var_114 = Me.CmdExpOut
  loc_11B0A1E:       Call 0.Method_Proc_243_12_11B0B580 (var_86, var_118)
  loc_11B0A26:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B0A3C:     Else
  loc_11B0A49:       Set var_114 = Me.CmdExpOut
  loc_11B0A4F:       Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1))
  loc_11B0A57:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_118)
  loc_11B0A6D:       Set var_104 = Me.CmdExpOut
  loc_11B0A73:       Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1))
  loc_11B0A7B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_110)
  loc_11B0A8E:       var_9C = CVar(((CDbl() + CDbl(var_DC)) + CDbl(0))) 'Single
  loc_11B0A9D:       Set var_11C = Me.CmdExpOut
  loc_11B0AA3:       Call 0.Method_Proc_243_12_11B0B580 (var_86, var_120)
  loc_11B0AAB:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11B0AD3:       Set var_104 = Me.CmdExpOut
  loc_11B0AD9:       Call 0.Method_Proc_243_12_11B0B580 ((var_86 - 1))
  loc_11B0AE1:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_110)
  loc_11B0AF9:       Set var_114 = Me.CmdExpOut
  loc_11B0AFF:       Call 0.Method_Proc_243_12_11B0B580 (var_86, var_118)
  loc_11B0B07:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B0B1A:     End If
  loc_11B0B28:     Set var_104 = Me.CmdExpOut
  loc_11B0B2E:     Call 0.Method_Proc_243_12_11B0B580 (var_86, var_110)
  loc_11B0B36:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11B0B42:   End If
  loc_11B0B42:   GoTo loc_11B07E0
  loc_11B0B45: End If
  loc_11B0B4B: If (var_86 > 0) Then
  loc_11B0B4E: End If
  loc_11B0B53: Set var_8C = Nothing
  loc_11B0B56: Exit Sub
End Sub

Public Sub Proc_243_13_10EF3F4
  'Data Table: 4F16B0
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim var_128 As Variant
  Dim var_168 As String
  Dim var_1A8 As Variant
  Dim var_88 As Recordset15
  Dim var_1F0 As Fields15
  Dim var_198 As Variant
  loc_10EF127: Set var_90 = Me.CmdExpArv
  loc_10EF12D: var_90.Caption = vbNullString
  loc_10EF159: unk_4F16B2.Execute "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_10EF164: Set var_8C = var_90
  loc_10EF174: ' Referenced from: 10EF3DE
  loc_10EF183: If Not(var_8C.EOF) Then
  loc_10EF1A5:   var_90 = var_8C.Fields
  loc_10EF1BE:   var_94 = Proc_6_38_E69628(CVar(var_90.Item("Code")), "Select max(RoomCAt.Name) as RoomType,Sum(NoofRooms) as  Rooms from ViewBooking as Booking INNER join RoomCat on Booking.RoomCAt=RoomCAt.Code  where bOOKING.ROOMCAT='", var_1EC)
  loc_10EF1C2:   var_98 = -1 & var_94
  loc_10EF1D0:   var_C8 = "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "' AND Cancel='N' and BOOKING.LOGSITE_CODE='" & MemVar_1F95078
  loc_10EF1E5:   Proc_6_7_F26918(var_E8, MemVar_1F950EC, CVar(var_C8 & "' AND "))
  loc_10EF205:   Proc_6_7_F26918(var_148, MemVar_1F950EC)
  loc_10EF211:   var_168 = " < Depdate and Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_10EF225:   Proc_6_7_F26918(var_198, MemVar_1F950EC)
  loc_10EF22D:   var_1A8 = var_1F0 & var_E8 & " >=Arrdate and " & var_148 & var_168 & var_198 
  loc_10EF244:   unk_4F16B2.Execute CStr(var_1A8 & " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Group By Booking.RoomCAt"), var_90, 
  loc_10EF24F:   Set var_88 = var_1F0
  loc_10EF295:   If (var_88.RecordCount > 0) Then
  loc_10EF2A4:     Me.Frame10.Visible = True
  loc_10EF2AC:     ' Referenced from: 10EF3D0
  loc_10EF2BD:     If (var_88.EOF = 0) Then
  loc_10EF317:       var_128 = (CVar(Me.CmdExpArv.Caption) + IIf((Me.CmdExpArv.Caption = vbNullString), vbNullString, ", "))
  loc_10EF378:       Proc_6_39_E7D3A0(var_1A8, CVar(var_88.Fields.Item("Rooms")))
  loc_10EF392:       Me.CmdExpArv.Caption = CStr(var_8C.Fields & ", " & " >=Arrdate and " & var_8C.Fields.Item("Name").Value & "=" & var_1A8)
  loc_10EF3CB:       var_88.MoveNext
  loc_10EF3D0:       GoTo loc_10EF2AC
  loc_10EF3D3:     End If
  loc_10EF3D3:     GoTo loc_10EF3D6
  loc_10EF3D6:     ' Referenced from: 10EF3D3
  loc_10EF3D6:   End If
  loc_10EF3D9:   var_8C.MoveNext
  loc_10EF3DE:   GoTo loc_10EF174
  loc_10EF3E1: End If
  loc_10EF3E6: Set var_88 = Nothing
  loc_10EF3EE: Set var_8C = Nothing
  loc_10EF3F1: Exit Sub
End Sub

Public Sub Proc_243_14_11B8F30
  'Data Table: 4F16B0
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim var_EC As Frame
  loc_11B8B02: unk_4F16B2.Execute "SELECT RoomNo as Name FROM RoomOcc WHERE Type = '' ORDER BY RoomNo", var_AC, -1
  loc_11B8B0D: Set var_8C = var_B0
  loc_11B8B2A: If (var_8C.RecordCount > 0) Then
  loc_11B8B35:   Set var_B0 = Me.LBLOR
  loc_11B8B3B:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_11B8B50:   Set var_B0 = Me.CmdRoomSt
  loc_11B8B56:   Call 0.Method_Proc_243_14_11B8F300 (0, var_C8)
  loc_11B8B5E:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11B8B76:   Me.Frame1.Visible = True
  loc_11B8B9D:   Set var_B0 = Me.LBLOR
  loc_11B8BA3:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar("Occupied Room: " & CStr(var_8C.RecordCount)))
  loc_11B8BB1: End If
  loc_11B8BB3: var_86 = 0
  loc_11B8BB6: ' Referenced from: 11B8F18
  loc_11B8BC5: If Not(var_8C.EOF) Then
  loc_11B8BDF:   var_C8 = var_8C.Fields.Item("Name")
  loc_11B8BF6:   Set var_D4 = Me.CmdRoomSt
  loc_11B8BFC:   Call 0.Method_Proc_243_14_11B8F300 (var_86, var_D8, CVar(var_C8))
  loc_11B8C04:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_86)
  loc_11B8C18:   var_8C.MoveNext
  loc_11B8C23:   var_86 = (var_86 + 1)
  loc_11B8C37:   If (var_8C.EOF = 0) Then
  loc_11B8C44:     Set var_B0 = Me.CmdRoomSt
  loc_11B8C4A:     Call 0.Method_Proc_243_14_11B8F300 (var_86, var_C8)
  loc_11B8C5B:     Me.CmdRoomSt.Load var_C8
  loc_11B8C74:     Set var_D4 = Me.CmdRoomSt
  loc_11B8C7A:     Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1), var_D8)
  loc_11B8C82:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_11B8CB0:     Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1), var_C8)
  loc_11B8CB8:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.CmdRoomSt)
  loc_11B8CE0:     If (CSng((CDbl() + CDbl(var_E8))) > Me.Frame1.Width) Then
  loc_11B8CEC:       Set var_B0 = Me.CmdRoomSt
  loc_11B8CF2:       Call 0.Method_Proc_243_14_11B8F300 (0)
  loc_11B8CFA:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C8)
  loc_11B8D15:       Set var_D4 = Me.CmdRoomSt
  loc_11B8D1B:       Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1), var_D8)
  loc_11B8D23:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11B8D3F:       Set var_D4 = Me.CmdRoomSt
  loc_11B8D45:       Call 0.Method_Proc_243_14_11B8F300 (0)
  loc_11B8D4D:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_D8)
  loc_11B8D5F:       Set var_B0 = Me.CmdRoomSt
  loc_11B8D65:       Call 0.Method_Proc_243_14_11B8F300 (0)
  loc_11B8D6D:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_11B8D80:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_11B8D92:       Set var_EC = Me.CmdRoomSt
  loc_11B8D98:       Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1), var_F0)
  loc_11B8DA0:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B8DC8:       Set var_B0 = Me.CmdRoomSt
  loc_11B8DCE:       Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1))
  loc_11B8DD6:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_11B8DEE:       Set var_D4 = Me.CmdRoomSt
  loc_11B8DF4:       Call 0.Method_Proc_243_14_11B8F300 (var_86, var_D8)
  loc_11B8DFC:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B8E12:     Else
  loc_11B8E1F:       Set var_D4 = Me.CmdRoomSt
  loc_11B8E25:       Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1))
  loc_11B8E2D:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_D8)
  loc_11B8E43:       Set var_B0 = Me.CmdRoomSt
  loc_11B8E49:       Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1))
  loc_11B8E51:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C8)
  loc_11B8E64:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_11B8E73:       Set var_EC = Me.CmdRoomSt
  loc_11B8E79:       Call 0.Method_Proc_243_14_11B8F300 (var_86, var_F0)
  loc_11B8E81:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11B8EA9:       Set var_B0 = Me.CmdRoomSt
  loc_11B8EAF:       Call 0.Method_Proc_243_14_11B8F300 ((var_86 - 1))
  loc_11B8EB7:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_11B8ECF:       Set var_D4 = Me.CmdRoomSt
  loc_11B8ED5:       Call 0.Method_Proc_243_14_11B8F300 (var_86, var_D8)
  loc_11B8EDD:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B8EF0:     End If
  loc_11B8EFE:     Set var_B0 = Me.CmdRoomSt
  loc_11B8F04:     Call 0.Method_Proc_243_14_11B8F300 (var_86, var_C8)
  loc_11B8F0C:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11B8F18:   End If
  loc_11B8F18:   GoTo loc_11B8BB6
  loc_11B8F1B: End If
  loc_11B8F21: If (var_86 > 0) Then
  loc_11B8F24: End If
  loc_11B8F29: Set var_8C = Nothing
  loc_11B8F2C: Exit Sub
End Sub

Public Sub Proc_243_15_119CFC8
  'Data Table: 4F16B0
  Dim var_86 As Integer
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_EC As Frame
  loc_119CBC6: var_86 = 0
  loc_119CBDF: unk_4F16B2.Execute "select Distinct roomocc.roomno as Name from roomocc Left join paycharge on paycharge.foliono=roomocc.foliono where roomocc.type='' and paycharge.bill_no>0 ORDER BY RoomOcc.RoomNo", var_AC, -1
  loc_119CBEA: Set var_8C = var_B0
  loc_119CC07: If (var_8C.RecordCount > 0) Then
  loc_119CC16:   Me.Frame3.Visible = True
  loc_119CC3D:   Set var_B0 = Me.LblPP
  loc_119CC43:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar("UnSettle Room: " & CStr(var_8C.RecordCount)))
  loc_119CC51:   ' Referenced from: 119CFB3
  loc_119CC51: End If
  loc_119CC60: If Not(var_8C.EOF) Then
  loc_119CC72:   var_B0 = var_8C.Fields
  loc_119CC7A:   var_C0 = var_B0.Item("Name")
  loc_119CC91:   Set var_C4 = Me.CmdPP
  loc_119CC97:   Call 0.Method_Proc_243_15_119CFC80 (var_86, var_C8, CVar(var_C0))
  loc_119CC9F:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_B0)
  loc_119CCB3:   var_8C.MoveNext
  loc_119CCBE:   var_86 = (var_86 + 1)
  loc_119CCD2:   If (var_8C.EOF = 0) Then
  loc_119CCDF:     Set var_B0 = Me.CmdPP
  loc_119CCE5:     Call 0.Method_Proc_243_15_119CFC80 (var_86, var_C0)
  loc_119CCF6:     Me.CmdPP.Load var_C0
  loc_119CD0F:     Set var_C4 = Me.CmdPP
  loc_119CD15:     Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1), var_C8)
  loc_119CD1D:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_119CD45:     Set var_B0 = Me.CmdPP
  loc_119CD4B:     Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1), var_C0)
  loc_119CD53:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_86)
  loc_119CD7B:     If (CSng((CDbl() + CDbl(var_E8))) > Me.Frame3.Width) Then
  loc_119CD87:       Set var_B0 = Me.CmdPP
  loc_119CD8D:       Call 0.Method_Proc_243_15_119CFC80 (0)
  loc_119CD95:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C0)
  loc_119CDB0:       Set var_C4 = Me.CmdPP
  loc_119CDB6:       Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1), var_C8)
  loc_119CDBE:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_119CDDA:       Set var_C4 = Me.CmdPP
  loc_119CDE0:       Call 0.Method_Proc_243_15_119CFC80 (0)
  loc_119CDE8:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_C8)
  loc_119CDFA:       Set var_B0 = Me.CmdPP
  loc_119CE00:       Call 0.Method_Proc_243_15_119CFC80 (0)
  loc_119CE08:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119CE1B:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119CE2D:       Set var_EC = Me.CmdPP
  loc_119CE33:       Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1), var_F0)
  loc_119CE3B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119CE63:       Set var_B0 = Me.CmdPP
  loc_119CE69:       Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1))
  loc_119CE71:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119CE89:       Set var_C4 = Me.CmdPP
  loc_119CE8F:       Call 0.Method_Proc_243_15_119CFC80 (var_86, var_C8)
  loc_119CE97:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119CEAD:     Else
  loc_119CEBA:       Set var_C4 = Me.CmdPP
  loc_119CEC0:       Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1))
  loc_119CEC8:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_C8)
  loc_119CEDE:       Set var_B0 = Me.CmdPP
  loc_119CEE4:       Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1))
  loc_119CEEC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C0)
  loc_119CEFF:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119CF0E:       Set var_EC = Me.CmdPP
  loc_119CF14:       Call 0.Method_Proc_243_15_119CFC80 (var_86, var_F0)
  loc_119CF1C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_119CF44:       Set var_B0 = Me.CmdPP
  loc_119CF4A:       Call 0.Method_Proc_243_15_119CFC80 ((var_86 - 1))
  loc_119CF52:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119CF6A:       Set var_C4 = Me.CmdPP
  loc_119CF70:       Call 0.Method_Proc_243_15_119CFC80 (var_86, var_C8)
  loc_119CF78:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119CF8B:     End If
  loc_119CF99:     Set var_B0 = Me.CmdPP
  loc_119CF9F:     Call 0.Method_Proc_243_15_119CFC80 (var_86, var_C0)
  loc_119CFA7:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_119CFB3:   End If
  loc_119CFB3:   GoTo loc_119CC51
  loc_119CFB6: End If
  loc_119CFBC: If (var_86 > 0) Then
  loc_119CFBF: End If
  loc_119CFC4: Set var_8C = Nothing
  loc_119CFC7: Exit Sub
End Sub

Public Sub Proc_243_16_1243A8C
  'Data Table: 4F16B0
  Dim var_BC As String
  Dim var_9C As Variant
  Dim var_CC As Variant
  Dim unk_4F16B2 As Connection15
  Dim var_8C As Recordset15
  Dim var_114 As Variant
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim var_120 As Field20
  Dim var_124 As Fields15
  Dim var_128 As Field20
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_150 As Field20
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  loc_1243596: var_BC = "select venueocc.FromTime as PTime,HallBook.PartyName as PName,FunctionType.name as FName,Venuemast.name as VName from venueocc Inner Join HallBook  on HallBook.Docid=Venueocc.FPDocid Left Join FunctionType on Functiontype.code=Hallbook.Func_name Left Join venuemast on Venuemast.code=VenueOCC.venucode where (Venueocc.fromDate= "
  loc_12435A6: Proc_6_7_F26918(var_AC, MemVar_1F950EC, var_BC, var_110)
  loc_12435AE: var_CC = -1 & var_AC 
  loc_12435C5: unk_4F16B2.Execute CStr(var_CC & ") "), var_114, 0
  loc_12435D0: Set var_8C = var_114
  loc_12435F8: If (var_8C.RecordCount > 0) Then
  loc_1243607:   Me.Frame4.Visible = True
  loc_124362E:   Set var_114 = Me.LblBnq
  loc_1243634:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar("Events : " & CStr(var_8C.RecordCount)))
  loc_1243642: End If
  loc_1243644: var_86 = 0
  loc_1243647: ' Referenced from: 1243A77
  loc_1243656: If Not(var_8C.EOF) Then
  loc_1243673:   var_120 = var_8C.Fields.Item("FName")
  loc_1243688:   var_CC = (var_120.Value + ", ")
  loc_12436A6:   var_128 = var_8C.Fields.Item("vname")
  loc_12436B6:   var_110 = (var_CC + var_128.Value)
  loc_12436BF:   var_138 = (var_110 + ", ")
  loc_12436DD:   var_150 = var_8C.Fields.Item("pName")
  loc_12436ED:   var_170 = (var_138 + var_150.Value)
  loc_12436F6:   var_190 = (var_170 + ", ")
  loc_1243724:   var_1C8 = (var_190 + var_8C.Fields.Item("Ptime").Value)
  loc_1243733:   Set var_1CC = Me.CmdPT
  loc_1243739:   Call 0.Method_Proc_243_16_1243A8C0 (var_86, var_1D0)
  loc_1243741:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_1C8)
  loc_1243777:   var_8C.MoveNext
  loc_1243782:   var_86 = (var_86 + 1)
  loc_1243796:   If (var_8C.EOF = 0) Then
  loc_12437A3:     Set var_114 = Me.CmdPT
  loc_12437A9:     Call 0.Method_Proc_243_16_1243A8C0 (var_86, var_120)
  loc_12437BA:     Me.CmdPT.Load var_120
  loc_12437D3:     Set var_124 = Me.CmdPT
  loc_12437D9:     Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1), var_128)
  loc_12437E1:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_1243809:     Set var_114 = Me.CmdPT
  loc_124380F:     Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1), var_120)
  loc_1243817:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_86)
  loc_124383F:     If (CSng((CDbl() + CDbl(var_CC))) > Me.Frame4.Width) Then
  loc_124384B:       Set var_114 = Me.CmdPT
  loc_1243851:       Call 0.Method_Proc_243_16_1243A8C0 (0)
  loc_1243859:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_120)
  loc_1243874:       Set var_124 = Me.CmdPT
  loc_124387A:       Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1), var_128)
  loc_1243882:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_124389E:       Set var_124 = Me.CmdPT
  loc_12438A4:       Call 0.Method_Proc_243_16_1243A8C0 (0)
  loc_12438AC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_128)
  loc_12438BE:       Set var_114 = Me.CmdPT
  loc_12438C4:       Call 0.Method_Proc_243_16_1243A8C0 (0)
  loc_12438CC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_12438DF:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_12438F1:       Set var_13C = Me.CmdPT
  loc_12438F7:       Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1), var_150)
  loc_12438FF:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_1243927:       Set var_114 = Me.CmdPT
  loc_124392D:       Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1))
  loc_1243935:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_124394D:       Set var_124 = Me.CmdPT
  loc_1243953:       Call 0.Method_Proc_243_16_1243A8C0 (var_86, var_128)
  loc_124395B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_1243971:     Else
  loc_124397E:       Set var_124 = Me.CmdPT
  loc_1243984:       Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1))
  loc_124398C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_128)
  loc_12439A2:       Set var_114 = Me.CmdPT
  loc_12439A8:       Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1))
  loc_12439B0:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_120)
  loc_12439C3:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_12439D2:       Set var_13C = Me.CmdPT
  loc_12439D8:       Call 0.Method_Proc_243_16_1243A8C0 (var_86, var_150)
  loc_12439E0:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_1243A08:       Set var_114 = Me.CmdPT
  loc_1243A0E:       Call 0.Method_Proc_243_16_1243A8C0 ((var_86 - 1))
  loc_1243A16:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_1243A2E:       Set var_124 = Me.CmdPT
  loc_1243A34:       Call 0.Method_Proc_243_16_1243A8C0 (var_86, var_128)
  loc_1243A3C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_1243A4F:     End If
  loc_1243A5D:     Set var_114 = Me.CmdPT
  loc_1243A63:     Call 0.Method_Proc_243_16_1243A8C0 (var_86, var_120)
  loc_1243A6B:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1243A77:   End If
  loc_1243A77:   GoTo loc_1243647
  loc_1243A7A: End If
  loc_1243A80: If (var_86 > 0) Then
  loc_1243A83: End If
  loc_1243A88: Set var_8C = Nothing
  loc_1243A8B: Exit Sub
End Sub
