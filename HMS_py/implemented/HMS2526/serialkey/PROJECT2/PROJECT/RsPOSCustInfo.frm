VERSION 5.00
Begin VB.Form RsPOSCustInfo
  Caption = "Customer Information"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPOSCustInfo.frx":0
  LinkTopic = "Form1"
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6690
  ClientHeight = 3765
  StartUpPosition = 2 'CenterScreen
  Begin TextBox TxtCust
    Index = 7
    ForeColor = &HC00000&
    Left = 2310
    Top = 2745
    Width = 3645
    Height = 285
    TabIndex = 7
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
  Begin TextBox TxtCust
    Index = 6
    ForeColor = &HC00000&
    Left = 2310
    Top = 2430
    Width = 3645
    Height = 285
    TabIndex = 6
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
  Begin TextBox TxtCust
    Index = 5
    ForeColor = &HC00000&
    Left = 2310
    Top = 2115
    Width = 3645
    Height = 285
    TabIndex = 5
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
  Begin TextBox TxtCust
    Index = 4
    ForeColor = &HC00000&
    Left = 2310
    Top = 1800
    Width = 3645
    Height = 285
    TabIndex = 4
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
  Begin Frame FrmFind
    Caption = "Frame1"
    Left = 1110
    Top = 5430
    Width = 11610
    Height = 2145
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin CommandButton cmdFind
      Caption = "&Find"
      Left = 5385
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H8000000F&
    End
    Begin CommandButton cmdClose
      Caption = "&Close"
      Left = 6465
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 17
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
    Begin DataCombo TXT_GNAME
      Left = 2790
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 19
    End
    Begin DataCombo TXT_CITY
      Left = 7275
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 20
    End
    Begin DataCombo TXT_STATE
      Left = 2790
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 21
    End
    Begin DataCombo TXT_COUNTRY
      Left = 2790
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 22
    End
    Begin DataCombo TXT_TYPE
      Left = 7275
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 23
    End
    Begin DataCombo TXT_NATION
      Left = 7275
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 24
    End
    Begin DataCombo TXT_FOLIONO
      Left = 2790
      Top = 90
      Width = 2985
      Height = 315
      TabIndex = 25
    End
    Begin Label Lbl
      Caption = "Country Type"
      Index = 75
      ForeColor = &H0&
      Left = 5955
      Top = 1125
      Width = 1140
      Height = 240
      TabIndex = 32
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
      Caption = "State"
      Index = 77
      ForeColor = &H0&
      Left = 1875
      Top = 780
      Width = 450
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
    Begin Label Lbl
      Caption = "Country"
      Index = 78
      ForeColor = &H0&
      Left = 1875
      Top = 1110
      Width = 660
      Height = 240
      TabIndex = 30
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
      Caption = "City"
      Index = 79
      ForeColor = &H0&
      Left = 5955
      Top = 495
      Width = 315
      Height = 240
      TabIndex = 29
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
      Caption = "Nationality"
      Index = 80
      ForeColor = &H0&
      Left = 5955
      Top = 795
      Width = 885
      Height = 240
      TabIndex = 28
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
      Caption = "Name"
      Index = 81
      ForeColor = &H0&
      Left = 1875
      Top = 450
      Width = 495
      Height = 240
      TabIndex = 27
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
      Caption = "Folio No."
      Index = 40
      ForeColor = &H0&
      Left = 1875
      Top = 135
      Width = 750
      Height = 240
      TabIndex = 26
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
  Begin CommandButton Command1
    Caption = "Search"
    Left = 6690
    Top = 3210
    Width = 1635
    Height = 480
    TabIndex = 15
  End
  Begin TextBox TxtCust
    Index = 1
    ForeColor = &HC00000&
    Left = 2310
    Top = 855
    Width = 3645
    Height = 285
    TabIndex = 1
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
  Begin TextBox TxtCust
    Index = 2
    ForeColor = &HC00000&
    Left = 2310
    Top = 1170
    Width = 3645
    Height = 285
    TabIndex = 2
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
  Begin TextBox TxtCust
    Index = 3
    ForeColor = &HC00000&
    Left = 2310
    Top = 1485
    Width = 3645
    Height = 285
    TabIndex = 3
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
  Begin TextBox TxtCust
    Index = 0
    ForeColor = &HC00000&
    Left = 2310
    Top = 540
    Width = 2265
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin BtnEnh CmdOK
    Left = 1590
    Top = 3090
    Width = 1470
    Height = 480
    TabIndex = 8
  End
End
Begin BtnEnh CmdCancel
  Left = 4515
  Top = 3075
  Width = 1470
  Height = 480
  TabIndex = 10
End
Begin BtnEnh CmdReset
  Left = 3045
  Top = 3075
  Width = 1470
  Height = 480
  TabIndex = 9
End
Begin Label LblRewardPoint
  Caption = "Reward Points Balance:"
  ForeColor = &HFF&
  Left = 240
  Top = 90
  Width = 2145
  Height = 300
  TabIndex = 37
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial Narrow"
    Size = 11.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Anniversary"
  Index = 7
  ForeColor = &HC00000&
  Left = 735
  Top = 2775
  Width = 1125
  Height = 240
  TabIndex = 36
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
  Caption = "BirthDate"
  Index = 8
  ForeColor = &HC00000&
  Left = 735
  Top = 2445
  Width = 885
  Height = 240
  TabIndex = 35
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
  Caption = "DisLike"
  Index = 9
  ForeColor = &HC00000&
  Left = 735
  Top = 2130
  Width = 690
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
Begin Label Label1
  Caption = "Like"
  Index = 10
  ForeColor = &HC00000&
  Left = 735
  Top = 1845
  Width = 405
  Height = 240
  TabIndex = 33
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
  Caption = "Customer Name"
  Index = 13
  ForeColor = &HC00000&
  Left = 735
  Top = 870
  Width = 1515
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
Begin Label Label1
  Caption = "Address"
  Index = 12
  ForeColor = &HC00000&
  Left = 735
  Top = 1200
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
Begin Label Label1
  Caption = "City"
  Index = 11
  ForeColor = &HC00000&
  Left = 735
  Top = 1515
  Width = 360
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
  Caption = "Phone No"
  Index = 14
  ForeColor = &HC00000&
  Left = 750
  Top = 555
  Width = 930
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
End

Attribute VB_Name = "RsPOSCustInfo"


Private Sub CmdReset_UnknownEvent_9 'DFF914
  'Data Table: 46BF54
  loc_DFF90C: Call Proc_208_13_EE1DAC()
  loc_DFF911: Exit Sub
End Sub

Private Sub Form_Load() '10A6E6C
  'Data Table: 46BF54
  Dim var_88 As Label
  Dim var_C0 As Variant
  loc_10A6BA3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10A6BB5: Me.LblRewardPoint.Caption = vbNullString
  loc_10A6BC7: var_88 = ParentForm
  loc_10A6BE6: Set var_AC = var_B0(CInt(0))
  loc_10A6BEC: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6BF4: var_88.TextBox.Text = 0
  loc_10A6C12: var_88 = ParentForm
  loc_10A6C31: Set var_AC = var_B0(CInt(1))
  loc_10A6C37: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6C3F: var_88.TextBox.Text = 1
  loc_10A6C65: var_C0 = ParentForm.TxtCust
  loc_10A6C82: Set var_AC = var_B0(CInt(1))
  loc_10A6C88: Call 0.Method_Form_Load0 (CStr(var_C0.Tag))
  loc_10A6C90: var_C0.TextBox.Tag = 1
  loc_10A6CB2: var_88 = ParentForm
  loc_10A6CD1: Set var_AC = var_B0(CInt(2))
  loc_10A6CD7: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6CDF: var_88.TextBox.Text = 2
  loc_10A6CFD: var_88 = ParentForm
  loc_10A6D1C: Set var_AC = var_B0(CInt(3))
  loc_10A6D22: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6D2A: var_88.TextBox.Text = 3
  loc_10A6D48: var_88 = ParentForm
  loc_10A6D67: Set var_AC = var_B0(CInt(4))
  loc_10A6D6D: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6D75: var_88.TextBox.Text = 4
  loc_10A6D93: var_88 = ParentForm
  loc_10A6DB2: Set var_AC = var_B0(CInt(5))
  loc_10A6DB8: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6DC0: var_88.TextBox.Text = 5
  loc_10A6DDE: var_88 = ParentForm
  loc_10A6DFD: Set var_AC = var_B0(CInt(6))
  loc_10A6E03: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6E0B: var_88.TextBox.Text = 6
  loc_10A6E29: var_88 = ParentForm
  loc_10A6E48: Set var_AC = var_B0(CInt(7))
  loc_10A6E4E: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A6E56: var_88.TextBox.Text = 7
  loc_10A6E6A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E92200
  'Data Table: 46BF54
  Dim var_88 As Variant
  loc_E92194: On Error Goto loc_E921BA
  loc_E921A1: If (CLng(KeyCode) = &H1B) Then
  loc_E921B1:   Me.Global.Unload Me
  loc_E921B9: End If
  loc_E921B9: Exit Sub
  loc_E921BA: ' Referenced from: E92194
  loc_E921C2: Set var_88 = Err()
  loc_E921C8: Call 0.Method_arg_2C (var_8C)
  loc_E921E9: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E921FC: Exit Sub
  loc_E921FD: Exit Sub
End Sub

Private Sub Command1_Click() '1103408
  'Data Table: 46BF54
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As String
  Dim MemVar_1F950E4 As String
  Dim unk_46BF6B As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  loc_11030D8: On Error Goto loc_1103401
  loc_11030FE: If (CStr(Me.TXT_GNAME.BoundText) <> vbNullString) Then
  loc_1103128:   var_88 = var_88 & " And GUESTPROF.Name='" & CStr(Me.TXT_GNAME.Text) & "'"
  loc_110313A: End If
  loc_110315D: If (CStr(Me.TXT_STATE.BoundText) <> vbNullString) Then
  loc_1103187:   var_88 = var_88 & " And GUESTPROF.StateName='" & CStr(Me.TXT_STATE.Text) & "'"
  loc_1103199: End If
  loc_11031BC: If (CStr(Me.TXT_CITY.BoundText) <> vbNullString) Then
  loc_11031E6:   var_88 = var_88 & " And GUESTPROF.CityName='" & CStr(Me.TXT_CITY.Text) & "'"
  loc_11031F8: End If
  loc_110321B: If (CStr(Me.TXT_COUNTRY.BoundText) <> vbNullString) Then
  loc_1103245:   var_88 = var_88 & " And GUESTPROF.CountryName='" & CStr(Me.TXT_COUNTRY.Text) & "'"
  loc_1103257: End If
  loc_110327A: If (CStr(Me.TXT_NATION.BoundText) <> vbNullString) Then
  loc_11032A4:   var_88 = var_88 & " And GUESTPROF.Nationality='" & CStr(Me.TXT_NATION.Text) & "'"
  loc_11032B6: End If
  loc_11032D9: If (CStr(Me.TXT_TYPE.BoundText) <> vbNullString) Then
  loc_11032EA:   Set var_90 = Me.TXT_TYPE
  loc_11032F0:   var_A0 = var_90.Text
  loc_1103303:   var_88 = var_88 & " And GUESTPROF.Type='" & CStr(var_A0) & "'"
  loc_1103315: End If
  loc_110331C: var_A4 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where (GuestProf.LOGSITE_CODE='" & MemVar_1F95078
  loc_1103331: MemVar_1F950E4 = var_A4 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " Order by GuestProf.Name"
  loc_1103354: unk_46BF6B.Execute MemVar_1F950E4, var_A0, -1
  loc_110337C: If (var_90.RecordCount <= 0) Then
  loc_1103385:   var_D0 = "Information"
  loc_11033A0:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_11033B0:   Exit Sub
  loc_11033B1: End If
  loc_11033B7: Set var_90 = Me.FrmFind
  loc_11033BD: var_90.Visible = False
  loc_11033CB: MemVar_1F95120 = Me
  loc_11033D8: Proc_6_126_F1C850("3200,2500,2500,2400", var_90)
  loc_11033F3: Call 0.Method_arg_2B0 (1, var_D0)
  loc_11033FD: Set var_8C = Nothing
  loc_1103400: Exit Sub
  loc_1103401: ' Referenced from: 11030D8
  loc_1103401: Proc_6_60_E63754(MemVar_1F950E4)
  loc_1103406: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 '1061B6C
  'Data Table: 46BF54
  Dim var_A0 As Byte
  Dim var_C0 As Variant
  Dim var_8C As TextBox
  Dim var_88 As Variant
  loc_10618EC: var_A0 = 0
  loc_10618FE: Set var_88 = Me.TxtCust
  loc_1061904: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(0), var_8C)
  loc_106190C: var_C0 = CVar(var_8C) 'Address
  loc_1061914: var_90 = ParentForm
  loc_106191C: LateMemCallSt
  loc_106193E: Set var_88 = Me.TxtCust
  loc_1061944: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(1), var_8C, 1)
  loc_106194C: var_C0 = CVar(var_8C) 'Address
  loc_106195C: LateMemCallSt
  loc_106197A: Set var_88 = Me.TxtCust
  loc_1061980: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(1), var_8C, var_D4, ParentForm)
  loc_1061988: var_C0 = var_8C.Tag
  loc_106199E: var_90 = ParentForm
  loc_10619AE: var_90.TxtCust.Tag = 1
  loc_10619D4: Set var_88 = var_8C(CInt(2))
  loc_10619DA: Call 0.Method_CmdOK_UnknownEvent_90 (2, CVar(var_D4), var_90)
  loc_10619F2: LateMemCallSt
  loc_1061A14: Set var_88 = var_8C(CInt(3))
  loc_1061A1A: Call 0.Method_CmdOK_UnknownEvent_90 (3, ParentForm, CVar(var_8C))
  loc_1061A32: LateMemCallSt
  loc_1061A54: Set var_88 = var_8C(CInt(4))
  loc_1061A5A: Call 0.Method_CmdOK_UnknownEvent_90 (4, ParentForm, CVar(var_8C))
  loc_1061A72: LateMemCallSt
  loc_1061A94: Set var_88 = var_8C(CInt(5))
  loc_1061A9A: Call 0.Method_CmdOK_UnknownEvent_90 (5, ParentForm, CVar(var_8C))
  loc_1061AB2: LateMemCallSt
  loc_1061AD4: Set var_88 = var_8C(CInt(6))
  loc_1061ADA: Call 0.Method_CmdOK_UnknownEvent_90 (6, ParentForm, CVar(var_8C))
  loc_1061AF2: LateMemCallSt
  loc_1061B14: Set var_88 = var_8C(CInt(7))
  loc_1061B1A: Call 0.Method_CmdOK_UnknownEvent_90 (7, ParentForm, CVar(var_8C))
  loc_1061B22: var_C0 = CVar(var_8C) 'Address
  loc_1061B2A: var_90 = ParentForm
  loc_1061B32: LateMemCallSt
  loc_1061B4D: Call ParentForm.UpdateDetail
  loc_1061B63: Me.Global.Unload Me
  loc_1061B6B: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E16C74
  'Data Table: 46BF54
  Dim var_23AC As Long
  loc_E16C69: Me.Global.Unload Me
  loc_E16C71: Exit Sub
  loc_E16C72: var_23AC = 
End Sub

Private Sub TxtCust_GotFocus(Index As Integer) 'EEAD28
  'Data Table: 46BF54
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As TextBox
  loc_EEAC72: Set var_88 = Me.TxtCust
  loc_EEAC78: Call 0.Method_TxtCust_GotFocus0 (Index)
  loc_EEAC86: Proc_6_74_E23240(var_8C)
  loc_EEAC95: var_92 = Index
  loc_EEACA0: If Not (var_92 = CInt(6)) Then
  loc_EEACAB:   If (var_92 = CInt(7)) Then
  loc_EEACAE:   End If
  loc_EEACBD:   Set var_88 = Me.TxtCust
  loc_EEACC3:   Call 0.Method_TxtCust_GotFocus0 (Index, var_8C, 0)
  loc_EEACCB:   var_8C.SelStart = var_92
  loc_EEACE4:   Set var_88 = Me.TxtCust
  loc_EEACEA:   Call 0.Method_TxtCust_GotFocus0 (Index, var_8C)
  loc_EEAD05:   Set var_90 = Me.TxtCust
  loc_EEAD0B:   Call 0.Method_TxtCust_GotFocus0 (Index, var_9C)
  loc_EEAD13:   var_9C.SelLength = Len(var_8C.Text)
  loc_EEAD26: End If
  loc_EEAD26: Exit Sub
End Sub

Private Sub TxtCust_KeyDown(KeyCode As Integer, Shift As Integer) 'E6BBB8
  'Data Table: 46BF54
  Dim var_88 As Integer
  loc_E6BB66: If (CLng(Shift) = &H1B) Then
  loc_E6BB69:   Exit Sub
  loc_E6BB6A: End If
  loc_E6BB6D: var_88 = KeyCode
  loc_E6BB83: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_E6BB8C:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E6BB91: End If
  loc_E6BBA6: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E6BBAF:   Proc_6_75_E5335C(Shift, arg_14)
  loc_E6BBB4: End If
  loc_E6BBB4: Exit Sub
End Sub

Private Sub TxtCust_KeyPress(KeyAscii As Integer) 'E1F7C0
  'Data Table: 46BF54
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E1F7AA: Proc_6_133_E7FB08(var_94)
  loc_E1F7B3: arg_10 = CInt(var_94)
  loc_E1F7BC: var_96 = KeyAscii
  loc_E1F7BF: Exit Sub
End Sub

Private Sub TxtCust_LostFocus(Index As Integer) 'E4D1F4
  'Data Table: 46BF54
  loc_E4D1D2: Set var_88 = Me.TxtCust
  loc_E4D1D8: Call 0.Method_TxtCust_LostFocus0 (Index)
  loc_E4D1E6: Proc_6_73_E23294(var_8C)
  loc_E4D1F2: Exit Sub
End Sub

Private Sub TxtCust_Validate(Cancel As Boolean) '143A9DC
  'Data Table: 46BF54
  Dim var_8E As Integer
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_46BF6B As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Variant
  Dim var_128 As Variant
  Dim var_98 As Variant
  Dim var_8C As Recordset15
  Dim var_120 As Variant
  Dim var_B8 As Variant
  Dim var_12C As String
  Dim var_13C As TextBox
  Dim arg_10 As Integer
  loc_1439EFF: var_8E = Cancel
  loc_1439F0A: If (var_8E = CInt(0)) Then
  loc_1439F17:   Set var_94 = Me.TxtCust
  loc_1439F1D:   Call 0.Method_TxtCust_Validate0 (Cancel, var_98)
  loc_1439F46:   If CBool(Trim(CVar(var_98)) <> vbNullString) Then
  loc_1439F66:     Set var_94 = Me.TxtCust
  loc_1439F6C:     Call 0.Method_TxtCust_Validate0 (CInt(0), var_98, "Select * from guestprof Where MobileNo='", var_11C)
  loc_1439F83:     var_D8 = -1 & Trim(CVar(var_98)) 
  loc_1439F8C:     var_F8 = var_D8 & "' And POS=1" 
  loc_1439F9A:     unk_46BF6B.Execute CStr(var_F8), var_120, var_8E
  loc_1439FA5:     Set var_88 = var_120
  loc_1439FD3:     If (var_88.RecordCount > 0) Then
  loc_1439FD9:       var_88.MoveLast
  loc_1439FEB:       Me.LblRewardPoint.Caption = vbNullString
  loc_143A029:       Set var_120 = Me.TxtCust
  loc_143A02F:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_128)
  loc_143A037:       var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")))
  loc_143A081:       Set var_120 = Me.TxtCust
  loc_143A087:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_128)
  loc_143A08F:       var_128.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")))
  loc_143A0D9:       Set var_120 = Me.TxtCust
  loc_143A0DF:       Call 0.Method_TxtCust_Validate0 (CInt(2), var_128)
  loc_143A0E7:       var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_143A131:       Set var_120 = Me.TxtCust
  loc_143A137:       Call 0.Method_TxtCust_Validate0 (CInt(3), var_128)
  loc_143A13F:       var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_143A189:       Set var_120 = Me.TxtCust
  loc_143A18F:       Call 0.Method_TxtCust_Validate0 (CInt(4), var_128)
  loc_143A197:       var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Likes")))
  loc_143A1E1:       Set var_120 = Me.TxtCust
  loc_143A1E7:       Call 0.Method_TxtCust_Validate0 (CInt(5), var_128)
  loc_143A1EF:       var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DisLikes")))
  loc_143A255:       Set var_120 = Me.TxtCust
  loc_143A25B:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_128, CStr(Format(CVar(var_88.Fields.Item("BirthDate")), "dd/MMM/yyyy")))
  loc_143A263:       var_128.Text = 1
  loc_143A28C:       var_94 = var_88.Fields
  loc_143A2B1:       var_A8 = CVar(var_94.Item("Anniversary")) 'Address
  loc_143A2B8:       var_D8 = Format(var_A8, "dd/MMM/yyyy")
  loc_143A2C0:       var_FC = CStr(var_D8)
  loc_143A2CF:       Set var_120 = Me.TxtCust
  loc_143A2D5:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_128, var_FC)
  loc_143A2DD:       var_128.Text = 1
  loc_143A30D:       unk_46BF6B.Execute "Select ncur from enviro", var_A8, -1
  loc_143A333:       var_94 = var_88.Fields
  loc_143A33B:       var_98 = var_94.Item("BirthDate")
  loc_143A389:       If (var_98.Value = var_94.Fields.Item("Ncur").Value) Then
  loc_143A392:         Call 0.Method_arg_50 (var_FC, var_94)
  loc_143A3B3:         MsgBox("Happy Birthday", &H40, CVar(var_FC), var_D8, var_F8)
  loc_143A3C3:         Exit Sub
  loc_143A3C4:       End If
  loc_143A3CF:       var_A8 = ParentForm.CmdRedeem
  loc_143A3EA:       If (var_A8.Visible = True) Then
  loc_143A40B:         Set var_94 = var_98(CInt(1))
  loc_143A411:         Call 0.Method_TxtCust_Validate0 (var_FC, "Select (RewardPoint-RedeemPoint) RewardPointBal From SmartCardRegistration Where MemberCode='", var_A8, -1)
  loc_143A422:         var_12C = 1 & var_FC
  loc_143A440:         unk_46BF6B.Execute var_12C & "' And CardType='Cash Card' And LogSite_Code='" & MemVar_1F95078 & "'", 1, 
  loc_143A44B:         Set var_8C = var_A8.TextBox.Tag
  loc_143A47B:         If (var_8C.RecordCount > 0) Then
  loc_143A49D:           var_98 = var_8C.Fields.Item("RewardpointBal")
  loc_143A4AD:           var_B8 = "Reward Points Balance: " & var_98.Value 
  loc_143A4BF:           Me.LblRewardPoint.Caption = CStr(var_B8)
  loc_143A4D7:         End If
  loc_143A4D7:       End If
  loc_143A4DA:     Else
  loc_143A4E7:       Me.LblRewardPoint.Caption = vbNullString
  loc_143A4FD:       Set var_94 = Me.TxtCust
  loc_143A503:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_98)
  loc_143A50B:       var_98.Text = vbNullString
  loc_143A525:       Set var_94 = Me.TxtCust
  loc_143A52B:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_98)
  loc_143A533:       var_98.Tag = vbNullString
  loc_143A54D:       Set var_94 = Me.TxtCust
  loc_143A553:       Call 0.Method_TxtCust_Validate0 (CInt(2), var_98)
  loc_143A55B:       var_98.Text = vbNullString
  loc_143A575:       Set var_94 = Me.TxtCust
  loc_143A57B:       Call 0.Method_TxtCust_Validate0 (CInt(3), var_98)
  loc_143A583:       var_98.Text = vbNullString
  loc_143A59D:       Set var_94 = Me.TxtCust
  loc_143A5A3:       Call 0.Method_TxtCust_Validate0 (CInt(4), var_98)
  loc_143A5AB:       var_98.Text = vbNullString
  loc_143A5C5:       Set var_94 = Me.TxtCust
  loc_143A5CB:       Call 0.Method_TxtCust_Validate0 (CInt(5), var_98)
  loc_143A5D3:       var_98.Text = vbNullString
  loc_143A5ED:       Set var_94 = Me.TxtCust
  loc_143A5F3:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_143A5FB:       var_98.Text = vbNullString
  loc_143A615:       Set var_94 = Me.TxtCust
  loc_143A61B:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_98)
  loc_143A623:       var_98.Text = vbNullString
  loc_143A62F:     End If
  loc_143A62F:   End If
  loc_143A632: Else
  loc_143A63A:   If Not (var_8E = CInt(6)) Then
  loc_143A645:     If (var_8E = CInt(7)) Then
  loc_143A648:     End If
  loc_143A652:     Set var_94 = Me.TxtCust
  loc_143A658:     Call 0.Method_TxtCust_Validate0 (Cancel)
  loc_143A678:     Set var_128 = Me.TxtCust
  loc_143A67E:     Call 0.Method_TxtCust_Validate0 (Cancel, var_13C)
  loc_143A686:     var_13C.Text = Proc_6_33_15125B8(var_98)
  loc_143A6A7:     Set var_94 = Me.TxtCust
  loc_143A6AD:     Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_143A6D0:     Set var_120 = Me.TxtCust
  loc_143A6D6:     Call 0.Method_TxtCust_Validate0 (CInt(7), var_128, var_12C)
  loc_143A6DE:     (var_98.Text <> vbNullString) = var_128.Text
  loc_143A6FE:     If (var_98 And (var_12C <> vbNullString)) Then
  loc_143A70F:       Set var_120 = Me.TxtCust
  loc_143A715:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_128)
  loc_143A730:       Set var_94 = Me.TxtCust
  loc_143A736:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_143A760:       If (CDate(var_98.Text) > CDate(var_128.Text)) Then
  loc_143A77C:         MsgBox("Birth Date Should be Less Than Anniversary Date", 0, var_B8, var_D8, var_F8)
  loc_143A78E:         arg_10 = &HFF
  loc_143A791:         Exit Sub
  loc_143A792:       End If
  loc_143A7A8:       Set var_94 = Me.TxtCust
  loc_143A7AE:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_143A7B6:       var_FC = var_98.Text
  loc_143A7D7:       If (CDate(var_FC) > CDate(Now)) Then
  loc_143A7F3:         MsgBox("Invalid Birth Date ", 0, var_B8, var_D8, var_F8)
  loc_143A805:         arg_10 = &HFF
  loc_143A808:         Exit Sub
  loc_143A809:       End If
  loc_143A81F:       Set var_94 = Me.TxtCust
  loc_143A825:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_98, var_FC)
  loc_143A82D:       arg_10 = var_98.Text
  loc_143A84E:       If (CDate(var_FC) > CDate(Now)) Then
  loc_143A86A:         MsgBox("Invalid Anniversary Date", 0, var_B8, var_D8, var_F8)
  loc_143A87C:         arg_10 = &HFF
  loc_143A87F:         Exit Sub
  loc_143A880:       End If
  loc_143A880:     End If
  loc_143A88E:     Set var_94 = Me.TxtCust
  loc_143A894:     Call 0.Method_TxtCust_Validate0 (CInt(6), var_98, var_FC)
  loc_143A89C:     arg_10 = var_98.Text
  loc_143A8B3:     If (var_FC <> vbNullString) Then
  loc_143A8CC:       Set var_94 = Me.TxtCust
  loc_143A8D2:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_143A8DA:       var_FC = var_98.Text
  loc_143A8FB:       If (CDate(var_FC) > CDate(Now)) Then
  loc_143A917:         MsgBox("Invalid Birth Date ", 0, var_B8, var_D8, var_F8)
  loc_143A929:         arg_10 = &HFF
  loc_143A92C:         Exit Sub
  loc_143A92D:       End If
  loc_143A92D:     End If
  loc_143A93B:     Set var_94 = Me.TxtCust
  loc_143A941:     Call 0.Method_TxtCust_Validate0 (CInt(7), var_98, var_FC)
  loc_143A949:     arg_10 = var_98.Text
  loc_143A960:     If (var_FC <> vbNullString) Then
  loc_143A979:       Set var_94 = Me.TxtCust
  loc_143A97F:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_98)
  loc_143A9A8:       If (CDate(var_98.Text) > CDate(Now)) Then
  loc_143A9C4:         MsgBox("Invalid Anniversary Date", 0, var_B8, var_D8, var_F8)
  loc_143A9D6:         arg_10 = &HFF
  loc_143A9D9:         Exit Sub
  loc_143A9DA:       End If
  loc_143A9DA:     End If
  loc_143A9DA:   End If
  loc_143A9DA: End If
  loc_143A9DA: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E0E904
  'Data Table: 46BF54
  loc_E0E8FD: Set global_52 = vNewValue
  loc_E0E901: Exit Sub
End Sub

Public Property Get ParentForm() 'E0D044
  'Data Table: 46BF54
  loc_E0D038: Set var_88 = global_52 
  loc_E0D03C: ParentForm = 
End Sub

Public Sub Proc_208_13_EE1DAC
  'Data Table: 46BF54
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EE1CF6: Set var_8C = Me.TxtCust
  loc_EE1CFC: Call 0.Method_Proc_208_13_EE1DACC (var_8E, var_86)
  loc_EE1D0C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE1D22:   Set var_8C = Me.TxtCust
  loc_EE1D28:   Call 0.Method_Proc_208_13_EE1DAC0 (CInt(var_86), var_98)
  loc_EE1D30:   var_98.Text = vbNullString
  loc_EE1D4C:   Set var_8C = Me.TxtCust
  loc_EE1D52:   Call 0.Method_Proc_208_13_EE1DAC0 (CInt(var_86), var_98)
  loc_EE1D5A:   var_98.Tag = vbNullString
  loc_EE1D69: Next var_92 'Byte
  loc_EE1D7C: Me.LblRewardPoint.Caption = vbNullString
  loc_EE1D8F: Set var_8C = Me.TxtCust
  loc_EE1D95: Call 0.Method_Proc_208_13_EE1DAC0 (CInt(0))
  loc_EE1D9D: var_98.SetFocus
  loc_EE1DA9: Exit Sub
End Sub
