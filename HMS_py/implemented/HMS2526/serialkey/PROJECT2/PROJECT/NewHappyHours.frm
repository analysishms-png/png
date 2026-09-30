VERSION 5.00
Begin VB.Form NewHappyHours
  Caption = "Happy Hours [ Free Items ]"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13800
  ClientHeight = 7890
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13800
    Height = 450
    TabIndex = 40
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 2010
    Top = 5790
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 1935
    Top = 3405
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRest
    Left = 11310
    Top = 3855
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGScheme
    Left = 11250
    Top = 2640
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin MSFlexGrid FGPoint
    Left = 13260
    Top = 600
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGItem
    Left = 8445
    Top = 2595
    Width = 4035
    Height = 4635
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin Frame FrFreeItem
    Caption = "Free Item:"
    BackColor = &HFFC0C0&
    ForeColor = &HC0&
    Left = 15225
    Top = 6405
    Width = 225
    Height = 525
    Visible = 0   'False
    TabIndex = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 2
    ForeColor = &HC00000&
    Left = 6045
    Top = 1590
    Width = 1560
    Height = 285
    TabIndex = 2
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
  Begin TextBox txt
    Index = 7
    ForeColor = &HC00000&
    Left = 6510
    Top = 1905
    Width = 540
    Height = 285
    TabIndex = 7
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
  Begin TextBox txt
    Index = 8
    ForeColor = &HC00000&
    Left = 3390
    Top = 2220
    Width = 4215
    Height = 285
    TabIndex = 8
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
  Begin TextBox txt
    Index = 6
    Left = 5460
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin TextBox txt
    Index = 5
    Left = 5055
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin TextBox txt
    Index = 4
    ForeColor = &HC00000&
    Left = 3795
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin TextBox txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3390
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin TextBox txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3390
    Top = 1590
    Width = 1560
    Height = 285
    TabIndex = 1
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
  Begin Frame frSchemeItem
    Caption = "Scheme Item:"
    BackColor = &HFFC0C0&
    ForeColor = &HC0&
    Left = 13935
    Top = 6690
    Width = 675
    Height = 525
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3390
    Top = 1275
    Width = 4215
    Height = 285
    TabIndex = 0
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
  Begin Frame framWeek
    Caption = "Days"
    BackColor = &HC0FFFF&
    ForeColor = &HC0&
    Left = 8190
    Top = 960
    Width = 2925
    Height = 1635
    TabIndex = 9
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin CheckBox chkday
      Caption = "Sunday"
      Index = 1
      BackColor = &HC0C0FF&
      ForeColor = &H404000&
      Left = 195
      Top = 330
      Width = 1170
      Height = 255
      TabIndex = 21
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Monday"
      Index = 2
      BackColor = &HFFC0C0&
      ForeColor = &H404000&
      Left = 1410
      Top = 330
      Width = 1455
      Height = 255
      TabIndex = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Tuesday"
      Index = 3
      BackColor = &HC0E0FF&
      ForeColor = &H404000&
      Left = 195
      Top = 660
      Width = 1170
      Height = 255
      TabIndex = 19
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Wednesday"
      Index = 4
      BackColor = &HFFC0FF&
      ForeColor = &H404000&
      Left = 1410
      Top = 660
      Width = 1455
      Height = 255
      TabIndex = 18
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Thursday"
      Index = 5
      BackColor = &HC0FFC0&
      ForeColor = &H404000&
      Left = 195
      Top = 990
      Width = 1170
      Height = 255
      TabIndex = 17
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Friday"
      Index = 6
      BackColor = &HE0E0E0&
      ForeColor = &H404000&
      Left = 1410
      Top = 1005
      Width = 1455
      Height = 255
      TabIndex = 16
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Saturday"
      Index = 7
      BackColor = &HFFFFC0&
      ForeColor = &H404000&
      Left = 195
      Top = 1290
      Width = 1170
      Height = 255
      TabIndex = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin MSFlexGrid FGrid
    Left = 1920
    Top = 3180
    Width = 7005
    Height = 1935
    TabIndex = 35
  End
  Begin MSFlexGrid FGrid1
    Left = 1905
    Top = 5550
    Width = 7005
    Height = 1995
    TabIndex = 37
  End
  Begin Label Label1
    Caption = "Select Free Item Name and Qty"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 1905
    Top = 5175
    Width = 6495
    Height = 375
    TabIndex = 39
    Alignment = 2 'Center
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
    Caption = "Select Sechme Item Name and Qty"
    Index = 74
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 1920
    Top = 2790
    Width = 6495
    Height = 375
    TabIndex = 38
    Alignment = 2 'Center
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5520
    Top = 7710
    Width = 2790
    Height = 285
    TabIndex = 33
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
    Left = 2145
    Top = 7710
    Width = 2880
    Height = 255
    TabIndex = 32
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 31
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
    Caption = "End Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 5100
    Top = 1605
    Width = 855
    Height = 240
    TabIndex = 28
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
  Begin Label Label4
    Caption = "Yes/No"
    ForeColor = &HC0&
    Left = 7110
    Top = 1950
    Width = 645
    Height = 240
    TabIndex = 27
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
  Begin Label Label2
    Caption = "Active"
    Index = 4
    ForeColor = &HC00000&
    Left = 5880
    Top = 1920
    Width = 585
    Height = 240
    TabIndex = 26
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
  Begin Label Label2
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1980
    Top = 2235
    Width = 1185
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
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 1920
    Top = 1095
    Width = 6090
    Height = 1560
    BorderWidth = 2
  End
  Begin Label Label3
    Caption = "To Time:"
    ForeColor = &HC00000&
    Left = 4200
    Top = 1920
    Width = 840
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
  Begin Label Label2
    Caption = "From Time:"
    Index = 0
    ForeColor = &HC00000&
    Left = 1995
    Top = 1920
    Width = 1095
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
  Begin Label Label1
    Caption = "Start Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1995
    Top = 1590
    Width = 945
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
  Begin Label lblyear
    Caption = "Scheme Name"
    ForeColor = &HC00000&
    Left = 2010
    Top = 1290
    Width = 1395
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

Attribute VB_Name = "NewHappyHours"

Private global_56 As Integer

Private Sub Txt_GotFocus(Index As Integer) '114D294
  'Data Table: 4EE6F0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_1402 As String
  loc_114CF06: Set var_88 = Me.txt
  loc_114CF0C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_114CF1A: Proc_6_74_E23240(var_8C)
  loc_114CF26: Call Proc_186_56_E70A50(var_8C)
  loc_114CF2E: var_92 = Index
  loc_114CF39: If (var_92 = CInt(0)) Then
  loc_114CF53:   If (Me.RecordCount > 0) Then
  loc_114CF61:     Set var_8C = Me.FGPoint
  loc_114CF79:     Proc_6_137_1192FDC(Me.DGScheme, global_64, Index)
  loc_114CF87:   End If
  loc_114CFD5:   Set var_88 = Me.txt
  loc_114CFDB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114CFE3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114CFFB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_114CFFE:     Exit Sub
  loc_114CFFF:   End If
  loc_114D00C:   Set var_88 = Me.txt
  loc_114D012:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114D01A:   var_A0 = var_8C.Text
  loc_114D022:   var_D4 = CVar(var_A0) 'String
  loc_114D067:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_114D070:     Me.MoveFirst
  loc_114D095:     Set var_88 = Me.txt
  loc_114D09B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_114D0A3:     0 = var_8C.Text
  loc_114D0B1:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_114D0C7:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_114D0DF:   End If
  loc_114D0E2: Else
  loc_114D0EA:   If (var_92 = CInt(8)) Then
  loc_114D104:     If (Me.RecordCount > 0) Then
  loc_114D112:       Set var_8C = Me.FGPoint
  loc_114D12A:       Proc_6_137_1192FDC(Me.DGRest, global_60)
  loc_114D138:     End If
  loc_114D186:     Set var_88 = Me.txt
  loc_114D18C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114D194:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114D1AC:     If (Index Or (var_A0 = vbNullString)) Then
  loc_114D1AF:       Exit Sub
  loc_114D1B0:     End If
  loc_114D1BD:     Set var_88 = Me.txt
  loc_114D1C3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114D1CB:     var_A0 = var_8C.Text
  loc_114D1D3:     var_D4 = CVar(var_A0) 'String
  loc_114D218:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_114D221:       Me.MoveFirst
  loc_114D246:       Set var_88 = Me.txt
  loc_114D24C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_114D254:       0 = var_8C.Text
  loc_114D262:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_114D278:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_114D290:     End If
  loc_114D290:   End If
  loc_114D290: End If
  loc_114D290: Exit Sub
  loc_114D291: var_1402 = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10AB594
  'Data Table: 4EE6F0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  loc_10AB2DA: If (CLng(Shift) = &H1B) Then
  loc_10AB2DD:   Call Proc_186_56_E70A50()
  loc_10AB2E2:   Exit Sub
  loc_10AB2E3: End If
  loc_10AB2E6: var_86 = KeyCode
  loc_10AB2F1: If (var_86 = CInt(0)) Then
  loc_10AB311:   Set var_9C = Me.FGPoint
  loc_10AB31C:   Set var_98 = Nothing
  loc_10AB34A:   Proc_6_69_134A630(Me.DGScheme, Me.txt, KeyCode, global_64, Shift, 0)
  loc_10AB3B9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10AB3DF:     Proc_6_138_106E830(Me.DGScheme, global_64, KeyCode, Me.FGPoint, 1)
  loc_10AB3ED:   End If
  loc_10AB3F0: Else
  loc_10AB3F8:   If (var_86 = CInt(8)) Then
  loc_10AB418:     Set var_9C = Me.FGPoint
  loc_10AB423:     Set var_98 = Nothing
  loc_10AB451:     Proc_6_69_134A630(Me.DGRest, Me.txt, KeyCode, global_60, Shift, 0, 1)
  loc_10AB4C0:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10AB4C7:       Set var_98 = Me.DGRest
  loc_10AB4E6:       Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10AB4F4:     End If
  loc_10AB4F4:   End If
  loc_10AB4F4: End If
  loc_10AB525: Set var_98 = Me.DGScheme
  loc_10AB54A: If (((CBool(Me.DGRest.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_10AB560:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_10AB569:     Proc_6_76_E533C8(Shift, arg_14, 0, var_98)
  loc_10AB56E:   End If
  loc_10AB583:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10AB58C:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_10AB591:   End If
  loc_10AB591: End If
  loc_10AB591: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1061E30
  'Data Table: 4EE6F0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_1061BB7: Proc_6_58_E06050(arg_10)
  loc_1061BC2: Proc_6_133_E7FB08(var_94)
  loc_1061BD7: If (CInt(var_94) = &HD) Then
  loc_1061BDC:   arg_10 = 0
  loc_1061BDF: End If
  loc_1061BE2: var_96 = KeyAscii
  loc_1061BED: If (var_96 = CInt(0)) Then
  loc_1061C0C:   If (CBool(Me.DGScheme.Visible) = &HFF) Then
  loc_1061C39:     Proc_6_89_1470B00(Me.txt, KeyAscii, global_64, arg_10, "Name")
  loc_1061C6B:     Proc_6_138_106E830(Me.DGScheme, global_64, KeyAscii, Me.FGPoint, 0)
  loc_1061C79:   End If
  loc_1061C7C: Else
  loc_1061C84:   If (var_96 = CInt(8)) Then
  loc_1061CA3:     If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1061CD0:       Proc_6_89_1470B00(Me.txt, KeyAscii, global_60, arg_10, "Name")
  loc_1061CEA:       Set var_A8 = Me.FGPoint
  loc_1061D02:       Proc_6_138_106E830(Me.DGRest, global_60, KeyAscii, var_A8, 0)
  loc_1061D10:     End If
  loc_1061D13:   Else
  loc_1061D1B:     If Not (var_96 = CInt(3)) Then
  loc_1061D26:       If Not (var_96 = CInt(4)) Then
  loc_1061D31:         If Not (var_96 = CInt(5)) Then
  loc_1061D3C:           If (var_96 = CInt(6)) Then
  loc_1061D3F:           End If
  loc_1061D3F:         End If
  loc_1061D3F:       End If
  loc_1061D49:       Set var_9C = Me.txt
  loc_1061D4F:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_1061D6A:       Proc_6_42_129B55C(var_A8, arg_10, 2, 0)
  loc_1061D79:     Else
  loc_1061D81:       If (var_96 = CInt(7)) Then
  loc_1061DAA:         If (Ucase(CVar(Chr$(CLng(arg_10)))) = "Y") Then
  loc_1061DBA:           Set var_9C = Me.txt
  loc_1061DC0:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1061DC8:           var_A8.Text = arg_10
  loc_1061DD7:         Else
  loc_1061DFD:           If (Ucase(CVar(Chr$(CLng(arg_10)))) = "N") Then
  loc_1061E0D:             Set var_9C = Me.txt
  loc_1061E13:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1061E1B:             var_A8.Text = arg_10
  loc_1061E27:           End If
  loc_1061E27:         End If
  loc_1061E29:         arg_10 = 0
  loc_1061E2C:       End If
  loc_1061E2C:     End If
  loc_1061E2C:   End If
  loc_1061E2C: End If
  loc_1061E2C: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F3AC
  'Data Table: 4EE6F0
  loc_E4F38A: Set var_88 = Me.txt
  loc_E4F390: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F39E: Proc_6_73_E23294(var_8C)
  loc_E4F3AA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1377090
  'Data Table: 4EE6F0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_9C As TextBox
  Dim var_D0 As String
  loc_1376817: var_86 = Cancel
  loc_1376822: If Not (var_86 = CInt(1)) Then
  loc_137682D:   If (var_86 = CInt(2)) Then
  loc_1376830:   End If
  loc_137683D:   Set var_8C = Me.txt
  loc_1376843:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376862:   If (var_90.Text <> vbNullString) Then
  loc_137686F:     Set var_8C = Me.txt
  loc_1376875:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376895:     Set var_9C = Me.txt
  loc_137689B:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_13768A3:     var_A0.Text = Proc_6_33_15125B8(var_90)
  loc_13768B9:   Else
  loc_13768CB:     Set var_8C = Me.txt
  loc_13768D1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13768D9:     var_90.Text = CStr(MemVar_1F950EC)
  loc_13768E8:   End If
  loc_13768EB: Else
  loc_13768F3:   If (var_86 = CInt(0)) Then
  loc_1376901:     Set var_8C = Me.txt
  loc_1376907:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_137690F:     var_94 = "Scheme Name"
  loc_1376930:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1376935:       arg_10 = &HFF
  loc_1376938:       Exit Sub
  loc_1376939:     End If
  loc_1376987:     Set var_8C = Me.txt
  loc_137698D:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1376995:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13769AD:     If (arg_10 Or (var_94 = vbNullString)) Then
  loc_13769BD:       Set var_8C = Me.txt
  loc_13769C3:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13769CB:       var_90.Text = vbNullString
  loc_13769E4:       Set var_8C = Me.txt
  loc_13769EA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13769F2:       var_90.Tag = vbNullString
  loc_1376A01:     Else
  loc_1376A3C:       Set var_98 = Me.txt
  loc_1376A42:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1376A4A:       var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1376A7D:       var_90 = Me.Fields.Item("Code")
  loc_1376A9B:       Set var_98 = Me.txt
  loc_1376AA1:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1376AA9:       var_9C.Tag = CStr(var_90.Value)
  loc_1376ABF:     End If
  loc_1376ACC:     Set var_8C = Me.txt
  loc_1376AD2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376AE6:     Call Proc_186_49_12A0824(var_90.Tag)
  loc_1376AF8:   Else
  loc_1376B00:     If (var_86 = CInt(8)) Then
  loc_1376B0E:       Set var_8C = Me.txt
  loc_1376B14:       Call 0.Method_Txt_Validate0 (CInt(8), var_90)
  loc_1376B1C:       var_94 = "Rest Name"
  loc_1376B3D:       If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1376B42:         arg_10 = &HFF
  loc_1376B45:         Exit Sub
  loc_1376B46:       End If
  loc_1376B94:       Set var_8C = Me.txt
  loc_1376B9A:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1376BA2:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1376BBA:       If (arg_10 Or (var_94 = vbNullString)) Then
  loc_1376BCA:         Set var_8C = Me.txt
  loc_1376BD0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376BD8:         var_90.Text = vbNullString
  loc_1376BF1:         Set var_8C = Me.txt
  loc_1376BF7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376BFF:         var_90.Tag = vbNullString
  loc_1376C0E:       Else
  loc_1376C49:         Set var_98 = Me.txt
  loc_1376C4F:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1376C57:         var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1376C8A:         var_90 = Me.Fields.Item("Code")
  loc_1376CA8:         Set var_98 = Me.txt
  loc_1376CAE:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1376CB6:         var_9C.Tag = CStr(var_90.Value)
  loc_1376CD6:         Set global_68 = New 
  loc_1376CE8:         Me.Recordset15.CursorLocation = 3
  loc_1376CFB:         Set var_8C = Me.txt
  loc_1376D01:         Call 0.Method_Txt_Validate0 (CInt(8), var_90)
  loc_1376D2C:         var_94 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_1376D33:         var_D0 = var_94 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_1376D4B:         Me.Open CVar(var_D0 & var_90.Tag & "'  Order by I.Name  "), CVar(MemVar_1F95044), 3
  loc_1376D6E:         CVarUnk
  loc_1376D73:         VerifyVarObj
  loc_1376D79:         Set var_8C = Me.DGItem
  loc_1376D7F:         LateIdStAd
  loc_1376D8D:       End If
  loc_1376DA6:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, global_88, Me.txt)
  loc_1376DAE:       global_68 = var_90.Tag
  loc_1376DC2:       If (1 <> var_94) Then
  loc_1376DD2:         Set var_8C = Me.txt
  loc_1376DD8:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1376DE0:         -1 = var_90.Tag
  loc_1376DEB:         global_88 = var_94
  loc_1376DF9:         Call Proc_186_54_F59044(var_86)
  loc_1376DFE:       End If
  loc_1376E01:     Else
  loc_1376E09:       If Not (var_86 = CInt(3)) Then
  loc_1376E14:         If (var_86 = CInt(5)) Then
  loc_1376E17:         End If
  loc_1376E24:         Set var_8C = Me.txt
  loc_1376E2A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376E49:         If (var_90.Text = vbNullString) Then
  loc_1376E85:           Set var_8C = Me.txt
  loc_1376E8B:           Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "HH")))
  loc_1376E93:           var_90.Text = 1
  loc_1376EAB:           Exit Sub
  loc_1376EAC:         End If
  loc_1376EB9:         Set var_8C = Me.txt
  loc_1376EBF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376EE3:         If (CDbl(Val(var_90.Text)) > CDbl(&H18)) Then
  loc_1376F11:           var_94 = CStr(Format(Time, "HH"))
  loc_1376F1F:           Set var_8C = Me.txt
  loc_1376F25:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1376F2D:           var_90.Text = 1
  loc_1376F45:           Exit Sub
  loc_1376F46:         End If
  loc_1376F49:       Else
  loc_1376F51:         If Not (var_86 = CInt(4)) Then
  loc_1376F5C:           If (var_86 = CInt(6)) Then
  loc_1376F5F:           End If
  loc_1376F6C:           Set var_8C = Me.txt
  loc_1376F72:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1376F7A:           1 = var_90.Text
  loc_1376F91:           If (var_94 = vbNullString) Then
  loc_1376FBF:             var_94 = CStr(Format(Time, "NN"))
  loc_1376FCD:             Set var_8C = Me.txt
  loc_1376FD3:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1376FDB:             var_90.Text = 1
  loc_1376FF3:             Exit Sub
  loc_1376FF4:           End If
  loc_1377001:           Set var_8C = Me.txt
  loc_1377007:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_137700F:           1 = var_90.Text
  loc_137702B:           If (CDbl(Val(var_94)) > CDbl(&H3C)) Then
  loc_1377067:             Set var_8C = Me.txt
  loc_137706D:             Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "NN")))
  loc_1377075:             var_90.Text = 1
  loc_137708D:             Exit Sub
  loc_137708E:           End If
  loc_137708E:         End If
  loc_137708E:       End If
  loc_137708E:     End If
  loc_137708E:   End If
  loc_137708E: End If
  loc_137708E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5F6C4
  'Data Table: 4EE6F0
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E5F68F: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E5F6A2: Set var_A8 = Me.TxtGrid
  loc_E5F6A8: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E5F6B0: var_AC.Visible = False
  loc_E5F6BC: Call Proc_186_56_E70A50()
  loc_E5F6C1: Exit Sub
  loc_E5F6C2: If  Then Exit Sub
  loc_E5F6C2: End If
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E67A08
  'Data Table: 4EE6F0
  Dim var_8C As TextBox
  Dim var_88 As MSFlexGrid
  loc_E679C4: Set var_88 = Me.TxtGrid
  loc_E679CA: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E679E4: If (var_8C.Visible = 0) Then
  loc_E679FD:   Me.FGrid1.BackColorSel = CVar(CLng(global_72))
  loc_E67A05: End If
  loc_E67A05: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E4DCEC
  'Data Table: 4EE6F0
  loc_E4DCC4: Set var_88 = Me.TopCtrl1
  loc_E4DCCA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4DCE3: If (CStr() <> "Browse") Then
  loc_E4DCE6:   Call Proc_186_58_E45D74()
  loc_E4DCEB: End If
  loc_E4DCEB: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '10F549C
  'Data Table: 4EE6F0
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F5178: Set var_88 = Me.TopCtrl1
  loc_10F517E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F51C3: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10F51CC:   Call Form_KeyDown(Cancel, arg_10)
  loc_10F51D1: End If
  loc_10F51D5: Set var_88 = Me.TopCtrl1
  loc_10F51DB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F51F4: If (CStr() = "Browse") Then
  loc_10F51F7:   Exit Sub
  loc_10F51F8: End If
  loc_10F526C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_10F5285:   Me.FGrid1.CellBackColor = CVar(CLng(global_72))
  loc_10F5295:   var_9C = "+{Tab}"
  loc_10F529B:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_10F52A5:   Cancel = 0
  loc_10F52AB: Else
  loc_10F5302:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_10F531B:     Me.FGrid1.CellBackColor = CVar(CLng(global_72))
  loc_10F5325:     Cancel = 0
  loc_10F5328:   End If
  loc_10F5328: End If
  loc_10F5354: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_10F536B: Set var_88 = Me.TopCtrl1
  loc_10F5371: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10F538A: If (CStr(Cancel) = "Edit") Then
  loc_10F538D:   Exit Sub
  loc_10F538E: End If
  loc_10F539F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10F53B5:   var_EC = CLng(Me.FGrid1.Col)
  loc_10F53C5:   If (var_EC = CLng(1)) Then
  loc_10F53DB:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F53F3:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10F53F8:     var_11C = vbNullString
  loc_10F5402:     Set var_B4 = Me.FGrid1
  loc_10F5408:     LateIdCallSt
  loc_10F5423:   Else
  loc_10F542A:     If (var_EC = CLng(2)) Then
  loc_10F5440:       var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F5458:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10F545D:       var_11C = vbNullString
  loc_10F5467:       Set var_B4 = Me.FGrid1
  loc_10F546D:       LateIdCallSt
  loc_10F5485:     End If
  loc_10F5485:   End If
  loc_10F5485: End If
  loc_10F548B: If (Cancel = &HD) Then
  loc_10F5493:   global_56 = 0
  loc_10F5496: End If
  loc_10F5498: Cancel = 0
  loc_10F549B: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E5DC1C
  'Data Table: 4EE6F0
  loc_E5DBE0: Set var_88 = Me.TopCtrl1
  loc_E5DBE6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5DBFF: If (CStr() = "Browse") Then
  loc_E5DC02:   Exit Sub
  loc_E5DC03: End If
  loc_E5DC0C: Call Fgrid1_UnknownEvent_C()
  loc_E5DC19: Exit Sub
  loc_E5DC1A: Set arg_7800 = 0
End Sub

Private Sub Fgrid1_UnknownEvent_C '1013F48
  'Data Table: 4EE6F0
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1013D38: Set var_88 = Me.TopCtrl1
  loc_1013D3E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1013D57: If (CStr() = "Browse") Then
  loc_1013D5A:   Exit Sub
  loc_1013D5B: End If
  loc_1013D6E: var_A0 = CLng(Me.FGrid1.Col)
  loc_1013D7E: If (var_A0 = CLng(1)) Then
  loc_1013D85:   Set var_C4 = Me.FGrid1
  loc_1013DA9:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1013DD6:   Set var_B4 = var_C4
  loc_1013DE8:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_1013E10:   Set var_88 = Me.TxtGrid
  loc_1013E16:   Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1013E1E:   0 = var_B4.Text
  loc_1013E37:   If (Len(var_9C) <= 1) Then
  loc_1013E46:     Set var_88 = Me.TxtGrid
  loc_1013E4C:     Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1013E54:     var_CA = var_B4.Text
  loc_1013E65:     Set var_B8 = Me.TxtGrid
  loc_1013E6B:     Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_C4)
  loc_1013E73:     var_C4.Text = var_9C
  loc_1013E86:   End If
  loc_1013E92:   Set var_88 = Me.TxtGrid
  loc_1013E98:   Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_B4)
  loc_1013EB2:   Set var_B8 = Me.TxtGrid
  loc_1013EB8:   Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_C4)
  loc_1013EC0:   var_C4.SelStart = Len(var_B4.Text)
  loc_1013ED6: Else
  loc_1013EDD:   If (var_A0 = CLng(2)) Then
  loc_1013F1E:     Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_1013F30:   End If
  loc_1013F30: End If
  loc_1013F3A: If (CLng(Cancel) <> &HD) Then
  loc_1013F42:   global_56 = &HFF
  loc_1013F45: End If
  loc_1013F45: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D '102EC9C
  'Data Table: 4EE6F0
  Dim var_8C As MSFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_102EA68: Set var_8C = Me.TopCtrl1
  loc_102EA6E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102EA87: If (CStr() = "Browse") Then
  loc_102EA8A:   Exit Sub
  loc_102EA8B: End If
  loc_102EAA8: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_102EAAB:   Exit Sub
  loc_102EAAC: End If
  loc_102EABD: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102EADF:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_102EB19:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_102EB3B:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_102EB51:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_102EB5A:         Set var_114 = Me.FGrid1
  loc_102EB75:       Else
  loc_102EB88:         Me.FGrid1.Rows = 1
  loc_102EBAE:         var_9C = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, CInt(0)))) 'String
  loc_102EBB6:         Set var_114 = Me.FGrid1
  loc_102EBE3:         Me.FGrid1.FixedRows = 1
  loc_102EBEB:       End If
  loc_102EC10:       For var_120 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_120 'Integer
  loc_102EC1A:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_102EC22:         var_E0 = CVar(CLng(0)) 'Long
  loc_102EC2C:         var_9C = CVar(CStr(var_86)) 'String
  loc_102EC34:         Set var_8C = Me.FGrid1
  loc_102EC3A:         LateIdCallSt
  loc_102EC4B:       Next var_120 'Integer
  loc_102EC50:     End If
  loc_102EC53:   Else
  loc_102EC74:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_102EC84:   End If
  loc_102EC88:   Set var_8C = Me.FGrid1
  loc_102EC99: End If
  loc_102EC99: Exit Sub
  loc_102EC9A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E454E0
  'Data Table: 4EE6F0
  Dim var_8C As TextBox
  loc_E454B4: Call Proc_186_56_E70A50()
  loc_E454C4: Set var_88 = Me.TxtGrid
  loc_E454CA: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E454D2: var_8C.Visible = False
  loc_E454DE: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86310
  'Data Table: 4EE6F0
  loc_E862BC: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E862BF:   Call DGItem_UnknownEvent_9()
  loc_E862C4: End If
  loc_E862E0: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E862E3:   Call DGRest_UnknownEvent_9()
  loc_E862E8: End If
  loc_E86304: If (CBool(Me.DGScheme.Visible) = &HFF) Then
  loc_E86307:   Call DGScheme_UnknownEvent_9()
  loc_E8630C: End If
  loc_E8630C: Exit Sub
End Sub

Private Sub DGScheme_UnknownEvent_9 'F49674
  'Data Table: 4EE6F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4956B: Me.DGScheme.Visible = False
  loc_F4958A: If (Me.RecordCount > 0) Then
  loc_F495C9:   Set var_B4 = Me.txt
  loc_F495CF:   Call 0.Method_DGScheme_UnknownEvent_90 (CInt(0), var_B8)
  loc_F495D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4960A:   var_B0 = Me.Fields.Item("Name")
  loc_F49629:   Set var_B4 = Me.txt
  loc_F4962F:   Call 0.Method_DGScheme_UnknownEvent_90 (CInt(0), var_B8)
  loc_F49637:   var_B8.Text = CStr(var_B0.Value)
  loc_F4964D: End If
  loc_F49658: Set var_A8 = Me.txt
  loc_F4965E: Call 0.Method_DGScheme_UnknownEvent_90 (CInt(0))
  loc_F49666: var_B0.SetFocus
  loc_F49672: Exit Sub
End Sub

Private Sub DGScheme_UnknownEvent_1F 'E711CC
  'Data Table: 4EE6F0
  loc_E7118A: Proc_6_153_E91D24(Me.DGScheme, arg_14)
  loc_E711A1: Set var_8C = Me.FGPoint
  loc_E711BD: Proc_6_138_106E830(Me.DGScheme, global_64, CInt(0))
  loc_E711CB: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12C3338
  'Data Table: 4EE6F0
  Dim var_8C As Variant
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As MSFlexGrid
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim var_11C As String
  Dim Me As Recordset15
  Dim var_108 As Field20
  Dim var_118 As String
  Dim var_124 As Long
  loc_12C2CEA: Set var_88 = Me.TxtGrid
  loc_12C2CF0: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12C2CFE: Proc_6_74_E23240(var_8C)
  loc_12C2D0A: Call Proc_186_56_E70A50(var_8C)
  loc_12C2D1E: Set var_88 = Me.TxtGrid
  loc_12C2D24: Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12C2D2C: var_8C.MaxLength = 0
  loc_12C2D3B: var_92 = Index
  loc_12C2D44: If (var_92 = 0) Then
  loc_12C2D5D:   Me.FGrid.CellBackColor = CVar(CLng(global_72))
  loc_12C2D78:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C2D81:   Set var_8C = Me.FGrid
  loc_12C2DB7:   Set var_108 = Me.TxtGrid
  loc_12C2DBD:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12C2DC5:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12C2DED:   var_C4 = Me.FGrid.Col
  loc_12C2E06:   If (CLng(var_C4) = CLng(1)) Then
  loc_12C2E13:     Set global_68 = New 
  loc_12C2E25:     Me.var_C4.CursorLocation = 3
  loc_12C2E38:     Set var_88 = Me.txt
  loc_12C2E3E:     Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_118)
  loc_12C2E46:     var_114 = var_8C.Tag
  loc_12C2E69:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_12C2E70:     var_11C = var_110 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_12C2E88:     Me.Open CVar(var_11C & var_118 & "'  Order by I.Name  "), CVar(MemVar_1F95044), 3
  loc_12C2EAB:     CVarUnk
  loc_12C2EB0:     VerifyVarObj
  loc_12C2EB6:     Set var_88 = Me.DGItem
  loc_12C2EBC:     LateIdStAd
  loc_12C2EDD:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, Me.TxtGrid, global_68)
  loc_12C2EE5:     1 = var_8C.Tag
  loc_12C2EED:     var_D4 = CVar(var_110) 'String
  loc_12C2F32:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12C2F3B:       Me.MoveFirst
  loc_12C2F4E:       var_A4 = "Name ="
  loc_12C2F60:       Set var_88 = Me.TxtGrid
  loc_12C2F66:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, var_A4, 0)
  loc_12C2F6E:       1 = var_8C.Tag
  loc_12C2F7C:       Proc_6_17_EAAE40(var_D4, CVar(var_110), var_B4)
  loc_12C2F84:       var_104 = -1 & var_D4 
  loc_12C2F88:       var_118 = CStr(Me.FGrid.TextMatrix))
  loc_12C2F92:       Me.Find var_118, var_A4, var_92
  loc_12C2FAA:     End If
  loc_12C2FB8:     Set var_88 = Me.TxtGrid
  loc_12C2FBE:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12C2FC6:     var_8C.MaxLength = &H24
  loc_12C2FDD:     Set var_8C = Me.FGPoint
  loc_12C2FF5:     Proc_6_137_1192FDC(Me.DGItem, global_68)
  loc_12C3006:   Else
  loc_12C300D:     If (var_114 = CLng(2)) Then
  loc_12C301E:       Set var_88 = Me.TxtGrid
  loc_12C3024:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 3)
  loc_12C302C:       var_8C.MaxLength = Index
  loc_12C3038:     End If
  loc_12C3038:   End If
  loc_12C303B: Else
  loc_12C3041:   If (var_92 = 1) Then
  loc_12C305A:     Me.FGrid1.CellBackColor = CVar(CLng(global_72))
  loc_12C3075:     var_A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C307E:     Set var_8C = Me.FGrid1
  loc_12C30B4:     Set var_108 = Me.TxtGrid
  loc_12C30BA:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)))
  loc_12C30C2:     var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12C30EA:     var_C4 = Me.FGrid1.Col
  loc_12C3103:     If (CLng(var_C4) = CLng(1)) Then
  loc_12C3110:       Set global_68 = New 
  loc_12C3122:       Me.var_C4.CursorLocation = 3
  loc_12C3135:       Set var_88 = Me.txt
  loc_12C313B:       Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_118)
  loc_12C3143:       var_124 = var_8C.Tag
  loc_12C3166:       var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_12C316D:       var_11C = var_110 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_12C3185:       Me.Open CVar(var_11C & var_118 & "'  Order by I.Name  "), CVar(MemVar_1F95044), 3
  loc_12C31A8:       CVarUnk
  loc_12C31AD:       VerifyVarObj
  loc_12C31B3:       Set var_88 = Me.DGItem
  loc_12C31B9:       LateIdStAd
  loc_12C31DA:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, Me.TxtGrid, global_68)
  loc_12C31E2:       1 = var_8C.Tag
  loc_12C31EA:       var_D4 = CVar(var_110) 'String
  loc_12C322F:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12C3238:         Me.MoveFirst
  loc_12C324B:         var_A4 = "Name ="
  loc_12C325D:         Set var_88 = Me.TxtGrid
  loc_12C3263:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, var_A4, 0)
  loc_12C326B:         1 = var_8C.Tag
  loc_12C3279:         Proc_6_17_EAAE40(var_D4, CVar(var_110), var_B4)
  loc_12C3281:         var_104 = -1 & var_D4 
  loc_12C328F:         Me.Find CStr(Me.FGrid1.TextMatrix)), var_A4, var_8C
  loc_12C32A7:       End If
  loc_12C32B6:       Set var_88 = Me.TxtGrid
  loc_12C32BC:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12C32C4:       var_8C.MaxLength = &H24
  loc_12C32DB:       Set var_8C = Me.FGPoint
  loc_12C32F3:       Proc_6_137_1192FDC(Me.DGItem, global_68)
  loc_12C3304:     Else
  loc_12C330B:       If (var_124 = CLng(2)) Then
  loc_12C331D:         Set var_88 = Me.TxtGrid
  loc_12C3323:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 3)
  loc_12C332B:         var_8C.MaxLength = Index
  loc_12C3337:       End If
  loc_12C3337:     End If
  loc_12C3337:   End If
  loc_12C3337: End If
  loc_12C3337: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1278BC4
  'Data Table: 4EE6F0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_D0 As Long
  loc_127861B: var_86 = KeyCode
  loc_1278624: If (var_86 = 0) Then
  loc_1278631:   If (CLng(Shift) = &H1B) Then
  loc_1278641:     Set var_8C = Me.TxtGrid
  loc_1278647:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_127864F:     var_94 = var_90.Tag
  loc_1278661:     Set var_98 = Me.TxtGrid
  loc_1278667:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_127866F:     var_9C.Text = var_94
  loc_1278686:     Set var_8C = Me.FGrid
  loc_12786A3:     Set var_8C = Me.TxtGrid
  loc_12786A9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12786B1:     var_90.Visible = FGrid.DispID_8001
  loc_12786CB:     Set var_8C = Me.TxtGrid
  loc_12786D1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12786D9:     var_90.MaxLength = 0
  loc_12786E5:     Exit Sub
  loc_12786E6:   End If
  loc_12786F9:   var_B0 = CLng(Me.FGrid.Col)
  loc_1278709:   If (var_B0 = CLng(1)) Then
  loc_1278729:     Set var_9C = Me.FGPoint
  loc_1278734:     Set var_98 = Nothing
  loc_1278762:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_127878F:     If (Me.RecordCount > 0) Then
  loc_1278796:       Set var_98 = Me.DGItem
  loc_12787B5:       Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_12787C3:     End If
  loc_12787CD:     If (CLng(Shift) = &HD) Then
  loc_12787D6:       Call Proc_186_59_12F7D78(KeyCode, var_B2, var_98, var_9C)
  loc_12787E1:       If (var_B2 = &HFF) Then
  loc_1278827:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 2)
  loc_1278837:       End If
  loc_1278837:     End If
  loc_127883A:   Else
  loc_1278841:     If (var_B0 = CLng(2)) Then
  loc_1278884:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_127888D:         Call Proc_186_59_12F7D78(KeyCode, var_B2, 0, 2)
  loc_1278898:         If (var_B2 = &HFF) Then
  loc_12788A6:           Set var_9C = Me.TxtGrid
  loc_12788CF:           Set var_90 = var_9C
  loc_12788DE:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 2, 0)
  loc_12788EE:         End If
  loc_12788EE:       End If
  loc_12788EE:     End If
  loc_12788EE:   End If
  loc_12788F1: Else
  loc_12788F7:   If (var_86 = 1) Then
  loc_1278904:     If (CLng(Shift) = &H1B) Then
  loc_1278914:       Set var_8C = Me.TxtGrid
  loc_127891A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 2, 0)
  loc_1278922:       0 = var_90.Tag
  loc_1278934:       Set var_98 = Me.TxtGrid
  loc_127893A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_1278942:       var_9C.Text = 0
  loc_1278959:       Set var_8C = Me.FGrid1
  loc_1278976:       Set var_8C = Me.TxtGrid
  loc_127897C:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1278984:       var_90.Visible = FGrid1.DispID_8001
  loc_127899F:       Set var_8C = Me.TxtGrid
  loc_12789A5:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12789AD:       var_90.MaxLength = var_B0
  loc_12789B9:       Exit Sub
  loc_12789BA:     End If
  loc_12789CD:     var_D0 = CLng(Me.FGrid1.Col)
  loc_12789DD:     If (var_D0 = CLng(1)) Then
  loc_12789FD:       Set var_9C = Me.FGPoint
  loc_1278A08:       Set var_98 = Nothing
  loc_1278A36:       Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_1278A63:       If (Me.RecordCount > 0) Then
  loc_1278A6A:         Set var_98 = Me.DGItem
  loc_1278A89:         Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_1278A97:       End If
  loc_1278AA1:       If (CLng(Shift) = &HD) Then
  loc_1278AAA:         Call Proc_186_59_12F7D78(KeyCode, var_B2, var_98, var_9C)
  loc_1278AB5:         If (var_B2 = &HFF) Then
  loc_1278AFB:           Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 2)
  loc_1278B0B:         End If
  loc_1278B0B:       End If
  loc_1278B0E:     Else
  loc_1278B15:       If (var_D0 = CLng(2)) Then
  loc_1278B58:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1278B61:           Call Proc_186_59_12F7D78(KeyCode, var_B2, 0, 2)
  loc_1278B6C:           If (var_B2 = &HFF) Then
  loc_1278BB2:             Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 2, 0)
  loc_1278BC2:           End If
  loc_1278BC2:         End If
  loc_1278BC2:       End If
  loc_1278BC2:     End If
  loc_1278BC2:   End If
  loc_1278BC2: End If
  loc_1278BC2: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1006DF0
  'Data Table: 4EE6F0
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B8 As Long
  Dim arg_78FF As Double
  loc_1006BE7: Proc_6_58_E06050(arg_10)
  loc_1006BEF: var_86 = KeyAscii
  loc_1006BF8: If (var_86 = 0) Then
  loc_1006C0E:   var_A0 = CLng(Me.FGrid.Col)
  loc_1006C1E:   If (var_A0 = CLng(1)) Then
  loc_1006C3D:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1006C4F:       var_A4 = "Name"
  loc_1006C6A:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_1006C84:       Set var_AC = Me.FGPoint
  loc_1006C9C:       Proc_6_138_106E830(Me.DGItem, global_68, KeyAscii, var_AC)
  loc_1006CAA:     End If
  loc_1006CAD:   Else
  loc_1006CB4:     If (var_A0 = CLng(2)) Then
  loc_1006CC1:       Set var_8C = Me.TxtGrid
  loc_1006CC7:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_1006CE2:       Proc_6_42_129B55C(var_AC, arg_10, 4, 2)
  loc_1006CEE:     End If
  loc_1006CEE:   End If
  loc_1006CF1: Else
  loc_1006CF7:   If (var_86 = 1) Then
  loc_1006D0D:     var_B8 = CLng(Me.FGrid1.Col)
  loc_1006D1D:     If (var_B8 = CLng(1)) Then
  loc_1006D3C:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1006D69:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10, "Name")
  loc_1006D83:         Set var_AC = Me.FGPoint
  loc_1006D9B:         Proc_6_138_106E830(Me.DGItem, global_68, KeyAscii, var_AC, 0)
  loc_1006DA9:       End If
  loc_1006DAC:     Else
  loc_1006DB3:       If (var_B8 = CLng(2)) Then
  loc_1006DC0:         Set var_8C = Me.TxtGrid
  loc_1006DC6:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_B8)
  loc_1006DE1:         Proc_6_42_129B55C(var_AC, arg_10, 4, 2)
  loc_1006DED:       End If
  loc_1006DED:     End If
  loc_1006DED:   End If
  loc_1006DED: End If
  loc_1006DED: Exit Sub
  loc_1006DEE: arg_78FF = 0
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F82564
  'Data Table: 4EE6F0
  Dim var_86 As Integer
  Dim var_B0 As Long
  loc_F8240C: On Error Goto loc_F8255B
  loc_F82412: var_86 = KeyCode
  loc_F8241B: If (var_86 = 0) Then
  loc_F82441:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_F82467:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F82478:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F824A7:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F824B6:     End If
  loc_F824B6:   End If
  loc_F824B9: Else
  loc_F824BF:   If (var_86 = 1) Then
  loc_F824D5:     var_B0 = CLng(Me.FGrid1.Col)
  loc_F824E5:     If (var_B0 = CLng(1)) Then
  loc_F8250B:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F8251C:         Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F8254B:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "Name", &HFF)
  loc_F8255A:       End If
  loc_F8255A:     End If
  loc_F8255A:   End If
  loc_F8255A: End If
  loc_F8255A: Exit Sub
  loc_F8255B: ' Referenced from: F8240C
  loc_F8255B: Proc_6_60_E63754(0, var_B0, &HFF)
  loc_F82560: Exit Sub
  loc_F82561: CExtInstUnk
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E54E14
  'Data Table: 4EE6F0
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E54DD7: var_86 = Cancel
  loc_E54DE0: If (var_86 = 0) Then
  loc_E54DE9:   Call Proc_186_59_12F7D78(Cancel, var_88)
  loc_E54DF2:   arg_10 = Not(var_88)
  loc_E54DF8: Else
  loc_E54DFE:   If (var_86 = 1) Then
  loc_E54E07:     Call Proc_186_59_12F7D78(Cancel, var_88)
  loc_E54E10:     arg_10 = Not(var_88)
  loc_E54E13:   End If
  loc_E54E13: End If
  loc_E54E13: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F4C274
  'Data Table: 4EE6F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C16B: Me.DGRest.Visible = False
  loc_F4C18A: If (Me.RecordCount > 0) Then
  loc_F4C1C9:   Set var_B4 = Me.txt
  loc_F4C1CF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(8), var_B8)
  loc_F4C1D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4C20A:   var_B0 = Me.Fields.Item("Name")
  loc_F4C229:   Set var_B4 = Me.txt
  loc_F4C22F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(8), var_B8)
  loc_F4C237:   var_B8.Text = CStr(var_B0.Value)
  loc_F4C24D: End If
  loc_F4C258: Set var_A8 = Me.txt
  loc_F4C25E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(8))
  loc_F4C266: var_B0.SetFocus
  loc_F4C272: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E71260
  'Data Table: 4EE6F0
  loc_E7121E: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E71235: Set var_8C = Me.FGPoint
  loc_E71251: Proc_6_138_106E830(Me.DGRest, global_60, CInt(8))
  loc_E7125F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5FC44
  'Data Table: 4EE6F0
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  Dim arg_7800 As Variant
  loc_E5FC0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5FC22: Set var_A8 = Me.TxtGrid
  loc_E5FC28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5FC30: var_AC.Visible = False
  loc_E5FC3C: Call Proc_186_56_E70A50()
  loc_E5FC41: Exit Sub
  loc_E5FC42: arg_7800 = 
End Sub

Private Sub FGrid_UnknownEvent_1 'E66770
  'Data Table: 4EE6F0
  Dim var_8C As TextBox
  Dim var_88 As MSFlexGrid
  loc_E6672C: Set var_88 = Me.TxtGrid
  loc_E66732: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6674C: If (var_8C.Visible = 0) Then
  loc_E66765:   Me.FGrid.BackColorSel = CVar(CLng(global_72))
  loc_E6676D: End If
  loc_E6676D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4BF44
  'Data Table: 4EE6F0
  loc_E4BF1C: Set var_88 = Me.TopCtrl1
  loc_E4BF22: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4BF3B: If (CStr() <> "Browse") Then
  loc_E4BF3E:   Call Proc_186_58_E45D74()
  loc_E4BF43: End If
  loc_E4BF43: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10F4DB4
  'Data Table: 4EE6F0
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F4A90: Set var_88 = Me.TopCtrl1
  loc_10F4A96: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F4ADB: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10F4AE4:   Call Form_KeyDown(Cancel, arg_10)
  loc_10F4AE9: End If
  loc_10F4AED: Set var_88 = Me.TopCtrl1
  loc_10F4AF3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F4B0C: If (CStr() = "Browse") Then
  loc_10F4B0F:   Exit Sub
  loc_10F4B10: End If
  loc_10F4B84: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10F4B9D:   Me.FGrid.CellBackColor = CVar(CLng(global_72))
  loc_10F4BAD:   var_9C = "+{Tab}"
  loc_10F4BB3:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10F4BBD:   Cancel = 0
  loc_10F4BC3: Else
  loc_10F4C1A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10F4C33:     Me.FGrid.CellBackColor = CVar(CLng(global_72))
  loc_10F4C3D:     Cancel = 0
  loc_10F4C40:   End If
  loc_10F4C40: End If
  loc_10F4C6C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10F4C83: Set var_88 = Me.TopCtrl1
  loc_10F4C89: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10F4CA2: If (CStr(Cancel) = "Edit") Then
  loc_10F4CA5:   Exit Sub
  loc_10F4CA6: End If
  loc_10F4CB7: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10F4CCD:   var_EC = CLng(Me.FGrid.Col)
  loc_10F4CDD:   If (var_EC = CLng(1)) Then
  loc_10F4CF3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F4D0B:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F4D10:     var_11C = vbNullString
  loc_10F4D1A:     Set var_B4 = Me.FGrid
  loc_10F4D20:     LateIdCallSt
  loc_10F4D3B:   Else
  loc_10F4D42:     If (var_EC = CLng(2)) Then
  loc_10F4D58:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F4D70:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F4D75:       var_11C = vbNullString
  loc_10F4D7F:       Set var_B4 = Me.FGrid
  loc_10F4D85:       LateIdCallSt
  loc_10F4D9D:     End If
  loc_10F4D9D:   End If
  loc_10F4D9D: End If
  loc_10F4DA3: If (Cancel = &HD) Then
  loc_10F4DAB:   global_56 = 0
  loc_10F4DAE: End If
  loc_10F4DB0: Cancel = 0
  loc_10F4DB3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E5DC98
  'Data Table: 4EE6F0
  loc_E5DC5C: Set var_88 = Me.TopCtrl1
  loc_E5DC62: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5DC7B: If (CStr() = "Browse") Then
  loc_E5DC7E:   Exit Sub
  loc_E5DC7F: End If
  loc_E5DC88: Call FGrid_UnknownEvent_C()
  loc_E5DC95: Exit Sub
  loc_E5DC96: Set arg_7800 = 0
End Sub

Private Sub FGrid_UnknownEvent_C '1014410
  'Data Table: 4EE6F0
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1014200: Set var_88 = Me.TopCtrl1
  loc_1014206: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101421F: If (CStr() = "Browse") Then
  loc_1014222:   Exit Sub
  loc_1014223: End If
  loc_1014236: var_A0 = CLng(Me.FGrid.Col)
  loc_1014246: If (var_A0 = CLng(1)) Then
  loc_101424D:   Set var_C4 = Me.FGrid
  loc_1014271:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_101429E:   Set var_B4 = var_C4
  loc_10142B0:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10142D8:   Set var_88 = Me.TxtGrid
  loc_10142DE:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10142E6:   0 = var_B4.Text
  loc_10142FF:   If (Len(var_9C) <= 1) Then
  loc_101430E:     Set var_88 = Me.TxtGrid
  loc_1014314:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_101431C:     var_CA = var_B4.Text
  loc_101432D:     Set var_B8 = Me.TxtGrid
  loc_1014333:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_101433B:     var_C4.Text = var_9C
  loc_101434E:   End If
  loc_101435A:   Set var_88 = Me.TxtGrid
  loc_1014360:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_101437A:   Set var_B8 = Me.TxtGrid
  loc_1014380:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014388:   var_C4.SelStart = Len(var_B4.Text)
  loc_101439E: Else
  loc_10143A5:   If (var_A0 = CLng(2)) Then
  loc_10143E6:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_10143F8:   End If
  loc_10143F8: End If
  loc_1014402: If (CLng(Cancel) <> &HD) Then
  loc_101440A:   global_56 = &HFF
  loc_101440D: End If
  loc_101440D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1030364
  'Data Table: 4EE6F0
  Dim var_8C As MSFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_1030130: Set var_8C = Me.TopCtrl1
  loc_1030136: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103014F: If (CStr() = "Browse") Then
  loc_1030152:   Exit Sub
  loc_1030153: End If
  loc_1030170: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1030173:   Exit Sub
  loc_1030174: End If
  loc_1030185: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10301A7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10301E1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_1030203:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1030219:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1030222:         Set var_114 = Me.FGrid
  loc_103023D:       Else
  loc_1030250:         Me.FGrid.Rows = 1
  loc_1030276:         var_9C = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_103027E:         Set var_114 = Me.FGrid
  loc_10302AB:         Me.FGrid.FixedRows = 1
  loc_10302B3:       End If
  loc_10302D8:       For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_10302E2:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_10302EA:         var_E0 = CVar(CLng(0)) 'Long
  loc_10302F4:         var_9C = CVar(CStr(var_86)) 'String
  loc_10302FC:         Set var_8C = Me.FGrid
  loc_1030302:         LateIdCallSt
  loc_1030313:       Next var_120 'Integer
  loc_1030318:     End If
  loc_103031B:   Else
  loc_103033C:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_103034C:   End If
  loc_1030350:   Set var_8C = Me.FGrid
  loc_1030361: End If
  loc_1030361: Exit Sub
  loc_1030362: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45B84
  'Data Table: 4EE6F0
  Dim var_8C As TextBox
  loc_E45B58: Call Proc_186_56_E70A50()
  loc_E45B68: Set var_88 = Me.TxtGrid
  loc_E45B6E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45B76: var_8C.Visible = False
  loc_E45B82: Exit Sub
End Sub

Private Sub Form_Load() '1204114
  'Data Table: 4EE6F0
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_D8 As DataGrid
  Dim unk_4EE6F7 As Connection15
  loc_1203C68: On Error Goto loc_12040CD
  loc_1203C7A: Me.LblUser.Left = CDbl(13500)
  loc_1203C91: Me.LblUser.Top = CDbl(7800)
  loc_1203CA8: Me.LblLDt.Top = CDbl(8160)
  loc_1203CBF: Me.LblLDt.Left = CDbl(13500)
  loc_1203CCE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1203CE6: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1203D01: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1203D17: Me.framWeek.BackColor = CLng(MemVar_1F951B4)
  loc_1203D29: Set var_8C = Me.TopCtrl1
  loc_1203D2F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1203D3D: Call 0.Method_arg_50 (var_B0)
  loc_1203D4D: Set var_8C = Me.TopCtrl1
  loc_1203D53: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1203D5E: Call Proc_186_50_F9B3D0()
  loc_1203D63: Call Proc_186_51_F9B904()
  loc_1203D72: Set global_60 = New 
  loc_1203D84: Me.TopCtrl1.CursorLocation = 3
  loc_1203DAE: var_C0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String
  loc_1203DB8: Me.Open var_C0, CVar(MemVar_1F95044), 2
  loc_1203DCC: CVarUnk
  loc_1203DD1: VerifyVarObj
  loc_1203DD7: Set var_8C = Me.DGRest
  loc_1203DDD: LateIdStAd
  loc_1203DFF: Call 0.Method_Form_Load0 (CInt(8), var_C4, var_C8, Me.txt)
  loc_1203E07: global_60 = var_C4.Left
  loc_1203E1E: Me.DGRest.Left = CVar(var_C8)
  loc_1203E3A: Set var_CC = Me.txt
  loc_1203E40: Call 0.Method_Form_Load0 (CInt(8), var_D0, var_D4)
  loc_1203E48: 3 = var_D0.Height
  loc_1203E5B: Set var_8C = Me.txt
  loc_1203E61: Call 0.Method_Form_Load0 (CInt(8), var_C4)
  loc_1203E69: var_C8 = var_C4.Top
  loc_1203E79: var_9C = CVar(((var_C8 + var_D4) + CDbl(&H1E))) 'Single
  loc_1203E82: Set var_D8 = Me.DGRest
  loc_1203E88: var_D8.Top = CVar(var_C8)
  loc_1203EA4: Set global_68 = New 
  loc_1203EB6: Me.var_D8.CursorLocation = 3
  loc_1203ED9: var_B0 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_1203EE0: var_C0 = CVar(var_B0 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by I.Name  ") 'String
  loc_1203EFE: CVarUnk
  loc_1203F03: VerifyVarObj
  loc_1203F09: Set var_8C = Me.DGItem
  loc_1203F0F: LateIdStAd
  loc_1203F39: Me.DGItem.CursorLocation = 3
  loc_1203F63: var_C0 = CVar("Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_1203F6D: r_C0, CVar(MemVar_1F95044), 3 var_C0, CVar(MemVar_1F95044), 2
  loc_1203F81: CVarUnk
  loc_1203F86: VerifyVarObj
  loc_1203F8C: Set var_8C = Me.DGScheme
  loc_1203F92: LateIdStAd
  loc_1203FAE: Set var_8C = Me.txt
  loc_1203FB4: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8, var_8C, New, 3)
  loc_1203FBC: -1 = var_C4.Left
  loc_1203FD3: Me.DGScheme.Left = CVar(var_C8)
  loc_1203FEF: Set var_CC = Me.txt
  loc_1203FF5: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4, var_8C)
  loc_1203FFD: global_68 = var_D0.Height
  loc_1204016: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8)
  loc_120401E: 1 = var_C4.Top
  loc_120402E: var_9C = CVar(((var_C8 + var_D4) + CDbl(&H1E))) 'Single
  loc_120403D: Me.DGScheme.Top = CVar(var_C8)
  loc_1204063: var_B0 = "SELECT NH.Code, NH.RestCode, D.Name as RestName, NH.AppDate, NH.EndDate, NH.Active, NH.FromTime, Nh.ToTime, SM.Name As SchemeName, NH.SchemeCode, NH.Days As DayCode, NH.Site_Code,NH.LOGSITE_CODE  FROM (((SchemeItemDetail NH Left Join ItemMast IM on NH.ItemCode = IM.code And NH.RestCode = IM.Restcode) Left join Depart D On D.Code=NH.RestCode) Left Join SchemeMast SM On SM.Code=NH.SchemeCode) WHERE NH.SNo=1 And (NH.LOGSITE_CODE='" & MemVar_1F95078
  loc_1204073: unk_4EE6F7.Execute var_B0 & "' or NH.LOGSITE_CODE='HO')", var_C0, -1
  loc_12040AE: var_B0 = "INI"
  loc_12040BC: Call Proc_186_52_F9BFF0(Proc_5_1_100EC1C(var_B0, Me, Me.txt), Me)
  loc_12040C7: Call Proc_186_55_153AFC0(-1)
  loc_12040CC: Exit Sub
  loc_12040CD: ' Referenced from: 1203C68
  loc_12040D5: Set var_8C = Err()
  loc_12040DB: Call 0.Method_arg_2C (var_B0)
  loc_12040FC: MsgBox(CVar(var_B0), &H40, "Information", var_100, var_120)
  loc_120410F: Exit Sub
  loc_1204110: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4248
  'Data Table: 4EE6F0
  Dim var_8C As Label
  loc_ED41A6: Call 0.Method_arg_50 (var_88)
  loc_ED41B8: Me.LblFormCaption.Caption = var_88
  loc_ED41D1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED41DD: Set var_A0 = Me.TopCtrl1
  loc_ED41E3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED41F0: Set var_8C = Me.TopCtrl1
  loc_ED41F6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4210: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED422B: Call 0.Method_arg_100 (var_B8)
  loc_ED423D: Me.LblFormCaption.Width = var_B8
  loc_ED4245: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E53E54
  'Data Table: 4EE6F0
  loc_E53E27: Set global_68 = Nothing
  loc_E53E39: Set global_60 = Nothing
  loc_E53E4B: Set global_52 = Nothing
  loc_E53E52: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B8FC
  'Data Table: 4EE6F0
  loc_E8B898: On Error Goto loc_E8B8B8
  loc_E8B8AF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8B8B7: Exit Sub
  loc_E8B8B8: ' Referenced from: E8B898
  loc_E8B8C0: Set var_88 = Err()
  loc_E8B8C6: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B8E7: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B8FA: Exit Sub
  loc_E8B8FB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F03F00
  'Data Table: 4EE6F0
  Dim var_A0 As TextBox
  Dim var_88 As Label
  loc_F03E20: On Error Goto loc_F03EF9
  loc_F03E27: Set var_88 = Me.TopCtrl1
  loc_F03E2D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F03E46: If (CStr() = "Add") Then
  loc_F03E49:   Call Proc_186_54_F59044()
  loc_F03E59:   Set var_88 = Me.txt
  loc_F03E5F:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8))
  loc_F03E67:   var_A0.SetFocus
  loc_F03E76: Else
  loc_F03E99:   Call Proc_186_52_F9BFF0(Proc_5_1_100EC1C("ADD", Me), global_52)
  loc_F03EA4:   Call Proc_186_53_FCE598(var_A0)
  loc_F03EB4:   Set var_88 = Me.txt
  loc_F03EBA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F03EC2:   var_A0.SetFocus
  loc_F03ECE: End If
  loc_F03EDB: Me.LblUser.Caption = vbNullString
  loc_F03EF0: Me.LblLDt.Caption = vbNullString
  loc_F03EF8: Exit Sub
  loc_F03EF9: ' Referenced from: F03E20
  loc_F03EF9: Proc_6_60_E63754(var_A0)
  loc_F03EFE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EFCE84
  'Data Table: 4EE6F0
  Dim var_118 As TextBox
  loc_EFCDB8: On Error Goto loc_EFCE7D
  loc_EFCDF2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EFCE18:   Call Proc_186_52_F9BFF0(Proc_5_1_100EC1C("INI", Me))
  loc_EFCE23:   Call Proc_186_55_153AFC0(global_52)
  loc_EFCE2C:   Set var_110 = Me.FGrid
  loc_EFCE48:   Set var_110 = Me.TxtGrid
  loc_EFCE4E:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (0, var_118)
  loc_EFCE56:   var_118.Visible = False
  loc_EFCE65: Else
  loc_EFCE6B:   Call 0.Method_arg_1E8 (var_110)
  loc_EFCE73:   Call var_110.SetFocus
  loc_EFCE7C: End If
  loc_EFCE7C: Exit Sub
  loc_EFCE7D: ' Referenced from: EFCDB8
  loc_EFCE7D: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_EFCE82: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1198A0C
  'Data Table: 4EE6F0
  Dim unk_4EE6F7 As Connection15
  Dim Me As Recordset15
  Dim var_AC As Fields15
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_144 As String
  loc_119863C: On Error Goto loc_11989BE
  loc_119864D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1198650:   Exit Sub
  loc_1198651: End If
  loc_119865A: unk_4EE6F7.BeginTrans var_98
  loc_1198670: var_94 = Me.Bookmark 'Variant
  loc_11986C6: var_120 = "Delete From SchemeItemDetail Where Code = '" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_11986DD: unk_4EE6F7.Execute CStr(var_120 & "' or LOGSITE_CODE='HO')"), var_164, -1
  loc_1198745: var_100 = "Delete from FreeItemDetail WHERE Code ='" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='" 
  loc_119874F: var_120 = var_100 & CVar(MemVar_1F95078) 
  loc_1198766: unk_4EE6F7.Execute CStr(var_120 & "' or LOGSITE_CODE='HO')"), var_164, -1
  loc_11987B5: var_1A0 = 0
  loc_11987C8: var_198 = 0
  loc_11987D3: var_194 = 0
  loc_11987E6: var_18C = 0
  loc_11987F1: var_188 = 0
  loc_1198804: var_180 = 0
  loc_119884D: Proc_154_5_10E3BD4(MemVar_1F95044, "SchemeItemDetail", "Code", 2, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_11988A4: var_1A0 = 0
  loc_11988B7: var_198 = 0
  loc_11988C2: var_194 = 0
  loc_1198933: var_144 = "FreeItemDetail"
  loc_119893C: Proc_154_5_10E3BD4(MemVar_1F95044, var_144, "Code", 2, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_119896A: unk_4EE6F7.CommitTrans
  loc_119897A: Me.Requery -1
  loc_119897F: Call Proc_186_55_153AFC0(0, 0, 0, 0)
  loc_11989A0: Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11989AC: Set var_AC = Me.FGrid
  loc_11989BD: Exit Sub
  loc_11989BE: ' Referenced from: 119863C
  loc_11989C4: unk_4EE6F7.RollbackTrans
  loc_11989D1: Set var_AC = Err()
  loc_11989D7: Call 0.Method_arg_2C (var_144, FGrid.DispID_8001, 0)
  loc_11989F8: MsgBox(CVar(var_144), &H30, " Deletion Error ", var_100, var_120)
  loc_1198A0B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'ED8F30
  'Data Table: 4EE6F0
  Dim var_9C As TextBox
  Dim var_94 As Label
  loc_ED8E80: On Error Goto loc_ED8F2A
  loc_ED8E91: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_ED8E94:   Exit Sub
  loc_ED8E95: End If
  loc_ED8EB8: Call Proc_186_52_F9BFF0(Proc_5_1_100EC1C("EDIT", Me))
  loc_ED8EC7: Set var_94 = Me.FGrid
  loc_ED8EE5: Set var_94 = Me.txt
  loc_ED8EEB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_9C, &HFF)
  loc_ED8EF3: var_9C.Enabled = FGrid.DispID_8001
  loc_ED8F0C: Me.LblUser.Caption = vbNullString
  loc_ED8F21: Me.LblLDt.Caption = vbNullString
  loc_ED8F29: Exit Sub
  loc_ED8F2A: ' Referenced from: ED8E80
  loc_ED8F2A: Proc_6_60_E63754(global_52)
  loc_ED8F2F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19FD0
  'Data Table: 4EE6F0
  loc_E19FC5: Me.Global.Unload Me
  loc_E19FCD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F29368
  'Data Table: 4EE6F0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F29268: On Error Goto loc_F29300
  loc_F29274: var_88 = Me.RecordCount
  loc_F29282: If (var_88 <= 0) Then
  loc_F2928B:   var_B8 = "Information"
  loc_F292A6:   MsgBox("No Records Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F292B6:   Exit Sub
  loc_F292B7: End If
  loc_F292BE: var_10C = "SELECT SD.Code as SearchCode ,IM.Name As ItemName, D.Name as RestName ,Cast(SD.AppDate as Varchar(11)) as StartDate,Cast(SD.EndDate as Varchar(11)) as EndDate , SD.Active , SD.FromTime , SD.ToTime , SM.Name As SchemeName FROM (((SchemeItemDetail SD Left Join ItemMast IM on SD.ItemCode = IM.code And SD.RestCode = IM.RestCode) Left Join SchemeMast SM On SM.Code=SD.SchemeCode) Left Join Depart D On D.Code=SD.RestCode)  WHERE (SD.LOGSITE_CODE='" & MemVar_1F95078
  loc_F292C5: MemVar_1F950E4 = var_10C & "' or SD.LOGSITE_CODE='HO') "
  loc_F292D2: MemVar_1F95120 = Me
  loc_F292D9: var_10C = "2000,2000,1200,1200,700,1050,800,2100"
  loc_F292DF: Proc_6_126_F1C850(var_10C)
  loc_F292FA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F292FF: Exit Sub
  loc_F29300: ' Referenced from: F29268
  loc_F29308: Set var_110 = Err()
  loc_F2930E: Call 0.Method_arg_1C (var_88)
  loc_F2931F: If (var_88 <> 0) Then
  loc_F2932A:   Set var_110 = Err()
  loc_F29330:   Call 0.Method_arg_2C (var_10C)
  loc_F29351:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F29364: End If
  loc_F29364: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E343E8
  'Data Table: 4EE6F0
  loc_E343D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E343E0: Call Proc_186_55_153AFC0(global_52)
  loc_E343E5: Exit Sub
  loc_E343E6: 1 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34808
  'Data Table: 4EE6F0
  loc_E347F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34800: Call Proc_186_55_153AFC0(global_52)
  loc_E34805: Exit Sub
  loc_E34806: 4 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34748
  'Data Table: 4EE6F0
  loc_E34738: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34740: Call Proc_186_55_153AFC0(global_52)
  loc_E34745: Exit Sub
  loc_E34746: 3 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34508
  'Data Table: 4EE6F0
  loc_E344F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34500: Call Proc_186_55_153AFC0(global_52)
  loc_E34505: Exit Sub
  loc_E34506: 2 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E45678
  'Data Table: 4EE6F0
  Dim Me As Variant
  loc_E4564F: Me.Requery -1
  loc_E4565F: Me.Requery -1
  loc_E4566F: Me.Requery -1
  loc_E45674: Exit Sub
  loc_E45675: MeFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '165B03C
  'Data Table: 4EE6F0
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_160 As String
  Dim var_D8 As Variant
  Dim var_A0 As Long
  Dim unk_4EE6F7 As Connection15
  Dim var_198 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim Me As Recordset15
  Dim var_6CC As Double
  Dim var_1B8 As TextBox
  Dim var_1E4 As Variant
  Dim var_230 As TextBox
  Dim var_26C As TextBox
  Dim var_2A8 As TextBox
  Dim var_2F4 As TextBox
  Dim var_340 As TextBox
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_3D8 As Variant
  Dim var_428 As Variant
  Dim var_6D4 As Double
  Dim var_4B8 As TextBox
  Dim var_1A4 As String
  Dim var_1B0 As String
  Dim var_1CC As Variant
  Dim var_244 As Variant
  Dim var_318 As Variant
  Dim var_52C As Variant
  Dim var_65C As Variant
  Dim var_1E0 As MSFlexGrid
  Dim var_1A8 As String
  Dim var_1BC As String
  Dim var_1E8 As String
  Dim var_4BC As String
  Dim var_6DC As String
  Dim var_208 As Variant
  loc_1659AC4: On Error Goto loc_165AFEA
  loc_1659AC7: Call Proc_186_56_E70A50()
  loc_1659AD0: var_86 = CByte(0) 'Byte
  loc_1659AFC: For var_B8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_B8 'Byte
  loc_1659B06:   var_9C = CByte(1) 'Byte
  loc_1659B0F:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659B19:   var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1659B33:   var_FC = CStr(Me.FGrid.TextMatrix))
  loc_1659B40:   var_10C = CVar(CLng(var_9A)) 'Long
  loc_1659B4F:   var_12C = CVar(CLng((CInt(var_9C) + 1))) 'Long
  loc_1659B88:   If Not((var_12C And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1659BB3:     For var_158 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 2)): var_9C = var_158 'Byte
  loc_1659BBE:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659BC8:       var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1659BF3:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1659C3C:         MsgBox(CVar("Value Required In " & Me.frSchemeItem.Caption & " Row " & CStr(var_9A)), &H40, "Data Missing!", var_170, var_180)
  loc_1659C5A:         Exit Sub
  loc_1659C5B:       End If
  loc_1659C5E:     Next var_158 'Byte
  loc_1659C64:   End If
  loc_1659C67: Next var_B8 'Byte
  loc_1659C95: For var_184 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_9A = var_184 'Byte
  loc_1659C9F:   var_9C = CByte(1) 'Byte
  loc_1659CA8:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659CB2:   var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1659CCC:   var_FC = CStr(Me.FGrid1.TextMatrix))
  loc_1659CD9:   var_10C = CVar(CLng(var_9A)) 'Long
  loc_1659CE8:   var_12C = CVar(CLng((CInt(var_9C) + 1))) 'Long
  loc_1659CF1:   Set var_140 = Me.FGrid1
  loc_1659D21:   If Not((var_12C And (CStr(var_140.TextMatrix)) = vbNullString))) Then
  loc_1659D4C:     For var_188 = CByte(1) To CByte((CLng(Me.FGrid1.Cols) - 2)): var_9C = var_188 'Byte
  loc_1659D57:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659D61:       var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1659D8C:       If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_1659DD5:         MsgBox(CVar("Value Required In " & Me.FrFreeItem.Caption & " Row " & CStr(var_9A)), &H40, "Data Missing!", var_170, var_180)
  loc_1659DF3:         Exit Sub
  loc_1659DF4:       End If
  loc_1659DF7:     Next var_188 'Byte
  loc_1659DFD:   End If
  loc_1659E00: Next var_184 'Byte
  loc_1659E09: Call Proc_186_60_E707FC(var_18A)
  loc_1659E14: If (var_18A = 0) Then
  loc_1659E22:   var_150 = "Days Required"
  loc_1659E32:   var_B4 = "Choose atleast One Day for Scheme !"
  loc_1659E38:   MsgBox(var_B4, &H40, var_150, var_170, var_180)
  loc_1659E48:   Exit Sub
  loc_1659E4C: Else
  loc_1659E57:   For var_18E = CByte(1) To CByte(7):   var_9A = var_18E 'Byte
  loc_1659E6D:     Set var_A4 = Me.chkday
  loc_1659E73:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_9A), var_140)
  loc_1659E91:     If (CLng(var_140.Value) = 1) Then
  loc_1659EA3:       var_A0 = ((var_A0 * &HA) + CLng(var_9A))
  loc_1659EA6:     End If
  loc_1659EA9:   Next var_18E 'Byte
  loc_1659EAF: End If
  loc_1659EB8: unk_4EE6F7.BeginTrans var_194
  loc_1659EC1: var_86 = CByte(1) 'Byte
  loc_1659EC9: Set var_A4 = Me.TopCtrl1
  loc_1659ECF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1659EE8: If (CStr() = "Add") Then
  loc_1659EF1:   var_D8 = 0
  loc_1659F0E:   var_FC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SchemeItemDetail Where SITE_CODE='" & MemVar_1F95070
  loc_1659F1E:   unk_4EE6F7.Execute CStr() & "'", var_B4, -1
  loc_1659F26:   var_A4 = var_A4.Fields
  loc_1659F2E:   var_D8 = var_140.Item(var_140)
  loc_1659F36:   var_198 = var_198.Value
  loc_1659F6F:   var_170 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1659F9D:   var_180 = (1 + Format(CStr(var_150), "0000"))
  loc_1659FA8:   global_84 = CStr(var_180)
  loc_1659FBD: Else
  loc_1659FF1:   global_84 = CStr(Me.Fields.Item("Code").Value)
  loc_165A002: End If
  loc_165A006: Set var_A4 = Me.TopCtrl1
  loc_165A00C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_165A025: If (CStr(var_170) = "Add") Then
  loc_165A050:   For var_19C = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_19C 'Byte
  loc_165A05B:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165A063:     var_E8 = CVar(CLng(3)) 'Long
  loc_165A08E:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_165A096:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165A09E:       var_E8 = CVar(CLng(0)) 'Long
  loc_165A0C0:       var_6CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165A0D1:       Set var_140 = Me.txt
  loc_165A0D7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A8, var_6CC, var_E8)
  loc_165A0DF:       var_C8 = var_198.Tag
  loc_165A0F2:       Set var_1B4 = Me.txt
  loc_165A0F8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B8, var_1BC, var_E8)
  loc_165A100:       var_C8 = var_1B8.Text
  loc_165A10E:       Proc_6_7_F26918(var_170, CVar(var_1BC))
  loc_165A121:       Set var_1E0 = Me.txt
  loc_165A127:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8)
  loc_165A12F:       CByte(1) = var_1E4.Text
  loc_165A13D:       Proc_6_7_F26918(var_208, CVar(var_1E8))
  loc_165A150:       Set var_22C = Me.txt
  loc_165A156:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_165A171:       Set var_268 = Me.txt
  loc_165A177:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_26C)
  loc_165A192:       Set var_2A4 = Me.txt
  loc_165A198:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A8)
  loc_165A1B3:       Set var_2F0 = Me.txt
  loc_165A1B9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2F4)
  loc_165A1D4:       Set var_33C = Me.txt
  loc_165A1DA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_340)
  loc_165A1EC:       var_394 = CVar(CLng(var_9A)) 'Long
  loc_165A1F4:       var_3B4 = CVar(CLng(3)) 'Long
  loc_165A203:       var_3D8 = Me.FGrid.TextMatrix)
  loc_165A214:       var_428 = CVar(CLng(var_9A)) 'Long
  loc_165A23E:       var_6D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165A24F:       Set var_4B4 = Me.txt
  loc_165A255:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4B8, var_4BC, var_6D4, CVar(CLng(2)))
  loc_165A25D:       var_428 = var_4B8.Text
  loc_165A29A:       Proc_6_7_F26918(var_62C, Date, var_3D8)
  loc_165A2B3:       var_FC = "Insert into SchemeItemDetail(Code,Sno,restCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,ItemCode,Qty,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_165A2D0:       var_1A4 = var_FC & global_84 & "'," & CStr(var_6CC)
  loc_165A2DE:       var_1B0 = var_1A4 & ",'" & var_1A8
  loc_165A2EB:       var_1CC = CVar(var_1B0 & "',") & var_170 
  loc_165A30B:       var_244 = CVar(var_230.Text) 'String
  loc_165A347:       var_318 = var_1CC & "," & var_208 & ",'" & var_244 & ":" & CVar(var_26C.Text) & "','" & CVar(var_2A8.Text) & ":" & CVar(var_2F4.Text) 
  loc_165A392:       var_52C = var_318 & "','" & CVar(var_340.Tag) & "','" & CVar(CStr(var_3D8)) & "'," & CVar(var_6D4) & ", '" & IIf((var_4BC = "Yes"), "Y", "N") 
  loc_165A3E5:       var_65C = var_52C & "'," & CVar(var_A0) & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_62C & ",'A','" 
  loc_165A406:       unk_4EE6F7.Execute CStr(var_65C & CVar(MemVar_1F95078) & "')"), var_6C0, -1
  loc_165A4BE:     End If
  loc_165A4C1:   Next var_19C 'Byte
  loc_165A4EF:   For var_6D8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_9A = var_6D8 'Byte
  loc_165A4FA:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165A502:     var_E8 = CVar(CLng(3)) 'Long
  loc_165A52D:     If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_165A535:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165A54C:       var_B4 = Me.FGrid1.TextMatrix)
  loc_165A55F:       var_6CC = Val(CStr(var_B4))
  loc_165A570:       Set var_140 = Me.txt
  loc_165A576:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A4, var_6CC, CVar(CLng(0)))
  loc_165A57E:       var_C8 = var_198.Tag
  loc_165A591:       Set var_1B4 = Me.txt
  loc_165A597:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_1B0)
  loc_165A59F:       var_E8 = var_1B8.Tag
  loc_165A5A9:       var_10C = CVar(CLng(var_9A)) 'Long
  loc_165A5B1:       var_12C = CVar(CLng(3)) 'Long
  loc_165A5E2:       Set var_1E4 = Me.FGrid1
  loc_165A5E8:       var_170 = var_1E4.TextMatrix)
  loc_165A5FB:       var_6D4 = Val(CStr(var_170))
  loc_165A60C:       Proc_6_7_F26918(var_1CC, Date, var_6D4, CVar(CLng(2)), CVar(CLng(var_9A)))
  loc_165A628:       var_FC = "Insert Into FreeItemDetail (Code,Sno,restcode,schemecode,FreeItem,FreeQty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_165A642:       var_1A8 = var_FC & "'," & CStr(var_6CC) & ",'"
  loc_165A650:       var_1BC = var_1A8 & var_1A4 & "','"
  loc_165A657:       var_1E8 = var_1BC & var_1B0
  loc_165A67C:       var_4BC = var_1E8 & "','" & CStr(Me.FGrid1.TextMatrix)) & "'," & CStr(var_6D4)
  loc_165A6AE:       var_208 = CVar(var_4BC & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_1CC & ",'A','" 
  loc_165A6CF:       unk_4EE6F7.Execute CStr(var_208 & CVar(MemVar_1F95078) & "')"), var_244, -1
  loc_165A731:     End If
  loc_165A734:   Next var_6D8 'Byte
  loc_165A73D: Else
  loc_165A769:   var_160 = "Delete From SchemeItemDetail Where Code = '" & global_84 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')"
  loc_165A772:   unk_4EE6F7.Execute var_160, var_B4, -1
  loc_165A7B4:   var_160 = "Delete from FreeItemDetail WHERE Code ='" & global_84 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') "
  loc_165A7BD:   unk_4EE6F7.Execute var_160, var_B4, -1
  loc_165A7FB:   For var_6EC = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):   var_9A = var_6EC 'Byte
  loc_165A806:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165A80E:     var_E8 = CVar(CLng(3)) 'Long
  loc_165A839:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_165A841:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165A86B:       var_6CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165A87C:       Set var_140 = Me.txt
  loc_165A882:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A8, var_6CC, CVar(CLng(0)), var_C8)
  loc_165A88A:       var_E8 = var_198.Tag
  loc_165A89D:       Set var_1B4 = Me.txt
  loc_165A8A3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B8, var_1BC, var_C8)
  loc_165A8AB:       CByte(1) = var_1B8.Text
  loc_165A8B9:       Proc_6_7_F26918(var_170, CVar(var_1BC))
  loc_165A8CC:       Set var_1E0 = Me.txt
  loc_165A8D2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8)
  loc_165A8DA:       var_A4 = var_1E4.Text
  loc_165A8E8:       Proc_6_7_F26918(var_208, CVar(var_1E8))
  loc_165A8FB:       Set var_22C = Me.txt
  loc_165A901:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_165A91C:       Set var_268 = Me.txt
  loc_165A922:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_26C)
  loc_165A93D:       Set var_2A4 = Me.txt
  loc_165A943:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A8)
  loc_165A95E:       Set var_2F0 = Me.txt
  loc_165A964:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2F4)
  loc_165A97F:       Set var_33C = Me.txt
  loc_165A985:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_340)
  loc_165A997:       var_394 = CVar(CLng(var_9A)) 'Long
  loc_165A99F:       var_3B4 = CVar(CLng(3)) 'Long
  loc_165A9AE:       var_3D8 = Me.FGrid.TextMatrix)
  loc_165A9BF:       var_428 = CVar(CLng(var_9A)) 'Long
  loc_165A9E9:       var_6D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165A9FA:       Set var_4B4 = Me.txt
  loc_165AA00:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4B8, var_4BC, var_6D4, CVar(CLng(2)))
  loc_165AA08:       var_428 = var_4B8.Text
  loc_165AA45:       Proc_6_7_F26918(var_62C, Date, var_3D8)
  loc_165AA5E:       var_FC = "Insert into SchemeItemDetail(Code,Sno,restCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,ItemCode,Qty,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_165AA7B:       var_1A4 = var_FC & global_84 & "'," & CStr(var_6CC)
  loc_165AA89:       var_1B0 = var_1A4 & ",'" & var_1A8
  loc_165AA96:       var_1CC = CVar(var_1B0 & "',") & var_170 
  loc_165AAB6:       var_244 = CVar(var_230.Text) 'String
  loc_165AAF2:       var_318 = var_1CC & "," & var_208 & ",'" & var_244 & ":" & CVar(var_26C.Text) & "','" & CVar(var_2A8.Text) & ":" & CVar(var_2F4.Text) 
  loc_165AB3D:       var_52C = var_318 & "','" & CVar(var_340.Tag) & "','" & CVar(CStr(var_3D8)) & "'," & CVar(var_6D4) & ", '" & IIf((var_4BC = "Yes"), "Y", "N") 
  loc_165AB90:       var_65C = var_52C & "'," & CVar(var_A0) & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_62C & ",'E','" 
  loc_165ABB1:       unk_4EE6F7.Execute CStr(var_65C & CVar(MemVar_1F95078) & "')"), var_6C0, -1
  loc_165AC69:     End If
  loc_165AC6C:   Next var_6EC 'Byte
  loc_165AC9A:   For var_6F0 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):   var_9A = var_6F0 'Byte
  loc_165ACA5:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165ACAD:     var_E8 = CVar(CLng(3)) 'Long
  loc_165ACD8:     If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_165ACE0:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165AD0A:       var_6CC = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_165AD1B:       Set var_140 = Me.txt
  loc_165AD21:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A4, var_6CC, CVar(CLng(0)))
  loc_165AD29:       var_C8 = var_198.Tag
  loc_165AD3C:       Set var_1B4 = Me.txt
  loc_165AD42:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_1B0)
  loc_165AD4A:       var_E8 = var_1B8.Tag
  loc_165AD54:       var_10C = CVar(CLng(var_9A)) 'Long
  loc_165AD5C:       var_12C = CVar(CLng(3)) 'Long
  loc_165AD6B:       var_150 = Me.FGrid1.TextMatrix)
  loc_165AD93:       var_170 = Me.FGrid1.TextMatrix)
  loc_165ADA6:       var_6D4 = Val(CStr(var_170))
  loc_165ADAC:       var_180 = Date
  loc_165ADB7:       Proc_6_7_F26918(var_1CC, var_180, var_6D4, CVar(CLng(2)), CVar(CLng(var_9A)))
  loc_165ADD3:       var_FC = "Insert Into FreeItemDetail (Code,Sno,restcode,schemecode,FreeItem,FreeQty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_165AE35:       var_6DC = var_FC & "'," & CStr(var_6CC) & ",'" & var_1A4 & "','" & var_1B0 & "','" & CStr(var_150) & "'," & CStr(var_6D4) & ",'" & MemVar_1F95070
  loc_165AE7A:       unk_4EE6F7.Execute CStr(CVar(var_6DC & "','" & MemVar_1F950C8 & "',") & var_1CC & ",'E','" & CVar(MemVar_1F95078) & "')"), var_244, -1
  loc_165AEDC:     End If
  loc_165AEDF:   Next var_6F0 'Byte
  loc_165AEE5: End If
  loc_165AEEB: unk_4EE6F7.CommitTrans
  loc_165AEF4: var_86 = CByte(0) 'Byte
  loc_165AF03: Me.Requery -1
  loc_165AF30: Me.Find "Code='" & global_84 & "'", 0, 1
  loc_165AF40: Set var_A4 = Me.TopCtrl1
  loc_165AF46: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_165AF5F: If (CStr() = "Add") Then
  loc_165AF62:   Call TopCtrl1_UnknownEvent_A()
  loc_165AF67:   Exit Sub
  loc_165AF68: End If
  loc_165AF7D: var_FC = "INI"
  loc_165AF8B: Call Proc_186_52_F9BFF0(Proc_5_1_100EC1C(var_FC, Me))
  loc_165AFA1: Set var_A4 = Me.TxtGrid
  loc_165AFA7: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_140)
  loc_165AFAF: var_140.Visible = False
  loc_165AFD4: MsgBox("Record Saved !!", &H40, var_150, var_170, var_180)
  loc_165AFE4: Call Proc_186_55_153AFC0(global_52)
  loc_165AFE9: Exit Sub
  loc_165AFEA: ' Referenced from: 1659AC4
  loc_165AFF3: If (CInt(var_86) = 1) Then
  loc_165AFFC:   unk_4EE6F7.RollbackTrans
  loc_165B001: End If
  loc_165B009: Set var_A4 = Err()
  loc_165B00F: Call 0.Method_arg_2C (var_FC)
  loc_165B028: MsgBox(CVar(var_FC), &H10, var_150, var_170, var_180)
  loc_165B03B: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FFEF7C
  'Data Table: 4EE6F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_F0 As Variant
  Dim var_120 As Variant
  loc_FFED93: Me.DGItem.Visible = False
  loc_FFEDB2: If (Me.RecordCount > 0) Then
  loc_FFEDEF:   Set var_B4 = Me.TxtGrid
  loc_FFEDF5:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FFEDFD:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FFEE36:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FFEE4C:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFEE54:     var_F0 = CVar(CLng(1)) 'Long
  loc_FFEE87:     var_120 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FFEE8F:     Set var_B8 = Me.FGrid
  loc_FFEE95:     LateIdCallSt
  loc_FFEEC4:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFEECC:     var_F0 = CVar(CLng(3)) 'Long
  loc_FFEEEE:     var_B0 = Me.Fields.Item("Code")
  loc_FFEEFF:     var_120 = CVar(CStr(var_B0.Value)) 'String
  loc_FFEF07:     Set var_B8 = Me.FGrid
  loc_FFEF0D:     LateIdCallSt
  loc_FFEF29:   End If
  loc_FFEF29: End If
  loc_FFEF35: Set var_A8 = Me.TxtGrid
  loc_FFEF3B: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_132, var_B8, var_120, var_F0)
  loc_FFEF43: var_A4 = var_B0.Visible
  loc_FFEF55: If (var_132 = &HFF) Then
  loc_FFEF61:   Set var_A8 = Me.TxtGrid
  loc_FFEF67:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_120)
  loc_FFEF6F:   var_B0.SetFocus
  loc_FFEF7B: End If
  loc_FFEF7B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5BF4
  'Data Table: 4EE6F0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC5B6A: On Error Goto loc_EC5BAF
  loc_EC5B73: Me.MoveFirst
  loc_EC5B8D: var_8C = "Code='" & MyValue
  loc_EC5B9D: Me.Find var_8C & "'", 0, 1
  loc_EC5BA9: Call Proc_186_55_153AFC0(var_A0)
  loc_EC5BAE: Exit Sub
  loc_EC5BAF: ' Referenced from: EC5B6A
  loc_EC5BB7: Set var_A4 = Err()
  loc_EC5BBD: Call 0.Method_arg_2C (var_8C)
  loc_EC5BDE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5BF1: Exit Sub
  loc_EC5BF2: Exit Sub
End Sub

Public Sub Proc_186_49_12A0824(arg_C) '12A0824
  'Data Table: 4EE6F0
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_4EE6F7 As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As Variant
  Dim var_100 As TextBox
  Dim var_15C As Double
  loc_12A0228: On Error Goto loc_12A07DF
  loc_12A0239: Set var_94 = Me.txt
  loc_12A023F: Call 0.Method_Proc_186_49_12A08240 (CInt(1), var_98)
  loc_12A0247: var_98.Text = vbNullString
  loc_12A0261: Set var_94 = Me.txt
  loc_12A0267: Call 0.Method_Proc_186_49_12A08240 (CInt(2), var_98)
  loc_12A026F: var_98.Text = vbNullString
  loc_12A0289: Set var_94 = Me.txt
  loc_12A028F: Call 0.Method_Proc_186_49_12A08240 (CInt(7), var_98)
  loc_12A0297: var_98.Text = vbNullString
  loc_12A02B1: Set var_94 = Me.txt
  loc_12A02B7: Call 0.Method_Proc_186_49_12A08240 (CInt(3), var_98)
  loc_12A02BF: var_98.Text = vbNullString
  loc_12A02D9: Set var_94 = Me.txt
  loc_12A02DF: Call 0.Method_Proc_186_49_12A08240 (CInt(4), var_98)
  loc_12A02E7: var_98.Text = vbNullString
  loc_12A0301: Set var_94 = Me.txt
  loc_12A0307: Call 0.Method_Proc_186_49_12A08240 (CInt(5), var_98)
  loc_12A030F: var_98.Text = vbNullString
  loc_12A0329: Set var_94 = Me.txt
  loc_12A032F: Call 0.Method_Proc_186_49_12A08240 (CInt(6), var_98)
  loc_12A0337: var_98.Text = vbNullString
  loc_12A034E: For var_9C = CByte(1) To CByte(7): var_8A = var_9C 'Byte
  loc_12A0363:   Set var_94 = Me.chkday
  loc_12A0369:   Call 0.Method_Proc_186_49_12A08240 (CInt(var_8A), var_98)
  loc_12A0371:   var_98.Value = 0
  loc_12A0380: Next var_9C 'Byte
  loc_12A03AA: unk_4EE6F7.Execute "Select * From SchemeMast Where Code='" & arg_C & "'", var_C4, -1
  loc_12A03B5: Set var_88 = var_94
  loc_12A03D9: If (var_88.RecordCount > 0) Then
  loc_12A042E:   Set var_FC = Me.txt
  loc_12A0434:   Call 0.Method_Proc_186_49_12A08240 (CInt(1), var_100, CStr(Format(CVar(var_88.Fields.Item("StartDate")), "DD/MMM/YYYY")))
  loc_12A043C:   var_100.Text = 1
  loc_12A04A8:   Set var_FC = Me.txt
  loc_12A04AE:   Call 0.Method_Proc_186_49_12A08240 (CInt(2), var_100, CStr(Format(CVar(var_88.Fields.Item("EndDate")), "DD/MMM/YYYY")), 1)
  loc_12A04B6:   var_100.Text = 1
  loc_12A0507:   var_120 = "Yes"
  loc_12A053B:   Set var_FC = Me.txt
  loc_12A0541:   Call 0.Method_Proc_186_49_12A08240 (CInt(7), var_100, CStr(IIf((var_88.Fields.Item("Active").Value = "Y"), var_120, "No")))
  loc_12A0549:   var_100.Text = 1
  loc_12A05AB:   Set var_FC = Me.txt
  loc_12A05B1:   Call 0.Method_Proc_186_49_12A08240 (CInt(3), var_100)
  loc_12A05B9:   var_100.Text = CStr(Left(CVar(var_88.Fields.Item("FromTime")), 2))
  loc_12A0613:   Set var_FC = Me.txt
  loc_12A0619:   Call 0.Method_Proc_186_49_12A08240 (CInt(4), var_100)
  loc_12A0621:   var_100.Text = CStr(Right(CVar(var_88.Fields.Item("FromTime")), 2))
  loc_12A067B:   Set var_FC = Me.txt
  loc_12A0681:   Call 0.Method_Proc_186_49_12A08240 (CInt(5), var_100)
  loc_12A0689:   var_100.Text = CStr(Left(CVar(var_88.Fields.Item("ToTime")), 2))
  loc_12A06E3:   Set var_FC = Me.txt
  loc_12A06E9:   Call 0.Method_Proc_186_49_12A08240 (CInt(6), var_100)
  loc_12A06F1:   var_100.Text = CStr(Right(CVar(var_88.Fields.Item("ToTime")), 2))
  loc_12A0720:   var_98 = var_88.Fields.Item("DAYS")
  loc_12A0738:   var_90 = CStr(Str(CVar(var_98)))
  loc_12A0768:   For var_154 = CByte(1) To CByte(Len(Trim(var_90))): var_8A = var_154 'Byte
  loc_12A078E:     var_F8 = Mid(Trim(var_90), CLng(var_8A), 1)
  loc_12A0796:     var_A0 = CStr(var_F8)
  loc_12A079F:     var_15C = Val(var_A0)
  loc_12A07AF:     Set var_94 = Me.chkday
  loc_12A07B5:     Call 0.Method_Proc_186_49_12A08240 (CInt(var_15C), var_98, 1)
  loc_12A07BD:     var_98.Value = var_15C
  loc_12A07D8:   Next var_154 'Byte
  loc_12A07DE: End If
  loc_12A07DE: Exit Sub
  loc_12A07DF: ' Referenced from: 12A0228
  loc_12A07E7: Set var_94 = Err()
  loc_12A07ED: Call 0.Method_arg_2C (var_A0)
  loc_12A080E: MsgBox(CVar(var_A0), &H40, "Information", var_F8, var_120)
  loc_12A0821: Exit Sub
End Sub

Public Sub Proc_186_50_F9B3D0
  'Data Table: 4EE6F0
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_88 As MSFlexGrid
  loc_F9B252: var_98 = CVar(CLng(0)) 'Long
  loc_F9B257: var_B8 = &H1F4
  loc_F9B263: LateIdCallSt
  loc_F9B26E: var_98 = CVar(CLng(0)) 'Long
  loc_F9B279: var_B8 = CVar(CInt(4)) 'Integer
  loc_F9B280: LateIdCallSt
  loc_F9B288: var_98 = 1
  loc_F9B294: var_B8 = CVar(CLng(0)) 'Long
  loc_F9B299: var_D8 = "1"
  loc_F9B2A2: LateIdCallSt
  loc_F9B2AA: var_98 = 0
  loc_F9B2B6: var_B8 = CVar(CLng(1)) 'Long
  loc_F9B2BB: var_D8 = "Item Name"
  loc_F9B2C4: LateIdCallSt
  loc_F9B2CF: var_98 = CVar(CLng(1)) 'Long
  loc_F9B2D4: var_B8 = &H1194
  loc_F9B2E0: LateIdCallSt
  loc_F9B2EB: var_98 = CVar(CLng(1)) 'Long
  loc_F9B2F6: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9B2FD: LateIdCallSt
  loc_F9B305: var_98 = 0
  loc_F9B311: var_B8 = CVar(CLng(2)) 'Long
  loc_F9B316: var_D8 = "Quantity"
  loc_F9B31F: LateIdCallSt
  loc_F9B32A: var_98 = CVar(CLng(2)) 'Long
  loc_F9B32F: var_B8 = &H5DC
  loc_F9B33B: LateIdCallSt
  loc_F9B346: var_98 = CVar(CLng(2)) 'Long
  loc_F9B351: var_B8 = CVar(CInt(7)) 'Integer
  loc_F9B358: LateIdCallSt
  loc_F9B360: var_98 = 0
  loc_F9B36C: var_B8 = CVar(CLng(3)) 'Long
  loc_F9B371: var_D8 = "Item Code"
  loc_F9B37A: LateIdCallSt
  loc_F9B385: var_98 = CVar(CLng(3)) 'Long
  loc_F9B38A: var_B8 = 0
  loc_F9B396: LateIdCallSt
  loc_F9B3A1: var_98 = CVar(CLng(3)) 'Long
  loc_F9B3AC: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9B3B3: LateIdCallSt
  loc_F9B3C2: Me.FGrid.Enabled = True
  loc_F9B3C9: Set var_88 = Nothing 
  loc_F9B3CD: Exit Sub
End Sub

Public Sub Proc_186_51_F9B904
  'Data Table: 4EE6F0
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_88 As MSFlexGrid
  loc_F9B786: var_98 = CVar(CLng(0)) 'Long
  loc_F9B78B: var_B8 = &H1F4
  loc_F9B797: LateIdCallSt
  loc_F9B7A2: var_98 = CVar(CLng(0)) 'Long
  loc_F9B7AD: var_B8 = CVar(CInt(4)) 'Integer
  loc_F9B7B4: LateIdCallSt
  loc_F9B7BC: var_98 = 1
  loc_F9B7C8: var_B8 = CVar(CLng(0)) 'Long
  loc_F9B7CD: var_D8 = "1"
  loc_F9B7D6: LateIdCallSt
  loc_F9B7DE: var_98 = 0
  loc_F9B7EA: var_B8 = CVar(CLng(1)) 'Long
  loc_F9B7EF: var_D8 = "Item Name"
  loc_F9B7F8: LateIdCallSt
  loc_F9B803: var_98 = CVar(CLng(1)) 'Long
  loc_F9B808: var_B8 = &H1194
  loc_F9B814: LateIdCallSt
  loc_F9B81F: var_98 = CVar(CLng(1)) 'Long
  loc_F9B82A: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9B831: LateIdCallSt
  loc_F9B839: var_98 = 0
  loc_F9B845: var_B8 = CVar(CLng(2)) 'Long
  loc_F9B84A: var_D8 = "Quantity"
  loc_F9B853: LateIdCallSt
  loc_F9B85E: var_98 = CVar(CLng(2)) 'Long
  loc_F9B863: var_B8 = &H5DC
  loc_F9B86F: LateIdCallSt
  loc_F9B87A: var_98 = CVar(CLng(2)) 'Long
  loc_F9B885: var_B8 = CVar(CInt(7)) 'Integer
  loc_F9B88C: LateIdCallSt
  loc_F9B894: var_98 = 0
  loc_F9B8A0: var_B8 = CVar(CLng(3)) 'Long
  loc_F9B8A5: var_D8 = "Item Code"
  loc_F9B8AE: LateIdCallSt
  loc_F9B8B9: var_98 = CVar(CLng(3)) 'Long
  loc_F9B8BE: var_B8 = 0
  loc_F9B8CA: LateIdCallSt
  loc_F9B8D5: var_98 = CVar(CLng(3)) 'Long
  loc_F9B8E0: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9B8E7: LateIdCallSt
  loc_F9B8F6: Me.FGrid1.Enabled = True
  loc_F9B8FD: Set var_88 = Nothing 
  loc_F9B901: Exit Sub
End Sub

Public Sub Proc_186_52_F9BFF0(arg_C) 'F9BFF0
  'Data Table: 4EE6F0
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_F9BE7A: Set var_8C = Me.txt
  loc_F9BE80: Call 0.Method_Proc_186_52_F9BFF0C (var_8E, var_86)
  loc_F9BE90: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F9BEA6:   Set var_8C = Me.txt
  loc_F9BEAC:   Call 0.Method_Proc_186_52_F9BFF00 (CInt(var_86), var_98)
  loc_F9BEB4:   var_98.Enabled = arg_C
  loc_F9BEC3: Next var_92 'Byte
  loc_F9BED6: Set var_8C = Me.txt
  loc_F9BEDC: Call 0.Method_Proc_186_52_F9BFF00 (CInt(1), var_98)
  loc_F9BEE4: var_98.Enabled = False
  loc_F9BEFD: Set var_8C = Me.txt
  loc_F9BF03: Call 0.Method_Proc_186_52_F9BFF00 (CInt(2), var_98)
  loc_F9BF0B: var_98.Enabled = False
  loc_F9BF24: Set var_8C = Me.txt
  loc_F9BF2A: Call 0.Method_Proc_186_52_F9BFF00 (CInt(3), var_98)
  loc_F9BF32: var_98.Enabled = False
  loc_F9BF4B: Set var_8C = Me.txt
  loc_F9BF51: Call 0.Method_Proc_186_52_F9BFF00 (CInt(4), var_98)
  loc_F9BF59: var_98.Enabled = False
  loc_F9BF72: Set var_8C = Me.txt
  loc_F9BF78: Call 0.Method_Proc_186_52_F9BFF00 (CInt(5), var_98)
  loc_F9BF80: var_98.Enabled = False
  loc_F9BF99: Set var_8C = Me.txt
  loc_F9BF9F: Call 0.Method_Proc_186_52_F9BFF00 (CInt(6), var_98)
  loc_F9BFA7: var_98.Enabled = False
  loc_F9BFC0: Set var_8C = Me.txt
  loc_F9BFC6: Call 0.Method_Proc_186_52_F9BFF00 (CInt(7), var_98)
  loc_F9BFCE: var_98.Enabled = False
  loc_F9BFE6: Me.framWeek.Enabled = False
  loc_F9BFEE: Exit Sub
End Sub

Public Sub Proc_186_53_FCE598
  'Data Table: 4EE6F0
  Dim var_98 As Variant
  Dim var_A8 As Long
  Dim var_8C As MSFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_FCE3DA: Set var_8C = Me.txt
  loc_FCE3E0: Call 0.Method_Proc_186_53_FCE598C (var_8E, var_86)
  loc_FCE3F0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FCE406:   Set var_8C = Me.txt
  loc_FCE40C:   Call 0.Method_Proc_186_53_FCE5980 (CInt(var_86), var_98)
  loc_FCE414:   var_98.Text = vbNullString
  loc_FCE430:   Set var_8C = Me.txt
  loc_FCE436:   Call 0.Method_Proc_186_53_FCE5980 (CInt(var_86), var_98)
  loc_FCE43E:   var_98.Tag = vbNullString
  loc_FCE44D: Next var_92 'Byte
  loc_FCE459: global_88 = vbNullString
  loc_FCE470: Me.FGrid.FixedRows = 1
  loc_FCE48B: Me.FGrid.Rows = 2
  loc_FCE49A: For var_BC = 1 To 3: var_86 = var_BC 'Byte
  loc_FCE4A0:   var_A8 = 1
  loc_FCE4AE:   var_CC = CVar(CLng(var_86)) 'Long
  loc_FCE4B3:   var_EC = vbNullString
  loc_FCE4BD:   Set var_8C = Me.FGrid
  loc_FCE4C3:   LateIdCallSt
  loc_FCE4D1: Next var_BC 'Byte
  loc_FCE4EA: Me.FGrid1.FixedRows = 1
  loc_FCE505: Me.FGrid1.Rows = 2
  loc_FCE514: For var_100 = 1 To 3: var_86 = var_100 'Byte
  loc_FCE51A:   var_A8 = 1
  loc_FCE528:   var_CC = CVar(CLng(var_86)) 'Long
  loc_FCE52D:   var_EC = vbNullString
  loc_FCE537:   Set var_8C = Me.FGrid1
  loc_FCE53D:   LateIdCallSt
  loc_FCE54B: Next var_100 'Byte
  loc_FCE55C: For var_104 = CByte(1) To CByte(7): var_86 = var_104 'Byte
  loc_FCE571:   Set var_8C = Me.chkday
  loc_FCE577:   Call 0.Method_Proc_186_53_FCE5980 (CInt(var_86), var_98)
  loc_FCE57F:   var_98.Value = 0
  loc_FCE58E: Next var_104 'Byte
  loc_FCE594: Exit Sub
End Sub

Public Sub Proc_186_54_F59044
  'Data Table: 4EE6F0
  Dim var_90 As TextBox
  Dim var_A4 As Long
  Dim var_8C As MSFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As String
  loc_F58F26: Set var_8C = Me.txt
  loc_F58F2C: Call 0.Method_Proc_186_54_F590440 (CInt(8), var_90)
  loc_F58F3F: global_88 = var_90.Tag
  loc_F58F60: Me.FGrid.FixedRows = 1
  loc_F58F7B: Me.FGrid.Rows = 2
  loc_F58F8A: For var_B8 = 1 To 3: var_86 = var_B8 'Byte
  loc_F58F90:   var_A4 = 1
  loc_F58F9E:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_F58FA3:   var_E8 = vbNullString
  loc_F58FAD:   Set var_8C = Me.FGrid
  loc_F58FB3:   LateIdCallSt
  loc_F58FC1: Next var_B8 'Byte
  loc_F58FDA: Me.FGrid1.FixedRows = 1
  loc_F58FF5: Me.FGrid1.Rows = 2
  loc_F59004: For var_FC = 1 To 3: var_86 = var_FC 'Byte
  loc_F5900A:   var_A4 = 1
  loc_F59018:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_F5901D:   var_E8 = vbNullString
  loc_F59027:   Set var_8C = Me.FGrid1
  loc_F5902D:   LateIdCallSt
  loc_F5903B: Next var_FC 'Byte
  loc_F59041: Exit Sub
End Sub

Public Sub Proc_186_55_153AFC0
  'Data Table: 4EE6F0
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C8 As String
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_E4 As Variant
  Dim var_134 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_4EE6F7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Fields15
  Dim var_198 As Fields15
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_1F4 As Double
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim var_194 As Variant
  loc_153A010: On Error Goto loc_153AF7D
  loc_153A019: Proc_183_45_E5CCA8(global_52)
  loc_153A035: If (Me.RecordCount <= 0) Then
  loc_153A038:   Call Proc_186_53_FCE598()
  loc_153A040: Else
  loc_153A07C:   Set var_B0 = Me.txt
  loc_153A082:   Call 0.Method_Proc_186_55_153AFC00 (CInt(8), var_B4)
  loc_153A08A:   var_B4.Text = CStr(Me.Fields.Item("RestName").Value)
  loc_153A0BD:   var_AC = Me.Fields.Item("RestCode")
  loc_153A0DC:   Set var_B0 = Me.txt
  loc_153A0E2:   Call 0.Method_Proc_186_55_153AFC00 (CInt(8), var_B4)
  loc_153A0EA:   var_B4.Tag = CStr(var_AC.Value)
  loc_153A10E:   Set var_98 = Me.txt
  loc_153A114:   Call 0.Method_Proc_186_55_153AFC00 (CInt(8), var_AC)
  loc_153A127:   global_88 = var_AC.Tag
  loc_153A151:   Me.Recordset15.CursorLocation = 3
  loc_153A164:   Set var_98 = Me.txt
  loc_153A16A:   Call 0.Method_Proc_186_55_153AFC00 (CInt(8), var_AC)
  loc_153A195:   var_C8 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_153A19C:   var_D0 = var_C8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_153A1B4:   Me.Open CVar(var_D0 & var_AC.Tag & "'  Order by I.Name  "), CVar(MemVar_1F95044), 3
  loc_153A1D7:   CVarUnk
  loc_153A1DC:   VerifyVarObj
  loc_153A1E2:   Set var_98 = Me.DGItem
  loc_153A1E8:   LateIdStAd
  loc_153A208:   var_98 = Me.Fields
  loc_153A24B:   Set var_B0 = Me.txt
  loc_153A251:   Call 0.Method_Proc_186_55_153AFC00 (CInt(1), var_B4, CStr(Format(CVar(var_98.Item("AppDate")), "DD/MMM/YYYY")), 1, 1)
  loc_153A259:   var_B4.Text = var_98
  loc_153A2C8:   Set var_B0 = Me.txt
  loc_153A2CE:   Call 0.Method_Proc_186_55_153AFC00 (CInt(2), var_B4, CStr(Format(CVar(Me.Fields.Item("EndDate")), "DD/MMM/YYYY")), 1)
  loc_153A2D6:   var_B4.Text = 1
  loc_153A32A:   var_124 = "Yes"
  loc_153A35E:   Set var_B0 = Me.txt
  loc_153A364:   Call 0.Method_Proc_186_55_153AFC00 (CInt(7), var_B4, CStr(IIf((Me.Fields.Item("Active").Value = "Y"), var_124, "No")))
  loc_153A36C:   var_B4.Text = New
  loc_153A3D1:   Set var_B0 = Me.txt
  loc_153A3D7:   Call 0.Method_Proc_186_55_153AFC00 (CInt(3), var_B4, CStr(Left(CVar(Me.Fields.Item("FromTime")), 2)))
  loc_153A3DF:   var_B4.Text = 1
  loc_153A43C:   Set var_B0 = Me.txt
  loc_153A442:   Call 0.Method_Proc_186_55_153AFC00 (CInt(4), var_B4)
  loc_153A44A:   var_B4.Text = CStr(Right(CVar(Me.Fields.Item("FromTime")), 2))
  loc_153A4A7:   Set var_B0 = Me.txt
  loc_153A4AD:   Call 0.Method_Proc_186_55_153AFC00 (CInt(5), var_B4)
  loc_153A4B5:   var_B4.Text = CStr(Left(CVar(Me.Fields.Item("ToTime")), 2))
  loc_153A512:   Set var_B0 = Me.txt
  loc_153A518:   Call 0.Method_Proc_186_55_153AFC00 (CInt(6), var_B4)
  loc_153A520:   var_B4.Text = CStr(Right(CVar(Me.Fields.Item("ToTime")), 2))
  loc_153A574:   Set var_B0 = Me.txt
  loc_153A57A:   Call 0.Method_Proc_186_55_153AFC00 (CInt(0), var_B4)
  loc_153A582:   var_B4.Text = CStr(Me.Fields.Item("SchemeName").Value)
  loc_153A5D4:   Set var_B0 = Me.txt
  loc_153A5DA:   Call 0.Method_Proc_186_55_153AFC00 (CInt(0), var_B4)
  loc_153A5E2:   var_B4.Tag = CStr(Me.Fields.Item("SchemeCode").Value)
  loc_153A64E:   unk_4EE6F7.Execute CStr("Select U_Name,U_AE,U_EntDt From SchemeItemDetail where Code='" & Me.Fields.Item("Code").Value & "'  "), var_124, -1
  loc_153A659:   Set var_88 = var_B0
  loc_153A716:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_153A749:   var_1DC = -1 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_194)) 
  loc_153A75B:   Me.LblUser.Caption = CStr(var_1DC)
  loc_153A836:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update :   ", "entdt :   "))
  loc_153A84D:   var_198 = var_88.Fields
  loc_153A85D:   var_1BC = CVar(var_198.Item("U_EntDt")) 'Address
  loc_153A87B:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E69628(var_1BC)))
  loc_153A8CD:   var_AC = Me.Fields.Item("DAYcode")
  loc_153A8E5:   var_90 = CStr(Str(CVar(var_AC)))
  loc_153A8FD:   For var_1E8 = CByte(1) To CByte(7):   var_8A = var_1E8 'Byte
  loc_153A912:     Set var_98 = Me.chkday
  loc_153A918:     Call 0.Method_Proc_186_55_153AFC00 (CInt(var_8A), var_AC)
  loc_153A920:     var_AC.Value = 0
  loc_153A92F:   Next var_1E8 'Byte
  loc_153A958:   For var_1EC = CByte(1) To CByte(Len(Trim(var_90))):   var_8A = var_1EC 'Byte
  loc_153A98F:     var_1F4 = Val(CStr(Mid(Trim(var_90), CLng(var_8A), 1)))
  loc_153A99F:     Set var_98 = Me.chkday
  loc_153A9A5:     Call 0.Method_Proc_186_55_153AFC00 (CInt(var_1F4), var_AC, 1)
  loc_153A9AD:     var_AC.Value = var_1F4
  loc_153A9C8:   Next var_1EC 'Byte
  loc_153A9E2:   var_C8 = "Select Sno,ItemCode, IM.Name As ItemName, Qty  from SchemeItemDetail SD Join ItemMast IM On SD.ItemCode = IM.Code And SD.RestCode = IM.RestCode where (SD.LOGSITE_CODE='" & MemVar_1F95078
  loc_153AA53:   var_154 = CVar(var_C8 & "' or SD.LOGSITE_CODE='HO') AND SD.RestCode='") & Me.Fields.Item("RestCode").Value & "' AND SD.Code='" & Me.Fields.Item("Code").Value 
  loc_153AA6A:   unk_4EE6F7.Execute CStr(var_154 & "' Order By Sno"), var_1BC, -1
  loc_153AA75:   Set var_88 = var_198
  loc_153AAB3:   If (var_88.RecordCount > 0) Then
  loc_153AABA:     var_8A = CByte(1) 'Byte
  loc_153AAD1:     Me.FGrid.FixedRows = 1
  loc_153AAED:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_153AAFC:     Me.FGrid.Rows = 1
  loc_153AB04:     ' Referenced from:   153ACA2
  loc_153AB13:     If Not(var_88.EOF) Then
  loc_153AB1A:       Set var_1FC = Me.FGrid
  loc_153AB22:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153AB2A:       var_134 = CVar(CLng(0)) 'Long
  loc_153AB5A:       var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_153AB61:       LateIdCallSt
  loc_153AB7C:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153AB84:       var_134 = CVar(CLng(1)) 'Long
  loc_153ABB4:       var_F4 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_153ABBB:       LateIdCallSt
  loc_153ABD6:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153ABDE:       var_134 = CVar(CLng(2)) 'Long
  loc_153AC0E:       var_F4 = CVar(CStr(var_88.Fields.Item("qty").Value)) 'String
  loc_153AC15:       LateIdCallSt
  loc_153AC30:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153AC38:       var_134 = CVar(CLng(3)) 'Long
  loc_153AC68:       var_F4 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_153AC6F:       LateIdCallSt
  loc_153AC87:       Set var_1FC = Nothing 
  loc_153AC96:       var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_153AC9D:       var_88.MoveNext
  loc_153ACA2:       GoTo loc_153AB04
  loc_153ACA5:     End If
  loc_153ACA5:   End If
  loc_153ACB9:   var_C8 = "Select Sno, FreeItem, IM.Name As ItemName, FreeQty  from FreeItemDetail FD Join ItemMast IM On  FD.FreeItem = IM.Code And FD.RestCode = IM.RestCode where (FD.LOGSITE_CODE='" & MemVar_1F95078
  loc_153ACF0:   var_104 = CVar(var_C8 & "' or FD.LOGSITE_CODE='HO') AND FD.RestCode='") & Me.Fields.Item("RestCode").Value 
  loc_153ACF9:   var_124 = var_104 & "' AND FD.Code='" 
  loc_153AD41:   unk_4EE6F7.Execute CStr(var_124 & Me.Fields.Item("Code").Value & "' Order By Sno"), var_1BC, -1
  loc_153AD4C:   Set var_88 = var_198
  loc_153AD8A:   If (var_88.RecordCount > 0) Then
  loc_153AD91:     var_8A = CByte(1) 'Byte
  loc_153ADA8:     Me.FGrid1.FixedRows = 1
  loc_153ADC4:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_153ADD3:     Me.FGrid1.Rows = 1
  loc_153ADDB:     ' Referenced from:   153AF79
  loc_153ADEA:     If Not(var_88.EOF) Then
  loc_153ADF1:       Set var_200 = Me.FGrid1
  loc_153ADF9:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153AE01:       var_134 = CVar(CLng(0)) 'Long
  loc_153AE31:       var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_153AE38:       LateIdCallSt
  loc_153AE53:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153AE5B:       var_134 = CVar(CLng(1)) 'Long
  loc_153AE8B:       var_F4 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_153AE92:       LateIdCallSt
  loc_153AEAD:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153AEB5:       var_134 = CVar(CLng(2)) 'Long
  loc_153AEE5:       var_F4 = CVar(CStr(var_88.Fields.Item("FreeQty").Value)) 'String
  loc_153AEEC:       LateIdCallSt
  loc_153AF07:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153AF0F:       var_134 = CVar(CLng(3)) 'Long
  loc_153AF3F:       var_F4 = CVar(CStr(var_88.Fields.Item("FreeItem").Value)) 'String
  loc_153AF46:       LateIdCallSt
  loc_153AF5E:       Set var_200 = Nothing 
  loc_153AF6D:       var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_153AF74:       var_88.MoveNext
  loc_153AF79:       GoTo loc_153ADDB
  loc_153AF7C:     End If
  loc_153AF7C:   End If
  loc_153AF7C: End If
  loc_153AF7C: Exit Sub
  loc_153AF7D: ' Referenced from: 153A010
  loc_153AF85: Set var_98 = Err()
  loc_153AF8B: Call 0.Method_arg_2C (var_C8, var_200, var_F4, var_134, var_E4, var_200, var_F4)
  loc_153AFAC: MsgBox(CVar(var_C8), &H40, "Information", var_104, var_124)
  loc_153AFBF: Exit Sub
End Sub

Public Sub Proc_186_56_E70A50
  'Data Table: 4EE6F0
  loc_E709FF: Me.DGItem.Visible = False
  loc_E70A16: Me.DGRest.Visible = False
  loc_E70A2D: Me.DGScheme.Visible = False
  loc_E70A44: Me.FGPoint.Visible = False
  loc_E70A4C: Exit Sub
End Sub

Public Sub Proc_186_57_E8E9F4(arg_C) 'E8E9F4
  'Data Table: 4EE6F0
  Dim var_10C As TextBox
  loc_E8E9C3: If (MsgBox("Save Data ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8E9C6:   Call TopCtrl1_UnknownEvent_16()
  loc_E8E9CE: Else
  loc_E8E9D8:   Set var_108 = Me.txt
  loc_E8E9DE:   Call 0.Method_Proc_186_57_E8E9F40 (arg_C)
  loc_E8E9E6:   var_10C.SetFocus
  loc_E8E9F2: End If
  loc_E8E9F2: Exit Sub
End Sub

Public Sub Proc_186_58_E45D74
  'Data Table: 4EE6F0
  loc_E45D50: Set var_88 = Me.TopCtrl1
  loc_E45D56: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E45D6F: If (CStr() = "Browse") Then
  loc_E45D72:   Exit Sub
  loc_E45D73: End If
  loc_E45D73: Exit Sub
End Sub

Public Sub Proc_186_59_12F7D78(arg_C) '12F7D78
  'Data Table: 4EE6F0
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_140 As TextBox
  Dim var_B8 As String
  Dim var_160 As Variant
  Dim var_164 As Long
  loc_12F7687: var_8E = arg_C
  loc_12F7690: If (var_8E = 0) Then
  loc_12F76A6:   var_A8 = CLng(Me.FGrid.Col)
  loc_12F76B6:   If (var_A8 = CLng(1)) Then
  loc_12F7707:     Set var_94 = Me.TxtGrid
  loc_12F770D:     Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_B8)
  loc_12F7715:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_12F772D:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_12F7743:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F774B:       var_E8 = CVar(CLng(1)) 'Long
  loc_12F7750:       var_108 = vbNullString
  loc_12F775A:       Set var_B4 = Me.FGrid
  loc_12F7760:       LateIdCallSt
  loc_12F7785:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F778D:       var_E8 = CVar(CLng(3)) 'Long
  loc_12F7792:       var_108 = vbNullString
  loc_12F779C:       Set var_B4 = Me.FGrid
  loc_12F77A2:       LateIdCallSt
  loc_12F77B7:     Else
  loc_12F77CA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F77D2:       var_F8 = CVar(CLng(1)) 'Long
  loc_12F7805:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12F780D:       Set var_140 = Me.FGrid
  loc_12F7813:       LateIdCallSt
  loc_12F7842:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F784A:       var_F8 = CVar(CLng(3)) 'Long
  loc_12F786C:       var_B4 = Me.Fields.Item("Code")
  loc_12F787D:       var_13C = CVar(CStr(var_B4.Value)) 'String
  loc_12F7885:       Set var_140 = Me.FGrid
  loc_12F788B:       LateIdCallSt
  loc_12F78A7:     End If
  loc_12F78AA:   Else
  loc_12F78B1:     If (var_A8 = CLng(2)) Then
  loc_12F78BE:       Set var_94 = Me.TxtGrid
  loc_12F78C4:       Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_140, var_13C, var_F8, var_D8, var_140)
  loc_12F78E3:       Set var_11C = Me.TxtGrid
  loc_12F78E9:       Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_12F78F1:       var_D8 = var_140.Text
  loc_12F7913:       If (var_B4 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_12F791A:         var_B8 = CStr(0)
  loc_12F7927:         Set var_94 = Me.TxtGrid
  loc_12F792D:         Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_B8)
  loc_12F7935:         var_B4.Text = var_108
  loc_12F7949:         Proc_186_59_12F7D78 = 0
  loc_12F794F:       End If
  loc_12F795C:       Set var_94 = Me.TxtGrid
  loc_12F7962:       Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_B8)
  loc_12F796A:       var_E8 = var_B4.Text
  loc_12F7982:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F798A:       var_F8 = CVar(CLng(2)) 'Long
  loc_12F79B6:       var_160 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_12F79BE:       Set var_140 = Me.FGrid
  loc_12F79C4:       LateIdCallSt
  loc_12F79E4:     End If
  loc_12F79E4:   End If
  loc_12F79E7: Else
  loc_12F79ED:   If (var_8E = 1) Then
  loc_12F7A03:     var_164 = CLng(Me.FGrid1.Col)
  loc_12F7A13:     If (var_164 = CLng(1)) Then
  loc_12F7A64:       Set var_94 = Me.TxtGrid
  loc_12F7A6A:       Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_B8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_164, var_140)
  loc_12F7A72:       var_160 = var_B4.Text
  loc_12F7A8A:       If (1 Or (var_B8 = vbNullString)) Then
  loc_12F7AA0:         var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F7AA8:         var_E8 = CVar(CLng(1)) 'Long
  loc_12F7AAD:         var_108 = vbNullString
  loc_12F7AB7:         Set var_B4 = Me.FGrid1
  loc_12F7ABD:         LateIdCallSt
  loc_12F7AE2:         var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F7AEA:         var_E8 = CVar(CLng(3)) 'Long
  loc_12F7AEF:         var_108 = vbNullString
  loc_12F7AF9:         Set var_B4 = Me.FGrid1
  loc_12F7AFF:         LateIdCallSt
  loc_12F7B14:       Else
  loc_12F7B27:         var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F7B2F:         var_F8 = CVar(CLng(1)) 'Long
  loc_12F7B62:         var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12F7B6A:         Set var_140 = Me.FGrid1
  loc_12F7B70:         LateIdCallSt
  loc_12F7B9F:         var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F7BA7:         var_F8 = CVar(CLng(3)) 'Long
  loc_12F7BC9:         var_B4 = Me.Fields.Item("Code")
  loc_12F7BDA:         var_13C = CVar(CStr(var_B4.Value)) 'String
  loc_12F7BE2:         Set var_140 = Me.FGrid1
  loc_12F7BE8:         LateIdCallSt
  loc_12F7C04:       End If
  loc_12F7C07:     Else
  loc_12F7C0E:       If (var_164 = CLng(2)) Then
  loc_12F7C1B:         Set var_94 = Me.TxtGrid
  loc_12F7C21:         Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_140, var_13C, var_F8, var_D8, var_140)
  loc_12F7C40:         Set var_11C = Me.TxtGrid
  loc_12F7C46:         Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_12F7C4E:         var_D8 = var_140.Text
  loc_12F7C70:         If (var_B4 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_12F7C77:           var_B8 = CStr(0)
  loc_12F7C84:           Set var_94 = Me.TxtGrid
  loc_12F7C8A:           Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_B8)
  loc_12F7C92:           var_B4.Text = var_108
  loc_12F7CA6:           Proc_186_59_12F7D78 = 0
  loc_12F7CAC:         End If
  loc_12F7CB9:         Set var_94 = Me.TxtGrid
  loc_12F7CBF:         Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, var_B8)
  loc_12F7CC7:         var_E8 = var_B4.Text
  loc_12F7CDF:         var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F7CE7:         var_F8 = CVar(CLng(2)) 'Long
  loc_12F7D13:         var_160 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_12F7D1B:         Set var_140 = Me.FGrid1
  loc_12F7D21:         LateIdCallSt
  loc_12F7D41:       End If
  loc_12F7D41:     End If
  loc_12F7D41:   End If
  loc_12F7D41: End If
  loc_12F7D55: Set var_94 = Me.TxtGrid
  loc_12F7D5B: Call 0.Method_Proc_186_59_12F7D780 (arg_C, var_B4, 0, &HFF, var_140, var_160)
  loc_12F7D63: var_B4.MaxLength = 1
  loc_12F7D6F: Proc_186_59_12F7D78 = 1
End Sub

Public Sub Proc_186_60_E707FC
  'Data Table: 4EE6F0
  Dim var_94 As CheckBox
  loc_E707A7: For var_8C = 1 To 7: var_88 = var_8C 'Integer
  loc_E707BA:   Set var_90 = Me.chkday
  loc_E707C0:   Call 0.Method_Proc_186_60_E707FC0 (var_88, var_94)
  loc_E707DA:   If (var_94.Value = 1) Then
  loc_E707E2:     Proc_186_60_E707FC = &HFF
  loc_E707E8:   End If
  loc_E707EB: Next var_8C 'Integer
  loc_E707F5: Proc_186_60_E707FC = 0
End Sub
