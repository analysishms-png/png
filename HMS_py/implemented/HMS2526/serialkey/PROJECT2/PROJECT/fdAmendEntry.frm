VERSION 5.00
Begin VB.Form fdAmendEntry
  Caption = "Amend Stay"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdAmendEntry.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 150
  ClientTop = 765
  ClientWidth = 10140
  ClientHeight = 8250
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7800
    Width = 10140
    Height = 450
    Visible = 0   'False
    TabIndex = 35
  End
  Begin PictureBox Picture2
    Picture = "fdAmendEntry.frx":442
    Left = 7065
    Top = 8325
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 31
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 2025
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 5400
    Width = 1680
    Height = 255
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 2340
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 11
    Locked = -1  'True
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3855
    Top = 3270
    Width = 3480
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3855
    Top = 3585
    Width = 3480
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Locked = -1  'True
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
    ForeColor = &HC00000&
    Left = 3855
    Top = 3900
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6240
    Top = 2340
    Width = 435
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5790
    Top = 2340
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7455
    Top = 5400
    Width = 420
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7005
    Top = 5400
    Width = 420
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 1710
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5790
    Top = 2655
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6240
    Top = 2655
    Width = 435
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 2655
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin DataGrid DGRoomNo
    Left = 8745
    Top = 6630
    Width = 2610
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin MSFlexGrid FGPoint
    Left = 11595
    Top = 6705
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 30
  End
  Begin BtnEnh BtnEnh1
    Left = 2250
    Top = 6135
    Width = 1350
    Height = 1050
    TabIndex = 32
  End
  Begin BtnEnh CmdExit
    Left = 6465
    Top = 6135
    Width = 1275
    Height = 1050
    TabIndex = 34
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 33
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
  Begin Label LblDepDay
    Caption = "."
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 7950
    Top = 5400
    Width = 1170
    Height = 240
    TabIndex = 28
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
  End
  Begin Label Label1
    Caption = "Ctrl+S To Save , Esc To Exit"
    Index = 2
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 1260
    Top = 7725
    Width = 7920
    Height = 375
    Visible = 0   'False
    TabIndex = 27
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
  Begin Label Label1
    Caption = "Amend Departure Details"
    Index = 1
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 1260
    Top = 4710
    Width = 7920
    Height = 375
    TabIndex = 26
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
  Begin Label Lbl
    Caption = "Room No"
    Index = 34
    ForeColor = &HC00000&
    Left = 2130
    Top = 2070
    Width = 870
    Height = 285
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
  Begin Label Lbl
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 2115
    Top = 2370
    Width = 1320
    Height = 285
    TabIndex = 24
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
  Begin Label Lbl
    Caption = "Departure Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1440
    Top = 5400
    Width = 1440
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
  Begin Label LblCheckInDay
    Caption = "."
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 6765
    Top = 2340
    Width = 1020
    Height = 285
    TabIndex = 22
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
  End
  Begin Label Lbl
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 2130
    Top = 3330
    Width = 1155
    Height = 240
    TabIndex = 21
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
  Begin Label Lbl
    Caption = "Company Name"
    Index = 3
    ForeColor = &HC00000&
    Left = 2130
    Top = 3645
    Width = 1515
    Height = 240
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "Guest Status"
    Index = 1
    ForeColor = &HC00000&
    Left = 2130
    Top = 3945
    Width = 1185
    Height = 285
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
  Begin Label Lbl
    Caption = "DepartureTime"
    Index = 4
    ForeColor = &HC00000&
    Left = 5475
    Top = 5400
    Width = 1425
    Height = 240
    TabIndex = 18
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
  Begin Label Lbl
    Caption = "Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 2130
    Top = 1740
    Width = 795
    Height = 285
    TabIndex = 17
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
  Begin Label Lbl
    Caption = "Departure Date"
    Index = 8
    ForeColor = &HC00000&
    Left = 2130
    Top = 2715
    Width = 1440
    Height = 285
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
  Begin Label lblolddepday
    Caption = "."
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 6765
    Top = 2655
    Width = 1020
    Height = 285
    TabIndex = 15
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
  End
  Begin Label Label1
    Caption = "Guest Details"
    Index = 0
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 1035
    Top = 1140
    Width = 7995
    Height = 375
    TabIndex = 0
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

Attribute VB_Name = "fdAmendEntry"

Private MasterFormExit As Integer
Private global_80 As Long

Private Sub BtnEnh1_UnknownEvent_9 '152ED80
  'Data Table: 46F99C
  Dim var_98 As TextBox
  Dim var_178 As TextBox
  Dim var_194 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_20C As Variant
  Dim var_1A4 As Variant
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim unk_46F9AB As Connection15
  Dim var_17C As String
  Dim var_218 As String
  Dim var_128 As TextBox
  Dim var_140 As TextBox
  Dim var_310 As Variant
  Dim var_368 As Variant
  Dim var_23C As String
  Dim var_240 As String
  Dim var_3C8 As Variant
  Dim var_184 As TextBox
  Dim var_1DC As TextBox
  Dim var_278 As Variant
  Dim var_358 As Variant
  Dim var_214 As Double
  Dim var_A0 As String
  Dim Me As Recordset15
  loc_152DEF4: On Error Goto loc_152ED2E
  loc_152DEFB: var_86 = CByte(0) 'Byte
  loc_152DF0A: Set var_94 = Me.Txt
  loc_152DF10: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0))
  loc_152DF18: var_A0 = "Room No"
  loc_152DF39: If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_152DF43:   Call Txt_GotFocus()
  loc_152DF48:   Exit Sub
  loc_152DF49: End If
  loc_152DF57: Set var_94 = Me.Txt
  loc_152DF5D: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_98, var_A0)
  loc_152DF65: CInt(0) = var_98.Text
  loc_152DF7D: If (CDate(var_A0) < MemVar_1F950EC) Then
  loc_152DF99:   MsgBox("Departure Date Can't be Less than Current Date", &H40, var_E4, var_104, var_124)
  loc_152DFA9:   Exit Sub
  loc_152DFAA: End If
  loc_152DFB8: Set var_94 = Me.Txt
  loc_152DFBE: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_98)
  loc_152DFDF: If (CDate(var_98.Text) < CDate(CDbl(1))) Then
  loc_152DFFB:   MsgBox("Departure Date Can't be Less than Check in Date", &H40, var_E4, var_104, var_124)
  loc_152E00B:   Exit Sub
  loc_152E00C: End If
  loc_152E01A: Set var_174 = Me.Txt
  loc_152E020: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_178)
  loc_152E038: Set var_180 = Me.Txt
  loc_152E03E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_184)
  loc_152E05D: Set var_1D8 = Me.Txt
  loc_152E063: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_1DC)
  loc_152E085: Set var_94 = Me.Txt
  loc_152E08B: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_98)
  loc_152E09F: var_104 = CVar(var_98.Text & " ") 'String
  loc_152E0AD: Set var_9C = Me.Txt
  loc_152E0B3: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_128)
  loc_152E0C2: var_E4 = Trim(CVar(var_128))
  loc_152E0CA: var_124 = (var_104 + var_E4)
  loc_152E0D3: var_138 = (var_124 + ":")
  loc_152E0E2: Set var_13C = Me.Txt
  loc_152E0E8: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(3), var_140)
  loc_152E0FF: var_170 = (var_138 + Trim(CVar(var_140)))
  loc_152E112: var_1C4 = (CVar(var_178.Text & " ") + Trim(CVar(var_184)))
  loc_152E11B: var_1D4 = (var_1C4 + ":")
  loc_152E122: var_20C = (var_1D4 + Trim(CVar(var_1DC)))
  loc_152E16A: If (CDate(var_170) >= CDate(var_20C)) Then
  loc_152E186:   MsgBox("Check New Departure Date and Time", &H40, var_E4, var_104, var_124)
  loc_152E196:   Exit Sub
  loc_152E197: End If
  loc_152E1A5: Set var_94 = Me.Txt
  loc_152E1AB: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_98)
  loc_152E1B3: var_A0 = var_98.Text
  loc_152E1C3: Set var_9C = Me.Txt
  loc_152E1C9: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_128)
  loc_152E1E8: Set var_13C = Me.Txt
  loc_152E1EE: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(3), var_140)
  loc_152E210: Set var_174 = Me.Txt
  loc_152E216: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_178)
  loc_152E22E: Set var_180 = Me.Txt
  loc_152E234: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_184)
  loc_152E250: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152E25F: Set var_1D8 = Me.Txt
  loc_152E265: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_1DC)
  loc_152E27C: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152E296: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152E29D: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152E2AF: Proc_6_122_14E8498(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152E2B5: var_8E = CInt(CStr(var_1C4))
  loc_152E2FF: Set var_94 = Me.Txt
  loc_152E305: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_98, var_A0)
  loc_152E31D: Set var_9C = Me.Txt
  loc_152E323: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_128)
  loc_152E348: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(3), var_140)
  loc_152E36A: Set var_174 = Me.Txt
  loc_152E370: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HD), var_178)
  loc_152E388: Set var_180 = Me.Txt
  loc_152E38E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HB), var_184)
  loc_152E3AA: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152E3B9: Set var_1D8 = Me.Txt
  loc_152E3BF: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HC), var_1DC)
  loc_152E3D6: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152E3F0: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152E3F7: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152E409: Proc_6_122_14E8498(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152E40F: var_90 = CInt(CStr(var_1C4))
  loc_152E454: unk_46F9AB.BeginTrans var_228
  loc_152E45D: var_86 = CByte(1) 'Byte
  loc_152E466: var_218 = 0
  loc_152E47A: Set var_94 = Me.Txt
  loc_152E480: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98, var_A0)
  loc_152E488: var_218 = var_98.Tag
  loc_152E496: var_E4 = Trim(CVar(var_A0))
  loc_152E4A3: Proc_96_84_FFE61C(CStr(var_E4), var_90)
  loc_152E4DB: Set var_94 = Me.Txt
  loc_152E4E1: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98, var_A0, "Delete From GuestFolioAmend Where FOlioNO=")
  loc_152E4E9: var_170 = var_98.Text
  loc_152E4F2: var_17C = -1 & var_A0
  loc_152E507: Set var_9C = Me.Txt
  loc_152E50D: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HD), var_128, CVar(var_178.Text & " and OldDepDate="))
  loc_152E51C: Proc_6_7_F26918(var_E4, CVar(var_128))
  loc_152E54E: unk_46F9AB.Execute CStr(Me.Txt & var_E4 & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_98, 
  loc_152E588: Set var_94 = Me.Txt
  loc_152E58E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98)
  loc_152E596: var_A0 = var_98.Text
  loc_152E5A9: Set var_9C = Me.Txt
  loc_152E5AF: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(7), var_128)
  loc_152E5D0: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_140)
  loc_152E5E8: Set var_174 = Me.Txt
  loc_152E5EE: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HD))
  loc_152E5FD: Proc_6_7_F26918(var_E4, CVar(var_178))
  loc_152E60D: Set var_180 = Me.Txt
  loc_152E613: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HB), var_184)
  loc_152E623: Set var_1D8 = Me.Txt
  loc_152E629: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HC), var_1DC)
  loc_152E65A: var_194 = (Format(CVar(var_184), "00") + ":")
  loc_152E676: var_1A4 = CVar(var_1DC) 'Address
  loc_152E685: var_1D4 = (1 + Format(var_1A4, "00"))
  loc_152E69C: Set var_254 = Me.Txt
  loc_152E6A2: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_258, 1, CVar(var_184))
  loc_152E6B1: Proc_6_7_F26918(var_278, CVar(var_258), 1)
  loc_152E6C1: Set var_2AC = Me.Txt
  loc_152E6C7: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_2B0)
  loc_152E6D7: Set var_314 = Me.Txt
  loc_152E6DD: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_318)
  loc_152E70E: var_310 = (Format(CVar(var_2B0), "00") + ":")
  loc_152E739: var_368 = (1 + Format(CVar(var_318), "00"))
  loc_152E753: Proc_6_7_F26918(var_408, Date, 1, var_310)
  loc_152E76C: var_17C = "Insert into GuestFolioAmend (FolioNo,Site_Code,GuestProf,RoomNo,OldDepDate,OldDepTime,DepDate,DepTime,U_Name,U_EntDt,U_AE,LogSite_Code) values(" & var_A0
  loc_152E773: var_218 = var_17C & ",'"
  loc_152E78F: var_23C = var_218 & MemVar_1F95070 & "','" & var_128.Tag & "','"
  loc_152E7E6: var_3C8 = CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(var_1D4) & "'," & var_278 & ",'" & Trim(var_368) & "','" & CVar(MemVar_1F950C8) 
  loc_152E820: unk_46F9AB.Execute CStr(var_3C8 & "'," & var_408 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_49C, -1
  loc_152E8CB: Set var_94 = Me.Txt
  loc_152E8D1: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_98, "Update GuestFolio Set DepDate=", var_1A4, -1, Me.Txt)
  loc_152E8E0: Proc_6_7_F26918(var_E4, CVar(var_98), var_4A0, 1)
  loc_152E8F1: var_124 = 1 & var_E4 & " where Docid='" 
  loc_152E903: Set var_9C = Me.Txt
  loc_152E909: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_128, var_A0)
  loc_152E911: var_124 = var_128.Tag
  loc_152E91C: var_150 = 1 & CVar(var_A0) 
  loc_152E93C: var_17C = CStr(var_150 & "' and Site_Code='" & CVar(MemVar_1F95070) & "'")
  loc_152E946: unk_46F9AB.Execute var_17C, var_178, 
  loc_152E97B: Set var_94 = Me.Txt
  loc_152E981: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4))
  loc_152E990: Proc_6_7_F26918(var_E4, CVar(var_98))
  loc_152E99A: var_138 = CVar(Proc_6_15_EF37AC(var_98)) 'String
  loc_152E9A0: Proc_6_7_F26918(var_150)
  loc_152E9B0: Set var_9C = Me.Txt
  loc_152E9B6: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_128)
  loc_152E9C6: Set var_13C = Me.Txt
  loc_152E9CC: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_140)
  loc_152E9FD: var_1C4 = (Format(CVar(var_128), "00") + ":")
  loc_152EA28: var_20C = (1 + Format(CVar(var_140), "00"))
  loc_152EA48: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_178, var_A0, 1)
  loc_152EA50: var_1C4 = var_178.Tag
  loc_152EA63: Set var_180 = Me.Txt
  loc_152EA69: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_184, var_17C)
  loc_152EA71: 1 = var_184.Text
  loc_152EA84: Set var_1D8 = Me.Txt
  loc_152EA8A: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_1DC, var_218)
  loc_152EA92: 1 = var_1DC.Tag
  loc_152EABA: var_104 = "Update RoomOcc set DepDate=" & var_E4 
  loc_152EAC3: var_124 = var_104 & ",U_EntDt=" 
  loc_152EADA: var_278 = var_124 & var_150 & ",U_AE='E',DepTime='" & Trim(CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(CVar(var_140)) & "',") 
  loc_152EB1C: var_358 = var_278 & "' where Docid='" & CVar(var_A0) & "' and Site_Code='" & CVar(MemVar_1F95070) & "' and RoomNO='" & CVar(var_17C) & "' and DocId='" 
  loc_152EB3D: unk_46F9AB.Execute CStr(var_358 & CVar(Proc_6_38_E69628(CVar(var_218))) & "'"), var_3C8, -1
  loc_152EBB1: Set var_94 = Me.Txt
  loc_152EBB7: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98, var_218)
  loc_152EBBF: var_254 = var_98.Text
  loc_152EBCC: var_214 = Val(var_218)
  loc_152EBDD: Set var_9C = Me.Txt
  loc_152EBE3: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_128, var_23C)
  loc_152EBFE: Set var_13C = Me.Txt
  loc_152EC04: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_140)
  loc_152EC34: var_A0 = CStr(var_98.Text)
  loc_152EC60: var_240 = "Update PlanDetails Set NoofDays=" & var_A0 & " Where FolioNO=" & CStr(var_128.Text) & " and Site_Code='" & MemVar_1F95070 & "' and RoomNO='"
  loc_152EC94: unk_46F9AB.Execute var_240 & var_23C & "' and DocId='" & Proc_6_38_E69628(CVar(var_140.Tag)) & "' and noofDays=" & CStr(var_90), var_E4, -1
  loc_152ECDE: unk_46F9AB.CommitTrans
  loc_152ECE8: Set var_8C = Nothing
  loc_152ECEF: var_86 = CByte(0) 'Byte
  loc_152ECF3: Call Proc_58_32_E9C228(Me.Txt)
  loc_152ED03: Me.Requery -1
  loc_152ED13: Set var_94 = Me.Txt
  loc_152ED19: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_98)
  loc_152ED21: var_98.SetFocus
  loc_152ED2D: Exit Sub
  loc_152ED2E: ' Referenced from: 152DEF4
  loc_152ED37: If (CInt(var_86) = 1) Then
  loc_152ED40:   unk_46F9AB.RollbackTrans
  loc_152ED45: End If
  loc_152ED4D: Set var_94 = Err()
  loc_152ED53: Call 0.Method_arg_2C (var_A0)
  loc_152ED6C: MsgBox(CVar(var_A0), &H10, var_E4, var_104, var_124)
  loc_152ED7F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C240
  'Data Table: 46F99C
  Dim arg_24FF As Double
  loc_E1C235: Me.Global.Unload Me
  loc_E1C23D: Exit Sub
  loc_E1C23E: arg_24FF = 
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3CA24
  'Data Table: 46F99C
  loc_E3CA18: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E3CA1B:   Call DGRoomNo_UnknownEvent_9()
  loc_E3CA20: End If
  loc_E3CA20: Exit Sub
End Sub

Private Sub Form_Load() 'FCC764
  'Data Table: 46F99C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C0 As DataGrid
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim Me As Recordset15
  loc_FCC5C0: On Error Goto loc_FCC75C
  loc_FCC5CB: Call 0.Method_arg_7C (CDbl(1450))
  loc_FCC5D8: Call 0.Method_arg_74 (CDbl(1625))
  loc_FCC5E5: Call 0.Method_MeC (CDbl(9200))
  loc_FCC5F2: Call 0.Method_Me4 (CDbl(17000))
  loc_FCC5FE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FCC611: Set var_88 = Me.Txt
  loc_FCC617: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_FCC636: Me.DGRoomNo.Left = CVar(var_8C.Left)
  loc_FCC652: Set var_B4 = Me.Txt
  loc_FCC658: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_FCC673: Set var_88 = Me.Txt
  loc_FCC679: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_FCC691: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_FCC69A: Set var_C0 = Me.DGRoomNo
  loc_FCC6A0: var_C0.Top = CVar(var_8C.Left)
  loc_FCC6BC: Set global_76 = New 
  loc_FCC6CE: Me.var_C0.CursorLocation = 3
  loc_FCC6F1: var_C4 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo,GuestFolio.DocId " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS "
  loc_FCC714: var_E4 = CVar(var_C4 & " WHERE RoomMast.LogSite_Code='" & MemVar_1F95078 & "' and RoomOcc.LogSite_Code='" & MemVar_1F95078 & "' and Roommast.type='RO' and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomMast.Code,ROOMOCC.CHKOUTDATE DESC") 'String
  loc_FCC71E: Me.Open var_E4, CVar(MemVar_1F95044), 2
  loc_FCC73C: CVarUnk
  loc_FCC741: VerifyVarObj
  loc_FCC747: Set var_88 = Me.DGRoomNo
  loc_FCC74D: LateIdStAd
  loc_FCC75B: Exit Sub
  loc_FCC75C: ' Referenced from: FCC5C0
  loc_FCC75C: Proc_6_60_E63754(var_88, global_76)
  loc_FCC761: Exit Sub
  loc_FCC762: Set arg_2400 = 3
End Sub

Private Sub Form_Resize() 'E73B70
  'Data Table: 46F99C
  loc_E73B1A: Call 0.Method_arg_50 (var_88)
  loc_E73B2C: Me.LblFormCaption.Caption = var_88
  loc_E73B45: Me.LblFormCaption.Left = CDbl(0)
  loc_E73B53: Call 0.Method_arg_100 (var_90)
  loc_E73B65: Me.LblFormCaption.Width = var_90
  loc_E73B6D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E46038
  'Data Table: 46F99C
  loc_E46013: Set global_76 = Nothing
  loc_E46025: Set global_72 = Nothing
  loc_E46031: MasterFormExit = 0
  loc_E46034: Exit Sub
  loc_E46035: CExtInstUnk
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5C0DC
  'Data Table: 46F99C
  loc_E5C0A4: Set var_88 = Me.TopCtrl1
  loc_E5C0AA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5C0CD: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5C0D5:   Call Form_Unload(&HFF)
  loc_E5C0DA: End If
  loc_E5C0DA: Exit Sub
End Sub

Private Sub Form_Activate() 'E85FC0
  'Data Table: 46F99C
  Dim var_A4 As TextBox
  loc_E85F58: On Error Goto loc_E85FBA
  loc_E85F5F: Set var_8C = Me.TopCtrl1
  loc_E85F65: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E85F7A: If (CLng(CInt()) = &H2D) Then
  loc_E85F7D: End If
  loc_E85F91: If (fdAmendEntry.OpenMode = 1) Then
  loc_E85F9F:   Set var_8C = Me.Txt
  loc_E85FA5:   Call 0.Method_Form_Activate0 (CInt(4))
  loc_E85FAD:   var_A4.SetFocus
  loc_E85FB9: End If
  loc_E85FB9: Exit Sub
  loc_E85FBA: ' Referenced from: E85F58
  loc_E85FBA: Proc_6_60_E63754(var_A4)
  loc_E85FBF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E262E4
  'Data Table: 46F99C
  loc_E262C9: If (MasterFormExit = &HFF) Then
  loc_E262D9:   Me.Global.Unload Me
  loc_E262E1: End If
  loc_E262E1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E617C8
  'Data Table: 46F99C
  loc_E6177C: On Error Goto loc_E617BF
  loc_E61789: If (CLng(KeyCode) = &H1B) Then
  loc_E61799:   Me.Global.Unload Me
  loc_E617A1:   Exit Sub
  loc_E617A2: End If
  loc_E617B6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E617BE: Exit Sub
  loc_E617BF: ' Referenced from: E6177C
  loc_E617BF: Proc_6_60_E63754(Shift)
  loc_E617C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C28C
  'Data Table: 46F99C
  Dim arg_24FF As Double
  loc_E1C281: Me.Global.Unload Me
  loc_E1C289: Exit Sub
  loc_E1C28A: arg_24FF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E1C8
  'Data Table: 46F99C
  loc_E3E1B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E1C0: Call Proc_58_34_10FB934(global_72)
  loc_E3E1C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3E108
  'Data Table: 46F99C
  loc_E3E0F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E100: Call Proc_58_34_10FB934(global_72)
  loc_E3E105: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C4E8
  'Data Table: 46F99C
  loc_E3C4D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C4E0: Call Proc_58_34_10FB934(global_72)
  loc_E3C4E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C0C8
  'Data Table: 46F99C
  loc_E3C0B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C0C0: Call Proc_58_34_10FB934(global_72)
  loc_E3C0C5: Exit Sub
  loc_E3C0C6: Assert
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '152DD88
  'Data Table: 46F99C
  Dim var_98 As TextBox
  Dim var_178 As TextBox
  Dim var_194 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_20C As Variant
  Dim var_1A4 As Variant
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim unk_46F9AB As Connection15
  Dim var_17C As String
  Dim var_218 As String
  Dim var_128 As TextBox
  Dim var_140 As TextBox
  Dim var_310 As Variant
  Dim var_368 As Variant
  Dim var_23C As String
  Dim var_240 As String
  Dim var_3C8 As Variant
  Dim var_184 As TextBox
  Dim var_1DC As TextBox
  Dim var_278 As Variant
  Dim var_358 As Variant
  Dim var_214 As Double
  Dim var_A0 As String
  Dim Me As Recordset15
  loc_152CEFC: On Error Goto loc_152DD36
  loc_152CF03: var_86 = CByte(0) 'Byte
  loc_152CF12: Set var_94 = Me.Txt
  loc_152CF18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_152CF20: var_A0 = "Room No"
  loc_152CF41: If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_152CF4B:   Call Txt_GotFocus()
  loc_152CF50:   Exit Sub
  loc_152CF51: End If
  loc_152CF5F: Set var_94 = Me.Txt
  loc_152CF65: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98, var_A0)
  loc_152CF6D: CInt(0) = var_98.Text
  loc_152CF85: If (CDate(var_A0) < MemVar_1F950EC) Then
  loc_152CFA1:   MsgBox("Departure Date Can't be Less than Current Date", &H40, var_E4, var_104, var_124)
  loc_152CFB1:   Exit Sub
  loc_152CFB2: End If
  loc_152CFC0: Set var_94 = Me.Txt
  loc_152CFC6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_152CFE7: If (CDate(var_98.Text) < CDate(CDbl(1))) Then
  loc_152D003:   MsgBox("Departure Date Can't be Less than Check in Date", &H40, var_E4, var_104, var_124)
  loc_152D013:   Exit Sub
  loc_152D014: End If
  loc_152D022: Set var_174 = Me.Txt
  loc_152D028: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_178)
  loc_152D040: Set var_180 = Me.Txt
  loc_152D046: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_184)
  loc_152D065: Set var_1D8 = Me.Txt
  loc_152D06B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1DC)
  loc_152D08D: Set var_94 = Me.Txt
  loc_152D093: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_152D0A7: var_104 = CVar(var_98.Text & " ") 'String
  loc_152D0B5: Set var_9C = Me.Txt
  loc_152D0BB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_152D0CA: var_E4 = Trim(CVar(var_128))
  loc_152D0D2: var_124 = (var_104 + var_E4)
  loc_152D0DB: var_138 = (var_124 + ":")
  loc_152D0EA: Set var_13C = Me.Txt
  loc_152D0F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_152D107: var_170 = (var_138 + Trim(CVar(var_140)))
  loc_152D11A: var_1C4 = (CVar(var_178.Text & " ") + Trim(CVar(var_184)))
  loc_152D123: var_1D4 = (var_1C4 + ":")
  loc_152D12A: var_20C = (var_1D4 + Trim(CVar(var_1DC)))
  loc_152D172: If (CDate(var_170) >= CDate(var_20C)) Then
  loc_152D18E:   MsgBox("Check New Departure Date and Time", &H40, var_E4, var_104, var_124)
  loc_152D19E:   Exit Sub
  loc_152D19F: End If
  loc_152D1AD: Set var_94 = Me.Txt
  loc_152D1B3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_152D1BB: var_A0 = var_98.Text
  loc_152D1CB: Set var_9C = Me.Txt
  loc_152D1D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_152D1F0: Set var_13C = Me.Txt
  loc_152D1F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_152D218: Set var_174 = Me.Txt
  loc_152D21E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_178)
  loc_152D236: Set var_180 = Me.Txt
  loc_152D23C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_184)
  loc_152D258: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152D267: Set var_1D8 = Me.Txt
  loc_152D26D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1DC)
  loc_152D284: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152D29E: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152D2A5: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152D2B7: Proc_6_122_14E8498(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152D2BD: var_8E = CInt(CStr(var_1C4))
  loc_152D307: Set var_94 = Me.Txt
  loc_152D30D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0)
  loc_152D325: Set var_9C = Me.Txt
  loc_152D32B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_152D350: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_152D372: Set var_174 = Me.Txt
  loc_152D378: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_178)
  loc_152D390: Set var_180 = Me.Txt
  loc_152D396: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_184)
  loc_152D3B2: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152D3C1: Set var_1D8 = Me.Txt
  loc_152D3C7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_1DC)
  loc_152D3DE: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152D3F8: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152D3FF: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152D411: Proc_6_122_14E8498(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152D417: var_90 = CInt(CStr(var_1C4))
  loc_152D45C: unk_46F9AB.BeginTrans var_228
  loc_152D465: var_86 = CByte(1) 'Byte
  loc_152D46E: var_218 = 0
  loc_152D482: Set var_94 = Me.Txt
  loc_152D488: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, var_A0)
  loc_152D490: var_218 = var_98.Tag
  loc_152D49E: var_E4 = Trim(CVar(var_A0))
  loc_152D4AB: Proc_96_84_FFE61C(CStr(var_E4), var_90)
  loc_152D4E3: Set var_94 = Me.Txt
  loc_152D4E9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, var_A0, "Delete From GuestFolioAmend Where FOlioNO=")
  loc_152D4F1: var_170 = var_98.Text
  loc_152D4FA: var_17C = -1 & var_A0
  loc_152D50F: Set var_9C = Me.Txt
  loc_152D515: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_128, CVar(var_178.Text & " and OldDepDate="))
  loc_152D524: Proc_6_7_F26918(var_E4, CVar(var_128))
  loc_152D556: unk_46F9AB.Execute CStr(Me.Txt & var_E4 & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_98, 
  loc_152D590: Set var_94 = Me.Txt
  loc_152D596: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_152D59E: var_A0 = var_98.Text
  loc_152D5B1: Set var_9C = Me.Txt
  loc_152D5B7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_128)
  loc_152D5D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_140)
  loc_152D5F0: Set var_174 = Me.Txt
  loc_152D5F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_152D605: Proc_6_7_F26918(var_E4, CVar(var_178))
  loc_152D615: Set var_180 = Me.Txt
  loc_152D61B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_184)
  loc_152D62B: Set var_1D8 = Me.Txt
  loc_152D631: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_1DC)
  loc_152D662: var_194 = (Format(CVar(var_184), "00") + ":")
  loc_152D67E: var_1A4 = CVar(var_1DC) 'Address
  loc_152D68D: var_1D4 = (1 + Format(var_1A4, "00"))
  loc_152D6A4: Set var_254 = Me.Txt
  loc_152D6AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_258, 1, CVar(var_184))
  loc_152D6B9: Proc_6_7_F26918(var_278, CVar(var_258), 1)
  loc_152D6C9: Set var_2AC = Me.Txt
  loc_152D6CF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2B0)
  loc_152D6DF: Set var_314 = Me.Txt
  loc_152D6E5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_318)
  loc_152D716: var_310 = (Format(CVar(var_2B0), "00") + ":")
  loc_152D741: var_368 = (1 + Format(CVar(var_318), "00"))
  loc_152D75B: Proc_6_7_F26918(var_408, Date, 1, var_310)
  loc_152D774: var_17C = "Insert into GuestFolioAmend (FolioNo,Site_Code,GuestProf,RoomNo,OldDepDate,OldDepTime,DepDate,DepTime,U_Name,U_EntDt,U_AE,LogSite_Code) values(" & var_A0
  loc_152D77B: var_218 = var_17C & ",'"
  loc_152D797: var_23C = var_218 & MemVar_1F95070 & "','" & var_128.Tag & "','"
  loc_152D7EE: var_3C8 = CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(var_1D4) & "'," & var_278 & ",'" & Trim(var_368) & "','" & CVar(MemVar_1F950C8) 
  loc_152D828: unk_46F9AB.Execute CStr(var_3C8 & "'," & var_408 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_49C, -1
  loc_152D8D3: Set var_94 = Me.Txt
  loc_152D8D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98, "Update GuestFolio Set DepDate=", var_1A4, -1, Me.Txt)
  loc_152D8E8: Proc_6_7_F26918(var_E4, CVar(var_98), var_4A0, 1)
  loc_152D8F9: var_124 = 1 & var_E4 & " where Docid='" 
  loc_152D90B: Set var_9C = Me.Txt
  loc_152D911: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_128, var_A0)
  loc_152D919: var_124 = var_128.Tag
  loc_152D924: var_150 = 1 & CVar(var_A0) 
  loc_152D944: var_17C = CStr(var_150 & "' and Site_Code='" & CVar(MemVar_1F95070) & "'")
  loc_152D94E: unk_46F9AB.Execute var_17C, var_178, 
  loc_152D983: Set var_94 = Me.Txt
  loc_152D989: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4))
  loc_152D998: Proc_6_7_F26918(var_E4, CVar(var_98))
  loc_152D9A2: var_138 = CVar(Proc_6_15_EF37AC(var_98)) 'String
  loc_152D9A8: Proc_6_7_F26918(var_150)
  loc_152D9B8: Set var_9C = Me.Txt
  loc_152D9BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_128)
  loc_152D9CE: Set var_13C = Me.Txt
  loc_152D9D4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_140)
  loc_152DA05: var_1C4 = (Format(CVar(var_128), "00") + ":")
  loc_152DA30: var_20C = (1 + Format(CVar(var_140), "00"))
  loc_152DA50: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_178, var_A0, 1)
  loc_152DA58: var_1C4 = var_178.Tag
  loc_152DA6B: Set var_180 = Me.Txt
  loc_152DA71: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_184, var_17C)
  loc_152DA79: 1 = var_184.Text
  loc_152DA8C: Set var_1D8 = Me.Txt
  loc_152DA92: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1DC, var_218)
  loc_152DA9A: 1 = var_1DC.Tag
  loc_152DAC2: var_104 = "Update RoomOcc set DepDate=" & var_E4 
  loc_152DACB: var_124 = var_104 & ",U_EntDt=" 
  loc_152DAE2: var_278 = var_124 & var_150 & ",U_AE='E',DepTime='" & Trim(CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(CVar(var_140)) & "',") 
  loc_152DB24: var_358 = var_278 & "' where Docid='" & CVar(var_A0) & "' and Site_Code='" & CVar(MemVar_1F95070) & "' and RoomNO='" & CVar(var_17C) & "' and DocId='" 
  loc_152DB45: unk_46F9AB.Execute CStr(var_358 & CVar(Proc_6_38_E69628(CVar(var_218))) & "'"), var_3C8, -1
  loc_152DBB9: Set var_94 = Me.Txt
  loc_152DBBF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, var_218)
  loc_152DBC7: var_254 = var_98.Text
  loc_152DBD4: var_214 = Val(var_218)
  loc_152DBE5: Set var_9C = Me.Txt
  loc_152DBEB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_128, var_23C)
  loc_152DC06: Set var_13C = Me.Txt
  loc_152DC0C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_152DC3C: var_A0 = CStr(var_98.Text)
  loc_152DC68: var_240 = "Update PlanDetails Set NoofDays=" & var_A0 & " Where FolioNO=" & CStr(var_128.Text) & " and Site_Code='" & MemVar_1F95070 & "' and RoomNO='"
  loc_152DC9C: unk_46F9AB.Execute var_240 & var_23C & "' and DocId='" & Proc_6_38_E69628(CVar(var_140.Tag)) & "' and noofDays=" & CStr(var_90), var_E4, -1
  loc_152DCE6: unk_46F9AB.CommitTrans
  loc_152DCF0: Set var_8C = Nothing
  loc_152DCF7: var_86 = CByte(0) 'Byte
  loc_152DCFB: Call Proc_58_32_E9C228(Me.Txt)
  loc_152DD0B: Me.Requery -1
  loc_152DD1B: Set var_94 = Me.Txt
  loc_152DD21: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_152DD29: var_98.SetFocus
  loc_152DD35: Exit Sub
  loc_152DD36: ' Referenced from: 152CEFC
  loc_152DD3F: If (CInt(var_86) = 1) Then
  loc_152DD48:   unk_46F9AB.RollbackTrans
  loc_152DD4D: End If
  loc_152DD55: Set var_94 = Err()
  loc_152DD5B: Call 0.Method_arg_2C (var_A0)
  loc_152DD74: MsgBox(CVar(var_A0), &H10, var_E4, var_104, var_124)
  loc_152DD87: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '105198C
  'Data Table: 46F99C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_105173A: Set var_88 = Me.Txt
  loc_1051740: Call 0.Method_Txt_GotFocus0 (Index)
  loc_105174E: Proc_6_74_E23240(var_8C)
  loc_105175D: var_92 = Index
  loc_1051768: If (var_92 = CInt(0)) Then
  loc_1051782:   If (Me.RecordCount > 0) Then
  loc_1051790:     Set var_8C = Me.FGPoint
  loc_10517A8:     Proc_6_137_1192FDC(Me.DGRoomNo, global_76, Index)
  loc_10517B6:   End If
  loc_1051804:   Set var_88 = Me.Txt
  loc_105180A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1051812:   var_8C = var_8C.Text
  loc_1051838:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), var_92) = vbNullString)) Then
  loc_105183B:     Exit Sub
  loc_105183C:   End If
  loc_1051849:   Set var_88 = Me.Txt
  loc_105184F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051857:   var_A0 = var_8C.Text
  loc_1051869:   var_C4 = "RoomNo"
  loc_1051880:   var_C8 = Me.Fields.Item(var_C4)
  loc_10518A4:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_10518AD:     Me.MoveFirst
  loc_10518D0:     Set var_88 = Me.Txt
  loc_10518D6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_10518DE:     0 = var_8C.Text
  loc_10518F7:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_105190C:   End If
  loc_105190C: End If
  loc_105191B: Set var_88 = Me.Txt
  loc_1051921: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051929: var_8C.SelStart = 0
  loc_1051942: Set var_88 = Me.Txt
  loc_1051948: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051963: Set var_90 = Me.Txt
  loc_1051969: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1051971: var_C8.SelLength = Len(var_8C.Text)
  loc_1051984: Call Proc_58_33_E87228()
  loc_1051989: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1008064
  'Data Table: 46F99C
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_1007E6F: var_88 = Shift
  loc_1007E7C: If (CLng(Shift) = &H1B) Then
  loc_1007E7F:   Call Proc_58_33_E87228(var_88)
  loc_1007E84:   Exit Sub
  loc_1007E85: End If
  loc_1007E93: If (KeyCode = CInt(0)) Then
  loc_1007EB3:   Set var_A4 = Me.FGPoint
  loc_1007EBE:   Set var_A0 = Nothing
  loc_1007EF0:   Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_76, Shift, 0)
  loc_1007F5F:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1007F66:     Set var_A0 = Me.DGRoomNo
  loc_1007F85:     Proc_6_138_106E830(var_A0, global_76, KeyCode, Me.FGPoint, 1)
  loc_1007F93:   End If
  loc_1007F93: End If
  loc_1007FAF: If (CBool(Me.DGRoomNo.Visible) = 0) Then
  loc_1007FD0:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(6))) Then
  loc_1007FD9:     Call Txt_Validate(KeyCode)
  loc_1007FE4:     If (var_86 = &HFF) Then
  loc_1007FE7:       Exit Sub
  loc_1007FE8:     End If
  loc_100801F:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_1008022:       Call TopCtrl1_UnknownEvent_16()
  loc_1008027:     End If
  loc_1008027:     Exit Sub
  loc_1008028:   End If
  loc_100803D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1008046:     Proc_6_75_E5335C(Shift, arg_14, var_86, var_A0)
  loc_100804B:   End If
  loc_1008055:   If (CLng(Shift) = &H26) Then
  loc_100805E:     Proc_6_76_E533C8(Shift, arg_14, var_A4)
  loc_1008063:   End If
  loc_1008063: End If
  loc_1008063: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE06FC
  'Data Table: 46F99C
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE0647: Proc_6_58_E06050(arg_10)
  loc_EE0652: Proc_6_133_E7FB08(var_94)
  loc_EE066F: If (KeyAscii = CInt(0)) Then
  loc_EE068E:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EE06BB:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EE06ED:     Proc_6_138_106E830(Me.DGRoomNo, global_76, KeyAscii, Me.FGPoint)
  loc_EE06FB:   End If
  loc_EE06FB: End If
  loc_EE06FB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAB6D8
  'Data Table: 46F99C
  loc_EAB666: If (KeyCode = CInt(0)) Then
  loc_EAB685:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EAB699:     var_A8 = "RoomNO"
  loc_EAB6C1:     Proc_6_68_12A2818(Me.DGRoomNo, Me.Txt, CInt(0), global_76)
  loc_EAB6D4:   End If
  loc_EAB6D4: End If
  loc_EAB6D4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47EAC
  'Data Table: 46F99C
  loc_E47E8A: Set var_88 = Me.Txt
  loc_E47E90: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47E9E: Proc_6_73_E23294(var_8C)
  loc_E47EAA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14A215C
  'Data Table: 46F99C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_94 As String
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_114 As TextBox
  Dim var_110 As Label
  Dim var_B4 As Variant
  loc_14A14A7: var_86 = Cancel
  loc_14A14B2: If (var_86 = CInt(0)) Then
  loc_14A14C3:   Set var_8C = Me.Txt
  loc_14A14C9:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_14A14E8:   If (var_90.Text = vbNullString) Then
  loc_14A14ED:     arg_10 = &HFF
  loc_14A14F0:   End If
  loc_14A150E:   Set var_8C = Me.Txt
  loc_14A1514:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, "RoomNo='", 0)
  loc_14A1534:   var_F4 = 1 & Trim(CVar(var_90)) & "'" 
  loc_14A1538:   var_94 = CStr(var_F4)
  loc_14A1542:   Me.Find var_94, var_104, arg_10
  loc_14A15A6:   Set var_8C = Me.Txt
  loc_14A15AC:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_14A15B4:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_14A15CC:   If (var_86 Or (var_94 = vbNullString)) Then
  loc_14A15DC:     Set var_8C = Me.Txt
  loc_14A15E2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14A15EA:     var_90.Tag = vbNullString
  loc_14A15F6:     Exit Sub
  loc_14A15F7:   End If
  loc_14A1632:   Set var_110 = Me.Txt
  loc_14A1638:   Call 0.Method_Txt_Validate0 (Cancel, var_114)
  loc_14A1640:   var_114.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_14A1691:   Set var_110 = Me.Txt
  loc_14A1697:   Call 0.Method_Txt_Validate0 (Cancel, var_114)
  loc_14A169F:   var_114.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_14A16EE:   Set var_110 = Me.Txt
  loc_14A16F4:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_114)
  loc_14A16FC:   var_114.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_14A1749:   Set var_110 = Me.Txt
  loc_14A174F:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_114)
  loc_14A1757:   var_114.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")))
  loc_14A1785:   var_90 = Me.Fields.Item("ChkInDate")
  loc_14A17A4:   Set var_110 = Me.Txt
  loc_14A17AA:   Call 0.Method_Txt_Validate0 (CInt(1), var_114)
  loc_14A17B2:   var_114.Text = Proc_6_38_E69628(CVar(var_90))
  loc_14A17D1:   Set var_8C = Me.Txt
  loc_14A17D7:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_14A1811:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_90), "DDDD"))
  loc_14A187C:   Set var_110 = Me.Txt
  loc_14A1882:   Call 0.Method_Txt_Validate0 (CInt(2), var_114, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_14A188A:   var_114.Text = 1
  loc_14A18FB:   Set var_110 = Me.Txt
  loc_14A1901:   Call 0.Method_Txt_Validate0 (CInt(3), var_114)
  loc_14A1909:   var_114.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_14A1960:   Set var_110 = Me.Txt
  loc_14A1966:   Call 0.Method_Txt_Validate0 (CInt(4), var_114)
  loc_14A196E:   var_114.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_14A19D5:   Set var_110 = Me.Txt
  loc_14A19DB:   Call 0.Method_Txt_Validate0 (CInt(5), var_114)
  loc_14A19E3:   var_114.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_14A1A1B:   var_90 = Me.Fields.Item("DepTime")
  loc_14A1A54:   Set var_110 = Me.Txt
  loc_14A1A5A:   Call 0.Method_Txt_Validate0 (CInt(6), var_114)
  loc_14A1A62:   var_114.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_90))), 2))
  loc_14A1A8B:   Set var_8C = Me.Txt
  loc_14A1A91:   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14A1ACB:   Me.LblDepDay.Caption = CStr(Format(CVar(var_90), "DDDD"))
  loc_14A1B1C:   Set var_110 = Me.Txt
  loc_14A1B22:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_114, Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")), 1))
  loc_14A1B2A:   var_114.Text = 1
  loc_14A1B91:   Set var_110 = Me.Txt
  loc_14A1B97:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_114)
  loc_14A1B9F:   var_114.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_14A1BD7:   var_90 = Me.Fields.Item("DepTime")
  loc_14A1BE8:   var_118 = Proc_6_38_E69628(CVar(var_90))
  loc_14A1C10:   Set var_110 = Me.Txt
  loc_14A1C16:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_114)
  loc_14A1C1E:   var_114.Text = CStr(Right(CVar(var_118), 2))
  loc_14A1C47:   Set var_8C = Me.Txt
  loc_14A1C4D:   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14A1C87:   Me.lblolddepday.Caption = CStr(Format(CVar(var_90), "DDDD"))
  loc_14A1CDB:   Set var_110 = Me.Txt
  loc_14A1CE1:   Call 0.Method_Txt_Validate0 (CInt(7), var_114, CStr(Me.Fields.Item("GuestCode").Value))
  loc_14A1CE9:   var_114.Tag = 1
  loc_14A1D3B:   Set var_110 = Me.Txt
  loc_14A1D41:   Call 0.Method_Txt_Validate0 (CInt(7), var_114, CStr(Me.Fields.Item("GuestName").Value))
  loc_14A1D49:   var_114.Text = 1
  loc_14A1D98:   Set var_110 = Me.Txt
  loc_14A1D9E:   Call 0.Method_Txt_Validate0 (CInt(8), var_114)
  loc_14A1DA6:   var_114.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_14A1DD4:   var_90 = Me.Fields.Item("CompanyName")
  loc_14A1DF3:   Set var_110 = Me.Txt
  loc_14A1DF9:   Call 0.Method_Txt_Validate0 (CInt(8), var_114)
  loc_14A1E01:   var_114.Text = Proc_6_38_E69628(CVar(var_90))
  loc_14A1E18: Else
  loc_14A1E20:   If (var_86 = CInt(4)) Then
  loc_14A1E30:     Set var_8C = Me.Txt
  loc_14A1E36:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14A1E5C:     Set var_110 = Me.Txt
  loc_14A1E62:     Call 0.Method_Txt_Validate0 (Cancel, var_114)
  loc_14A1E8C:     Set var_8C = Me.Txt
  loc_14A1E92:     Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14A1EA6:     var_B4 = "DDDD"
  loc_14A1EB6:     var_D4 = Format(CVar(var_90), var_B4)
  loc_14A1EBE:     var_94 = CStr(var_D4)
  loc_14A1ECC:     Me.LblDepDay.Caption = var_94
  loc_14A1EF2:     Set var_110 = Me.Txt
  loc_14A1EF8:     Call 0.Method_Txt_Validate0 (CInt(4), var_114, var_118)
  loc_14A1F00:     1 = Proc_6_34_14EEAAC(var_90.Text)
  loc_14A1F13:     Set var_8C = Me.Txt
  loc_14A1F19:     Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_94)
  loc_14A1F21:     1 = var_90.Text
  loc_14A1F43:     If (CDate(var_94) > CDate(var_118)) Then
  loc_14A1F5F:       MsgBox("Departure Date Must Be Greater than Check in Date", &H40, var_B4, var_D4, var_F4)
  loc_14A1F71:       arg_10 = &HFF
  loc_14A1F74:     End If
  loc_14A1F77:   Else
  loc_14A1F7F:     If Not (var_86 = CInt(5)) Then
  loc_14A1F8A:       If (var_86 = CInt(2)) Then
  loc_14A1F8D:       End If
  loc_14A1F9A:       Set var_8C = Me.Txt
  loc_14A1FA0:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_14A1FA8:       arg_10 = var_90.Text
  loc_14A1FC4:       If (CDbl(Val(var_94)) > CDbl(&H17)) Then
  loc_14A1FE0:         MsgBox("Invalid Time", &H40, var_B4, var_D4, var_F4)
  loc_14A1FF2:         arg_10 = &HFF
  loc_14A1FF5:       End If
  loc_14A1FFF:       Set var_8C = Me.Txt
  loc_14A2005:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14A2019:       var_B4 = "00"
  loc_14A2029:       var_D4 = Format(CVar(var_90), var_B4)
  loc_14A2031:       var_94 = CStr(var_D4)
  loc_14A203F:       Set var_110 = Me.Txt
  loc_14A2045:       Call 0.Method_Txt_Validate0 (Cancel, var_114, var_94, 1)
  loc_14A204D:       var_114.Text = 1
  loc_14A206A:     Else
  loc_14A2072:       If Not (var_86 = CInt(3)) Then
  loc_14A207D:         If (var_86 = CInt(6)) Then
  loc_14A2080:         End If
  loc_14A208D:         Set var_8C = Me.Txt
  loc_14A2093:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_14A209B:         arg_10 = var_90.Text
  loc_14A20B7:         If (CDbl(Val(var_94)) > CDbl(&H3B)) Then
  loc_14A20D3:           MsgBox("Invalid Time", &H40, var_B4, var_D4, var_F4)
  loc_14A20E5:           arg_10 = &HFF
  loc_14A20E8:         End If
  loc_14A20F2:         Set var_8C = Me.Txt
  loc_14A20F8:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14A2132:         Set var_110 = Me.Txt
  loc_14A2138:         Call 0.Method_Txt_Validate0 (Cancel, var_114, CStr(Format(CVar(var_90), "00")), 1)
  loc_14A2140:         var_114.Text = 1
  loc_14A215A:       End If
  loc_14A215A:     End If
  loc_14A215A:   End If
  loc_14A215A: End If
  loc_14A215A: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F38FD4
  'Data Table: 46F99C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38ECB: Me.DGRoomNo.Visible = False
  loc_F38EEA: If (Me.RecordCount > 0) Then
  loc_F38F29:   Set var_B4 = Me.Txt
  loc_F38F2F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F38F37:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F38F6A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F38F89:   Set var_B4 = Me.Txt
  loc_F38F8F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F38F97:   var_B8.Text = CStr(var_B0.Value)
  loc_F38FAD: End If
  loc_F38FB8: Set var_A8 = Me.Txt
  loc_F38FBE: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F38FC6: var_B0.SetFocus
  loc_F38FD2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9C520
  'Data Table: 46F99C
  Dim var_A8 As Variant
  loc_E9C4A4: Set var_88 = Me.DGRoomNo
  loc_E9C4CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9C4D6: Set var_BC = Me.DGRoomNo
  loc_E9C510: Proc_6_138_106E830(Me.DGRoomNo, global_76, 0, Me.FGPoint)
  loc_E9C51E: Exit Sub
End Sub

Public Function MasterFormExitGet() '470548
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '470557
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '470566
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '470575
  mVType = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E974D8
  'Data Table: 46F99C
  Dim Me As Recordset15
  loc_E97466: On Error Goto loc_E974CF
  loc_E9746F: Me.MoveFirst
  loc_E97499: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E974C1: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E974C9: Call Proc_58_34_10FB934(0)
  loc_E974CE: Exit Sub
  loc_E974CF: ' Referenced from: E97466
  loc_E974CF: Proc_6_60_E63754(var_A0)
  loc_E974D4: Exit Sub
End Sub

Public Property Get OpenMode() 'E058D0
  'Data Table: 46F99C
  loc_E058C9: OpenMode = global_80
End Sub

Public Property Let OpenMode(vNewValue) 'E02DA0
  'Data Table: 46F99C
  loc_E02D9A: global_80 = vNewValue
  loc_E02D9D: Exit Sub
End Sub

Public Sub Proc_58_31_E79124(arg_C) 'E79124
  'Data Table: 46F99C
  Dim var_98 As TextBox
  loc_E790D2: Set var_8C = Me.Txt
  loc_E790D8: Call 0.Method_Proc_58_31_E79124C (var_8E, var_86)
  loc_E790E8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E790FE:   Set var_8C = Me.Txt
  loc_E79104:   Call 0.Method_Proc_58_31_E791240 (CInt(var_86), var_98)
  loc_E7910C:   var_98.Enabled = arg_C
  loc_E7911B: Next var_92 'Byte
  loc_E79121: Exit Sub
End Sub

Public Sub Proc_58_32_E9C228
  'Data Table: 46F99C
  Dim var_98 As TextBox
  loc_E9C1AE: Set var_8C = Me.Txt
  loc_E9C1B4: Call 0.Method_Proc_58_32_E9C228C (var_8E, var_86)
  loc_E9C1C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9C1DA:   Set var_8C = Me.Txt
  loc_E9C1E0:   Call 0.Method_Proc_58_32_E9C2280 (CInt(var_86), var_98)
  loc_E9C1E8:   var_98.Text = vbNullString
  loc_E9C204:   Set var_8C = Me.Txt
  loc_E9C20A:   Call 0.Method_Proc_58_32_E9C2280 (CInt(var_86), var_98)
  loc_E9C212:   var_98.Tag = vbNullString
  loc_E9C221: Next var_92 'Byte
  loc_E9C227: Exit Sub
End Sub

Public Sub Proc_58_33_E87228
  'Data Table: 46F99C
  loc_E871D4: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E871E6:   Me.DGRoomNo.Visible = False
  loc_E871EE: End If
  loc_E8720A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8721C:   Me.FGPoint.Visible = False
  loc_E87224: End If
  loc_E87224: Exit Sub
End Sub

Public Sub Proc_58_34_10FB934
  'Data Table: 46F99C
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim unk_46F9AB As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As TextBox
  Dim var_8C As Recordset15
  loc_10FB618: On Error Goto loc_10FB92B
  loc_10FB632: If (Me.RecordCount > 0) Then
  loc_10FB649:   var_C8 = CVar("SELECT GuestFolio.DocId, RoomCat.Name AS RoomCatNAme, RoomCat.Type, RoomOcc.RoomCat, RoomOcc.RoomNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.Adult, RoomOcc.Children, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.Type, GuestFolio.FolioNo, GuestFolio.Vtype, GuestFolio.Vdate, GuestFolio.Vprefix, GuestFolio.GuestProf, GuestProf.Name, GuestFolio.Add1, GuestFolio.Add2, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName, GuestFolio.NoDays, GuestFolio.SplitFolio, GuestFolio.Remarks, GuestFolio.Authorisation, GuestFolio.Company, GuestFolio.PurVisit, GuestFolio.Nationality, GuestFolio.ArrFrom, GuestFolio.Destination, GuestFolio.TravelMode, GuestFolio.TclFac, GuestFolio.Remark, GuestFolio.RODisc, GuestFolio.RSDisc,GuestFolio.BookingDocId, City.CityName AS ArrivedFrom, City_1.CityName AS DestinationCity, SubGroup.Name AS CompanyName" & " FROM (((((GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN City ON GuestFolio.ArrFrom = City.CityCode) LEFT JOIN City AS City_1 ON GuestFolio.Destination = City_1.CityCode) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode Where Guestfolio.Docid='") 'String
  loc_10FB682:   var_F8 = var_C8 & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10FB690:   unk_46F9AB.Execute CStr(var_F8), var_11C, -1
  loc_10FB69B:   Set var_88 = var_120
  loc_10FB6F0:   Set var_120 = Me.Txt
  loc_10FB6F6:   Call 0.Method_Proc_58_34_10FB9340 (CInt(0), var_124)
  loc_10FB6FE:   var_124.Text = CStr(var_88.Fields.Item("RoomNo").Value)
  loc_10FB74D:   Set var_120 = Me.Txt
  loc_10FB753:   Call 0.Method_Proc_58_34_10FB9340 (CInt(8), var_124)
  loc_10FB75B:   var_124.Tag = CStr(var_88.Fields.Item("Company").Value)
  loc_10FB7AD:   Call 0.Method_Proc_58_34_10FB9340 (CInt(8), var_124)
  loc_10FB7B5:   var_124.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyName")))
  loc_10FB7D6:   var_E8 = "SELECT GuestProf.Code, GuestProf.Name, GuestProf.Add1,GuestProf.ExpiresOn, GuestProf.Add2, GuestProf.Type, GuestProf.PhoneNo, GuestProf.FaxNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.Nationality, GuestProf.BirthDate, GuestProf.Anniversary, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, City.CityName, City.ZipCode, State.Name as StateName, Country.Name as CountryName , GuestStat.Name as Status FROM GuestStat RIGHT JOIN (((GuestProf LEFT JOIN City ON GuestProf.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN Country ON City.Country = Country.Code) ON GuestStat.Code = GuestProf.GuestStatus  where GuestProf.Code='"
  loc_10FB81C:   unk_46F9AB.Execute CStr(var_E8 & var_88.Fields.Item("GuestProf").Value & "'"), var_F8, -1
  loc_10FB827:   Set var_8C = Me.Txt
  loc_10FB855:   If (var_8C.RecordCount > 0) Then
  loc_10FB897:     Call 0.Method_Proc_58_34_10FB9340 (CInt(7), var_124, CStr(var_8C.Fields.Item("Code").Value))
  loc_10FB89F:     var_124.Tag = Me.Txt
  loc_10FB8EB:     Set var_120 = Me.Txt
  loc_10FB8F1:     Call 0.Method_Proc_58_34_10FB9340 (CInt(7), var_124)
  loc_10FB8F9:     var_124.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_10FB90D:   End If
  loc_10FB910: Else
  loc_10FB910:   Call Proc_58_32_E9C228(var_120)
  loc_10FB915: End If
  loc_10FB915: Call Proc_58_33_E87228()
  loc_10FB91F: Set var_8C = Nothing
  loc_10FB927: Set var_88 = Nothing
  loc_10FB92A: Exit Sub
  loc_10FB92B: ' Referenced from: 10FB618
  loc_10FB92B: Proc_6_60_E63754()
  loc_10FB930: Exit Sub
End Sub
