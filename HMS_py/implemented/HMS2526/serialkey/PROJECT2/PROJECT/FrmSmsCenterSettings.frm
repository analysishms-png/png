VERSION 5.00
Begin VB.Form FrmSmsCenterSettings
  Caption = "SMS Center Settings"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  MDIChild = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 11790
  ClientHeight = 3450
  LockControls = -1  'True
  BeginProperty Font
    Name = "Verdana"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin CommandButton cmdType
    Caption = "Create SMS Types"
    BackColor = &HE0E0E0&
    Left = 390
    Top = 2415
    Width = 2520
    Height = 375
    TabIndex = 25
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
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 1395
    Width = 3375
    Height = 315
    Text = "sms_ph_pre"
    TabIndex = 3
    MaxLength = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 11
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 1395
    Width = 2055
    Height = 315
    Text = "&phno"
    TabIndex = 8
    MaxLength = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdRenuval
    Caption = "Renewal"
    BackColor = &HFF8080&
    Left = 9315
    Top = 2955
    Width = 2055
    Height = 465
    Visible = 0   'False
    TabIndex = 23
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &HFFFFFF&
    Style = 1
  End
  Begin TextBox Txt
    Index = 13
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 2055
    Width = 8265
    Height = 315
    Text = "&extra"
    TabIndex = 10
    MaxLength = 50
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 12
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 1725
    Width = 2055
    Height = 315
    Text = "&message"
    TabIndex = 9
    MaxLength = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 1065
    Width = 2055
    Height = 315
    Text = "&from"
    TabIndex = 7
    MaxLength = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 9
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 735
    Width = 2055
    Height = 315
    Text = "&password"
    TabIndex = 6
    MaxLength = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 405
    Width = 2055
    Height = 315
    Text = "&username"
    TabIndex = 5
    MaxLength = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC0C0C0&
    Left = 7755
    Top = 3120
    Width = 1260
    Height = 315
    Visible = 0   'False
    Text = "0"
    TabIndex = 13
    Alignment = 1 'Right Justify
    MaxLength = 8
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC0C0C0&
    Left = 5535
    Top = 3120
    Width = 1260
    Height = 315
    Visible = 0   'False
    Text = "0"
    TabIndex = 12
    Alignment = 1 'Right Justify
    MaxLength = 8
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 3120
    Width = 1305
    Height = 315
    Visible = 0   'False
    Text = "0"
    TabIndex = 11
    Alignment = 1 'Right Justify
    MaxLength = 8
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 1725
    Width = 5925
    Height = 315
    Text = "sms_url"
    TabIndex = 4
    MaxLength = 100
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdCancel
    Caption = "&Cancel"
    BackColor = &HE0E0E0&
    Left = 6345
    Top = 2595
    Width = 1950
    Height = 540
    TabIndex = 15
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
  Begin CommandButton CmdSave
    Caption = "&Save"
    BackColor = &HE0E0E0&
    Left = 4185
    Top = 2595
    Width = 1950
    Height = 540
    TabIndex = 14
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 1065
    Width = 3375
    Height = 315
    Text = "sms_d_name"
    TabIndex = 2
    MaxLength = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 735
    Width = 3375
    Height = 315
    Text = "sms_center_password"
    TabIndex = 1
    MaxLength = 20
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 405
    Width = 3375
    Height = 315
    Text = "sms_center_user_name"
    TabIndex = 0
    MaxLength = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Sms Phone No. Prefix ......."
    Index = 3
    ForeColor = &H80000006&
    Left = 390
    Top = 1455
    Width = 2505
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
    Caption = "Bal Msg"
    Index = 13
    Left = 6930
    Top = 3165
    Width = 705
    Height = 210
    Visible = 0   'False
    TabIndex = 22
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Send Msg"
    Index = 12
    Left = 4545
    Top = 3165
    Width = 900
    Height = 210
    Visible = 0   'False
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Purchase Message .........."
    Index = 11
    ForeColor = &H80000006&
    Left = 390
    Top = 3180
    Width = 2475
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
    Caption = "Sms URL  .........................."
    Index = 10
    ForeColor = &H80000006&
    Left = 390
    Top = 1785
    Width = 2775
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
    Caption = "Sms Diplay Name .............."
    Index = 2
    ForeColor = &H80000006&
    Left = 390
    Top = 1132
    Width = 2775
    Height = 240
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
    Caption = "Sms Center Password......."
    Index = 1
    ForeColor = &H80000006&
    Left = 390
    Top = 810
    Width = 2535
    Height = 240
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
    Caption = "Sms Center User Name......"
    Index = 0
    ForeColor = &H80000006&
    Left = 390
    Top = 480
    Width = 2775
    Height = 240
    TabIndex = 16
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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

Attribute VB_Name = "FrmSmsCenterSettings"


Private Sub cmdType_Click() '14086C8
  'Data Table: 42A948
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_42A94D As Connection15
  Dim var_BC As String
  Dim var_D0 As Variant
  Dim var_B4 As Recordset15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_88 As Long
  Dim var_FC As Variant
  Dim var_B0 As Variant
  Dim var_10C As Variant
  loc_1407CA8: On Error Resume Next
  loc_1407CC1: var_8C = "Delete From EmailSMSForward Where Type In ('Common','Holiday','Outstanding','Birth Day','Marriage Anniversary') And LogSite_Code='" & MemVar_1F95078
  loc_1407CD1: unk_42A94D.Execute var_8C & "'", var_B0, -1
  loc_1407D00: var_90 = "Update EmailSMSForward Set FlagType='FOM',DepartCode='" & MemVar_1F95078 & "FOM'  Where Type In ('Reservation','Reservation Cancel','Check In','Check Out') And LogSite_Code='"
  loc_1407D17: unk_42A94D.Execute var_90 & MemVar_1F95078 & "'", var_B0, -1
  loc_1407D4A: var_90 = "Update EmailSMSForward Set FlagType='BANQ',DepartCode='" & MemVar_1F95078 & "BANQ'  Where Type In ('Booking','Booking Cancel') And LogSite_Code='"
  loc_1407D61: unk_42A94D.Execute var_90 & MemVar_1F95078 & "'", var_B0, -1
  loc_1407D7F: var_D0 = 0
  loc_1407D9E: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407DA6: var_B4 = var_B4.Fields
  loc_1407DAE: var_D0 = var_C0.Item(var_C0)
  loc_1407DB6: var_D4 = var_D4.Value
  loc_1407DC0: var_88 = CLng(var_E4)
  loc_1407DE9: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Reservation' And LogSite_Code='" & MemVar_1F95078
  loc_1407DFC: var_BC = var_8C & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values(" & CStr(var_88)
  loc_1407E19: var_B0 = CVar(Proc_6_14_EF402C(CVar(var_BC & ",'Reservation','" & MemVar_1F95070 & "','Analysis',"), var_1B0, -1, var_B4, var_88)) 'String
  loc_1407E1F: Proc_6_8_EB1974(var_E4, var_B0, var_E4)
  loc_1407E64: unk_42A94D.Execute CStr(var_B4 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','FOM','" & CVar(MemVar_1F95078) & "FOM')"), var_B4, var_B4
  loc_1407E9C: var_D0 = 0
  loc_1407EBB: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407ECB: var_D0 = var_C0.Item(var_C0)
  loc_1407ED3: var_D4 = var_D4.Value
  loc_1407EDD: var_88 = CLng(var_E4)
  loc_1407F06: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Reservation Cancel' And LogSite_Code='" & MemVar_1F95078
  loc_1407F19: var_BC = var_8C & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values(" & CStr(var_88)
  loc_1407F36: var_B0 = CVar(Proc_6_14_EF402C(CVar(var_BC & ",'Reservation Cancel','" & MemVar_1F95070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1407F3C: Proc_6_8_EB1974(var_E4, var_B0, var_B4.Fields)
  loc_1407F81: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','FOM','" & CVar(MemVar_1F95078) & "FOM')"), var_E4, 
  loc_1407FB9: var_D0 = 0
  loc_1407FD8: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407FE8: var_D0 = var_C0.Item(var_C0)
  loc_1407FF0: var_D4 = var_D4.Value
  loc_1407FFA: var_88 = CLng(var_E4)
  loc_140802A: var_90 = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Check In' And LogSite_Code='" & MemVar_1F95078 & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_1408053: var_B0 = CVar(Proc_6_14_EF402C(CVar(var_90 & CStr(var_88) & ",'Check In','" & MemVar_1F95070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1408059: Proc_6_8_EB1974(var_E4, var_B0, var_B4.Fields)
  loc_140809E: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','FOM','" & CVar(MemVar_1F95078) & "FOM')"), var_E4, 
  loc_14080D6: var_D0 = 0
  loc_14080F5: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1408105: var_D0 = var_C0.Item(var_C0)
  loc_140810D: var_D4 = var_D4.Value
  loc_1408117: var_88 = CLng(var_E4)
  loc_1408147: var_90 = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Check Out' And LogSite_Code='" & MemVar_1F95078 & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_1408170: var_B0 = CVar(Proc_6_14_EF402C(CVar(var_90 & CStr(var_88) & ",'Check Out','" & MemVar_1F95070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1408176: Proc_6_8_EB1974(var_E4, var_B0, var_B4.Fields)
  loc_14081BB: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','FOM','" & CVar(MemVar_1F95078) & "FOM')"), var_E4, 
  loc_14081F3: var_D0 = 0
  loc_1408212: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1408222: var_D0 = var_C0.Item(var_C0)
  loc_140822A: var_D4 = var_D4.Value
  loc_1408234: var_88 = CLng(var_E4)
  loc_1408264: var_90 = "If Not Exists (Select * From EmailSMSForward Where FlagType='BANQ' And Type='Booking' And LogSite_Code='" & MemVar_1F95078 & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_140828D: var_B0 = CVar(Proc_6_14_EF402C(CVar(var_90 & CStr(var_88) & ",'Booking','" & MemVar_1F95070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1408293: Proc_6_8_EB1974(var_E4, var_B0, var_B4.Fields)
  loc_14082D8: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','BANQ','" & CVar(MemVar_1F95078) & "BANQ')"), var_E4, 
  loc_1408310: var_D0 = 0
  loc_140832F: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_140833F: var_D0 = var_C0.Item(var_C0)
  loc_1408347: var_D4 = var_D4.Value
  loc_1408351: var_88 = CLng(var_E4)
  loc_140837A: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='BANQ' And Type='Booking Cancel' And LogSite_Code='" & MemVar_1F95078
  loc_140838D: var_BC = var_8C & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values(" & CStr(var_88)
  loc_14083AA: var_B0 = CVar(Proc_6_14_EF402C(CVar(var_BC & ",'Booking Cancel','" & MemVar_1F95070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_14083B0: Proc_6_8_EB1974(var_E4, var_B0, var_B4.Fields)
  loc_14083F5: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','BANQ','" & CVar(MemVar_1F95078) & "BANQ')"), var_E4, 
  loc_140842D: var_D0 = 0
  loc_140844C: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_140845C: var_D0 = var_C0.Item(var_C0)
  loc_1408464: var_D4 = var_D4.Value
  loc_140846E: var_88 = CLng(var_E4)
  loc_1408497: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='POS' And Type='KOT Message' And LogSite_Code='" & MemVar_1F95078
  loc_14084AC: var_BC = var_8C & "' And DepartCode='" & MemVar_1F95078 & "RS') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_14084D5: var_B0 = CVar(Proc_6_14_EF402C(CVar(var_BC & CStr(var_88) & ",'KOT Message','" & MemVar_1F95070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_14084DB: Proc_6_8_EB1974(var_E4, var_B0, var_B4.Fields)
  loc_1408520: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','POS','" & CVar(MemVar_1F95078) & "RS')"), var_E4, 
  loc_140855C: var_D0 = 0
  loc_140857B: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_140858B: var_D0 = var_C0.Item(var_C0)
  loc_1408593: var_D4 = var_D4.Value
  loc_140859D: var_88 = CLng(var_E4)
  loc_14085C6: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='POS' And Type='Outlet Bill' And LogSite_Code='" & MemVar_1F95078
  loc_14085DB: var_BC = var_8C & "' And DepartCode='" & MemVar_1F95078 & "RS') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_14085FC: var_FC = CVar(var_BC & CStr(var_88) & ",'Outlet Bill','" & MemVar_1F95070 & "','Analysis',") 'String
  loc_1408604: var_B0 = CVar(Proc_6_14_EF402C(var_FC, var_1B0, -1)) 'String
  loc_140860A: Proc_6_8_EB1974(var_E4, var_B0, var_B4.Fields)
  loc_1408612: var_10C = var_88 & var_E4 
  loc_140864F: unk_42A94D.Execute CStr(var_10C & ",'A','" & CVar(MemVar_1F95078) & "','POS','" & CVar(MemVar_1F95078) & "RS')"), var_E4, 
  loc_1408685: Exit Sub
  loc_1408690: Set var_B4 = Err()
  loc_1408696: Call 0.Method_arg_2C (var_8C)
  loc_14086AF: MsgBox(CVar(var_8C), &H40, var_E4, var_FC, var_10C)
  loc_14086C4: Exit Sub
End Sub

Private Sub Form_Load() 'EBB6D0
  'Data Table: 42A948
  loc_EBB63A: Set global_52 = New 
  loc_EBB64F: Me.Recordset15.CursorLocation = 3
  loc_EBB686: Me.Recordset15.Open CVar("Select * From SMSEnviro WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "')"), CVar(MemVar_1F95044), 2
  loc_EBB691: Call Proc_231_9_E965C8(3)
  loc_EBB696: Call Proc_231_12_13EB760(-1)
  loc_EBB6A3: Call 0.Method_Me4 (CDbl(11880))
  loc_EBB6B0: Call 0.Method_MeC (CDbl(3840))
  loc_EBB6BD: Call 0.Method_arg_7C (CDbl(3000))
  loc_EBB6CA: Call 0.Method_arg_74 (CDbl(2000))
  loc_EBB6CF: Exit Sub
End Sub

Private Sub CmdSave_Click() '134F8C4
  'Data Table: 42A948
  Dim unk_42A94D As Connection15
  Dim var_86 As Integer
  Dim var_94 As String
  Dim var_98 As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B8 As TextBox
  Dim var_D8 As String
  Dim var_D0 As TextBox
  Dim var_E4 As TextBox
  Dim var_F8 As TextBox
  Dim var_128 As String
  Dim var_110 As TextBox
  Dim var_124 As Variant
  Dim var_130 As String
  Dim var_138 As TextBox
  Dim var_160 As TextBox
  Dim var_180 As String
  Dim var_1A0 As String
  Dim var_188 As TextBox
  Dim var_1B0 As TextBox
  Dim var_1D8 As TextBox
  Dim var_1F8 As String
  Dim var_22C As Variant
  Dim var_A0 As Variant
  loc_134F1C8: On Error Goto loc_134F8A8
  loc_134F1CB: Call Proc_231_11_1333DA8()
  loc_134F1D9: unk_42A94D.BeginTrans var_90
  loc_134F1E0: var_86 = &HFF
  loc_134F1FD: If (Me.Recordset15.RecordCount = 0) Then
  loc_134F207:   var_94 = "Insert into SMSEnviro " & " (SmsCenterUserName,SmsCenterPassword,SmsDisplayName,SmsPhoneNoPrefix, "
  loc_134F21C:   var_AC = var_94 & " SMSURL,TUser,TPassword,TFromSend,TPhNo,TMessage,TExtra," & " LogSite_Code) " & " values ('"
  loc_134F22D:   Set var_A0 = Me.Txt
  loc_134F233:   Call 0.Method_CmdSave_Click0 (CInt(0), var_A4, var_A8)
  loc_134F23B:   var_AC = var_A4.Text
  loc_134F25C:   Set var_B4 = Me.Txt
  loc_134F262:   Call 0.Method_CmdSave_Click0 (CInt(1), var_B8)
  loc_134F292:   Set var_CC = Me.Txt
  loc_134F298:   Call 0.Method_CmdSave_Click0 (CInt(2), var_D0)
  loc_134F2C1:   Set var_E0 = Me.Txt
  loc_134F2C7:   Call 0.Method_CmdSave_Click0 (CInt(3), var_E4)
  loc_134F2F0:   Set var_F4 = Me.Txt
  loc_134F2F6:   Call 0.Method_CmdSave_Click0 (CInt(4), var_F8)
  loc_134F315:   var_128 = var_86 & var_A8 & "','" & var_B8.Text & "', " & " '" & var_D0.Text & "','" & var_E4.Text & "','" & var_F8.Text & "'," & " '"
  loc_134F326:   Set var_10C = Me.Txt
  loc_134F32C:   Call 0.Method_CmdSave_Click0 (CInt(8), var_110)
  loc_134F33C:   var_124 = CVar(var_110.Text) 'String
  loc_134F360:   Set var_134 = Me.Txt
  loc_134F366:   Call 0.Method_CmdSave_Click0 (CInt(9), var_138)
  loc_134F39A:   Set var_15C = Me.Txt
  loc_134F3A0:   Call 0.Method_CmdSave_Click0 (CInt(&HA), var_160)
  loc_134F3BC:   var_180 = var_128 & Proc_6_38_E69628(var_124) & "','" & Proc_6_38_E69628(CVar(var_138.Text)) & "','" & Proc_6_38_E69628(CVar(var_160.Text))
  loc_134F3D4:   Set var_184 = Me.Txt
  loc_134F3DA:   Call 0.Method_CmdSave_Click0 (CInt(&HB), var_188)
  loc_134F40E:   Set var_1AC = Me.Txt
  loc_134F414:   Call 0.Method_CmdSave_Click0 (CInt(&HC), var_1B0)
  loc_134F448:   Set var_1D4 = Me.Txt
  loc_134F44E:   Call 0.Method_CmdSave_Click0 (CInt(&HD), var_1D8)
  loc_134F46A:   var_1F8 = var_180 & "','" & Proc_6_38_E69628(CVar(var_188.Text)) & "','" & Proc_6_38_E69628(CVar(var_1B0.Text)) & "','" & Proc_6_38_E69628(CVar(var_1D8.Text))
  loc_134F486:   Proc_183_9_EAB2F0(var_21C, MemVar_1F95078)
  loc_134F54C:   unk_42A94D.Execute CStr(CVar(var_1F8 & "'," & " ") & var_21C & ")"), var_124, -1
  loc_134F55A: Else
  loc_134F561:   var_98 = "Update SMSEnviro Set " & " SmsCenterUserName='"
  loc_134F572:   Set var_A0 = Me.Txt
  loc_134F578:   Call 0.Method_CmdSave_Click0 (CInt(0), var_A4, var_94)
  loc_134F580:   var_98 = var_A4.Text
  loc_134F5A1:   Set var_B4 = Me.Txt
  loc_134F5A7:   Call 0.Method_CmdSave_Click0 (CInt(1), var_B8)
  loc_134F5D0:   Set var_CC = Me.Txt
  loc_134F5D6:   Call 0.Method_CmdSave_Click0 (CInt(2), var_D0)
  loc_134F5FF:   Set var_E0 = Me.Txt
  loc_134F605:   Call 0.Method_CmdSave_Click0 (CInt(3), var_E4)
  loc_134F616:   var_D8 = var_A0 & var_94 & "',SmsCenterPassword='" & var_B8.Text & "',SmsDisplayName='" & var_D0.Text & "',SmsPhoneNoPrefix='" & var_E4.Text
  loc_134F635:   Set var_F4 = Me.Txt
  loc_134F63B:   Call 0.Method_CmdSave_Click0 (CInt(4), var_F8)
  loc_134F664:   Set var_10C = Me.Txt
  loc_134F66A:   Call 0.Method_CmdSave_Click0 (CInt(8), var_110)
  loc_134F67A:   var_124 = CVar(var_110.Text) 'String
  loc_134F69E:   Set var_134 = Me.Txt
  loc_134F6A4:   Call 0.Method_CmdSave_Click0 (CInt(9), var_138)
  loc_134F6C0:   var_130 = var_D8 & "'," & " SMSURL='" & var_F8.Text & "',TUser='" & Proc_6_38_E69628(var_124) & "',TPassword='" & Proc_6_38_E69628(CVar(var_138.Text))
  loc_134F6D8:   Set var_15C = Me.Txt
  loc_134F6DE:   Call 0.Method_CmdSave_Click0 (CInt(&HA), var_160)
  loc_134F712:   Set var_184 = Me.Txt
  loc_134F718:   Call 0.Method_CmdSave_Click0 (CInt(&HB), var_188)
  loc_134F73B:   var_1A0 = var_130 & "',TFromSend='" & Proc_6_38_E69628(CVar(var_160.Text)) & "',TPhNo='" & Proc_6_38_E69628(CVar(var_188.Text)) & "',TMessage='"
  loc_134F74C:   Set var_1AC = Me.Txt
  loc_134F752:   Call 0.Method_CmdSave_Click0 (CInt(&HC), var_1B0)
  loc_134F786:   Set var_1D4 = Me.Txt
  loc_134F78C:   Call 0.Method_CmdSave_Click0 (CInt(&HD), var_1D8)
  loc_134F7B6:   var_22C = CVar(var_1A0 & Proc_6_38_E69628(CVar(var_1B0.Text)) & "',TExtra='" & Proc_6_38_E69628(CVar(var_1D8.Text)) & "'" & " Where LogSite_Code=") 'String
  loc_134F7C4:   Proc_183_9_EAB2F0(var_21C, MemVar_1F95078)
  loc_134F877:   unk_42A94D.Execute CStr(var_22C & var_21C), var_124, -1
  loc_134F882: End If
  loc_134F888: unk_42A94D.CommitTrans
  loc_134F88D: Call Proc_231_10_14652A0(var_A0)
  loc_134F89F: Me.Global.Unload Me
  loc_134F8A7: Exit Sub
  loc_134F8A8: ' Referenced from: 134F1C8
  loc_134F8AE: If (var_86 = &HFF) Then
  loc_134F8B7:   unk_42A94D.RollbackTrans
  loc_134F8BC: End If
  loc_134F8BC: Proc_6_60_E63754()
  loc_134F8C1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '110C910
  'Data Table: 42A948
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_110C5BB: var_86 = Index
  loc_110C5C6: If (var_86 = CInt(0)) Then
  loc_110C5D8:   Set var_8C = Me.Txt
  loc_110C5DE:   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C5E6:   var_90.SelStart = 0
  loc_110C5F5: Else
  loc_110C5FD:   If (var_86 = CInt(1)) Then
  loc_110C60F:     Set var_8C = Me.Txt
  loc_110C615:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C61D:     var_90.SelStart = 0
  loc_110C62C:   Else
  loc_110C634:     If (var_86 = CInt(2)) Then
  loc_110C646:       Set var_8C = Me.Txt
  loc_110C64C:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C654:       var_90.SelStart = 0
  loc_110C663:     Else
  loc_110C66B:       If (var_86 = CInt(3)) Then
  loc_110C67D:         Set var_8C = Me.Txt
  loc_110C683:         Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C68B:         var_90.SelStart = 0
  loc_110C69A:       Else
  loc_110C6A2:         If (var_86 = CInt(4)) Then
  loc_110C6B4:           Set var_8C = Me.Txt
  loc_110C6BA:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C6C2:           var_90.SelStart = 0
  loc_110C6D1:         Else
  loc_110C6D9:           If (var_86 = CInt(8)) Then
  loc_110C6EB:             Set var_8C = Me.Txt
  loc_110C6F1:             Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C6F9:             var_90.MaxLength = &HF
  loc_110C714:             Set var_8C = Me.Txt
  loc_110C71A:             Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C722:             var_90.SelStart = 0
  loc_110C731:           Else
  loc_110C739:             If (var_86 = CInt(9)) Then
  loc_110C74B:               Set var_8C = Me.Txt
  loc_110C751:               Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C759:               var_90.MaxLength = &HF
  loc_110C774:               Set var_8C = Me.Txt
  loc_110C77A:               Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C782:               var_90.SelStart = 0
  loc_110C791:             Else
  loc_110C799:               If (var_86 = CInt(&HA)) Then
  loc_110C7AB:                 Set var_8C = Me.Txt
  loc_110C7B1:                 Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C7B9:                 var_90.MaxLength = &HF
  loc_110C7D4:                 Set var_8C = Me.Txt
  loc_110C7DA:                 Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C7E2:                 var_90.SelStart = 0
  loc_110C7F1:               Else
  loc_110C7F9:                 If (var_86 = CInt(&HB)) Then
  loc_110C80B:                   Set var_8C = Me.Txt
  loc_110C811:                   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C819:                   var_90.MaxLength = &HF
  loc_110C834:                   Set var_8C = Me.Txt
  loc_110C83A:                   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C842:                   var_90.SelStart = 0
  loc_110C851:                 Else
  loc_110C859:                   If (var_86 = CInt(&HC)) Then
  loc_110C86B:                     Set var_8C = Me.Txt
  loc_110C871:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C879:                     var_90.MaxLength = &HF
  loc_110C894:                     Set var_8C = Me.Txt
  loc_110C89A:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C8A2:                     var_90.SelStart = 0
  loc_110C8B1:                   Else
  loc_110C8B9:                     If (var_86 = CInt(&HD)) Then
  loc_110C8CB:                       Set var_8C = Me.Txt
  loc_110C8D1:                       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C8D9:                       var_90.MaxLength = &H32
  loc_110C8F4:                       Set var_8C = Me.Txt
  loc_110C8FA:                       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110C902:                       var_90.SelStart = 0
  loc_110C90E:                     End If
  loc_110C90E:                   End If
  loc_110C90E:                 End If
  loc_110C90E:               End If
  loc_110C90E:             End If
  loc_110C90E:           End If
  loc_110C90E:         End If
  loc_110C90E:       End If
  loc_110C90E:     End If
  loc_110C90E:   End If
  loc_110C90E: End If
  loc_110C90E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E9F830
  'Data Table: 42A948
  loc_E9F7AA: If (CLng(Shift) = &H1B) Then
  loc_E9F7AD:   Exit Sub
  loc_E9F7AE: End If
  loc_E9F7CC: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HD))) Then
  loc_E9F7D5:   Proc_6_75_E5335C(Shift)
  loc_E9F7DA: End If
  loc_E9F7F8: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_E9F7FB:   Call CmdSave_Click()
  loc_E9F800: End If
  loc_E9F81E: If (((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_E9F827:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E9F82C: End If
  loc_E9F82C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '14483E0
  'Data Table: 42A948
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_1447897: Proc_6_58_E06050(arg_10)
  loc_144789F: var_86 = KeyAscii
  loc_14478AA: If (var_86 = CInt(0)) Then
  loc_14478B7:   Set var_8C = Me.Txt
  loc_14478BD:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14478E6:   If (Trim(CVar(var_90)) = "sms_center_user_name") Then
  loc_14478F6:     Set var_8C = Me.Txt
  loc_14478FC:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447904:     var_90.Text = vbNullString
  loc_1447910:   End If
  loc_144791A:   Set var_8C = Me.Txt
  loc_1447920:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447949:   If (Trim(CVar(var_90)) = "sms_center_user_name") Then
  loc_144795B:     Set var_8C = Me.Txt
  loc_1447961:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447969:     var_90.ForeColor = &HC0C0C0
  loc_1447978:   Else
  loc_1447987:     Set var_8C = Me.Txt
  loc_144798D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447995:     var_90.ForeColor = -2147483640
  loc_14479A1:   End If
  loc_14479A4: Else
  loc_14479AC:   If (var_86 = CInt(1)) Then
  loc_14479B9:     Set var_8C = Me.Txt
  loc_14479BF:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14479E8:     If (Trim(CVar(var_90)) = "sms_center_password") Then
  loc_14479F8:       Set var_8C = Me.Txt
  loc_14479FE:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447A06:       var_90.Text = vbNullString
  loc_1447A1F:       Set var_8C = Me.Txt
  loc_1447A25:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447A2D:       var_90.PasswordChar = "*"
  loc_1447A39:     End If
  loc_1447A43:     Set var_8C = Me.Txt
  loc_1447A49:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447A72:     If (Trim(CVar(var_90)) = "sms_center_password") Then
  loc_1447A84:       Set var_8C = Me.Txt
  loc_1447A8A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447A92:       var_90.ForeColor = &HC0C0C0
  loc_1447AA1:     Else
  loc_1447AB0:       Set var_8C = Me.Txt
  loc_1447AB6:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447ABE:       var_90.ForeColor = -2147483640
  loc_1447ACA:     End If
  loc_1447ACD:   Else
  loc_1447AD5:     If (var_86 = CInt(2)) Then
  loc_1447AE2:       Set var_8C = Me.Txt
  loc_1447AE8:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447B11:       If (Trim(CVar(var_90)) = "sms_d_name") Then
  loc_1447B21:         Set var_8C = Me.Txt
  loc_1447B27:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447B2F:         var_90.Text = vbNullString
  loc_1447B3B:       End If
  loc_1447B45:       Set var_8C = Me.Txt
  loc_1447B4B:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447B74:       If (Trim(CVar(var_90)) = "sms_d_name") Then
  loc_1447B86:         Set var_8C = Me.Txt
  loc_1447B8C:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447B94:         var_90.ForeColor = &HC0C0C0
  loc_1447BA3:       Else
  loc_1447BB2:         Set var_8C = Me.Txt
  loc_1447BB8:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447BC0:         var_90.ForeColor = -2147483640
  loc_1447BCC:       End If
  loc_1447BCF:     Else
  loc_1447BD7:       If (var_86 = CInt(3)) Then
  loc_1447BE4:         Set var_8C = Me.Txt
  loc_1447BEA:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447C13:         If (Trim(CVar(var_90)) = "sms_ph_pre") Then
  loc_1447C23:           Set var_8C = Me.Txt
  loc_1447C29:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447C31:           var_90.Text = vbNullString
  loc_1447C3D:         End If
  loc_1447C47:         Set var_8C = Me.Txt
  loc_1447C4D:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447C76:         If (Trim(CVar(var_90)) = "sms_ph_pre") Then
  loc_1447C88:           Set var_8C = Me.Txt
  loc_1447C8E:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447C96:           var_90.ForeColor = &HC0C0C0
  loc_1447CA5:         Else
  loc_1447CB4:           Set var_8C = Me.Txt
  loc_1447CBA:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447CC2:           var_90.ForeColor = -2147483640
  loc_1447CCE:         End If
  loc_1447CD1:       Else
  loc_1447CD9:         If (var_86 = CInt(4)) Then
  loc_1447CE6:           Set var_8C = Me.Txt
  loc_1447CEC:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447D15:           If (Trim(CVar(var_90)) = "sms_url") Then
  loc_1447D25:             Set var_8C = Me.Txt
  loc_1447D2B:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447D33:             var_90.Text = vbNullString
  loc_1447D3F:           End If
  loc_1447D49:           Set var_8C = Me.Txt
  loc_1447D4F:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447D78:           If (Trim(CVar(var_90)) = "sms_url") Then
  loc_1447D8A:             Set var_8C = Me.Txt
  loc_1447D90:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447D98:             var_90.ForeColor = &HC0C0C0
  loc_1447DA7:           Else
  loc_1447DB6:             Set var_8C = Me.Txt
  loc_1447DBC:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447DC4:             var_90.ForeColor = -2147483640
  loc_1447DD0:           End If
  loc_1447DD3:         Else
  loc_1447DDB:           If (var_86 = CInt(8)) Then
  loc_1447DE8:             Set var_8C = Me.Txt
  loc_1447DEE:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447E17:             If (Trim(CVar(var_90)) = "key_username") Then
  loc_1447E27:               Set var_8C = Me.Txt
  loc_1447E2D:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447E35:               var_90.Text = vbNullString
  loc_1447E41:             End If
  loc_1447E4B:             Set var_8C = Me.Txt
  loc_1447E51:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447E7A:             If (Trim(CVar(var_90)) = "key_username") Then
  loc_1447E8C:               Set var_8C = Me.Txt
  loc_1447E92:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447E9A:               var_90.ForeColor = &HC0C0C0
  loc_1447EA9:             Else
  loc_1447EB8:               Set var_8C = Me.Txt
  loc_1447EBE:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447EC6:               var_90.ForeColor = -2147483640
  loc_1447ED2:             End If
  loc_1447ED5:           Else
  loc_1447EDD:             If (var_86 = CInt(9)) Then
  loc_1447EEA:               Set var_8C = Me.Txt
  loc_1447EF0:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447F19:               If (Trim(CVar(var_90)) = "key_password") Then
  loc_1447F29:                 Set var_8C = Me.Txt
  loc_1447F2F:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447F37:                 var_90.Text = vbNullString
  loc_1447F43:               End If
  loc_1447F4D:               Set var_8C = Me.Txt
  loc_1447F53:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447F7C:               If (Trim(CVar(var_90)) = "key_password") Then
  loc_1447F8E:                 Set var_8C = Me.Txt
  loc_1447F94:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447F9C:                 var_90.ForeColor = &HC0C0C0
  loc_1447FAB:               Else
  loc_1447FBA:                 Set var_8C = Me.Txt
  loc_1447FC0:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447FC8:                 var_90.ForeColor = -2147483640
  loc_1447FD4:               End If
  loc_1447FD7:             Else
  loc_1447FDF:               If (var_86 = CInt(&HA)) Then
  loc_1447FEC:                 Set var_8C = Me.Txt
  loc_1447FF2:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144801B:                 If (Trim(CVar(var_90)) = "key_from") Then
  loc_144802B:                   Set var_8C = Me.Txt
  loc_1448031:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1448039:                   var_90.Text = vbNullString
  loc_1448045:                 End If
  loc_144804F:                 Set var_8C = Me.Txt
  loc_1448055:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144807E:                 If (Trim(CVar(var_90)) = "key_from") Then
  loc_1448090:                   Set var_8C = Me.Txt
  loc_1448096:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144809E:                   var_90.ForeColor = &HC0C0C0
  loc_14480AD:                 Else
  loc_14480BC:                   Set var_8C = Me.Txt
  loc_14480C2:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14480CA:                   var_90.ForeColor = -2147483640
  loc_14480D6:                 End If
  loc_14480D9:               Else
  loc_14480E1:                 If (var_86 = CInt(&HB)) Then
  loc_14480EE:                   Set var_8C = Me.Txt
  loc_14480F4:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144811D:                   If (Trim(CVar(var_90)) = "key_phno") Then
  loc_144812D:                     Set var_8C = Me.Txt
  loc_1448133:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144813B:                     var_90.Text = vbNullString
  loc_1448147:                   End If
  loc_1448151:                   Set var_8C = Me.Txt
  loc_1448157:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1448180:                   If (Trim(CVar(var_90)) = "key_phno") Then
  loc_1448192:                     Set var_8C = Me.Txt
  loc_1448198:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14481A0:                     var_90.ForeColor = &HC0C0C0
  loc_14481AF:                   Else
  loc_14481BE:                     Set var_8C = Me.Txt
  loc_14481C4:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14481CC:                     var_90.ForeColor = -2147483640
  loc_14481D8:                   End If
  loc_14481DB:                 Else
  loc_14481E3:                   If (var_86 = CInt(&HC)) Then
  loc_14481F0:                     Set var_8C = Me.Txt
  loc_14481F6:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144821F:                     If (Trim(CVar(var_90)) = "key_message") Then
  loc_144822F:                       Set var_8C = Me.Txt
  loc_1448235:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144823D:                       var_90.Text = vbNullString
  loc_1448249:                     End If
  loc_1448253:                     Set var_8C = Me.Txt
  loc_1448259:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1448282:                     If (Trim(CVar(var_90)) = "key_message") Then
  loc_1448294:                       Set var_8C = Me.Txt
  loc_144829A:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14482A2:                       var_90.ForeColor = &HC0C0C0
  loc_14482B1:                     Else
  loc_14482C0:                       Set var_8C = Me.Txt
  loc_14482C6:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14482CE:                       var_90.ForeColor = -2147483640
  loc_14482DA:                     End If
  loc_14482DD:                   Else
  loc_14482E5:                     If (var_86 = CInt(&HD)) Then
  loc_14482F2:                       Set var_8C = Me.Txt
  loc_14482F8:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1448321:                       If (Trim(CVar(var_90)) = "key_extra") Then
  loc_1448331:                         Set var_8C = Me.Txt
  loc_1448337:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144833F:                         var_90.Text = vbNullString
  loc_144834B:                       End If
  loc_1448355:                       Set var_8C = Me.Txt
  loc_144835B:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1448384:                       If (Trim(CVar(var_90)) = "key_extra") Then
  loc_1448396:                         Set var_8C = Me.Txt
  loc_144839C:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14483A4:                         var_90.ForeColor = &HC0C0C0
  loc_14483B3:                       Else
  loc_14483C2:                         Set var_8C = Me.Txt
  loc_14483C8:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14483D0:                         var_90.ForeColor = -2147483640
  loc_14483DC:                       End If
  loc_14483DC:                     End If
  loc_14483DC:                   End If
  loc_14483DC:                 End If
  loc_14483DC:               End If
  loc_14483DC:             End If
  loc_14483DC:           End If
  loc_14483DC:         End If
  loc_14483DC:       End If
  loc_14483DC:     End If
  loc_14483DC:   End If
  loc_14483DC: End If
  loc_14483DC: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14455B8
  'Data Table: 42A948
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_1444A77: var_86 = Cancel
  loc_1444A82: If (var_86 = CInt(0)) Then
  loc_1444A8F:   Set var_8C = Me.Txt
  loc_1444A95:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444ABE:   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444ACE:     Set var_8C = Me.Txt
  loc_1444AD4:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444ADC:     var_90.Text = "sms_center_user_name"
  loc_1444AE8:   End If
  loc_1444AF2:   Set var_8C = Me.Txt
  loc_1444AF8:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444B21:   If (Trim(CVar(var_90)) = "sms_center_user_name") Then
  loc_1444B33:     Set var_8C = Me.Txt
  loc_1444B39:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444B41:     var_90.ForeColor = &HC0C0C0
  loc_1444B50:   Else
  loc_1444B5F:     Set var_8C = Me.Txt
  loc_1444B65:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444B6D:     var_90.ForeColor = -2147483640
  loc_1444B79:   End If
  loc_1444B7C: Else
  loc_1444B84:   If (var_86 = CInt(1)) Then
  loc_1444B91:     Set var_8C = Me.Txt
  loc_1444B97:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444BC0:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444BD0:       Set var_8C = Me.Txt
  loc_1444BD6:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444BDE:       var_90.Text = "sms_center_password"
  loc_1444BF7:       Set var_8C = Me.Txt
  loc_1444BFD:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444C05:       var_90.PasswordChar = vbNullString
  loc_1444C11:     End If
  loc_1444C1B:     Set var_8C = Me.Txt
  loc_1444C21:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444C4A:     If (Trim(CVar(var_90)) = "sms_center_password") Then
  loc_1444C5C:       Set var_8C = Me.Txt
  loc_1444C62:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444C6A:       var_90.ForeColor = &HC0C0C0
  loc_1444C79:     Else
  loc_1444C88:       Set var_8C = Me.Txt
  loc_1444C8E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444C96:       var_90.ForeColor = -2147483640
  loc_1444CA2:     End If
  loc_1444CA5:   Else
  loc_1444CAD:     If (var_86 = CInt(2)) Then
  loc_1444CBA:       Set var_8C = Me.Txt
  loc_1444CC0:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444CE9:       If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444CF9:         Set var_8C = Me.Txt
  loc_1444CFF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444D07:         var_90.Text = "sms_d_name"
  loc_1444D13:       End If
  loc_1444D1D:       Set var_8C = Me.Txt
  loc_1444D23:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444D4C:       If (Trim(CVar(var_90)) = "sms_d_name") Then
  loc_1444D5E:         Set var_8C = Me.Txt
  loc_1444D64:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444D6C:         var_90.ForeColor = &HC0C0C0
  loc_1444D7B:       Else
  loc_1444D8A:         Set var_8C = Me.Txt
  loc_1444D90:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444D98:         var_90.ForeColor = -2147483640
  loc_1444DA4:       End If
  loc_1444DA7:     Else
  loc_1444DAF:       If (var_86 = CInt(3)) Then
  loc_1444DBC:         Set var_8C = Me.Txt
  loc_1444DC2:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444DEB:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444DFB:           Set var_8C = Me.Txt
  loc_1444E01:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444E09:           var_90.Text = "sms_ph_pre"
  loc_1444E15:         End If
  loc_1444E1F:         Set var_8C = Me.Txt
  loc_1444E25:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444E4E:         If (Trim(CVar(var_90)) = "sms_ph_pre") Then
  loc_1444E60:           Set var_8C = Me.Txt
  loc_1444E66:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444E6E:           var_90.ForeColor = &HC0C0C0
  loc_1444E7D:         Else
  loc_1444E8C:           Set var_8C = Me.Txt
  loc_1444E92:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444E9A:           var_90.ForeColor = -2147483640
  loc_1444EA6:         End If
  loc_1444EA9:       Else
  loc_1444EB1:         If (var_86 = CInt(4)) Then
  loc_1444EBE:           Set var_8C = Me.Txt
  loc_1444EC4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444EED:           If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444EFD:             Set var_8C = Me.Txt
  loc_1444F03:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444F0B:             var_90.Text = "sms_url"
  loc_1444F17:           End If
  loc_1444F21:           Set var_8C = Me.Txt
  loc_1444F27:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444F50:           If (Trim(CVar(var_90)) = "sms_url") Then
  loc_1444F62:             Set var_8C = Me.Txt
  loc_1444F68:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444F70:             var_90.ForeColor = &HC0C0C0
  loc_1444F7F:           Else
  loc_1444F8E:             Set var_8C = Me.Txt
  loc_1444F94:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444F9C:             var_90.ForeColor = -2147483640
  loc_1444FA8:           End If
  loc_1444FAB:         Else
  loc_1444FB3:           If (var_86 = CInt(8)) Then
  loc_1444FC0:             Set var_8C = Me.Txt
  loc_1444FC6:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444FEF:             If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444FFF:               Set var_8C = Me.Txt
  loc_1445005:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144500D:               var_90.Text = "key_username"
  loc_1445019:             End If
  loc_1445023:             Set var_8C = Me.Txt
  loc_1445029:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445052:             If (Trim(CVar(var_90)) = "key_username") Then
  loc_1445064:               Set var_8C = Me.Txt
  loc_144506A:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445072:               var_90.ForeColor = &HC0C0C0
  loc_1445081:             Else
  loc_1445090:               Set var_8C = Me.Txt
  loc_1445096:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144509E:               var_90.ForeColor = -2147483640
  loc_14450AA:             End If
  loc_14450AD:           Else
  loc_14450B5:             If (var_86 = CInt(9)) Then
  loc_14450C2:               Set var_8C = Me.Txt
  loc_14450C8:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14450F1:               If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1445101:                 Set var_8C = Me.Txt
  loc_1445107:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144510F:                 var_90.Text = "key_password"
  loc_144511B:               End If
  loc_1445125:               Set var_8C = Me.Txt
  loc_144512B:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445154:               If (Trim(CVar(var_90)) = "key_password") Then
  loc_1445166:                 Set var_8C = Me.Txt
  loc_144516C:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445174:                 var_90.ForeColor = &HC0C0C0
  loc_1445183:               Else
  loc_1445192:                 Set var_8C = Me.Txt
  loc_1445198:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14451A0:                 var_90.ForeColor = -2147483640
  loc_14451AC:               End If
  loc_14451AF:             Else
  loc_14451B7:               If (var_86 = CInt(&HA)) Then
  loc_14451C4:                 Set var_8C = Me.Txt
  loc_14451CA:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14451F3:                 If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1445203:                   Set var_8C = Me.Txt
  loc_1445209:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445211:                   var_90.Text = "key_from"
  loc_144521D:                 End If
  loc_1445227:                 Set var_8C = Me.Txt
  loc_144522D:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445256:                 If (Trim(CVar(var_90)) = "key_from") Then
  loc_1445268:                   Set var_8C = Me.Txt
  loc_144526E:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445276:                   var_90.ForeColor = &HC0C0C0
  loc_1445285:                 Else
  loc_1445294:                   Set var_8C = Me.Txt
  loc_144529A:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14452A2:                   var_90.ForeColor = -2147483640
  loc_14452AE:                 End If
  loc_14452B1:               Else
  loc_14452B9:                 If (var_86 = CInt(&HB)) Then
  loc_14452C6:                   Set var_8C = Me.Txt
  loc_14452CC:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14452F5:                   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1445305:                     Set var_8C = Me.Txt
  loc_144530B:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445313:                     var_90.Text = "key_phno"
  loc_144531F:                   End If
  loc_1445329:                   Set var_8C = Me.Txt
  loc_144532F:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445358:                   If (Trim(CVar(var_90)) = "key_phno") Then
  loc_144536A:                     Set var_8C = Me.Txt
  loc_1445370:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445378:                     var_90.ForeColor = &HC0C0C0
  loc_1445387:                   Else
  loc_1445396:                     Set var_8C = Me.Txt
  loc_144539C:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14453A4:                     var_90.ForeColor = -2147483640
  loc_14453B0:                   End If
  loc_14453B3:                 Else
  loc_14453BB:                   If (var_86 = CInt(&HC)) Then
  loc_14453C8:                     Set var_8C = Me.Txt
  loc_14453CE:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14453F7:                     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1445407:                       Set var_8C = Me.Txt
  loc_144540D:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445415:                       var_90.Text = "key_message"
  loc_1445421:                     End If
  loc_144542B:                     Set var_8C = Me.Txt
  loc_1445431:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144545A:                     If (Trim(CVar(var_90)) = "key_message") Then
  loc_144546C:                       Set var_8C = Me.Txt
  loc_1445472:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144547A:                       var_90.ForeColor = &HC0C0C0
  loc_1445489:                     Else
  loc_1445498:                       Set var_8C = Me.Txt
  loc_144549E:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14454A6:                       var_90.ForeColor = -2147483640
  loc_14454B2:                     End If
  loc_14454B5:                   Else
  loc_14454BD:                     If (var_86 = CInt(&HD)) Then
  loc_14454CA:                       Set var_8C = Me.Txt
  loc_14454D0:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14454F9:                       If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1445509:                         Set var_8C = Me.Txt
  loc_144550F:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445517:                         var_90.Text = "key_extra"
  loc_1445523:                       End If
  loc_144552D:                       Set var_8C = Me.Txt
  loc_1445533:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144555C:                       If (Trim(CVar(var_90)) = "key_extra") Then
  loc_144556E:                         Set var_8C = Me.Txt
  loc_1445574:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144557C:                         var_90.ForeColor = &HC0C0C0
  loc_144558B:                       Else
  loc_144559A:                         Set var_8C = Me.Txt
  loc_14455A0:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14455A8:                         var_90.ForeColor = -2147483640
  loc_14455B4:                       End If
  loc_14455B4:                     End If
  loc_14455B4:                   End If
  loc_14455B4:                 End If
  loc_14455B4:               End If
  loc_14455B4:             End If
  loc_14455B4:           End If
  loc_14455B4:         End If
  loc_14455B4:       End If
  loc_14455B4:     End If
  loc_14455B4:   End If
  loc_14455B4: End If
  loc_14455B4: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E1BF48
  'Data Table: 42A948
  Dim var_2F01 As Double
  loc_E1BF3D: Me.Global.Unload Me
  loc_E1BF45: Exit Sub
  loc_E1BF46: var_2F01 = 
End Sub

Private Sub CmdRenuval_Click() 'E1C02C
  'Data Table: 42A948
  loc_E1C021: Me.Global.Unload Me
  loc_E1C029: Exit Sub
End Sub

Public Sub Proc_231_9_E965C8
  'Data Table: 42A948
  Dim var_98 As TextBox
  loc_E96554: Set var_8C = Me.Txt
  loc_E9655A: Call 0.Method_Proc_231_9_E965C8C (var_8E, var_86)
  loc_E96568: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_E9657B:   Set var_8C = Me.Txt
  loc_E96581:   Call 0.Method_Proc_231_9_E965C80 (var_86, var_98)
  loc_E96589:   var_98.Text = vbNullString
  loc_E965A2:   Set var_8C = Me.Txt
  loc_E965A8:   Call 0.Method_Proc_231_9_E965C80 (var_86, var_98)
  loc_E965B0:   var_98.Tag = vbNullString
  loc_E965BF: Next var_92 'Integer
  loc_E965C4: Exit Sub
End Sub

Public Sub Proc_231_10_14652A0
  'Data Table: 42A948
  Dim var_94 As Integer
  Dim var_98 As TextBox
  Dim var_E0 As TextBox
  loc_14646D4: Set var_8C = Me.Txt
  loc_14646DA: Call 0.Method_Proc_231_10_14652A0C (var_8E, var_86)
  loc_14646E8: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_14646F1:   var_94 = var_86
  loc_14646FC:   If (var_94 = CInt(0)) Then
  loc_1464709:     Set var_8C = Me.Txt
  loc_146470F:     Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464738:     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1464748:       Set var_8C = Me.Txt
  loc_146474E:       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464756:       var_98.Text = "sms_center_user_name"
  loc_1464762:     End If
  loc_146476C:     Set var_8C = Me.Txt
  loc_1464772:     Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146479B:     If (Trim(CVar(var_98)) = "sms_center_user_name") Then
  loc_14647AD:       Set var_8C = Me.Txt
  loc_14647B3:       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14647BB:       var_98.ForeColor = &HC0C0C0
  loc_14647CA:     Else
  loc_14647D9:       Set var_8C = Me.Txt
  loc_14647DF:       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14647E7:       var_98.ForeColor = -2147483640
  loc_14647F3:     End If
  loc_14647F6:   Else
  loc_14647FE:     If (var_94 = CInt(1)) Then
  loc_146480B:       Set var_8C = Me.Txt
  loc_1464811:       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146483F:       Set var_DC = Me.Txt
  loc_1464845:       Call 0.Method_Proc_231_10_14652A00 (var_86, var_E0, var_E4)
  loc_146484D:       (Trim(CVar(var_98)) = vbNullString) = var_E0.Text
  loc_1464879:       If CBool(var_94 Or (var_E4 = "sms_center_password")) Then
  loc_1464889:         Set var_8C = Me.Txt
  loc_146488F:         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464897:         var_98.Text = "sms_center_password"
  loc_14648B0:         Set var_8C = Me.Txt
  loc_14648B6:         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14648BE:         var_98.PasswordChar = vbNullString
  loc_14648CD:       Else
  loc_14648DA:         Set var_8C = Me.Txt
  loc_14648E0:         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14648E8:         var_98.PasswordChar = "*"
  loc_14648F4:       End If
  loc_14648FE:       Set var_8C = Me.Txt
  loc_1464904:       Call 0.Method_Proc_231_10_14652A00 (var_86)
  loc_146492D:       If (Trim(CVar(var_98)) = "sms_center_password") Then
  loc_146493F:         Set var_8C = Me.Txt
  loc_1464945:         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146494D:         var_98.ForeColor = &HC0C0C0
  loc_146495C:       Else
  loc_146496B:         Set var_8C = Me.Txt
  loc_1464971:         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464979:         var_98.ForeColor = -2147483640
  loc_1464985:       End If
  loc_1464988:     Else
  loc_1464990:       If (var_94 = CInt(2)) Then
  loc_146499D:         Set var_8C = Me.Txt
  loc_14649A3:         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14649CC:         If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14649DC:           Set var_8C = Me.Txt
  loc_14649E2:           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14649EA:           var_98.Text = "sms_d_name"
  loc_14649F6:         End If
  loc_1464A00:         Set var_8C = Me.Txt
  loc_1464A06:         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464A2F:         If (Trim(CVar(var_98)) = "sms_d_name") Then
  loc_1464A41:           Set var_8C = Me.Txt
  loc_1464A47:           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464A4F:           var_98.ForeColor = &HC0C0C0
  loc_1464A5E:         Else
  loc_1464A6D:           Set var_8C = Me.Txt
  loc_1464A73:           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464A7B:           var_98.ForeColor = -2147483640
  loc_1464A87:         End If
  loc_1464A8A:       Else
  loc_1464A92:         If (var_94 = CInt(3)) Then
  loc_1464A9F:           Set var_8C = Me.Txt
  loc_1464AA5:           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464ACE:           If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1464ADE:             Set var_8C = Me.Txt
  loc_1464AE4:             Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464AEC:             var_98.Text = "sms_ph_pre"
  loc_1464AF8:           End If
  loc_1464B02:           Set var_8C = Me.Txt
  loc_1464B08:           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464B31:           If (Trim(CVar(var_98)) = "sms_ph_pre") Then
  loc_1464B43:             Set var_8C = Me.Txt
  loc_1464B49:             Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464B51:             var_98.ForeColor = &HC0C0C0
  loc_1464B60:           Else
  loc_1464B6F:             Set var_8C = Me.Txt
  loc_1464B75:             Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464B7D:             var_98.ForeColor = -2147483640
  loc_1464B89:           End If
  loc_1464B8C:         Else
  loc_1464B94:           If (var_94 = CInt(4)) Then
  loc_1464BA1:             Set var_8C = Me.Txt
  loc_1464BA7:             Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464BD0:             If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1464BE0:               Set var_8C = Me.Txt
  loc_1464BE6:               Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464BEE:               var_98.Text = "sms_url"
  loc_1464BFA:             End If
  loc_1464C04:             Set var_8C = Me.Txt
  loc_1464C0A:             Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464C33:             If (Trim(CVar(var_98)) = "sms_url") Then
  loc_1464C45:               Set var_8C = Me.Txt
  loc_1464C4B:               Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464C53:               var_98.ForeColor = &HC0C0C0
  loc_1464C62:             Else
  loc_1464C71:               Set var_8C = Me.Txt
  loc_1464C77:               Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464C7F:               var_98.ForeColor = -2147483640
  loc_1464C8B:             End If
  loc_1464C8E:           Else
  loc_1464C96:             If (var_94 = CInt(8)) Then
  loc_1464CA3:               Set var_8C = Me.Txt
  loc_1464CA9:               Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464CD2:               If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1464CE2:                 Set var_8C = Me.Txt
  loc_1464CE8:                 Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464CF0:                 var_98.Text = "key_username"
  loc_1464CFC:               End If
  loc_1464D06:               Set var_8C = Me.Txt
  loc_1464D0C:               Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464D35:               If (Trim(CVar(var_98)) = "key_username") Then
  loc_1464D47:                 Set var_8C = Me.Txt
  loc_1464D4D:                 Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464D55:                 var_98.ForeColor = &HC0C0C0
  loc_1464D64:               Else
  loc_1464D73:                 Set var_8C = Me.Txt
  loc_1464D79:                 Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464D81:                 var_98.ForeColor = -2147483640
  loc_1464D8D:               End If
  loc_1464D90:             Else
  loc_1464D98:               If (var_94 = CInt(9)) Then
  loc_1464DA5:                 Set var_8C = Me.Txt
  loc_1464DAB:                 Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464DD4:                 If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1464DE4:                   Set var_8C = Me.Txt
  loc_1464DEA:                   Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464DF2:                   var_98.Text = "key_password"
  loc_1464DFE:                 End If
  loc_1464E08:                 Set var_8C = Me.Txt
  loc_1464E0E:                 Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464E37:                 If (Trim(CVar(var_98)) = "key_password") Then
  loc_1464E49:                   Set var_8C = Me.Txt
  loc_1464E4F:                   Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464E57:                   var_98.ForeColor = &HC0C0C0
  loc_1464E66:                 Else
  loc_1464E75:                   Set var_8C = Me.Txt
  loc_1464E7B:                   Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464E83:                   var_98.ForeColor = -2147483640
  loc_1464E8F:                 End If
  loc_1464E92:               Else
  loc_1464E9A:                 If (var_94 = CInt(&HA)) Then
  loc_1464EA7:                   Set var_8C = Me.Txt
  loc_1464EAD:                   Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464ED6:                   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1464EE6:                     Set var_8C = Me.Txt
  loc_1464EEC:                     Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464EF4:                     var_98.Text = "key_from"
  loc_1464F00:                   End If
  loc_1464F0A:                   Set var_8C = Me.Txt
  loc_1464F10:                   Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464F39:                   If (Trim(CVar(var_98)) = "key_from") Then
  loc_1464F4B:                     Set var_8C = Me.Txt
  loc_1464F51:                     Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464F59:                     var_98.ForeColor = &HC0C0C0
  loc_1464F68:                   Else
  loc_1464F77:                     Set var_8C = Me.Txt
  loc_1464F7D:                     Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464F85:                     var_98.ForeColor = -2147483640
  loc_1464F91:                   End If
  loc_1464F94:                 Else
  loc_1464F9C:                   If (var_94 = CInt(&HB)) Then
  loc_1464FA9:                     Set var_8C = Me.Txt
  loc_1464FAF:                     Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464FD8:                     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1464FE8:                       Set var_8C = Me.Txt
  loc_1464FEE:                       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1464FF6:                       var_98.Text = "key_phno"
  loc_1465002:                     End If
  loc_146500C:                     Set var_8C = Me.Txt
  loc_1465012:                     Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146503B:                     If (Trim(CVar(var_98)) = "key_phno") Then
  loc_146504D:                       Set var_8C = Me.Txt
  loc_1465053:                       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146505B:                       var_98.ForeColor = &HC0C0C0
  loc_146506A:                     Else
  loc_1465079:                       Set var_8C = Me.Txt
  loc_146507F:                       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1465087:                       var_98.ForeColor = -2147483640
  loc_1465093:                     End If
  loc_1465096:                   Else
  loc_146509E:                     If (var_94 = CInt(&HC)) Then
  loc_14650AB:                       Set var_8C = Me.Txt
  loc_14650B1:                       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14650DA:                       If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14650EA:                         Set var_8C = Me.Txt
  loc_14650F0:                         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14650F8:                         var_98.Text = "key_message"
  loc_1465104:                       End If
  loc_146510E:                       Set var_8C = Me.Txt
  loc_1465114:                       Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146513D:                       If (Trim(CVar(var_98)) = "key_message") Then
  loc_146514F:                         Set var_8C = Me.Txt
  loc_1465155:                         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146515D:                         var_98.ForeColor = &HC0C0C0
  loc_146516C:                       Else
  loc_146517B:                         Set var_8C = Me.Txt
  loc_1465181:                         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_1465189:                         var_98.ForeColor = -2147483640
  loc_1465195:                       End If
  loc_1465198:                     Else
  loc_14651A0:                       If (var_94 = CInt(&HD)) Then
  loc_14651AD:                         Set var_8C = Me.Txt
  loc_14651B3:                         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14651DC:                         If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14651EC:                           Set var_8C = Me.Txt
  loc_14651F2:                           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_14651FA:                           var_98.Text = "key_extra"
  loc_1465206:                         End If
  loc_1465210:                         Set var_8C = Me.Txt
  loc_1465216:                         Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146523F:                         If (Trim(CVar(var_98)) = "key_extra") Then
  loc_1465251:                           Set var_8C = Me.Txt
  loc_1465257:                           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146525F:                           var_98.ForeColor = &HC0C0C0
  loc_146526E:                         Else
  loc_146527D:                           Set var_8C = Me.Txt
  loc_1465283:                           Call 0.Method_Proc_231_10_14652A00 (var_86, var_98)
  loc_146528B:                           var_98.ForeColor = -2147483640
  loc_1465297:                         End If
  loc_1465297:                       End If
  loc_1465297:                     End If
  loc_1465297:                   End If
  loc_1465297:                 End If
  loc_1465297:               End If
  loc_1465297:             End If
  loc_1465297:           End If
  loc_1465297:         End If
  loc_1465297:       End If
  loc_1465297:     End If
  loc_1465297:   End If
  loc_146529A: Next var_92 'Integer
  loc_146529F: Exit Sub
End Sub

Public Sub Proc_231_11_1333DA8
  'Data Table: 42A948
  Dim var_94 As Integer
  Dim var_98 As TextBox
  loc_13335F0: Set var_8C = Me.Txt
  loc_13335F6: Call 0.Method_Proc_231_11_1333DA8C (var_8E, var_86)
  loc_1333604: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_133360D:   var_94 = var_86
  loc_1333618:   If (var_94 = CInt(0)) Then
  loc_1333625:     Set var_8C = Me.Txt
  loc_133362B:     Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333654:     If (Trim(CVar(var_98)) = "sms_center_user_name") Then
  loc_1333664:       Set var_8C = Me.Txt
  loc_133366A:       Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333672:       var_98.Text = vbNullString
  loc_1333681:     Else
  loc_133368E:       Set var_8C = Me.Txt
  loc_1333694:       Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_13336AA:       var_B8 = Trim(CVar(var_98.Text))
  loc_13336BD:     End If
  loc_13336C0:   Else
  loc_13336C8:     If (var_94 = CInt(1)) Then
  loc_13336D5:       Set var_8C = Me.Txt
  loc_13336DB:       Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333704:       If (Trim(CVar(var_98)) = "sms_center_password") Then
  loc_1333714:         Set var_8C = Me.Txt
  loc_133371A:         Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333722:         var_98.Text = vbNullString
  loc_1333731:       Else
  loc_133373E:         Set var_8C = Me.Txt
  loc_1333744:         Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_133375A:         var_B8 = Trim(CVar(var_98.Text))
  loc_133376D:       End If
  loc_1333770:     Else
  loc_1333778:       If (var_94 = CInt(2)) Then
  loc_1333785:         Set var_8C = Me.Txt
  loc_133378B:         Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_13337B4:         If (Trim(CVar(var_98)) = "sms_d_name") Then
  loc_13337C4:           Set var_8C = Me.Txt
  loc_13337CA:           Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_13337D2:           var_98.Text = vbNullString
  loc_13337E1:         Else
  loc_13337EE:           Set var_8C = Me.Txt
  loc_13337F4:           Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_133380A:           var_B8 = Trim(CVar(var_98.Text))
  loc_133381D:         End If
  loc_1333820:       Else
  loc_1333828:         If (var_94 = CInt(3)) Then
  loc_1333835:           Set var_8C = Me.Txt
  loc_133383B:           Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333864:           If (Trim(CVar(var_98)) = "sms_ph_pre") Then
  loc_1333874:             Set var_8C = Me.Txt
  loc_133387A:             Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333882:             var_98.Text = vbNullString
  loc_1333891:           Else
  loc_133389E:             Set var_8C = Me.Txt
  loc_13338A4:             Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_13338BA:             var_B8 = Trim(CVar(var_98.Text))
  loc_13338CD:           End If
  loc_13338D0:         Else
  loc_13338D8:           If (var_94 = CInt(4)) Then
  loc_13338E5:             Set var_8C = Me.Txt
  loc_13338EB:             Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333914:             If (Trim(CVar(var_98)) = "sms_url") Then
  loc_1333924:               Set var_8C = Me.Txt
  loc_133392A:               Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333932:               var_98.Text = vbNullString
  loc_1333941:             Else
  loc_133394E:               Set var_8C = Me.Txt
  loc_1333954:               Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_133396A:               var_B8 = Trim(CVar(var_98.Text))
  loc_133397D:             End If
  loc_1333980:           Else
  loc_1333988:             If (var_94 = CInt(8)) Then
  loc_1333995:               Set var_8C = Me.Txt
  loc_133399B:               Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_13339C4:               If (Trim(CVar(var_98)) = "key_username") Then
  loc_13339D4:                 Set var_8C = Me.Txt
  loc_13339DA:                 Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_13339E2:                 var_98.Text = vbNullString
  loc_13339F1:               Else
  loc_13339FE:                 Set var_8C = Me.Txt
  loc_1333A04:                 Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333A1A:                 var_B8 = Trim(CVar(var_98.Text))
  loc_1333A2D:               End If
  loc_1333A30:             Else
  loc_1333A38:               If (var_94 = CInt(9)) Then
  loc_1333A45:                 Set var_8C = Me.Txt
  loc_1333A4B:                 Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333A74:                 If (Trim(CVar(var_98)) = "key_password") Then
  loc_1333A84:                   Set var_8C = Me.Txt
  loc_1333A8A:                   Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333A92:                   var_98.Text = vbNullString
  loc_1333AA1:                 Else
  loc_1333AAE:                   Set var_8C = Me.Txt
  loc_1333AB4:                   Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333ACA:                   var_B8 = Trim(CVar(var_98.Text))
  loc_1333ADD:                 End If
  loc_1333AE0:               Else
  loc_1333AE8:                 If (var_94 = CInt(&HA)) Then
  loc_1333AF5:                   Set var_8C = Me.Txt
  loc_1333AFB:                   Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333B24:                   If (Trim(CVar(var_98)) = "key_from") Then
  loc_1333B34:                     Set var_8C = Me.Txt
  loc_1333B3A:                     Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333B42:                     var_98.Text = vbNullString
  loc_1333B51:                   Else
  loc_1333B5E:                     Set var_8C = Me.Txt
  loc_1333B64:                     Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333B7A:                     var_B8 = Trim(CVar(var_98.Text))
  loc_1333B8D:                   End If
  loc_1333B90:                 Else
  loc_1333B98:                   If (var_94 = CInt(&HB)) Then
  loc_1333BA5:                     Set var_8C = Me.Txt
  loc_1333BAB:                     Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333BD4:                     If (Trim(CVar(var_98)) = "key_phno") Then
  loc_1333BE4:                       Set var_8C = Me.Txt
  loc_1333BEA:                       Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333BF2:                       var_98.Text = vbNullString
  loc_1333C01:                     Else
  loc_1333C0E:                       Set var_8C = Me.Txt
  loc_1333C14:                       Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333C2A:                       var_B8 = Trim(CVar(var_98.Text))
  loc_1333C3D:                     End If
  loc_1333C40:                   Else
  loc_1333C48:                     If (var_94 = CInt(&HC)) Then
  loc_1333C55:                       Set var_8C = Me.Txt
  loc_1333C5B:                       Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333C84:                       If (Trim(CVar(var_98)) = "key_message") Then
  loc_1333C94:                         Set var_8C = Me.Txt
  loc_1333C9A:                         Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333CA2:                         var_98.Text = vbNullString
  loc_1333CB1:                       Else
  loc_1333CBE:                         Set var_8C = Me.Txt
  loc_1333CC4:                         Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333CDA:                         var_B8 = Trim(CVar(var_98.Text))
  loc_1333CED:                       End If
  loc_1333CF0:                     Else
  loc_1333CF8:                       If (var_94 = CInt(&HD)) Then
  loc_1333D05:                         Set var_8C = Me.Txt
  loc_1333D0B:                         Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333D34:                         If (Trim(CVar(var_98)) = "key_extra") Then
  loc_1333D44:                           Set var_8C = Me.Txt
  loc_1333D4A:                           Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333D52:                           var_98.Text = vbNullString
  loc_1333D61:                         Else
  loc_1333D6E:                           Set var_8C = Me.Txt
  loc_1333D74:                           Call 0.Method_Proc_231_11_1333DA80 (var_86, var_98)
  loc_1333D8A:                           var_B8 = Trim(CVar(var_98.Text))
  loc_1333D9D:                         End If
  loc_1333D9D:                       End If
  loc_1333D9D:                     End If
  loc_1333D9D:                   End If
  loc_1333D9D:                 End If
  loc_1333D9D:               End If
  loc_1333D9D:             End If
  loc_1333D9D:           End If
  loc_1333D9D:         End If
  loc_1333D9D:       End If
  loc_1333D9D:     End If
  loc_1333D9D:   End If
  loc_1333DA0: Next var_92 'Integer
  loc_1333DA5: Exit Sub
End Sub

Public Sub Proc_231_12_13EB760
  'Data Table: 42A948
  Dim var_180 As TextBox
  loc_13EAD8A: If (Me.Recordset15.RecordCount > 0) Then
  loc_13EAE24:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsCenterUserName"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsCenterUserName"))))), "sms_center_user_name")
  loc_13EAE3B:   Set var_17C = Me.Txt
  loc_13EAE41:   Call 0.Method_Proc_231_12_13EB7600 (CInt(0), var_180)
  loc_13EAE49:   var_180.Text = CStr(var_178)
  loc_13EAF08:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsCenterPassword"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsCenterPassword"))))), "sms_center_password")
  loc_13EAF1F:   Set var_17C = Me.Txt
  loc_13EAF25:   Call 0.Method_Proc_231_12_13EB7600 (CInt(1), var_180)
  loc_13EAF2D:   var_180.Text = CStr(var_178)
  loc_13EAFEC:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsDisplayName"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsDisplayName"))))), "sms_d_name")
  loc_13EB003:   Set var_17C = Me.Txt
  loc_13EB009:   Call 0.Method_Proc_231_12_13EB7600 (CInt(2), var_180)
  loc_13EB011:   var_180.Text = CStr(var_178)
  loc_13EB0D0:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsPhoneNoPrefix"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsPhoneNoPrefix"))))), "sms_ph_pre")
  loc_13EB0E7:   Set var_17C = Me.Txt
  loc_13EB0ED:   Call 0.Method_Proc_231_12_13EB7600 (CInt(3), var_180)
  loc_13EB0F5:   var_180.Text = CStr(var_178)
  loc_13EB1B4:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsURL"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmsURL"))))), "sms_url")
  loc_13EB1CB:   Set var_17C = Me.Txt
  loc_13EB1D1:   Call 0.Method_Proc_231_12_13EB7600 (CInt(4), var_180)
  loc_13EB1D9:   var_180.Text = CStr(var_178)
  loc_13EB298:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TUser"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TUser"))))), "key_username")
  loc_13EB2AF:   Set var_17C = Me.Txt
  loc_13EB2B5:   Call 0.Method_Proc_231_12_13EB7600 (CInt(8), var_180)
  loc_13EB2BD:   var_180.Text = CStr(var_178)
  loc_13EB37C:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TPassword"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TPassword"))))), "key_password")
  loc_13EB393:   Set var_17C = Me.Txt
  loc_13EB399:   Call 0.Method_Proc_231_12_13EB7600 (CInt(9), var_180)
  loc_13EB3A1:   var_180.Text = CStr(var_178)
  loc_13EB460:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TFromSend"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TFromSend"))))), "key_from")
  loc_13EB477:   Set var_17C = Me.Txt
  loc_13EB47D:   Call 0.Method_Proc_231_12_13EB7600 (CInt(&HA), var_180)
  loc_13EB485:   var_180.Text = CStr(var_178)
  loc_13EB544:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TPhNo"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TPhNo"))))), "key_phno")
  loc_13EB55B:   Set var_17C = Me.Txt
  loc_13EB561:   Call 0.Method_Proc_231_12_13EB7600 (CInt(&HB), var_180)
  loc_13EB569:   var_180.Text = CStr(var_178)
  loc_13EB628:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TMessage"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TMessage"))))), "key_message")
  loc_13EB63F:   Set var_17C = Me.Txt
  loc_13EB645:   Call 0.Method_Proc_231_12_13EB7600 (CInt(&HC), var_180)
  loc_13EB64D:   var_180.Text = CStr(var_178)
  loc_13EB70C:   var_178 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TExtra"))))) <> vbNullString), Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TExtra"))))), "key_extra")
  loc_13EB723:   Set var_17C = Me.Txt
  loc_13EB729:   Call 0.Method_Proc_231_12_13EB7600 (CInt(&HD), var_180)
  loc_13EB731:   var_180.Text = CStr(var_178)
  loc_13EB759: End If
  loc_13EB759: Call Proc_231_10_14652A0()
  loc_13EB75E: Exit Sub
End Sub

Public Sub Proc_231_13_EF4F14(arg_C) 'EF4F14
  'Data Table: 42A948
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EF4E5C: If (Len(arg_C) <> 0) Then
  loc_EF4E83:   var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EF4E8C: End If
  loc_EF4EA2: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EF4EC5:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EF4EE1:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EF4EE9:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EF4EEE:   var_8C = CStr(var_108)
  loc_EF4F02: Next var_B8 'Integer
  loc_EF4F0A: var_88 = var_8C
  loc_EF4F0D: Proc_231_13_EF4F14 = 
End Sub

Public Sub Proc_231_14_EF043C(arg_C) 'EF043C
  'Data Table: 42A948
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EF0381: Randomize(var_B0)
  loc_EF03A2: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EF03B2: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EF03CB: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EF0407:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EF040F:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EF0414:   var_8C = CStr(var_10C)
  loc_EF0428: Next var_B8 'Integer
  loc_EF0430: var_88 = var_8C
  loc_EF0433: Proc_231_14_EF043C = 
End Sub
