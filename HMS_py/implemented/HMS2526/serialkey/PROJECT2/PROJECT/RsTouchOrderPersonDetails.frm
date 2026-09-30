VERSION 5.00
Begin VB.Form RsTouchOrderPersonDetails
  Caption = "Customer Information"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 210
  ClientWidth = 12525
  ClientHeight = 5400
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrCustInfo
    BackColor = &H80000003&
    Left = -15
    Top = 0
    Width = 10755
    Height = 1785
    TabIndex = 56
    BorderStyle = 0 'None
    Begin BtnEnh Cmd
      Index = 0
      Left = 30
      Top = 105
      Width = 1965
      Height = 780
      TabIndex = 65
    End
    Begin TextBox Txt
      Index = 3
      Left = 7425
      Top = 1035
      Width = 3210
      Height = 630
      TabIndex = 62
      BorderStyle = 0 'None
      MaxLength = 50
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
    End
    Begin TextBox Txt
      Index = 2
      Left = 7425
      Top = 180
      Width = 3210
      Height = 630
      TabIndex = 61
      BorderStyle = 0 'None
      MaxLength = 50
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
    End
    Begin TextBox Txt
      Index = 1
      Left = 2055
      Top = 1035
      Width = 3210
      Height = 630
      TabIndex = 58
      BorderStyle = 0 'None
      MaxLength = 50
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
    End
    Begin TextBox Txt
      Index = 0
      Left = 2040
      Top = 180
      Width = 3210
      Height = 630
      TabIndex = 57
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
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
    End
    Begin BtnEnh Cmd
      Index = 1
      Left = 30
      Top = 960
      Width = 1965
      Height = 780
      TabIndex = 66
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 5400
      Top = 120
      Width = 1965
      Height = 765
      TabIndex = 67
    End
  End
End
Begin BtnEnh Cmd
  Index = 3
  Left = 5400
  Top = 975
  Width = 1965
  Height = 750
  TabIndex = 68
End
Begin Label Label1
  Index = 3
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 7365
  Top = 975
  Width = 3330
  Height = 750
  TabIndex = 64
  Alignment = 1 'Right Justify
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
Begin Label Label1
  Index = 2
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 7365
  Top = 120
  Width = 3330
  Height = 750
  TabIndex = 63
  Alignment = 1 'Right Justify
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
Begin Line Line12
  BorderColor = &H404040&
  X1 = 5355
  Y1 = 915
  X2 = 10725
  Y2 = 900
  BorderWidth = 2
End
Begin Shape Shape1
  BorderColor = &H404040&
  Left = 5370
  Top = 60
  Width = 5370
  Height = 1740
  BorderWidth = 2
  FillColor = &HC0E0FF&
  FillStyle = 0
End
Begin Label Label1
  Index = 1
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 1995
  Top = 975
  Width = 3330
  Height = 750
  TabIndex = 60
  Alignment = 1 'Right Justify
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
Begin Label Label1
  Index = 0
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 1995
  Top = 120
  Width = 3330
  Height = 750
  TabIndex = 59
  Alignment = 1 'Right Justify
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
Begin Line Line10
  BorderColor = &H404040&
  X1 = 0
  Y1 = 915
  X2 = 5370
  Y2 = 900
  BorderWidth = 2
End
Begin Shape Shape3
  BorderColor = &H404040&
  Left = 15
  Top = 60
  Width = 5370
  Height = 1740
  BorderWidth = 2
  FillColor = &HC0E0FF&
  FillStyle = 0
End
Begin Frame Frame1
  BackColor = &H80000003&
  Left = 0
  Top = 1785
  Width = 12525
  Height = 3615
  TabIndex = 1
  BorderStyle = 0 'None
  Begin SSPanel SSPKey
    Index = 0
    Left = 9825
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 2
  End
  Begin SSPanel SSPKey
    Index = 1
    Left = 9825
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 3
  End
  Begin SSPanel SSPKey
    Index = 2
    Left = 10710
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 4
  End
  Begin SSPanel SSPKey
    Index = 3
    Left = 11595
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 5
  End
  Begin SSPanel SSPKey
    Index = 4
    Left = 9825
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 6
  End
  Begin SSPanel SSPKey
    Index = 5
    Left = 10710
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 7
  End
  Begin SSPanel SSPKey
    Index = 6
    Left = 11595
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 8
  End
  Begin SSPanel SSPKey
    Index = 7
    Left = 9825
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 9
  End
  Begin SSPanel SSPKey
    Index = 8
    Left = 10710
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 10
  End
  Begin SSPanel SSPKey
    Index = 9
    Left = 11595
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 11
  End
  Begin SSPanel SSPKey
    Index = 10
    Left = 10710
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 12
  End
  Begin SSPanel SSPKey
    Index = 11
    Left = 11595
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 13
  End
  Begin SSPanel SSPKey
    Index = 12
    Left = 30
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 14
  End
  Begin SSPanel SSPKey
    Index = 13
    Left = 915
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 15
  End
  Begin SSPanel SSPKey
    Index = 14
    Left = 1800
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 16
  End
  Begin SSPanel SSPKey
    Index = 15
    Left = 2685
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 17
  End
  Begin SSPanel SSPKey
    Index = 16
    Left = 3570
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 18
  End
  Begin SSPanel SSPKey
    Index = 17
    Left = 4455
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 19
  End
  Begin SSPanel SSPKey
    Index = 18
    Left = 5340
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 20
  End
  Begin SSPanel SSPKey
    Index = 19
    Left = 6225
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 21
  End
  Begin SSPanel SSPKey
    Index = 20
    Left = 7110
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 22
  End
  Begin SSPanel SSPKey
    Index = 21
    Left = 7995
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 23
  End
  Begin SSPanel SSPKey
    Index = 22
    Left = 8880
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 24
  End
  Begin SSPanel SSPKey
    Index = 23
    Left = 45
    Top = 885
    Width = 900
    Height = 900
    TabIndex = 25
  End
  Begin SSPanel SSPKey
    Index = 24
    Left = 930
    Top = 885
    Width = 900
    Height = 900
    TabIndex = 26
  End
  Begin SSPanel SSPKey
    Index = 25
    Left = 1800
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 27
  End
  Begin SSPanel SSPKey
    Index = 26
    Left = 2685
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 28
  End
  Begin SSPanel SSPKey
    Index = 27
    Left = 3570
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 29
  End
  Begin SSPanel SSPKey
    Index = 28
    Left = 4455
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 30
  End
  Begin SSPanel SSPKey
    Index = 29
    Left = 5340
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 31
  End
  Begin SSPanel SSPKey
    Index = 30
    Left = 6225
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 32
  End
  Begin SSPanel SSPKey
    Index = 31
    Left = 7110
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 33
  End
  Begin SSPanel SSPKey
    Index = 32
    Left = 7995
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 34
  End
  Begin SSPanel SSPKey
    Index = 33
    Left = 8880
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 35
    Begin SSPanel SSPKey
      Index = 50
      Left = 0
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 36
    End
  End
  Begin SSPanel SSPKey
    Index = 34
    Left = 45
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 37
  End
  Begin SSPanel SSPKey
    Index = 35
    Left = 915
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 38
  End
  Begin SSPanel SSPKey
    Index = 36
    Left = 1800
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 39
  End
  Begin SSPanel SSPKey
    Index = 37
    Left = 2685
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 40
  End
  Begin SSPanel SSPKey
    Index = 38
    Left = 3570
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 41
  End
  Begin SSPanel SSPKey
    Index = 39
    Left = 4455
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 42
  End
  Begin SSPanel SSPKey
    Index = 40
    Left = 5340
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 43
  End
  Begin SSPanel SSPKey
    Index = 41
    Left = 6225
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 44
  End
  Begin SSPanel SSPKey
    Index = 42
    Left = 7110
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 45
  End
  Begin SSPanel SSPKey
    Index = 43
    Left = 7995
    Top = 1800
    Width = 1785
    Height = 900
    TabIndex = 46
  End
  Begin SSPanel SSPKey
    Index = 44
    Left = 30
    Top = 2685
    Width = 1785
    Height = 900
    TabIndex = 47
  End
  Begin SSPanel SSPKey
    Index = 45
    Left = 1800
    Top = 2685
    Width = 1785
    Height = 900
    TabIndex = 48
  End
  Begin SSPanel SSPKey
    Index = 46
    Left = 3570
    Top = 2685
    Width = 2670
    Height = 900
    TabIndex = 49
  End
  Begin SSPanel SSPKey
    Index = 47
    Left = 6225
    Top = 2685
    Width = 1785
    Height = 900
    TabIndex = 50
  End
  Begin SSPanel SSPKey
    Index = 48
    Left = 7995
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 51
  End
  Begin SSPanel SSPKey
    Index = 49
    Left = 8880
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 52
  End
End
Begin TextBox TxtKeyBoard
  Left = 15
  Top = 5550
  Width = 10590
  Height = 1665
  TabIndex = 0
  MultiLine = -1  'True
  ScrollBars = 2
  BeginProperty Font
    Name = "Tahoma"
    Size = 14.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin SSPanel SSPKey
  Index = 51
  Left = 10725
  Top = 0
  Width = 1785
  Height = 900
  TabIndex = 53
End
Begin SSPanel SSPKey
  Index = 52
  Left = 10725
  Top = 885
  Width = 1785
  Height = 900
  TabIndex = 54
End
Begin SSPanel SSPKey
  Index = 53
  Left = 1425
  Top = 5535
  Width = 900
  Height = 900
  Visible = 0   'False
  TabIndex = 55
End
End

Attribute VB_Name = "RsTouchOrderPersonDetails"

Private global_52 As Integer
Private global_80 As Byte

Private Sub Form_Load() 'EE655C
  'Data Table: 42C220
  loc_EE6499: global_52 = &HFF
  loc_EE64A3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EE64B6: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_EE64CC: Me.FrCustInfo.BackColor = CLng(MemVar_1F951B4)
  loc_EE64E2: Me.Shape1.BackColor = CLng(MemVar_1F951B4)
  loc_EE64F8: Me.Shape3.BackColor = CLng(MemVar_1F951B4)
  loc_EE6518: global_64 = Me.TxtKeyBoard.Text
  loc_EE6550: Call Proc_259_19_EE6D5C(CByte(0), CByte(0), CDbl(&H40C0))
  loc_EE6555: Call Proc_259_20_106D9EC(CDbl(&HFF0000))
  loc_EE655A: Exit Sub
End Sub

Private Sub Form_Activate() 'EDF290
  'Data Table: 42C220
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_88 As TextBox
  loc_EDF1EB: Set var_88 = Me.Txt
  loc_EDF1F1: Call 0.Method_Form_Activate0 (CInt(global_80), var_8C)
  loc_EDF205: Set var_94 = Me.TxtKeyBoard
  loc_EDF20B: var_94.Text = var_8C.Text
  loc_EDF23C: Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_EDF270: Set var_8C = Me.Txt
  loc_EDF276: Call 0.Method_Form_Activate0 (CInt(global_80), var_94)
  loc_EDF27E: var_94.SelStart = Me.TxtKeyBoard.SelStart
  loc_EDF28C: Exit Sub
  loc_EDF28D: StAryRecMove
End Sub

Public Sub SSPKey_UnknownEvent_9(Index As Integer) '14DE7A8
  'Data Table: 42C220
  Dim var_90 As Variant
  Dim var_A4 As String
  Dim var_8C As Variant
  Dim var_BC As TextBox
  Dim var_B8 As Variant
  Dim var_10C As Variant
  loc_14DD9DE: Set var_8C = Me.SSPKey
  loc_14DD9E4: Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DD9EC: var_90.Caption
  loc_14DDA09: If (CStr(var_90) = "Finish") Then
  loc_14DDA0F:   Call 0.Method_arg_2B4 ()
  loc_14DDA2A:   If (EntryType = "SALEBILLENTRY") Then
  loc_14DDA38:     Set var_8C = Me.Txt
  loc_14DDA3E:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(0))
  loc_14DDA61:     ParentForm.sPhoneNo = Trim(CVar(var_90))
  loc_14DDA7E:     Set var_8C = var_90(CInt(1))
  loc_14DDA84:     Call 0.Method_SSPKey_UnknownEvent_90 (var_90)
  loc_14DDAA7:     ParentForm.sCustName = Trim(CVar(var_90))
  loc_14DDAC4:     Set var_8C = var_90(CInt(2))
  loc_14DDACA:     Call 0.Method_SSPKey_UnknownEvent_90 ()
  loc_14DDAED:     ParentForm.sAddress1 = Trim(CVar(var_90))
  loc_14DDB0A:     Set var_8C = var_90(CInt(3))
  loc_14DDB10:     Call 0.Method_SSPKey_UnknownEvent_90 ()
  loc_14DDB2B:     var_BC = ParentForm
  loc_14DDB33:     var_BC.sAddress2 = Trim(CVar(var_90))
  loc_14DDB50:     Call ParentForm.SetOnLineSalingCustDetail
  loc_14DDB5C:   Else
  loc_14DDB5C:     Call Proc_259_21_124888C()
  loc_14DDB61:   End If
  loc_14DDB6E:   Me.Global.Unload Me
  loc_14DDB79: Else
  loc_14DDB83:   Set var_8C = Me.SSPKey
  loc_14DDB89:   Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DDB91:   var_90.Caption
  loc_14DDBAE:   If (CStr(var_90) = "Enter") Then
  loc_14DDBBE:     var_A4 = Me.TxtKeyBoard.Text
  loc_14DDBE8:     Set var_90 = Me.Txt
  loc_14DDBEE:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_BC)
  loc_14DDBF6:     var_BC.Text = CStr(Trim(CVar(var_A4)))
  loc_14DDC18:     If (global_80 = 0) Then
  loc_14DDC1B:       Call Proc_259_22_1038050()
  loc_14DDC20:     End If
  loc_14DDC31:     global_80 = CByte((CInt(global_80) + 1))
  loc_14DDC41:     If (CInt(global_80) = 4) Then
  loc_14DDC4B:       global_80 = CByte(0)
  loc_14DDC4F:     End If
  loc_14DDC62:     Set var_8C = Me.Txt
  loc_14DDC68:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_90, var_A4)
  loc_14DDC70:     global_80 = var_90.Text
  loc_14DDC7C:     Set var_BC = Me.TxtKeyBoard
  loc_14DDC82:     var_BC.Text = var_A4
  loc_14DDCB3:     Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14DDCE7:     Set var_90 = Me.Txt
  loc_14DDCED:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_BC)
  loc_14DDCF5:     var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14DDD06:   Else
  loc_14DDD10:     Set var_8C = Me.SSPKey
  loc_14DDD16:     Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_90)
  loc_14DDD1E:     var_90.Caption
  loc_14DDD3B:     If (CStr(global_80) = "Cancel") Then
  loc_14DDD54:       If (EntryType = "SALEBILLENTRY") Then
  loc_14DDD57:         GoTo loc_14DDD76
  loc_14DDD5A:       End If
  loc_14DDD6E:       Me.Global.Unload ParentForm
  loc_14DDD76:       ' Referenced from:     14DDD57
  loc_14DDD83:       Me.Global.Unload Me
  loc_14DDD8E:     Else
  loc_14DDD98:       Set var_8C = Me.SSPKey
  loc_14DDD9E:       Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DDDA6:       var_90.Caption
  loc_14DDDC3:       If (CStr(var_90) = "Clear") Then
  loc_14DDDD3:         Me.TxtKeyBoard.Text = vbNullString
  loc_14DDDDE:       Else
  loc_14DDDE8:         Set var_8C = Me.SSPKey
  loc_14DDDEE:         Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DDDF6:         var_90.Caption
  loc_14DDE13:         If (CStr(var_90) = "Back") Then
  loc_14DDE34:           If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14DDE56:             Set var_90 = Me.TxtKeyBoard
  loc_14DDE5C:             var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14DDE77:             Me.TxtKeyBoard.SelLength = 1
  loc_14DDE8C:             Me.TxtKeyBoard.SelText = vbNullString
  loc_14DDE94:           End If
  loc_14DDE97:         Else
  loc_14DDEA1:           Set var_8C = Me.SSPKey
  loc_14DDEA7:           Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DDEAF:           var_90.Caption
  loc_14DDECC:           If (CStr(var_90) = "Delete") Then
  loc_14DDEEB:             Set var_90 = Me.TxtKeyBoard
  loc_14DDF05:             If (Me.TxtKeyBoard.SelStart < Len(var_90.Text)) Then
  loc_14DDF17:               Me.TxtKeyBoard.SelLength = 1
  loc_14DDF2C:               Me.TxtKeyBoard.SelText = vbNullString
  loc_14DDF34:             End If
  loc_14DDF37:           Else
  loc_14DDF41:             Set var_8C = Me.SSPKey
  loc_14DDF47:             Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DDF4F:             var_90.Caption
  loc_14DDF6C:             If (CStr(var_90) = "Caps Lock") Then
  loc_14DDF79:               global_52 = Not(global_52)
  loc_14DDF85:               If (global_52 = &HFF) Then
  loc_14DDF94:                 Set var_8C = Me.SSPKey
  loc_14DDF9A:                 Call 0.Method_SSPKey_UnknownEvent_9C (var_DA, var_86)
  loc_14DDFA8:                 For var_DE = global_52 To (var_DA - 1):             0 = var_DE 'Integer
  loc_14DDFB8:                   Set var_8C = Me.SSPKey
  loc_14DDFBE:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_90)
  loc_14DDFC6:                   var_90.Caption
  loc_14DDFE5:                   If (Len(CStr(global_52)) = 1) Then
  loc_14DDFF2:                     Set var_8C = Me.SSPKey
  loc_14DDFF8:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_14DE000:                     var_90.Caption
  loc_14DE00E:                     var_F0 = Ucase(CVar(CStr(var_90)))
  loc_14DE021:                     Set var_BC = Me.SSPKey
  loc_14DE027:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_F4)
  loc_14DE048:                   End If
  loc_14DE04B:                 Next var_DE 'Integer
  loc_14DE053:               Else
  loc_14DE05F:                 Set var_8C = Me.SSPKey
  loc_14DE065:                 Call 0.Method_SSPKey_UnknownEvent_9C (var_DA, var_86)
  loc_14DE073:                 For var_F8 =  To (var_DA - 1):               0 = var_F8 'Integer
  loc_14DE083:                   Set var_8C = Me.SSPKey
  loc_14DE089:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_14DE091:                   var_90.Caption
  loc_14DE0B0:                   If (Len(CStr(var_90)) = 1) Then
  loc_14DE0BD:                     Set var_8C = Me.SSPKey
  loc_14DE0C3:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_14DE0CB:                     var_90.Caption
  loc_14DE0D9:                     var_F0 = LCase(CVar(CStr(var_90)))
  loc_14DE0EC:                     Set var_BC = Me.SSPKey
  loc_14DE0F2:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_F4)
  loc_14DE113:                   End If
  loc_14DE116:                 Next var_F8 'Integer
  loc_14DE11B:               End If
  loc_14DE11E:             Else
  loc_14DE128:               Set var_8C = Me.SSPKey
  loc_14DE12E:               Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DE136:               var_90.Caption
  loc_14DE153:               If (CStr(var_90) = "Home") Then
  loc_14DE165:                 Me.TxtKeyBoard.SelStart = 0
  loc_14DE170:               Else
  loc_14DE17A:                 Set var_8C = Me.SSPKey
  loc_14DE180:                 Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DE188:                 var_90.Caption
  loc_14DE1A5:                 If (CStr(var_90) = "Space Bar") Then
  loc_14DE21D:                   Set var_90 = Me.TxtKeyBoard
  loc_14DE242:                   var_B8 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14DE259:                   var_F0 = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14DE2A0:                   var_B8 = (CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))) + Space(1))
  loc_14DE2AB:                   global_56 = CStr(CVar(Me.TxtKeyBoard.SelStart))
  loc_14DE2D3:                   Me.TxtKeyBoard.Text = global_56 & CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14DE2EF:                   Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_14DE2FA:                 Else
  loc_14DE304:                   Set var_8C = Me.SSPKey
  loc_14DE30A:                   Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DE312:                   var_90.Caption
  loc_14DE32F:                   If (CStr(var_90) = "End") Then
  loc_14DE34C:                     Set var_90 = Me.TxtKeyBoard
  loc_14DE352:                     var_90.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14DE364:                   Else
  loc_14DE36E:                     Set var_8C = Me.SSPKey
  loc_14DE374:                     Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DE37C:                     var_90.Caption
  loc_14DE399:                     If (CStr(var_90) = "<") Then
  loc_14DE3BA:                       If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14DE3DC:                         Set var_90 = Me.TxtKeyBoard
  loc_14DE3E2:                         var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14DE3EE:                       End If
  loc_14DE3F1:                     Else
  loc_14DE3FB:                       Set var_8C = Me.SSPKey
  loc_14DE401:                       Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DE409:                       var_90.Caption
  loc_14DE426:                       If (CStr(var_90) = ">") Then
  loc_14DE45F:                         If (Me.TxtKeyBoard.SelStart < Len(Me.TxtKeyBoard.Text)) Then
  loc_14DE481:                           Set var_90 = Me.TxtKeyBoard
  loc_14DE487:                           var_90.SelStart = (Me.TxtKeyBoard.SelStart + 1)
  loc_14DE493:                         End If
  loc_14DE496:                       Else
  loc_14DE4A0:                         Set var_8C = Me.SSPKey
  loc_14DE4A6:                         Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_14DE4AE:                         var_90.Caption
  loc_14DE4CD:                         If (Len(CStr(var_90)) = 1) Then
  loc_14DE545:                           Set var_90 = Me.TxtKeyBoard
  loc_14DE56A:                           var_B8 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14DE581:                           var_F0 = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14DE590:                           global_60 = CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14DE5B8:                           If (global_52 = &HFF) Then
  loc_14DE5CE:                             Set var_8C = Me.SSPKey
  loc_14DE5D4:                             Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_90)
  loc_14DE5DC:                             var_90.Caption
  loc_14DE5F2:                             var_10C = ( + Ucase(CVar(CStr(CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart))))))))
  loc_14DE5FD:                             global_56 = CStr(var_10C)
  loc_14DE619:                           Else
  loc_14DE62C:                             Set var_8C = Me.SSPKey
  loc_14DE632:                             Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_90)
  loc_14DE63A:                             var_90.Caption
  loc_14DE650:                             var_10C = ( + LCase(CVar(CStr(CVar(global_56)))))
  loc_14DE65B:                             global_56 = CStr(var_10C)
  loc_14DE674:                           End If
  loc_14DE68E:                           Me.TxtKeyBoard.Text = global_56 & global_60
  loc_14DE6AA:                           Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_14DE6B2:                         End If
  loc_14DE6B2:                       End If
  loc_14DE6B2:                     End If
  loc_14DE6B2:                   End If
  loc_14DE6B2:                 End If
  loc_14DE6B2:               End If
  loc_14DE6B2:             End If
  loc_14DE6B2:           End If
  loc_14DE6B2:         End If
  loc_14DE6B2:       End If
  loc_14DE6B2:     End If
  loc_14DE6B2:   End If
  loc_14DE6B2: End If
  loc_14DE6B9: Set var_BC = Me.TxtKeyBoard
  loc_14DE6D7: Set var_8C = Me.Txt
  loc_14DE6DD: Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_90)
  loc_14DE6E5: var_90.Text = var_BC.Text
  loc_14DE71B: Set var_90 = Me.Txt
  loc_14DE721: Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_BC)
  loc_14DE729: var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14DE74A: Set var_8C = Me.Txt
  loc_14DE750: Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_90)
  loc_14DE76A: If (var_90.Visible = &HFF) Then
  loc_14DE77D:   Set var_8C = Me.Txt
  loc_14DE783:   Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80))
  loc_14DE78B:   var_90.SetFocus
  loc_14DE797: End If
  loc_14DE7A2: Call Proc_259_19_EE6D5C(global_80)
  loc_14DE7A7: Exit Sub
End Sub

Public Sub Cmd_UnknownEvent_9(Index As Integer) 'F0669C
  'Data Table: 42C220
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_88 As TextBox
  loc_F065C2: If (global_80 = 0) Then
  loc_F065C5:   Call Proc_259_22_1038050()
  loc_F065CA: End If
  loc_F065D2: global_80 = CByte(Index)
  loc_F065E9: Set var_88 = Me.Txt
  loc_F065EF: Call 0.Method_Cmd_UnknownEvent_90 (CInt(global_80), var_8C)
  loc_F06603: Set var_94 = Me.TxtKeyBoard
  loc_F06609: var_94.Text = var_8C.Text
  loc_F0663A: Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_F0666E: Set var_8C = Me.Txt
  loc_F06674: Call 0.Method_Cmd_UnknownEvent_90 (CInt(global_80), var_94)
  loc_F0667C: var_94.SelStart = Me.TxtKeyBoard.SelStart
  loc_F06693: Call Proc_259_19_EE6D5C(CByte(Index))
  loc_F06698: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E0F174
  'Data Table: 42C220
  loc_E0F16D: Set global_68 = vNewValue
  loc_E0F171: Exit Sub
End Sub

Public Property Get ParentForm() 'E0F1BC
  'Data Table: 42C220
  loc_E0F1B0: Set var_88 = global_68 
  loc_E0F1B4: ParentForm = 
End Sub

Public Property Let InputType(vNewValue) 'E0F24C
  'Data Table: 42C220
  loc_E0F244: global_72 = vNewValue
  loc_E0F248: Exit Sub
End Sub

Public Property Get InputType() 'E0F36C
  'Data Table: 42C220
  loc_E0F360: var_88 = global_72
  loc_E0F363: InputType = 
End Sub

Public Property Let EntryType(vNewValue) 'E0F3B4
  'Data Table: 42C220
  loc_E0F3AC: global_76 = vNewValue
  loc_E0F3B0: Exit Sub
End Sub

Public Property Get EntryType() 'E0F48C
  'Data Table: 42C220
  loc_E0F480: var_88 = global_76
  loc_E0F483: EntryType = 
End Sub

Public Property Let tPhoneNo(vNewValue) 'E0F5AC
  'Data Table: 42C220
  loc_E0F5A4: global_100 = vNewValue
  loc_E0F5A8: Exit Sub
End Sub

Public Property Get tPhoneNo() 'E0F63C
  'Data Table: 42C220
  loc_E0F630: var_88 = global_100
  loc_E0F633: tPhoneNo = 
End Sub

Public Property Let tCustName(vNewValue) 'E0F714
  'Data Table: 42C220
  loc_E0F70C: global_104 = vNewValue
  loc_E0F710: Exit Sub
  loc_E0F711: StAryRecCopy
End Sub

Public Property Get tCustName() 'E0F87C
  'Data Table: 42C220
  loc_E0F870: var_88 = global_104
  loc_E0F873: tCustName = 
  loc_E0F879: StAryRecCopy
End Sub

Public Property Let tAddress1(vNewValue) 'E154BC
  'Data Table: 42C220
  loc_E154B4: global_108 = vNewValue
  loc_E154B8: Exit Sub
End Sub

Public Property Get tAddress1() 'E14FAC
  'Data Table: 42C220
  loc_E14FA0: var_88 = global_108
  loc_E14FA3: tAddress1 = 
End Sub

Public Property Let tAddress2(vNewValue) 'E15084
  'Data Table: 42C220
  loc_E1507C: global_112 = vNewValue
  loc_E15080: Exit Sub
End Sub

Public Property Get tAddress2() 'E0FF84
  'Data Table: 42C220
  loc_E0FF78: var_88 = global_112
  loc_E0FF7B: tAddress2 = 
  loc_E0FF81: StAryRecCopy
End Sub

Public Sub SetOnLineCustDetail() 'F49A90
  'Data Table: 42C220
  Dim var_90 As TextBox
  loc_F4997C: On Error Goto loc_F49A4C
  loc_F49995: Set var_8C = Me.Txt
  loc_F4999B: Call 0.Method_SetOnLineCustDetail0 (CInt(0), var_90)
  loc_F499A3: var_90.Text = tPhoneNo
  loc_F499C8: Set var_8C = Me.Txt
  loc_F499CE: Call 0.Method_SetOnLineCustDetail0 (CInt(1), var_90)
  loc_F499D6: var_90.Text = tCustName
  loc_F499FB: Set var_8C = Me.Txt
  loc_F49A01: Call 0.Method_SetOnLineCustDetail0 (CInt(2), var_90)
  loc_F49A09: var_90.Text = tAddress1
  loc_F49A1B: var_88 = tAddress2
  loc_F49A2E: Set var_8C = Me.Txt
  loc_F49A34: Call 0.Method_SetOnLineCustDetail0 (CInt(3), var_90)
  loc_F49A3C: var_90.Text = var_88
  loc_F49A4B: Exit Sub
  loc_F49A4C: ' Referenced from: F4997C
  loc_F49A54: Set var_8C = Err()
  loc_F49A5A: Call 0.Method_arg_2C (var_88)
  loc_F49A7B: MsgBox(CVar(var_88), &H40, "Information", var_E0, var_100)
  loc_F49A8E: Exit Sub
  loc_F49A8F: Exit Sub
End Sub

Public Sub Proc_259_19_EE6D5C(arg_C) 'EE6D5C
  'Data Table: 42C220
  Dim var_98 As Label
  loc_EE6CA2: Set var_8C = Me.Label1
  loc_EE6CA8: Call 0.Method_Proc_259_19_EE6D5CC (var_8E, var_86)
  loc_EE6CB8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE6CC7:   If (arg_C = var_86) Then
  loc_EE6CDE:     Set var_8C = Me.Label1
  loc_EE6CE4:     Call 0.Method_Proc_259_19_EE6D5C0 (CInt(arg_C), var_98)
  loc_EE6CEC:     var_98.BackColor = CLng(global_84)
  loc_EE6CFB:   Else
  loc_EE6D0F:     Set var_8C = Me.Label1
  loc_EE6D15:     Call 0.Method_Proc_259_19_EE6D5C0 (CInt(var_86), var_98)
  loc_EE6D1D:     var_98.BackColor = CLng(global_92)
  loc_EE6D29:   End If
  loc_EE6D2C: Next var_92 'Byte
  loc_EE6D35: InputType = vbNullString
  loc_EE6D49: If (arg_C = 0) Then
  loc_EE6D4F:   InputType = "Numeric"
  loc_EE6D54: End If
  loc_EE6D54: Call Proc_259_20_106D9EC()
  loc_EE6D59: Exit Sub
End Sub

Public Sub Proc_259_20_106D9EC
  'Data Table: 42C220
  Dim var_98 As SSPanel
  Dim var_108 As SSPanel
  Dim var_134 As SSPanel
  loc_106D798: Set var_8C = Me.SSPKey
  loc_106D79E: Call 0.Method_Proc_259_20_106D9ECC (var_8E, var_86)
  loc_106D7AC: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_106D7C0:   Set var_8C = Me.SSPKey
  loc_106D7C6:   Call 0.Method_Proc_259_20_106D9EC0 (var_86, var_98)
  loc_106D7CE:   var_98.Enabled = True
  loc_106D7DD: Next var_92 'Integer
  loc_106D7FB: var_EC = Ucase(CVar(InputType)) 'Variant
  loc_106D80D: If Not (var_EC = "DATE") Then
  loc_106D81B:   If Not (var_EC = "TIME") Then
  loc_106D829:     If (var_EC = "NUMERIC") Then
  loc_106D82C:     End If
  loc_106D82C:   End If
  loc_106D838:   Set var_8C = Me.SSPKey
  loc_106D83E:   Call 0.Method_Proc_259_20_106D9ECC (var_8E, var_86)
  loc_106D84C:   For var_100 =  To (var_8E - 1): 0 = var_100 'Integer
  loc_106D85C:     Set var_8C = Me.SSPKey
  loc_106D862:     Call 0.Method_Proc_259_20_106D9EC0 (var_86)
  loc_106D86A:     var_98.Caption
  loc_106D886:     Set var_104 = Me.SSPKey
  loc_106D88C:     Call 0.Method_Proc_259_20_106D9EC0 (var_86, var_108)
  loc_106D894:     var_108.Caption
  loc_106D8C1:     Set var_130 = Me.SSPKey
  loc_106D8C7:     Call 0.Method_Proc_259_20_106D9EC0 (var_86, var_134)
  loc_106D8CF:     var_134.Caption
  loc_106D91B:     If ( And (Asc(CStr(Ucase(CVar(CStr(( And (Asc(CStr(Ucase(CVar(CStr((Len(CStr(var_98)) = 1)))))) >= &H41))))))) <= &H5A)) Then
  loc_106D92D:       Set var_8C = Me.SSPKey
  loc_106D933:       Call 0.Method_Proc_259_20_106D9EC0 (var_86, var_98)
  loc_106D93B:       var_98.Enabled = False
  loc_106D94A:     Else
  loc_106D954:       Set var_8C = Me.SSPKey
  loc_106D95A:       Call 0.Method_Proc_259_20_106D9EC0 (var_86)
  loc_106D962:       var_98.Caption
  loc_106D97C:       Set var_104 = Me.SSPKey
  loc_106D982:       Call 0.Method_Proc_259_20_106D9EC0 (var_86, var_108)
  loc_106D98A:       var_108.Caption
  loc_106D9B4:       If ( Or (CStr((CStr(var_98) = "Caps Lock")) = "Space Bar")) Then
  loc_106D9C6:         Set var_8C = Me.SSPKey
  loc_106D9CC:         Call 0.Method_Proc_259_20_106D9EC0 (var_86, var_98)
  loc_106D9D4:         var_98.Enabled = False
  loc_106D9E0:       End If
  loc_106D9E0:     End If
  loc_106D9E3:   Next var_100 'Integer
  loc_106D9E8: End If
  loc_106D9E8: Exit Sub
End Sub

Public Sub Proc_259_21_124888C
  'Data Table: 42C220
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_D4 As String
  Dim var_86 As Integer
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As Integer
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_148 As Variant
  Dim var_128 As Variant
  loc_1248380: On Error Goto loc_1248848
  loc_1248398: ParentForm.FrameOption.Visible = False
  loc_12483DB: If ((CLng(Val(CStr(ParentForm.Fgrid1.Col))) Mod 6) = 1) Then
  loc_12483F5:   var_86 = CInt(ParentForm.Fgrid1.Col)
  loc_1248405: Else
  loc_1248431:   var_D4 = CStr(ParentForm.Fgrid1.Col)
  loc_1248445:   var_108 = (ParentForm.Fgrid1.Col - CVar((CLng(Val(var_D4)) Mod 6)))
  loc_124844E:   var_118 = (var_108 + 1)
  loc_1248453:   var_86 = CInt(var_118)
  loc_124846D: End If
  loc_124847D: var_D0 = ParentForm.Fgrid1.Row
  loc_124849B: VarLateMemCallLdRfVar
  loc_12484C1: var_128 = Right(Ucase(Trim(ParentForm.Fgrid1)), 6)
  loc_12484C9: var_138 = "VACANT"
  loc_12484E3: var_170 = ParentForm.Fgrid1.Row
  loc_12484F0: var_190 = CVar((var_86 + 3)) 'Integer
  loc_1248544: If CBool(Not var_190 And (ParentForm.Fgrid1.TextMatrix = "Y")) Then
  loc_124854F:   If (MemVar_1F95210 = "Yes") Then
  loc_1248575:     New RSTouchScreenSaleBill.ParentForm = CVar(ParentForm)
  loc_124857F:   Else
  loc_1248589:     Set var_8C = New RSSaleBill
  loc_124858F:   End If
  loc_124859F:   var_148 = ParentForm.Fgrid1.Row
  loc_12485C6:   var_F8 = (ParentForm.Fgrid1.Col + 1)
  loc_12485D7:   var_128 = (6 * Fix((ParentForm.Fgrid1.Col / 6)))
  loc_12485EC:   VarLateMemCallLdRfVar
  loc_1248623:   If CBool(Trim(ParentForm.Fgrid1) <> vbNullString) Then
  loc_1248636:     var_148 = ParentForm.Fgrid1.Row
  loc_1248645:     var_D8 = ParentForm
  loc_124865D:     var_F8 = (var_D8.Fgrid1.Col + 1)
  loc_1248661:     var_B0 = 6
  loc_124866E:     var_128 = (6 * Fix((ParentForm.Fgrid1.Col / var_B0)))
  loc_1248683:     VarLateMemCallLdRfVar
  loc_124869A:     var_8C.PTableNo = Trim(ParentForm.Fgrid1)
  loc_12486BD:   Else
  loc_12486BD:     var_A0 = 1
  loc_12486C3:     var_138 = 0
  loc_12486D9:     VarLateMemCallLdRfVar
  loc_12486E4:     var_E8 = Trim(ParentForm.Fgrid1)
  loc_12486F0:     var_8C.PTableNo = var_E8
  loc_1248700:   End If
  loc_1248700:   var_A0 = 1
  loc_124870C:   var_8C.OpenMode = var_A0
  loc_1248724:   var_8C.pRestCode = ParentForm.LocalRestCode
  loc_1248739:   Set var_90 = var_D8(CInt(0))
  loc_124873F:   Call 0.Method_Proc_259_21_124888C0 (var_138, var_A0, var_128, var_148, var_128, var_148)
  loc_124875A:   var_8C.sPhoneNo = Trim(CVar(var_D8))
  loc_1248773:   Set var_90 = var_D8(CInt(1))
  loc_1248779:   Call 0.Method_Proc_259_21_124888C0 (var_170, (var_128 = var_138), var_86)
  loc_1248788:   var_D0 = Trim(CVar(var_D8))
  loc_1248794:   var_8C.sCustName = var_D0
  loc_12487AD:   Set var_90 = var_D8(CInt(2))
  loc_12487B3:   Call 0.Method_Proc_259_21_124888C0 (var_D0, var_86)
  loc_12487CE:   var_8C.sAddress1 = Trim(CVar(var_D8))
  loc_12487E7:   Set var_90 = var_D8(CInt(3))
  loc_12487ED:   Call 0.Method_Proc_259_21_124888C0 (var_86)
  loc_1248808:   var_8C.sAddress2 = Trim(CVar(var_D8))
  loc_1248819:   Call var_8C.SetOnLineSalingCustDetail
  loc_124882A:   var_8C.Show var_A0, var_B0
  loc_1248832:   Call var_8C.TopCtrl1_eAdd
  loc_124883B:   var_210 = True 'Variant
  loc_124883F: End If
  loc_1248844: Set var_8C = Nothing
  loc_1248847: Exit Sub
  loc_1248848: ' Referenced from: 1248380
  loc_1248850: Set var_90 = Err()
  loc_1248856: Call 0.Method_arg_2C (var_D4)
  loc_1248877: MsgBox(CVar(var_D4), &H40, "Information", var_E8, ParentForm.Fgrid1.Col)
  loc_124888A: Exit Sub
  loc_124888B: Exit Sub
End Sub

Public Sub Proc_259_22_1038050
  'Data Table: 42C220
  Dim unk_42C264 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_140 As TextBox
  Dim var_C0 As TextBox
  loc_1037E33: If (var_98 = 0) Then
  loc_1037E53:   Set var_BC = Me.Txt
  loc_1037E59:   Call 0.Method_Proc_259_22_10380500 (CInt(0), var_C0, "Select * from guestprof Where MobileNo='")
  loc_1037E87:   unk_42C264.Execute CStr(var_134 & Trim(CVar(var_C0)) & "'"), -1, var_138
  loc_1037E92:   Set var_88 = var_138
  loc_1037EC0:   If (var_88.RecordCount > 0) Then
  loc_1037EC6:     var_88.MoveLast
  loc_1037F01:     Set var_138 = Me.Txt
  loc_1037F07:     Call 0.Method_Proc_259_22_10380500 (CInt(1), var_140)
  loc_1037F0F:     var_140.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")))
  loc_1037F59:     Set var_138 = Me.Txt
  loc_1037F5F:     Call 0.Method_Proc_259_22_10380500 (CInt(2), var_140)
  loc_1037F67:     var_140.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_1037F92:     var_C0 = var_88.Fields.Item("CityName")
  loc_1037FB1:     Set var_138 = Me.Txt
  loc_1037FB7:     Call 0.Method_Proc_259_22_10380500 (CInt(3), var_140)
  loc_1037FBF:     var_140.Text = Proc_6_38_E69628(CVar(var_C0))
  loc_1037FD6:   Else
  loc_1037FE4:     Set var_BC = Me.Txt
  loc_1037FEA:     Call 0.Method_Proc_259_22_10380500 (CInt(1), var_C0)
  loc_1037FF2:     var_C0.Text = vbNullString
  loc_103800C:     Set var_BC = Me.Txt
  loc_1038012:     Call 0.Method_Proc_259_22_10380500 (CInt(2), var_C0)
  loc_103801A:     var_C0.Text = vbNullString
  loc_1038034:     Set var_BC = Me.Txt
  loc_103803A:     Call 0.Method_Proc_259_22_10380500 (CInt(3), var_C0)
  loc_1038042:     var_C0.Text = vbNullString
  loc_103804E:   End If
  loc_103804E: End If
  loc_103804E: Exit Sub
End Sub
