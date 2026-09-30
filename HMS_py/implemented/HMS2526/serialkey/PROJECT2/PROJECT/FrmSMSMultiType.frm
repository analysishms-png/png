VERSION 5.00
Begin VB.Form FrmSMSMultiType
  Caption = "Common SMS"
  BackColor = &HC0C0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 15240
  ClientHeight = 9690
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 9315
    Width = 15240
    Height = 375
    Visible = 0   'False
    TabIndex = 37
  End
  Begin CheckBox ChkMobile
    Caption = "Mobile No. *"
    BackColor = &H8080FF&
    ForeColor = &H8000000E&
    Left = 13575
    Top = 345
    Width = 1515
    Height = 255
    TabIndex = 36
    Value = 1
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
  Begin Frame FrOutStanding
    Caption = "Customer's Outstanding"
    BackColor = &HC0C0FF&
    Left = 30
    Top = 315
    Width = 7305
    Height = 300
    TabIndex = 6
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 2
      Left = 5565
      Top = 30
      Width = 1710
      Height = 255
      Text = "0"
      TabIndex = 16
      BorderStyle = 0 'None
      ScrollBars = 2
      Alignment = 1 'Right Justify
      MaxLength = 160
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
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
      Left = 2595
      Top = 30
      Width = 1710
      Height = 255
      Text = "Up To Date"
      TabIndex = 15
      BorderStyle = 0 'None
      ScrollBars = 2
      Alignment = 1 'Right Justify
      MaxLength = 160
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Outstanding :-"
      BackColor = &HC0C0FF&
      ForeColor = &H80000008&
      Left = 15
      Top = 15
      Width = 1440
      Height = 255
      TabIndex = 35
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
    Begin Label Label7
      Caption = " Balance >="
      BackColor = &HC0C0FF&
      ForeColor = &H80000006&
      Left = 4425
      Top = 30
      Width = 1110
      Height = 255
      TabIndex = 18
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
    Begin Label Label6
      Caption = " Up To Date "
      BackColor = &HC0C0FF&
      ForeColor = &H80000006&
      Left = 1470
      Top = 30
      Width = 1365
      Height = 255
      TabIndex = 17
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
  End
  Begin Frame FrHoliday
    BackColor = &HC0C0FF&
    Left = 7365
    Top = 330
    Width = 4740
    Height = 300
    TabIndex = 32
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      Left = 1065
      Top = 15
      Width = 3675
      Height = 255
      TabIndex = 33
      BorderStyle = 0 'None
      ScrollBars = 2
      MaxLength = 160
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
    Begin Label Label2
      Caption = "Holiday :-"
      BackColor = &HC0C0FF&
      ForeColor = &H80000008&
      Left = 30
      Top = 0
      Width = 1365
      Height = 285
      TabIndex = 34
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
  Begin Frame FrOnDate
    BackColor = &HC0C0FF&
    Left = 8535
    Top = 330
    Width = 5070
    Height = 300
    TabIndex = 29
    BorderStyle = 0 'None
    Begin DTPicker DTP
      Left = 3450
      Top = -15
      Width = 1605
      Height = 315
      TabIndex = 30
    End
    Begin Label LblOnDate
      Caption = "On Date : "
      BackColor = &HC0C0FF&
      ForeColor = &H80000008&
      Left = 90
      Top = 30
      Width = 3315
      Height = 255
      TabIndex = 31
      Alignment = 1 'Right Justify
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
  End
  Begin DataGrid DGHoliday
    Left = 6555
    Top = 9615
    Width = 4410
    Height = 5550
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGCity
    Left = 2085
    Top = 9630
    Width = 4410
    Height = 5550
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin CommandButton CmdReload
    Caption = "&Reload"
    BackColor = &HFFFFFF&
    Left = 13560
    Top = 0
    Width = 1545
    Height = 300
    TabIndex = 24
    TabStop = 0   'False
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
  Begin Frame FrMsgType
    Caption = "Frame3"
    BackColor = &H8080FF&
    Left = 0
    Top = 0
    Width = 15105
    Height = 300
    TabIndex = 19
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin OptionButton OptMsgType
      Caption = "Marriage Anniversary"
      Index = 4
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 10320
      Top = 30
      Width = 2250
      Height = 255
      TabIndex = 27
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
    Begin OptionButton OptMsgType
      Caption = "Birthday"
      Index = 3
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 8346
      Top = 30
      Width = 1095
      Height = 255
      TabIndex = 26
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
    Begin OptionButton OptMsgType
      Caption = "Holiday"
      Index = 2
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 6479
      Top = 30
      Width = 990
      Height = 255
      TabIndex = 23
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
    Begin OptionButton OptMsgType
      Caption = "Outstanding"
      Index = 1
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 4132
      Top = 30
      Width = 1470
      Height = 255
      TabIndex = 22
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
    Begin OptionButton OptMsgType
      Caption = "Common"
      Index = 0
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 2130
      Top = 30
      Width = 1125
      Height = 210
      TabIndex = 21
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
    Begin Label Label3
      Caption = "Message Type -->"
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 75
      Top = 15
      Width = 1875
      Height = 255
      TabIndex = 20
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
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 3585
    Top = 2565
    Width = 2925
    Height = 240
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin ProgressBar ProgressBar1
    Left = 3255
    Top = 8760
    Width = 9930
    Height = 195
    TabIndex = 11
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 3585
    Top = 1380
    Width = 1695
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdSendSms
    Caption = "[ Send SMS ]"
    Left = 13155
    Top = 8430
    Width = 1560
    Height = 405
    TabIndex = 9
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CheckBox ChkParty
    Caption = "All Party"
    BackColor = &H8080FF&
    ForeColor = &H8000000E&
    Left = 3270
    Top = 945
    Width = 1275
    Height = 255
    TabIndex = 4
    Value = 1
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
    Index = 0
    Left = 3285
    Top = 645
    Width = 11850
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 160
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 1
    Left = 45
    Top = 1215
    Width = 3180
    Height = 7170
    TabIndex = 2
  End
  Begin MSHFlexGrid FGrid1
    Left = 3270
    Top = 1215
    Width = 11865
    Height = 7215
    TabIndex = 3
  End
  Begin BtnEnh Head
    Left = 14715
    Top = 8400
    Width = 1320
    Height = 480
    TabIndex = 38
  End
  Begin Label Label4
    Caption = "[Max Length = 160 Character]"
    BackColor = &HC0C0FF&
    ForeColor = &H80000008&
    Left = 30
    Top = 900
    Width = 3090
    Height = 255
    TabIndex = 28
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
  Begin Label LBLSr
    BackColor = &HFF8080&
    ForeColor = &H8000000E&
    Left = 1980
    Top = 9330
    Width = 1080
    Height = 285
    TabIndex = 25
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LBLInsertInfo
    Caption = "Insert Information"
    BackColor = &HFF8080&
    ForeColor = &H8000000E&
    Left = 3270
    Top = 8460
    Width = 9885
    Height = 285
    TabIndex = 14
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
  Begin Label LBLSendINFORMATION
    BackColor = &HFFC0C0&
    ForeColor = &H8000000E&
    Left = 60
    Top = 8430
    Width = 3090
    Height = 1185
    TabIndex = 5
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
  Begin Label Label5
    Caption = "Note : [1] : Select Only One Group At a Time to Send Message"
    BackColor = &H8080FF&
    ForeColor = &H8000000E&
    Left = 4605
    Top = 945
    Width = 10530
    Height = 255
    TabIndex = 1
    Alignment = 2 'Center
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
  Begin Label LblMessage
    Caption = "[Common  Message Write ]"
    BackColor = &HC0C0FF&
    ForeColor = &H80000008&
    Left = 30
    Top = 645
    Width = 3090
    Height = 255
    TabIndex = 0
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
End

Attribute VB_Name = "FrmSMSMultiType"

Private global_136 As Integer
Private global_52 As Integer
Private global_100 As Integer
Private global_102 As Integer
Private global_138 As Integer

Private Sub Form_Load() '132DD84
  'Data Table: 50D6DC
  Dim unk_50D71F As Connection15
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_98 As Variant
  Dim Me As Variant
  Dim var_C4 As String
  Dim var_CC As String
  Dim var_D4 As Field20
  Dim var_F4 As Variant
  Dim var_A8 As Variant
  Dim var_130 As String
  Dim var_E4 As Variant
  Dim var_110 As MSHFlexGrid
  loc_132D5F3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_132D60E: unk_50D71F.Execute "Select * from SMSEnviro", var_A8, -1
  loc_132D61F: Set global_60 = var_AC
  loc_132D62D: Call Proc_235_39_1346C04(var_AC)
  loc_132D63F: Me.LBLSendINFORMATION.Caption = "Message Status ................"
  loc_132D654: Me.LBLInsertInfo.Caption = vbNullString
  loc_132D66B: Set var_AC = Me.OptMsgType
  loc_132D671: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_132D679: var_B0.Value = True
  loc_132D68F: Set global_96 = New 
  loc_132D6A1: Me.Recordset15.CursorLocation = 3
  loc_132D6D7: CVarUnk
  loc_132D6DC: VerifyVarObj
  loc_132D6E2: Set var_AC = Me.DGCity
  loc_132D6E8: LateIdStAd
  loc_132D712: Me.DGCity.CursorLocation = 3
  loc_132D73A: elect CityCode As CityCode,CityName as CityName From City order by CityName", CVar(MemVar_1F95044), 3 "Select Substring(Remarks,1,5) As HCode,Remarks as HName,Substring(Remarks,1,5) as SName From Holiday order by HName", CVar(MemVar_1F95044), 3
  loc_132D748: CVarUnk
  loc_132D74D: VerifyVarObj
  loc_132D753: Set var_AC = Me.DGHoliday
  loc_132D759: LateIdStAd
  loc_132D77F: Call 0.Method_Form_Load0 (1, var_B0, 1, Me.GridSel, New, 1)
  loc_132D787: var_B0.Rows = -1
  loc_132D798: global_138 = 1
  loc_132D7A1: var_C0 = 0
  loc_132D7CC: var_CC = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_132D7DC: unk_50D71F.Execute var_CC & "' AND [Option]='Front Office' AND Flag='N'", var_A8, -1
  loc_132D7E4: var_AC = var_AC.Fields
  loc_132D7EC: var_C0 = var_B0.Item(var_B0)
  loc_132D7F4: var_D4 = var_D4.Value
  loc_132D81F: If (var_E4 > 0) Then
  loc_132D825:   var_88 = " Union All Select 'GUEST' GroupCode,'GUEST' GroupName,'Guest' Nature,'Guest' CompanyType "
  loc_132D828: End If
  loc_132D82E: var_C0 = 0
  loc_132D859: var_CC = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_132D869: unk_50D71F.Execute var_CC & "' AND [Option]='PayRoll' AND Flag='N'", var_A8, -1
  loc_132D871: var_AC = var_AC.Fields
  loc_132D879: var_C0 = var_B0.Item(var_B0)
  loc_132D881: var_D4 = var_D4.Value
  loc_132D8AC: If (var_E4 > 0) Then
  loc_132D8B6:   var_88 = var_88 & " Union All Select 'EMPLOYEE' GroupCode,'EMPLOYEE' GroupName,'Employee' Nature,'Employee' CompanyType "
  loc_132D8B9: End If
  loc_132D8CD: var_C4 = "Select Distinct AcGroup.GroupCode,Case When SubGroup.CompanyType='Corporate' Then 'COMPANY' When SubGroup.CompanyType='Travel Agency' Then 'TRAVEL AGENT' When IsNull(MemCatMast.Name,'')<>'' Then 'MEM-'+IsNull(MemCatMast.Name,'') Else AcGroup.GroupName End GroupName,SubGroup.Nature,SubGroup.CompanyType from ACGROUP left Join SubGroup on ACGroup.GroupCode=SubGroup.GroupCode Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code where SubGroup.Nature In ('Customer','Supplier') And SubGroup.ActiveYN=1 " & var_88
  loc_132D8DD: unk_50D71F.Execute "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & " Order By GroupName", var_A8, -1
  loc_132D8EE: Set global_88 = var_AC
  loc_132D92F: If ((Me.RecordCount > 0) And (Me.EOF = 0)) Then
  loc_132D949:   If (Me.RecordCount > 0) Then
  loc_132D94C:     ' Referenced from: 132DC0D
  loc_132D95E:     If Not(Me.EOF) Then
  loc_132D976:       Call 0.Method_Form_Load0 (1, var_B0, vbNullString, Me.GridSel, var_E4, var_E4)
  loc_132D996:       Set var_AC = Me.GridSel
  loc_132D99C:       Call 0.Method_Form_Load0 (1, var_B0, GridSel.DispID_10000, global_138)
  loc_132D9A4:       Set var_110 = var_B0
  loc_132D9B1:       var_98 = CVar(CLng(global_138)) 'Long
  loc_132D9B9:       var_F4 = CVar(CLng(0)) 'Long
  loc_132D9C6:       var_A8 = CVar(CStr(global_138)) 'String
  loc_132D9CD:       LateIdCallSt
  loc_132D9DF:       var_98 = CVar(CLng(global_138)) 'Long
  loc_132D9F5:       LateIdCallSt
  loc_132DA14:       var_98 = "GroupCode"
  loc_132DA3C:       var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_98)), CVar(CLng(2)), CVar(CLng(global_138)), var_110, vbNullString, CVar(CLng(1)), var_98)) 'String
  loc_132DA43:       LateIdCallSt
  loc_132DA94:       var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("GroupName")), CVar(CLng(3)), CVar(CLng(global_138)), var_110, var_E4, var_110)) 'String
  loc_132DA9B:       LateIdCallSt
  loc_132DAEC:       var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(4)), CVar(CLng(global_138)), var_110, var_E4)) 'String
  loc_132DAF3:       LateIdCallSt
  loc_132DB33:       var_B0 = Me.Fields.Item("CompanyType")
  loc_132DB3B:       var_A8 = CVar(var_B0) 'Address
  loc_132DB4B:       LateIdCallSt
  loc_132DB6C:       var_110.Row = CVar(CLng(global_138))
  loc_132DB7C:       var_110.Col = CVar(CLng(1))
  loc_132DB8A:       var_110.CellFontName = "wingdings"
  loc_132DB9A:       var_110.CellFontSize = CVar(CDbl(&HC))
  loc_132DBA8:       Set var_AC = Me.GridSel
  loc_132DBAE:       Call 0.Method_Form_Load0 (1, var_B0, var_110, CVar(Proc_6_38_E69628(var_A8, CVar(CLng(5)), CVar(CLng(global_138)), var_110, var_E4)), var_A8)
  loc_132DBC5:       var_98 = CVar((CLng(var_B0.Rows) - 1)) 'Long
  loc_132DBCD:       var_F4 = CVar(CLng(1)) 'Long
  loc_132DBD2:       var_130 = "¨"
  loc_132DBDB:       LateIdCallSt
  loc_132DBEF:       Set var_110 = Nothing 
  loc_132DBFF:       global_138 = (global_138 + 1)
  loc_132DC08:       Me.MoveNext
  loc_132DC0D:       GoTo loc_132D94C
  loc_132DC10:     End If
  loc_132DC22:     Set var_AC = Me.GridSel
  loc_132DC28:     Call 0.Method_Form_Load0 (1, var_B0, 1, global_138, var_110, var_130)
  loc_132DC30:     var_B0.FixedRows = var_F4
  loc_132DC3C:   End If
  loc_132DC3C: End If
  loc_132DC3C: var_98 = "Add"
  loc_132DC4C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_132DC55: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_F4)
  loc_132DC68: Call 0.Method_Me4 (CDbl(15250), var_98)
  loc_132DC75: Call 0.Method_MeC (CDbl(10200), Me.TopCtrl1)
  loc_132DC81: Call 0.Method_arg_7C (CDbl(0))
  loc_132DC8D: Call 0.Method_arg_74 (CDbl(0))
  loc_132DCA3: Me.DTP.MinDate = MemVar_1F950F4
  loc_132DCD6: Me.DTP.MaxDate = CDate(CDate(DateAdd("d", CDbl(7), MemVar_1F950FC)))
  loc_132DCF3: Me.DTP.Value = CDate(MemVar_1F950EC)
  loc_132DD09: Set var_AC = Me.Txt
  loc_132DD0F: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_132DD17: var_B0.Text = vbNullString
  loc_132DD36: Set var_AC = Me.Txt
  loc_132DD3C: Call 0.Method_Form_Load0 (CInt(1), var_B0)
  loc_132DD44: var_B0.Text = CStr(MemVar_1F950EC)
  loc_132DD65: Set var_AC = Me.Txt
  loc_132DD6B: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_132DD73: var_B0.Text = CStr(0)
  loc_132DD82: Exit Sub
End Sub

Private Sub Form_Terminate() 'E132B4
  'Data Table: 50D6DC
  loc_E132AB: Set global_60 = Nothing
  loc_E132B2: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EC94A0
  'Data Table: 50D6DC
  Dim var_88 As TextBox
  loc_EC93FB: If (Proc_6_113_E6DB0C(KeyCode) = &HFF) Then
  loc_EC9402:   Set var_88 = Me.FGrid1
  loc_EC941F:   Me.TxtSearch.Visible = False
  loc_EC9427: End If
  loc_EC9431: If (CLng(KeyCode) = &H2E) Then
  loc_EC9441:   Me.TxtSearch.Text = vbNullString
  loc_EC9449: End If
  loc_EC945E: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EC9465:   Set var_88 = Me.FGrid1
  loc_EC9483:   Me.TxtSearch.Text = vbNullString
  loc_EC9497:   Me.TxtSearch.Visible = False
  loc_EC949F: End If
  loc_EC949F: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E7EE84
  'Data Table: 50D6DC
  Dim KeyAscii As Integer
  loc_E7EE47: var_90 = "PartyName"
  loc_E7EE68: Proc_6_112_1127330(Me.TxtSearch, Me.FGrid1, global_84, KeyAscii)
  loc_E7EE7D: KeyAscii = 0
  loc_E7EE80: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E57D08
  'Data Table: 50D6DC
  Dim var_88 As TextBox
  loc_E57CD5: Me.TxtSearch.Text = vbNullString
  loc_E57CE1: Set var_88 = Me.FGrid1
  loc_E57CFE: Me.TxtSearch.Visible = False
  loc_E57D06: Exit Sub
End Sub

Private Sub CmdSendSms_Click() '1311708
  'Data Table: 50D6DC
  Dim var_B0 As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_B4 As String
  Dim var_1BC As Boolean
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_A8 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim var_210 As Variant
  Dim var_EC As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1E0 As Variant
  Dim unk_50D6F5 As Connection15
  Dim var_AC As Variant
  Dim var_8C As Long
  Dim var_200 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_220 As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_370 As Double
  Dim var_2EC As Variant
  Dim var_30C As Variant
  loc_131102B: Set var_A4 = Me.Txt
  loc_1311031: Call 0.Method_CmdSendSms_Click0 (CInt(0))
  loc_1311052: Set var_AC = var_A8
  loc_131106C: If (Proc_6_27_EA61EC(var_AC, Me.LblMessage.Caption) = 0) Then
  loc_131106F:   Exit Sub
  loc_1311070: End If
  loc_131107C: Me.CmdSendSms.Enabled = False
  loc_13110A9: For var_CC = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_9E = var_CC 'Integer
  loc_13110B9:   Me.LBLSendINFORMATION.Refresh
  loc_13110CE:   Me.LBLSendINFORMATION.Caption = "MESSAGE SENDING ....................."
  loc_13110DA:   var_DC = CVar(CLng(var_9E)) 'Long
  loc_13110E2:   var_FC = CVar(CLng(1)) 'Long
  loc_1311104:   var_1BC = (CStr(Me.FGrid1.TextMatrix)) = "þ")
  loc_131110C:   var_11C = CVar(CLng(var_9E)) 'Long
  loc_1311167:   If CBool(CVar(CLng(5)) And (Len(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) >= 10)) Then
  loc_1311171:     var_DC = CVar(CLng(var_9E)) 'Long
  loc_1311182:     Set var_A4 = Me.FGrid1
  loc_1311188:     var_C8 = var_A4.TextMatrix)
  loc_13111A8:     Set var_A8 = Me.LBLSr
  loc_13111AE:     var_A8.Caption = CVar(CLng(0)) & CStr(Val(CStr(var_C8)))
  loc_13111C9:     var_90 = MemVar_1F9512C
  loc_13111E8:     var_EC = "Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS Where VType="
  loc_13111F3:     var_DC = global_80
  loc_13111FB:     Proc_6_17_EAAE40(var_C8, var_DC, var_EC, var_200, -1, var_A4, var_A8, 0)
  loc_131121A:     var_11C = "' And SITE_CODE='"
  loc_1311232:     var_1CC = var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90) & var_11C & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" 
  loc_1311253:     unk_50D6F5.Execute CStr(var_1CC & CVar(MemVar_1F95078) & "'"), var_220, var_DC
  loc_131125B:     "Sr. : " = var_A4.Fields
  loc_1311263:     var_1BC = var_A8.Item(var_11C)
  loc_131126B:     var_FC = var_AC.Value
  loc_1311275:     var_8C = CLng(var_220)
  loc_13112AD:     var_B4 = Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C)
  loc_13112CE:     var_C8 = Space((5 - Len(global_80)))
  loc_13112D6:     var_16C = (CVar(var_8C & var_B4 & global_80) + var_C8)
  loc_13112E7:     var_17C = Space((5 - Len(var_90)))
  loc_13112EF:     var_18C = (var_AC & var_C8 & " And SubString(Docid,10,4)='" + var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90))
  loc_13112F6:     var_DC = CVar(var_90) 'String
  loc_13112F9:     var_1AC = (var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90) & var_11C + var_DC)
  loc_131130F:     var_1CC = Space((8 - Len(CStr(var_8C))))
  loc_1311317:     var_1E0 = (var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90) & var_11C & CVar(MemVar_1F95070) + var_1CC)
  loc_1311323:     var_200 = (var_1CC & CVar(MemVar_1F95078) + CVar(CStr(var_8C)))
  loc_1311328:     var_88 = CStr(var_200)
  loc_1311351:     var_228 = global_76
  loc_131135C:     If (var_228 = "Common") Then
  loc_131135F:       GoTo loc_131149B
  loc_1311362:     End If
  loc_131136A:     If (var_228 = "Holiday") Then
  loc_131137E:       Set var_A4 = Me.Txt
  loc_1311384:       Call 0.Method_CmdSendSms_Click0 (CInt(3), var_A8, var_B4)
  loc_131138C:       " " = var_A8.Text
  loc_1311395:       var_9C = var_DC & var_B4
  loc_13113A5:     Else
  loc_13113AD:       If (var_228 = "Outstanding") Then
  loc_13113BE:         Set var_A4 = Me.Txt
  loc_13113C4:         Call 0.Method_CmdSendSms_Click0 (CInt(0), var_A8)
  loc_13113D5:         var_DC = CVar(CLng(var_9E)) 'Long
  loc_13113DD:         var_FC = CVar(CLng(&HA)) 'Long
  loc_131143D:         var_1D0 = Replace(var_A8.Text, "<BalanceAmt>", CStr(Format(CVar(CStr(Me.FGrid1.TextMatrix))), "0.00")), 1, -1, 0)
  loc_131144B:         Set var_B0 = Me.Txt
  loc_1311451:         Call 0.Method_CmdSendSms_Click0 (CInt(0), var_22C, CStr(var_8C), 1)
  loc_1311459:         var_22C.Text = 1
  loc_1311482:       Else
  loc_131148A:         If (var_228 = "Birth Day") Then
  loc_131148D:           GoTo loc_131149B
  loc_1311490:         End If
  loc_1311498:         If (var_228 = "Marriage Anniversary") Then
  loc_131149B:           ' Referenced from:     131148D
  loc_131149B:         End If
  loc_131149B:       End If
  loc_131149B:       ' Referenced from: 131135F
  loc_131149B:     End If
  loc_13114AC:     Set var_A4 = Me.Txt
  loc_13114B2:     Call 0.Method_CmdSendSms_Click0 (CInt(0), var_A8, CVar(var_98))
  loc_13114BA:     var_C8 = CVar(var_A8) 'Address
  loc_13114C9:     var_16C = (var_C8 + Trim(var_C8))
  loc_13114D3:     var_17C = ("0.00" + CVar(var_9C))
  loc_13114ED:     var_DC = CVar(CLng(var_9E)) 'Long
  loc_13114F5:     var_FC = CVar(CLng(2)) 'Long
  loc_131150F:     var_15C = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1311515:     var_16C = Trim(var_15C)
  loc_131151E:     var_11C = CVar(CLng(var_9E)) 'Long
  loc_1311526:     var_13C = CVar(CLng(5)) 'Long
  loc_1311535:     var_17C = Me.FGrid1.TextMatrix)
  loc_131154F:     var_19C = CVar(CLng(var_9E)) 'Long
  loc_1311557:     var_210 = CVar(CLng(6)) 'Long
  loc_1311580:     var_24C = CVar(CLng(var_9E)) 'Long
  loc_1311588:     var_26C = CVar(CLng(3)) 'Long
  loc_13115A8:     var_28C = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_13115B1:     var_29C = CVar(CLng(var_9E)) 'Long
  loc_13115B9:     var_2BC = CVar(CLng(&HA)) 'Long
  loc_13115DB:     var_370 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_13115E2:     var_2EC = CVar(CLng(var_9E)) 'Long
  loc_13115EA:     var_30C = CVar(CLng(&HB)) 'Long
  loc_131160A:     var_350 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1311621:     var_35C = vbNullString
  loc_131165E:     Proc_233_5_11B7BF4(var_88, global_80, var_8C, 0, CStr(var_16C), CStr(Trim(CVar(CStr(var_17C)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Format(CVar(CStr(Me.FGrid1.TextMatrix))), "0.00")))
  loc_13116A6:   End If
  loc_13116A9: Next var_CC 'Integer
  loc_13116C7: MsgBox("All Messages Are Send Successfully.", 0, var_15C, var_16C, var_17C)
  loc_13116E4: Me.LBLSendINFORMATION.Caption = "Message Status ................"
  loc_13116EC: Call Proc_235_40_EA9F70()
  loc_13116FD: Me.CmdSendSms.Enabled = True
  loc_1311705: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5F7C4
  'Data Table: 50D6DC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F78F: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E5F7A2: Set var_A8 = Me.TxtGrid
  loc_E5F7A8: Call 0.Method_Fgrid1_UnknownEvent_00 (0, var_AC)
  loc_E5F7B0: var_AC.Visible = False
  loc_E5F7BC: Call Proc_235_41_E84C18()
  loc_E5F7C1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_8 'E1FEF0
  'Data Table: 50D6DC
  loc_E1FEE7: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1FEEF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '1009C6C
  'Data Table: 50D6DC
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_100 As String
  loc_1009A67: Set var_88 = Me.TxtGrid
  loc_1009A6D: Call 0.Method_Fgrid1_UnknownEvent_90 (0, var_8C)
  loc_1009A75: var_8C.Visible = False
  loc_1009AC0: If ((CLng(Me.FGrid1.Row) > 0) And (CLng(Me.FGrid1.Col) = CLng(1))) Then
  loc_1009AE5:   Me.FGrid1.Row = CVar(CLng(Me.FGrid1.Row))
  loc_1009B06:   Me.FGrid1.Col = CVar(CLng(1))
  loc_1009B1E:   Me.FGrid1.CellFontName = "wingdings"
  loc_1009B38:   Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_1009B53:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1009B5B:   var_DC = CVar(CLng(1)) 'Long
  loc_1009B8E:   If (CStr(Me.FGrid1.TextMatrix)) = "¨") Then
  loc_1009BA4:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1009BAC:     var_DC = CVar(CLng(1)) 'Long
  loc_1009BB1:     var_100 = "þ"
  loc_1009BBB:     Set var_8C = Me.FGrid1
  loc_1009BC1:     LateIdCallSt
  loc_1009BD6:   Else
  loc_1009BE9:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1009BF1:     var_DC = CVar(CLng(1)) 'Long
  loc_1009C24:     If (CStr(Me.FGrid1.TextMatrix)) = "þ") Then
  loc_1009C3A:       var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1009C42:       var_DC = CVar(CLng(1)) 'Long
  loc_1009C47:       var_100 = "¨"
  loc_1009C51:       Set var_8C = Me.FGrid1
  loc_1009C57:       LateIdCallSt
  loc_1009C69:     End If
  loc_1009C69:   End If
  loc_1009C69: End If
  loc_1009C69: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(arg_C, arg_10) '121A750
  'Data Table: 50D6DC
  Dim var_98 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As String
  Dim arg_C As Integer
  Dim var_16C As Boolean
  Dim var_F8 As Variant
  Dim var_14C As String
  Dim var_180 As Long
  Dim var_184 As Long
  loc_121A284: On Error Goto loc_121A747
  loc_121A28B: Set var_88 = Me.TopCtrl1
  loc_121A291: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_121A2A6: If ( = "Browse") Then
  loc_121A2A9:   Exit Sub
  loc_121A2AA: End If
  loc_121A31E: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_121A329:   var_BC = "+{Tab}"
  loc_121A32F:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_121A339:   arg_C = 0
  loc_121A33F: Else
  loc_121A396:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_121A399:   End If
  loc_121A399: End If
  loc_121A3A3: If (CLng(arg_C) = &H20) Then
  loc_121A3C3:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_121A3F7:     var_16C = ((CLng(Me.FGrid1.Col) = CLng(1)) And (CLng(Me.FGrid1.Row) > 0))
  loc_121A40E:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121A46A:     If CBool(CVar(CLng(3)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_121A47D:       Me.FGrid1.CellFontName = "wingdings"
  loc_121A497:       Me.FGrid1.CellFontSize = CVar(CDbl(&HC))
  loc_121A4B2:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121A4CA:       var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121A501:       If (CStr(Me.FGrid1.TextMatrix)) = "þ") Then
  loc_121A517:         var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121A52F:         var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121A534:         var_14C = "¨"
  loc_121A53E:         Set var_C4 = Me.FGrid1
  loc_121A544:         LateIdCallSt
  loc_121A55F:       Else
  loc_121A572:         var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121A58A:         var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121A58F:         var_14C = "þ"
  loc_121A599:         Set var_C4 = Me.FGrid1
  loc_121A59F:         LateIdCallSt
  loc_121A5B7:       End If
  loc_121A5B7:     End If
  loc_121A5B7:   End If
  loc_121A5B7: End If
  loc_121A5BD: global_136 = arg_C
  loc_121A5E3: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_121A607: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_121A61D:   var_180 = CLng(Me.FGrid1.Col)
  loc_121A62D:   If Not (var_180 = CLng(5)) Then
  loc_121A637:     If Not (var_180 = CLng(6)) Then
  loc_121A641:       If (var_180 = CLng(3)) Then
  loc_121A644:       End If
  loc_121A644:     End If
  loc_121A657:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121A66F:     var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121A674:     var_14C = vbNullString
  loc_121A67E:     Set var_C4 = Me.FGrid1
  loc_121A684:     LateIdCallSt
  loc_121A69C:   End If
  loc_121A69C: End If
  loc_121A6A6: If (CLng(arg_C) = &HD) Then
  loc_121A6BC:   var_184 = CLng(Me.FGrid1.Col)
  loc_121A6CC:   If Not (var_184 = CLng(5)) Then
  loc_121A6D6:     If Not (var_184 = CLng(6)) Then
  loc_121A6E0:       If (var_184 = CLng(3)) Then
  loc_121A6E3:       End If
  loc_121A6E3:     End If
  loc_121A724:     Proc_6_61_1077158(Me, Me.FGrid1, Me.TxtGrid, 0, 0, 0, var_184, Me.TxtGrid)
  loc_121A739:   End If
  loc_121A73E:   global_52 = 0
  loc_121A741: End If
  loc_121A743: arg_C = 0
  loc_121A746: Exit Sub
  loc_121A747: ' Referenced from: 121A284
  loc_121A747: Proc_6_60_E63754(arg_C, global_52, var_14C, var_F8, var_98)
  loc_121A74C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'EC93A4
  'Data Table: 50D6DC
  Dim var_9C As Long
  loc_EC930C: On Error Goto loc_EC939E
  loc_EC9322: var_9C = CLng(Me.FGrid1.Col)
  loc_EC9332: If Not (var_9C = CLng(5)) Then
  loc_EC933C:   If (var_9C = CLng(6)) Then
  loc_EC933F:   End If
  loc_EC9357:   var_AC = 0
  loc_EC9380:   Proc_6_61_1077158(Me, Me.FGrid1, Me.TxtGrid, 0)
  loc_EC9395: End If
  loc_EC939A: global_52 = 0
  loc_EC939D: Exit Sub
  loc_EC939E: ' Referenced from: EC930C
  loc_EC939E: Proc_6_60_E63754(global_52, var_AC)
  loc_EC93A3: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'F755EC
  'Data Table: 50D6DC
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_F754B0: On Error Goto loc_F755E5
  loc_F754C6: var_9C = CLng(Me.FGrid1.Col)
  loc_F754D6: If Not (var_9C = CLng(5)) Then
  loc_F754E0:   If (var_9C = CLng(6)) Then
  loc_F754E3:   End If
  loc_F75521:   Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 0)
  loc_F75536: Else
  loc_F7553D:   If (var_9C = CLng(3)) Then
  loc_F75580:     Proc_6_112_1127330(Me.TxtSearch, Me.FGrid1, global_84, Index, "PartyName", CLng("16777152"))
  loc_F7559D:     If (CLng(Index) = &HD) Then
  loc_F755B2:       Me.FGrid1.Col = CVar(CLng(1))
  loc_F755BE:       Set var_88 = Me.FGrid1
  loc_F755CF:     End If
  loc_F755CF:   End If
  loc_F755CF: End If
  loc_F755D9: If (CLng(Index) <> &HD) Then
  loc_F755E1:   global_52 = &HFF
  loc_F755E4: End If
  loc_F755E4: Exit Sub
  loc_F755E5: ' Referenced from: F754B0
  loc_F755E5: Proc_6_60_E63754(global_52, FGrid1.DispID_8001, CLng("15595518"), 0)
  loc_F755EA: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_D(arg_C, arg_10) '100F0E8
  'Data Table: 50D6DC
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_DC As Long
  loc_100EED4: On Error Goto loc_100F0E0
  loc_100EEF4: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_100EEF7:   Exit Sub
  loc_100EEF8: End If
  loc_100EF09: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_100EF2B:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_100EF65:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_100EF87:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_100EF9D:         var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_100EFA6:         Set var_110 = Me.FGrid1
  loc_100EFC1:       Else
  loc_100EFD4:         Me.FGrid1.Rows = 1
  loc_100EFF1:         var_CC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_100EFF9:         Set var_110 = Me.FGrid1
  loc_100F028:         Me.FGrid1.FixedRows = 1
  loc_100F030:       End If
  loc_100F055:       For var_114 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_114 'Integer
  loc_100F05F:         var_AC = CVar(CLng(var_86)) 'Long
  loc_100F064:         var_DC = 0
  loc_100F072:         var_9C = CVar(CStr(var_86)) 'String
  loc_100F07A:         Set var_8C = Me.FGrid1
  loc_100F080:         LateIdCallSt
  loc_100F091:       Next var_114 'Integer
  loc_100F096:     End If
  loc_100F099:   Else
  loc_100F0BA:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_100F0CA:   End If
  loc_100F0CE:   Set var_8C = Me.FGrid1
  loc_100F0DF: End If
  loc_100F0DF: Exit Sub
  loc_100F0E0: ' Referenced from: 100EED4
  loc_100F0E0: Proc_6_60_E63754(FGrid1.DispID_8001)
  loc_100F0E5: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'DFE158
  'Data Table: 50D6DC
  Dim .global_8448 As Double
  loc_DFE154: Exit Sub
  loc_DFE155: .global_8448 = 
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E42D6C
  'Data Table: 50D6DC
  Dim var_8C As TextBox
  loc_E42D4B: Set var_88 = Me.TxtGrid
  loc_E42D51: Call 0.Method_Fgrid1_UnknownEvent_150 (0, var_8C)
  loc_E42D59: var_8C.Visible = False
  loc_E42D65: Call Proc_235_41_E84C18()
  loc_E42D6A: Exit Sub
End Sub

Private Sub CmdReload_Click() 'E1FDB0
  'Data Table: 50D6DC
  loc_E1FD94: Call Proc_235_38_16C7D1C()
  loc_E1FDA1: var_88 = "+{Tab}"
  loc_E1FDA7: Proc_303_0_FBACC8(var_88)
  loc_E1FDAF: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F514F0
  'Data Table: 50D6DC
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F513E0: On Error Goto loc_F514E8
  loc_F513E3: Call Proc_235_41_E84C18()
  loc_F513FB: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F51404: Set var_9C = Me.FGrid1
  loc_F51439: Set var_104 = Me.TxtGrid
  loc_F5143F: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid1.TextMatrix)))
  loc_F51447: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F51474: Set var_88 = Me.TxtGrid
  loc_F5147A: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F51482: var_9C.MaxLength = 0
  loc_F514A1: var_110 = CLng(Me.FGrid1.Col)
  loc_F514B1: If Not (var_110 = CLng(5)) Then
  loc_F514BB:   If (var_110 = CLng(6)) Then
  loc_F514BE:   End If
  loc_F514CD:   Set var_88 = Me.TxtGrid
  loc_F514D3:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, &HE)
  loc_F514DB:   var_9C.MaxLength = var_110
  loc_F514E7: End If
  loc_F514E7: Exit Sub
  loc_F514E8: ' Referenced from: F513E0
  loc_F514E8: Proc_6_60_E63754(var_BC)
  loc_F514ED: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '104EE94
  'Data Table: 50D6DC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_104EC2C: On Error Goto loc_104EE8B
  loc_104EC32: var_86 = Shift
  loc_104EC3F: If (CLng(Shift) = &H1B) Then
  loc_104EC4E:   Set var_8C = Me.TxtGrid
  loc_104EC54:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_104EC6D:   Set var_98 = Me.TxtGrid
  loc_104EC73:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_104EC7B:   var_9C.Text = var_90.Tag
  loc_104EC97:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_104ECA0:   Set var_8C = Me.FGrid1
  loc_104ECBC:   Set var_8C = Me.TxtGrid
  loc_104ECC2:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_104ECCA:   var_90.Visible = FGrid1.DispID_8001
  loc_104ECD6:   Exit Sub
  loc_104ECD7: End If
  loc_104ECEA: var_B0 = CLng(Me.FGrid1.Col)
  loc_104ECFA: If (var_B0 = CLng(5)) Then
  loc_104ED3D:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_52 = &HFF))) Then
  loc_104ED4D:     Call Proc_235_42_FD7120(0, 0, var_B6)
  loc_104ED58:     If (var_B6 = &HFF) Then
  loc_104EDA0:       Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, 0, Shift, global_52, 6)
  loc_104EDB0:     End If
  loc_104EDB0:   End If
  loc_104EDB3: Else
  loc_104EDBA:   If (var_B0 = CLng(6)) Then
  loc_104EDFD:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_52 = &HFF))) Then
  loc_104EE0D:       Call Proc_235_42_FD7120(0, 0, var_B6, 0, 6)
  loc_104EE18:       If (var_B6 = &HFF) Then
  loc_104EE60:         Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, 0, Shift, global_52, 6, 0)
  loc_104EE82:         Me.FGrid1.Col = CVar(CLng(5))
  loc_104EE8A:       End If
  loc_104EE8A:     End If
  loc_104EE8A:   End If
  loc_104EE8A: End If
  loc_104EE8A: Exit Sub
  loc_104EE8B: ' Referenced from: 104EC2C
  loc_104EE8B: Proc_6_60_E63754(0, 0, 0)
  loc_104EE90: Exit Sub
  loc_104EE91: Result var_B0 End Sub 'Integer
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E5E45C
  'Data Table: 50D6DC
  Dim var_9C As Long
  loc_E5E418: On Error Goto loc_E5E454
  loc_E5E41E: Proc_6_58_E06050(arg_10)
  loc_E5E436: var_9C = CLng(Me.FGrid1.Col)
  loc_E5E446: If Not (var_9C = CLng(5)) Then
  loc_E5E450:   If (var_9C = CLng(6)) Then
  loc_E5E453:   End If
  loc_E5E453: End If
  loc_E5E453: Exit Sub
  loc_E5E454: ' Referenced from: E5E418
  loc_E5E454: Proc_6_60_E63754(var_9C)
  loc_E5E459: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'DFDC10
  'Data Table: 50D6DC
  Dim arg_7FFF As Integer
  loc_DFDC0C: Exit Sub
  loc_DFDC0D: arg_7FFF = 
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2126C
  'Data Table: 50D6DC
  Dim arg_10 As Integer
  loc_E21248: On Error Goto loc_E21263
  loc_E21256: Call Proc_235_42_FD7120(Cancel, &HFF)
  loc_E2125F: arg_10 = Not(var_88)
  loc_E21262: Exit Sub
  loc_E21263: ' Referenced from: E21248
  loc_E21263: Proc_6_60_E63754(arg_10)
  loc_E21268: Exit Sub
End Sub

Private Sub OptMsgType_Click(Index As Integer) '11D42D0
  'Data Table: 50D6DC
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_114 As Variant
  loc_11D3E70: Call Proc_235_41_E84C18()
  loc_11D3E82: Me.LblOnDate.Caption = "On Date : "
  loc_11D3E96: Me.FrOnDate.Visible = False
  loc_11D3EAA: Me.FrOutStanding.Visible = False
  loc_11D3EBE: Me.FrHoliday.Visible = False
  loc_11D3ED3: Set var_88 = Me.OptMsgType
  loc_11D3ED9: Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D3EED: var_94 = var_8C.Caption & " Message :-"
  loc_11D3EFA: Me.LblMessage.Caption = var_94
  loc_11D3F1D: Set var_88 = Me.Txt
  loc_11D3F23: Call 0.Method_OptMsgType_Click0 (CInt(0), var_8C)
  loc_11D3F2B: var_8C.Text = vbNullString
  loc_11D3F37: Call Proc_235_40_EA9F70()
  loc_11D3F3F: var_9A = Index
  loc_11D3F4C: If (var_9A = CInt(0)) Then
  loc_11D3F55:   global_76 = "Common"
  loc_11D3F5F:   global_80 = "COMMO"
  loc_11D3F71:   Set var_88 = Me.Txt
  loc_11D3F77:   Call 0.Method_OptMsgType_Click0 (CInt(3), var_8C)
  loc_11D3F7F:   var_8C.Text = vbNullString
  loc_11D3F99:   Set var_88 = Me.Txt
  loc_11D3F9F:   Call 0.Method_OptMsgType_Click0 (CInt(3), var_8C)
  loc_11D3FA7:   var_8C.Tag = vbNullString
  loc_11D3FB6: Else
  loc_11D3FC0:   If (var_9A = CInt(1)) Then
  loc_11D3FEB:     var_8C = Me.Fields.Item("OutStandingMsg")
  loc_11D4037:     Set var_98 = Me.Txt
  loc_11D403D:     Call 0.Method_OptMsgType_Click0 (CInt(0), var_114)
  loc_11D4045:     var_114.Text = CStr(IIf((Me.RecordCount > 0), CVar(Proc_6_38_E69628(CVar(var_8C))), vbNullString))
  loc_11D4074:     Set var_88 = Me.OptMsgType
  loc_11D407A:     Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D4094:     Me.FrOutStanding.Left = var_8C.Left
  loc_11D40A8:     global_76 = "Outstanding"
  loc_11D40B2:     global_80 = "OUTST"
  loc_11D40C2:     Me.FrOutStanding.Visible = True
  loc_11D40CD:   Else
  loc_11D40D7:     If (var_9A = CInt(2)) Then
  loc_11D40E7:       Set var_88 = Me.OptMsgType
  loc_11D40ED:       Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D4107:       Me.FrHoliday.Left = var_8C.Left
  loc_11D411B:       global_76 = "Holiday"
  loc_11D4125:       global_80 = "HOLID"
  loc_11D4135:       Me.FrHoliday.Visible = True
  loc_11D4140:     Else
  loc_11D414A:       If (var_9A = CInt(3)) Then
  loc_11D415A:         Set var_98 = Me.OptMsgType
  loc_11D4160:         Call 0.Method_OptMsgType_Click0 (Index, var_114)
  loc_11D418C:         Set var_88 = Me.OptMsgType
  loc_11D4192:         Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D41B5:         Me.FrOnDate.Left = ((var_8C.Left + var_114.Width) - Me.FrOnDate.Width)
  loc_11D41D6:         Me.LblOnDate.Caption = "Birth Day On Date :       "
  loc_11D41E4:         global_76 = "Birth Day"
  loc_11D41EE:         global_80 = "BIRTH"
  loc_11D41FE:         Me.FrOnDate.Visible = True
  loc_11D4209:       Else
  loc_11D4213:         If (var_9A = CInt(4)) Then
  loc_11D4223:           Set var_98 = Me.OptMsgType
  loc_11D4229:           Call 0.Method_OptMsgType_Click0 (Index, var_114)
  loc_11D4255:           Set var_88 = Me.OptMsgType
  loc_11D425B:           Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D427E:           Me.FrOnDate.Left = ((var_8C.Left + var_114.Width) - Me.FrOnDate.Width)
  loc_11D429F:           Me.LblOnDate.Caption = "Marriage Anniversary On Date :         "
  loc_11D42AD:           global_76 = "Marriage Anniversary"
  loc_11D42B7:           global_80 = "MARRI"
  loc_11D42C7:           Me.FrOnDate.Visible = True
  loc_11D42CF:         End If
  loc_11D42CF:       End If
  loc_11D42CF:     End If
  loc_11D42CF:   End If
  loc_11D42CF: End If
  loc_11D42CF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E1DA8
  'Data Table: 50D6DC
  Dim var_92 As Integer
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_120 As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_90 As TextBox
  Dim var_104 As Variant
  Dim var_88 As Variant
  Dim Me As Recordset15
  loc_12E170A: Set var_88 = Me.Txt
  loc_12E1710: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E171E: Proc_6_74_E23240(var_8C)
  loc_12E172D: var_92 = Index
  loc_12E1738: If (var_92 = CInt(1)) Then
  loc_12E1744:   Set var_88 = Me.GridSel
  loc_12E174A:   Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12E1771:   Set var_90 = Me.GridSel
  loc_12E1777:   Call 0.Method_Txt_GotFocus0 (1, var_A8, CVar(CLng(2)))
  loc_12E177F:   var_F8 = var_A8.TextMatrix)
  loc_12E17A2:   Set var_104 = Me.GridSel
  loc_12E17A8:   Call 0.Method_Txt_GotFocus0 (1, var_108, (CStr(var_F8) <> MemVar_1F95078 & "0020"))
  loc_12E17B0:   var_118 = var_108.Row
  loc_12E17CF:   Set var_11C = Me.GridSel
  loc_12E17D5:   Call 0.Method_Txt_GotFocus0 (1, var_120, CVar(CLng(2)), CVar(CLng(var_118)))
  loc_12E17DD:   var_170 = var_120.TextMatrix)
  loc_12E1818:   If (CVar(CLng(var_8C.Row)) And (CStr(var_170) <> "HO0020")) Then
  loc_12E1834:     MsgBox("Please Select Sundry Detors A/C .......", 0, var_F8, var_118, var_170)
  loc_12E184D:     Set var_88 = Me.GridSel
  loc_12E1853:     Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12E187B:     Set var_88 = Me.GridSel
  loc_12E1881:     Call 0.Method_Txt_GotFocus0 (1, var_8C, CVar(CLng(1)))
  loc_12E1889:     var_8C.Col = GridSel.DispID_8001
  loc_12E1895:     Exit Sub
  loc_12E1896:   End If
  loc_12E18A6:   Set var_88 = Me.Txt
  loc_12E18AC:   Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C, 0)
  loc_12E18B4:   var_8C.SelStart = var_92
  loc_12E18CE:   Set var_88 = Me.Txt
  loc_12E18D4:   Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_12E18F0:   Set var_90 = Me.Txt
  loc_12E18F6:   Call 0.Method_Txt_GotFocus0 (CInt(1), var_A8)
  loc_12E18FE:   var_A8.SelLength = Len(var_8C.Text)
  loc_12E1914: Else
  loc_12E191C:   If (var_92 = CInt(2)) Then
  loc_12E1928:     Set var_88 = Me.GridSel
  loc_12E192E:     Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12E193F:     var_B8 = CVar(CLng(var_8C.Row)) 'Long
  loc_12E1955:     Set var_90 = Me.GridSel
  loc_12E195B:     Call 0.Method_Txt_GotFocus0 (1, var_A8, CVar(CLng(2)))
  loc_12E1963:     var_F8 = var_A8.TextMatrix)
  loc_12E1986:     Set var_104 = Me.GridSel
  loc_12E198C:     Call 0.Method_Txt_GotFocus0 (1, var_108, (CStr(var_F8) <> MemVar_1F95078 & "0020"))
  loc_12E1994:     var_118 = var_108.Row
  loc_12E19B3:     Set var_11C = Me.GridSel
  loc_12E19B9:     Call 0.Method_Txt_GotFocus0 (1, var_120, CVar(CLng(2)))
  loc_12E19C1:     var_170 = var_120.TextMatrix)
  loc_12E19FC:     If (CVar(CLng(var_118)) And (CStr(var_170) <> "HO0020")) Then
  loc_12E1A18:       MsgBox("Please Select Sundry Detors A/C .......", 0, var_F8, var_118, var_170)
  loc_12E1A31:       Set var_88 = Me.GridSel
  loc_12E1A37:       Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12E1A51:       var_B8 = CVar(CLng(1)) 'Long
  loc_12E1A5F:       Set var_88 = Me.GridSel
  loc_12E1A65:       Call 0.Method_Txt_GotFocus0 (1, var_8C, var_B8)
  loc_12E1A6D:       var_8C.Col = GridSel.DispID_8001
  loc_12E1A79:       Exit Sub
  loc_12E1A7A:     End If
  loc_12E1A89:     Set var_88 = Me.Txt
  loc_12E1A8F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, &HF)
  loc_12E1A97:     var_8C.MaxLength = var_B8
  loc_12E1AA6:   Else
  loc_12E1AAE:     If (var_92 = CInt(3)) Then
  loc_12E1ABE:       Set var_8C = Me.Txt
  loc_12E1AC4:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_12E1ADE:       Set var_A8 = Me.Txt
  loc_12E1AE4:       Call 0.Method_Txt_GotFocus0 (Index, var_104)
  loc_12E1B12:       var_B8 = CVar((((Me.FrHoliday.Top + var_90.Top) + var_104.Height) + CDbl(&H19))) 'Single
  loc_12E1B21:       Me.DGHoliday.Top = var_B8
  loc_12E1B42:       Set var_8C = Me.Txt
  loc_12E1B48:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_12E1B6E:       var_B8 = CVar((Me.FrHoliday.Left + var_90.Left)) 'Single
  loc_12E1B77:       Set var_A8 = Me.DGHoliday
  loc_12E1B7D:       var_A8.Left = var_B8
  loc_12E1BA0:       Me.DGHoliday.Height = CVar(CDbl(3500))
  loc_12E1BB7:       Set var_88 = Me.Txt
  loc_12E1BBD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1BC5:       var_8C.SelStart = 0
  loc_12E1BDE:       Set var_88 = Me.Txt
  loc_12E1BE4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1BEC:       var_FC = var_8C.Text
  loc_12E1BFF:       Set var_90 = Me.Txt
  loc_12E1C05:       Call 0.Method_Txt_GotFocus0 (Index, var_A8)
  loc_12E1C0D:       var_A8.SelLength = Len(var_FC)
  loc_12E1C6E:       Set var_88 = Me.Txt
  loc_12E1C74:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_FC)
  loc_12E1C7C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E1C94:       If (var_8C Or (var_FC = vbNullString)) Then
  loc_12E1C97:         Exit Sub
  loc_12E1C98:       End If
  loc_12E1CA5:       Set var_88 = Me.Txt
  loc_12E1CAB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1CB3:       var_FC = var_8C.Text
  loc_12E1CD1:       Set var_90 = Me.Txt
  loc_12E1CD7:       Call 0.Method_Txt_GotFocus0 (Index, var_A8)
  loc_12E1CF1:       var_B8 = "HCode"
  loc_12E1D3D:       If CBool((var_FC <> vbNullString) And (CVar(var_A8.Tag) <> Me.Fields.Item(var_B8).Value)) Then
  loc_12E1D46:         Me.MoveFirst
  loc_12E1D69:         Set var_88 = Me.Txt
  loc_12E1D6F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_FC, "HName ='")
  loc_12E1D77:         0 = var_8C.Text
  loc_12E1D90:         Me.Find 1 & var_FC & "'", var_B8, 
  loc_12E1DA5:       End If
  loc_12E1DA5:     End If
  loc_12E1DA5:   End If
  loc_12E1DA5: End If
  loc_12E1DA5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD1454
  'Data Table: 50D6DC
  Dim Me As Recordset15
  loc_FD12A6: If (CLng(Shift) = &H1B) Then
  loc_FD12A9:   Call Proc_235_41_E84C18()
  loc_FD12AE:   Exit Sub
  loc_FD12AF: End If
  loc_FD12BD: If (KeyCode = CInt(3)) Then
  loc_FD12D8:   Set var_A0 = Nothing
  loc_FD12E3:   Set var_9C = Nothing
  loc_FD1311:   Proc_6_69_134A630(Me.DGHoliday, Me.Txt, KeyCode, global_92, Shift, &HFF)
  loc_FD137E:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_FD13AB:     Proc_6_89_1470B00(Me.Txt, KeyCode, global_92, Shift, "HName", 0)
  loc_FD13BA:   End If
  loc_FD13BA: End If
  loc_FD13F5: If ((CBool(Me.DGHoliday.Visible) = 0) And (CBool(Me.DGCity.Visible) = 0)) Then
  loc_FD1416:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FD141F:     Proc_6_75_E5335C(Shift, arg_14, 1, var_9C)
  loc_FD1424:   End If
  loc_FD1442:   If (((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(1))) Then
  loc_FD144B:     Proc_6_76_E533C8(Shift, arg_14, var_A0)
  loc_FD1450:   End If
  loc_FD1450: End If
  loc_FD1450: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F22BB8
  'Data Table: 50D6DC
  Dim arg_10 As Integer
  Dim var_AA As Integer
  Dim var_B0 As DataGrid
  loc_F22AC0: On Error Goto loc_F22BB1
  loc_F22AC9: If (arg_10 = &HD) Then
  loc_F22ACE:   arg_10 = 0
  loc_F22AD1: End If
  loc_F22AEC: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_F22AF9: Proc_6_58_E06050(arg_10)
  loc_F22B01: var_AA = KeyAscii
  loc_F22B0C: If (var_AA = CInt(2)) Then
  loc_F22B19:   Set var_B0 = Me.Txt
  loc_F22B1F:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B4)
  loc_F22B3A:   Proc_6_42_129B55C(var_B4, arg_10, &HA)
  loc_F22B49: Else
  loc_F22B51:   If (var_AA = CInt(3)) Then
  loc_F22B70:     If (CBool(Me.DGHoliday.Visible) = &HFF) Then
  loc_F22BA1:       Proc_6_89_1470B00(Me.Txt, CInt(3), global_92, arg_10, "HName")
  loc_F22BB0:     End If
  loc_F22BB0:   End If
  loc_F22BB0: End If
  loc_F22BB0: Exit Sub
  loc_F22BB1: ' Referenced from: F22AC0
  loc_F22BB1: Proc_6_60_E63754(0, 0)
  loc_F22BB6: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E93718
  'Data Table: 50D6DC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_98 As String
  loc_E936AF: var_86 = KeyCode
  loc_E936BA: If (var_86 = CInt(0)) Then
  loc_E936D2:   Set var_8C = Me.Txt
  loc_E936D8:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_90, var_94)
  loc_E936E0:   &HA0 = var_90.Text
  loc_E936EC:   var_98 = CStr((" Left Character = " - Len(var_94)))
  loc_E936FD:   Me.LBLSendINFORMATION.Caption = var_86 & var_98
  loc_E93714: End If
  loc_E93714: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1138684
  'Data Table: 50D6DC
  Dim var_96 As Integer
  Dim var_90 As TextBox
  Dim var_9C As String
  Dim var_F4 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As TextBox
  loc_113831A: Set var_8C = Me.Txt
  loc_1138320: Call 0.Method_Txt_Validate0 (Cancel)
  loc_113832E: Proc_6_73_E23294(var_90)
  loc_1138348: If (Cancel = CInt(1)) Then
  loc_1138359:   Set var_8C = Me.Txt
  loc_113835F:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_9C)
  loc_1138367:   var_96 = var_90.Text
  loc_1138397:   If (Len(Trim(CVar(var_9C))) = 0) Then
  loc_11383AD:     Set var_8C = Me.Txt
  loc_11383B3:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_11383BB:     var_90.Text = CStr(MemVar_1F950EC)
  loc_11383CD:   Else
  loc_11383D8:     Set var_8C = Me.Txt
  loc_11383DE:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_11383F1:     var_9C = Proc_6_33_15125B8(var_90)
  loc_11383FF:     Set var_F0 = Me.Txt
  loc_1138405:     Call 0.Method_Txt_Validate0 (CInt(1), var_F4)
  loc_113840D:     var_F4.Text = var_9C
  loc_1138420:   End If
  loc_1138423: Else
  loc_113842B:   If (var_96 = CInt(3)) Then
  loc_113847C:     Set var_8C = Me.Txt
  loc_1138482:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_9C)
  loc_113848A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_11384A2:     If (var_90 Or (var_9C = vbNullString)) Then
  loc_11384B2:       Set var_8C = Me.Txt
  loc_11384B8:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11384C0:       var_90.Text = vbNullString
  loc_11384D9:       Set var_8C = Me.Txt
  loc_11384DF:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11384E7:       var_90.Tag = vbNullString
  loc_1138501:       Set var_8C = Me.Txt
  loc_1138507:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_113850F:       var_90.Text = vbNullString
  loc_113851E:     Else
  loc_1138556:       Set var_94 = Me.Txt
  loc_113855C:       Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_1138564:       var_F0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("HName")))
  loc_1138592:       var_90 = Me.Fields.Item("HCode")
  loc_11385B0:       Set var_94 = Me.Txt
  loc_11385B6:       Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_11385BE:       var_F0.Tag = Proc_6_38_E69628(CVar(var_90))
  loc_11385DD:       Set var_8C = Me.Txt
  loc_11385E3:       Call 0.Method_Txt_Validate0 (CInt(3))
  loc_11385EB:       var_90.SetFocus
  loc_11385F7:     End If
  loc_11385FA:   Else
  loc_1138602:     If (var_96 = CInt(2)) Then
  loc_1138612:       Set var_8C = Me.Txt
  loc_1138618:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1138659:       Set var_94 = Me.Txt
  loc_113865F:       Call 0.Method_Txt_Validate0 (Cancel, var_F0, CStr(Format(CVar(var_90.Text), "0.00")))
  loc_1138667:       var_F0.Text = 1
  loc_1138683:     End If
  loc_1138683:   End If
  loc_1138683: End If
  loc_1138683: Exit Sub
End Sub

Private Sub Head_UnknownEvent_9 'E1A0B4
  'Data Table: 50D6DC
  loc_E1A0A9: Me.Global.Unload Me
  loc_E1A0B1: Exit Sub
End Sub

Private Sub ChkMobile_Click() 'E006DC
  'Data Table: 50D6DC
  loc_E006D4: Call Proc_235_40_EA9F70()
  loc_E006D9: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_0(Index As Integer) 'E4F620
  'Data Table: 50D6DC
  Dim var_8C As MSHFlexGrid
  loc_E4F603: Set var_88 = Me.GridSel
  loc_E4F609: Call 0.Method_GridSel_UnknownEvent_00 (Index, var_8C)
  loc_E4F611: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4F61D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_8(Index As Integer) 'E4F348
  'Data Table: 50D6DC
  Dim var_8C As MSHFlexGrid
  loc_E4F32B: Set var_88 = Me.GridSel
  loc_E4F331: Call 0.Method_GridSel_UnknownEvent_80 (Index, var_8C)
  loc_E4F339: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4F345: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_9(Index As Integer) '122DB4C
  'Data Table: 50D6DC
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As MSHFlexGrid
  Dim var_C4 As Variant
  loc_122D63A: Set var_88 = Me.GridSel
  loc_122D640: Call 0.Method_GridSel_UnknownEvent_90 (Index)
  loc_122D661: Set var_A0 = Me.GridSel
  loc_122D667: Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4)
  loc_122D68F: If ((CLng(var_8C.Row) > 0) And (CLng(var_A4.Col) = CLng(1))) Then
  loc_122D69C:   Set var_88 = Me.GridSel
  loc_122D6A2:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D6C2:   Set var_A0 = Me.GridSel
  loc_122D6C8:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4)
  loc_122D6D0:   var_A4.Row = CVar(CLng(var_8C.Row))
  loc_122D6F5:   Set var_88 = Me.GridSel
  loc_122D6FB:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D703:   var_8C.Col = CVar(CLng(1))
  loc_122D71F:   Set var_88 = Me.GridSel
  loc_122D725:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D72D:   var_8C.CellFontName = "wingdings"
  loc_122D74B:   Set var_88 = Me.GridSel
  loc_122D751:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D759:   var_8C.CellFontSize = CVar(CDbl(&HD))
  loc_122D76B:   global_64 = vbNullString
  loc_122D775:   global_68 = vbNullString
  loc_122D77F:   global_72 = vbNullString
  loc_122D78D:   Set var_88 = Me.GridSel
  loc_122D793:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D7A4:   var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122D7BB:   Set var_A0 = Me.GridSel
  loc_122D7C1:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(1)))
  loc_122D7F1:   If (CStr(var_A4.TextMatrix)) = "¨") Then
  loc_122D7FE:     Set var_88 = Me.GridSel
  loc_122D804:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D815:     var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122D832:     Set var_A0 = Me.GridSel
  loc_122D838:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, "þ", CVar(CLng(1)))
  loc_122D840:     LateIdCallSt
  loc_122D868:     Set var_88 = Me.GridSel
  loc_122D86E:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, global_138, 1)
  loc_122D890:     For var_11C = var_C4 To CInt((CLng(var_8C.Rows) - 1)): var_A4 = var_11C 'Integer
  loc_122D8A7:       Set var_88 = Me.GridSel
  loc_122D8AD:       Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, CLng(global_138))
  loc_122D8C9:       If (var_C4 <> CLng(var_8C.Row)) Then
  loc_122D8D3:         var_C4 = CVar(CLng(global_138)) 'Long
  loc_122D8F0:         Set var_88 = Me.GridSel
  loc_122D8F6:         Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, "¨", CVar(CLng(1)))
  loc_122D8FE:         LateIdCallSt
  loc_122D90D:       End If
  loc_122D913:     Next var_11C 'Integer
  loc_122D922:     Set var_88 = Me.GridSel
  loc_122D928:     Call 0.Method_GridSel_UnknownEvent_90 (Index)
  loc_122D939:     var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122D950:     Set var_A0 = Me.GridSel
  loc_122D956:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(2)))
  loc_122D96F:     global_64 = CStr(var_A4.TextMatrix))
  loc_122D992:     Set var_88 = Me.GridSel
  loc_122D998:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D9C0:     Set var_A0 = Me.GridSel
  loc_122D9C6:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(4)))
  loc_122D9DF:     global_68 = CStr(var_A4.TextMatrix))
  loc_122DA02:     Set var_88 = Me.GridSel
  loc_122DA08:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, CVar(CLng(var_8C.Row)))
  loc_122DA30:     Set var_A0 = Me.GridSel
  loc_122DA36:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(5)))
  loc_122DA4F:     global_72 = CStr(var_A4.TextMatrix))
  loc_122DA68:     Call Proc_235_38_16C7D1C(CVar(CLng(var_8C.Row)), CVar(CLng(var_8C.Row)))
  loc_122DA70:   Else
  loc_122DA7A:     Set var_88 = Me.GridSel
  loc_122DA80:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122DA91:     var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122DAA8:     Set var_A0 = Me.GridSel
  loc_122DAAE:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(1)))
  loc_122DADE:     If (CStr(var_A4.TextMatrix)) = "þ") Then
  loc_122DAEB:       Set var_88 = Me.GridSel
  loc_122DAF1:       Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122DB1F:       Set var_A0 = Me.GridSel
  loc_122DB25:       Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, "¨", CVar(CLng(1)))
  loc_122DB2D:       LateIdCallSt
  loc_122DB43:       Call Proc_235_38_16C7D1C(var_A4, CVar(CLng(var_8C.Row)))
  loc_122DB48:     End If
  loc_122DB48:   End If
  loc_122DB48: End If
  loc_122DB48: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(arg_C, arg_10) '106B274
  'Data Table: 50D6DC
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_106B01A: If (arg_10 = &HD) Then
  loc_106B02B:   Proc_303_0_FBACC8("	")
  loc_106B033: End If
  loc_106B03D: Set var_94 = Me.GridSel
  loc_106B043: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B064: If (CLng(var_98.Rows) < 1) Then
  loc_106B067:   Exit Sub
  loc_106B068: End If
  loc_106B07C: Set var_94 = Me.GridSel
  loc_106B082: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B0A4: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_106B0B7:   Set var_94 = Me.GridSel
  loc_106B0BD:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B0C5:   var_98.CellFontName = "WINGDINGS"
  loc_106B0E3:   Set var_94 = Me.GridSel
  loc_106B0E9:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B0F1:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_106B107:   Set var_94 = Me.GridSel
  loc_106B10D:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B11E:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_106B136:   Set var_CC = Me.GridSel
  loc_106B13C:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_D0, 0)
  loc_106B144:   var_100 = var_D0.TextMatrix)
  loc_106B15A:   Set var_164 = Me.GridSel
  loc_106B160:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_168, var_100)
  loc_106B171:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_106B1BF:   Set var_17C = Me.GridSel
  loc_106B1C5:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_106B1CD:   LateIdCallSt
  loc_106B201:   var_1E2 = arg_C
  loc_106B20A:   If (var_1E2 = 1) Then
  loc_106B21E:     var_86 = CInt((UBound(global_108, 1) + 1))
  loc_106B230:     ReDim Preserve global_108(0 To CLng(var_86))
  loc_106B244:     Set var_94 = Me.GridSel
  loc_106B24A:     Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_1E2)
  loc_106B266:     global_108(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_106B271:   End If
  loc_106B271: End If
  loc_106B271: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E82558
  'Data Table: 50D6DC
  Dim var_8C As MSHFlexGrid
  loc_E824FA: Set var_88 = Me.GridSel
  loc_E82500: Call 0.Method_GridSel_UnknownEvent_E0 (Index)
  loc_E82521: If (CLng(var_8C.Col) <> 0) Then
  loc_E82524:   Exit Sub
  loc_E82525: End If
  loc_E8252F: Set var_88 = Me.GridSel
  loc_E82535: Call 0.Method_GridSel_UnknownEvent_E0 (Index, var_8C)
  loc_E8254A: global_100 = CInt(CLng(var_8C.Row))
  loc_E82557: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_10(Index As Integer) '106A1AC
  'Data Table: 50D6DC
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1069F3E: Set var_8C = Me.GridSel
  loc_1069F44: Call 0.Method_GridSel_UnknownEvent_100 (Index)
  loc_1069F6F: If ((CLng(var_90.Col) <> 0) Or (global_100 = 0)) Then
  loc_1069F72:   Exit Sub
  loc_1069F73: End If
  loc_1069F7D: Set var_8C = Me.GridSel
  loc_1069F83: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_1069F98: global_102 = CInt(CLng(var_90.RowSel))
  loc_1069FB4: For var_A4 = global_100 To global_102: var_88 = var_A4 'Integer
  loc_1069FCD:   Set var_8C = Me.GridSel
  loc_1069FD3:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, CVar(CLng(var_88)))
  loc_1069FFA:   Set var_8C = Me.GridSel
  loc_106A000:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_106A008:   var_90.Col = global_102
  loc_106A024:   Set var_8C = Me.GridSel
  loc_106A02A:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_106A032:   var_90.CellFontName = "WINGDINGS"
  loc_106A050:   Set var_8C = Me.GridSel
  loc_106A056:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_106A05E:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_106A06E:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_106A086:   Set var_8C = Me.GridSel
  loc_106A08C:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_106A0A4:   var_160 = CVar(CLng(var_88)) 'Long
  loc_106A0F2:   Set var_14C = Me.GridSel
  loc_106A0F8:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_106A100:   LateIdCallSt
  loc_106A128:   var_1B2 = Index
  loc_106A131:   If (var_1B2 = 1) Then
  loc_106A145:     var_86 = CInt((UBound(global_108, 1) + 1))
  loc_106A157:     ReDim Preserve global_108(0 To CLng(var_86))
  loc_106A16B:     Set var_8C = Me.GridSel
  loc_106A171:     Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_1B2, var_150)
  loc_106A18D:     global_108(CLng(var_86)) = CInt(CLng(global_100))
  loc_106A198:   End If
  loc_106A19B: Next var_A4 'Integer
  loc_106A1A5: global_100 = 0
  loc_106A1A8: Exit Sub
  loc_106A1A9: DOC
End Sub

Public Sub GridSel_UnknownEvent_13(Index As Integer) 'E50EE8
  'Data Table: 50D6DC
  Dim var_8C As MSHFlexGrid
  loc_E50ECB: Set var_88 = Me.GridSel
  loc_E50ED1: Call 0.Method_GridSel_UnknownEvent_130 (Index, var_8C)
  loc_E50ED9: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E50EE5: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_14(Index As Integer) 'E4F758
  'Data Table: 50D6DC
  Dim var_8C As MSHFlexGrid
  loc_E4F73B: Set var_88 = Me.GridSel
  loc_E4F741: Call 0.Method_GridSel_UnknownEvent_140 (Index, var_8C)
  loc_E4F749: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4F755: Exit Sub
End Sub

Private Sub ChkParty_Click() 'F9CF88
  'Data Table: 50D6DC
  Dim var_B8 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_F9CE0C: Set var_8C = Me.FGrid1
  loc_F9CE2E: If (CLng(Me.ChkParty.Value) = 1) Then
  loc_F9CE56:   For var_A8 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F9CE68:     var_8C.Row = CVar(CLng(var_86))
  loc_F9CE78:     var_8C.Col = CVar(CLng(1))
  loc_F9CE86:     var_8C.CellFontName = "wingdings"
  loc_F9CE96:     var_8C.CellFontSize = CVar(CDbl(&HD))
  loc_F9CE9F:     var_B8 = CVar(CLng(var_86)) 'Long
  loc_F9CEA7:     var_D8 = CVar(CLng(1)) 'Long
  loc_F9CEAC:     var_F8 = "þ"
  loc_F9CEB5:     LateIdCallSt
  loc_F9CEC0:   Next var_A8 'Integer
  loc_F9CEC8: Else
  loc_F9CEE7:   If (CLng(Me.ChkParty.Value) = 0) Then
  loc_F9CF0F:     For var_10C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_86 = var_10C 'Integer
  loc_F9CF21:       var_8C.Row = CVar(CLng(var_86))
  loc_F9CF31:       var_8C.Col = CVar(CLng(1))
  loc_F9CF3F:       var_8C.CellFontName = "wingdings"
  loc_F9CF4F:       var_8C.CellFontSize = CVar(CDbl(&HD))
  loc_F9CF58:       var_B8 = CVar(CLng(var_86)) 'Long
  loc_F9CF60:       var_D8 = CVar(CLng(1)) 'Long
  loc_F9CF65:       var_F8 = "¨"
  loc_F9CF6E:       LateIdCallSt
  loc_F9CF79:     Next var_10C 'Integer
  loc_F9CF7E:   End If
  loc_F9CF7E: End If
  loc_F9CF80: Set var_8C = Nothing 
  loc_F9CF84: Exit Sub
End Sub

Public Sub Proc_235_38_16C7D1C
  'Data Table: 50D6DC
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E4 As String
  Dim var_EC As String
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_50D71F As Connection15
  Dim var_B8 As Variant
  Dim var_11C As Variant
  Dim var_128 As String
  Dim var_134 As String
  Dim var_168 As Variant
  Dim var_10C As Variant
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_144 As Variant
  Dim var_1DC As Variant
  Dim var_1E0 As DTPicker
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_220 As String
  Dim var_250 As Variant
  Dim var_254 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_2E4 As Variant
  Dim var_324 As Variant
  Dim var_348 As DTPicker
  Dim var_358 As Variant
  Dim var_398 As Variant
  Dim var_368 As Variant
  Dim var_200 As Variant
  Dim var_274 As Variant
  Dim var_3B8 As Variant
  Dim var_3FC As Variant
  Dim var_45C As Double
  Dim var_1AC As Variant
  Dim var_C0 As Recordset15
  Dim var_158 As Variant
  loc_16C643A: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_16C6454: Me.ProgressBar1.Min = CVar(CDbl(0))
  loc_16C646B: Me.CmdReload.BackColor = &HFFFFFF
  loc_16C6476: var_8C = " max(SG.Mobile) AS Mobile,'' AS Mobile1 "
  loc_16C6494: If (Me.ChkMobile.Value = 1) Then
  loc_16C649A:   var_90 = " And IsNull(SG.Mobile,'')<>'' "
  loc_16C649D: End If
  loc_16C64A3: var_D0 = global_68
  loc_16C64AE: If (var_D0 = "Guest") Then
  loc_16C64B4:   var_94 = " MobileNo As Mobile, '' As Mobile1 "
  loc_16C64D2:   If (Me.ChkMobile.Value = 1) Then
  loc_16C64D8:     var_98 = " And IsNull(MobileNo,'')<>'' "
  loc_16C64DB:   End If
  loc_16C64DE: Else
  loc_16C64E6:   If (var_D0 = "Employee") Then
  loc_16C64EC:     var_94 = " Phone As Mobile, '' As Mobile1 "
  loc_16C650A:     If (Me.ChkMobile.Value = 1) Then
  loc_16C6510:       var_98 = " And IsNull(Phone,'')<>'' "
  loc_16C6513:     End If
  loc_16C6516:   Else
  loc_16C6519:     var_94 = " Mobile As Mobile, '' As Mobile1 "
  loc_16C6523:     Set var_BC = Me.ChkMobile
  loc_16C6537:     If (var_BC.Value = 1) Then
  loc_16C653D:       var_98 = " And IsNull(Mobile,'')<>'' "
  loc_16C6540:     End If
  loc_16C6540:   End If
  loc_16C6540: End If
  loc_16C6546: var_D4 = global_76
  loc_16C6551: If Not (var_D4 = "Holiday") Then
  loc_16C655C:   If (var_D4 = "Common") Then
  loc_16C655F:   End If
  loc_16C6565:   var_D8 = global_68
  loc_16C6570:   If (var_D8 = "Guest") Then
  loc_16C6594:     var_E0 = -1 & Proc_6_38_E69628(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C)
  loc_16C65C8:     var_FC = var_E0 & ",'" & global_76 & "' as MsgType From GuestProf Where LogSite_Code='" & MemVar_1F95078 & "' " & var_98 & " order By Name "
  loc_16C65D1:     unk_50D71F.Execute var_FC, var_BC, 
  loc_16C65DC:     Set var_C0 = var_BC
  loc_16C65FD:   Else
  loc_16C6605:     If (var_D8 = "Employee") Then
  loc_16C6629:       var_E0 = -1 & Proc_6_38_E69628(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C)
  loc_16C665D:       var_FC = var_E0 & ",'" & global_76 & "' as MsgType From Employee Where LogSite_Code='" & MemVar_1F95078 & "' " & var_98 & " order By Name "
  loc_16C6666:       unk_50D71F.Execute var_FC, var_BC, 
  loc_16C6671:       Set var_C0 = var_BC
  loc_16C6692:     Else
  loc_16C66B3:       var_E0 = -1 & Proc_6_38_E69628(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_10C)
  loc_16C66CB:       var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code Where GroupCode='"
  loc_16C6711:       var_128 = var_BC & Proc_6_38_E69628(global_68, var_EC & global_64 & "' And Nature='") & "' And CompanyType='" & Proc_6_38_E69628(global_72)
  loc_16C672F:       unk_50D71F.Execute var_128 & "' " & var_98 & " And SubGroup.ActiveYN=1 order By Subgroup.Name ", , 
  loc_16C673A:       Set var_C0 = var_BC
  loc_16C6764:     End If
  loc_16C6764:   End If
  loc_16C6767: Else
  loc_16C676F:   If (var_D4 = "Birth Day") Then
  loc_16C6778:     var_148 = global_68
  loc_16C6783:     If (var_148 = "Guest") Then
  loc_16C67A7:       var_E0 = -1 & Proc_6_38_E69628(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_3B8)
  loc_16C67BF:       var_168 = CVar(var_E0 & ",'" & global_76 & "' as MsgType From (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,") 'String
  loc_16C67D6:       Proc_6_7_F26918(var_158, Me.DTP.Value)
  loc_16C67FF:       Proc_6_7_F26918(var_1AC, Me.DTP.Value)
  loc_16C6831:       Proc_6_7_F26918(var_200, Me.DTP.Value)
  loc_16C6839:       var_210 = var_168 & var_158 & "),guestprof.Birthdate)< " & var_1AC & " then " & "dateadd(yy,datediff(yy,guestprof.Birthdate," & var_200 
  loc_16C683D:       var_220 = ")+1,guestprof.Birthdate) Else "
  loc_16C6863:       Proc_6_7_F26918(var_274, Me.DTP.Value)
  loc_16C6874:       var_2A4 = var_210 & var_220 & "dateadd(yy,datediff(yy,guestprof.Birthdate," & var_274 & "),guestprof.Birthdate) end,* From GuestProf) AA " 
  loc_16C68B1:       var_358 = Me.DTP.Value
  loc_16C68BB:       Proc_6_7_F26918(var_368, var_358)
  loc_16C68CC:       var_398 = var_2A4 & "Where LogSite_Code='" & CVar(MemVar_1F95078) & "' " & CVar(var_98) & " And BDay=" & var_368 & " order By Name " 
  loc_16C68DA:       unk_50D71F.Execute CStr(var_398), var_3BC, 
  loc_16C68E5:       Set var_C0 = var_3BC
  loc_16C6944:     Else
  loc_16C694C:       If (var_148 = "Employee") Then
  loc_16C6970:         var_E0 = -1 & Proc_6_38_E69628(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_398)
  loc_16C6988:         var_168 = CVar(var_E0 & ",'" & global_76 & "' as MsgType From (Select Bday= case when dateadd(yy,datediff(yy,Employee.Birth_date,") 'String
  loc_16C699F:         Proc_6_7_F26918(var_158, Me.DTP.Value)
  loc_16C69C8:         Proc_6_7_F26918(var_1AC, Me.DTP.Value)
  loc_16C69F0:         var_1F0 = Me.DTP.Value
  loc_16C69FA:         Proc_6_7_F26918(var_200, var_1F0)
  loc_16C6A02:         var_210 = var_168 & var_158 & "),Employee.Birth_date)< " & var_1AC & " then " & "dateadd(yy,datediff(yy,Employee.Birth_date," & var_200 
  loc_16C6A06:         var_220 = ")+1,Employee.Birth_date) Else "
  loc_16C6A14:         var_250 = var_210 & var_220 & "dateadd(yy,datediff(yy,Employee.Birth_date," 
  loc_16C6A2C:         Proc_6_7_F26918(var_274, Me.DTP.Value)
  loc_16C6A50:         var_2E4 = var_250 & var_274 & "),Employee.Birth_date) end, * From Employee) AA Where LogSite_Code='" & CVar(MemVar_1F95078) & "' " 
  loc_16C6A7B:         Proc_6_7_F26918(var_358, Me.DTP.Value)
  loc_16C6A9A:         unk_50D71F.Execute CStr(var_2E4 & CVar(var_98) & " And BDay=" & var_358 & " order By Name "), var_3BC, 
  loc_16C6AA5:         Set var_C0 = var_3BC
  loc_16C6B02:       Else
  loc_16C6B23:         var_E0 = -1 & Proc_6_38_E69628(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_41C)
  loc_16C6B3B:         var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code "
  loc_16C6B59:         Proc_6_7_F26918(var_158, Me.DTP.Value)
  loc_16C6B6A:         var_188 = CVar(var_EC & "Left Join (Select Bday= case when dateadd(yy,datediff(yy,MemberFamily.DOB,") & var_158 & "),MemberFamily.DOB)< " 
  loc_16C6B82:         Proc_6_7_F26918(var_1AC, Me.DTP.Value)
  loc_16C6BAB:         Proc_6_7_F26918(var_1F0, Me.DTP.Value)
  loc_16C6BB3:         var_200 = var_188 & var_1AC & " then dateadd(yy,datediff(yy,MemberFamily.DOB," & var_1F0 
  loc_16C6BB7:         var_144 = ")+1,MemberFamily.DOB) Else dateadd(yy,datediff(yy,MemberFamily.DOB,"
  loc_16C6BD4:         Proc_6_7_F26918(var_250, Me.DTP.Value)
  loc_16C6BE5:         var_274 = var_200 & "dateadd(yy,datediff(yy,Employee.Birth_date," & var_250 & "),MemberFamily.DOB) end,SubCode MemSubCode From MemberFamily) AA " 
  loc_16C6C18:         var_2E4 = CVar(Proc_6_38_E69628(global_68, var_274 & "On SubCode=AA.MemSubCode Where GroupCode='" & CVar(global_64) & "' And Nature='")) 'String
  loc_16C6C3B:         var_358 = var_3BC & var_2E4 & "' And CompanyType='" & CVar(Proc_6_38_E69628(global_72)) 
  loc_16C6C57:         var_398 = var_358 & "' " & CVar(var_98) & " And BDay=" 
  loc_16C6C6F:         Proc_6_7_F26918(var_3CC, Me.DTP.Value)
  loc_16C6C8E:         unk_50D71F.Execute CStr(var_398 & var_3CC & " And SubGroup.ActiveYN=1 order By Subgroup.Name "), , 
  loc_16C6C99:         Set var_C0 = var_3BC
  loc_16C6CFF:       End If
  loc_16C6CFF:     End If
  loc_16C6D02:   Else
  loc_16C6D0A:     If (var_D4 = "Marriage Anniversary") Then
  loc_16C6D1E:       If (global_68 = "Guest") Then
  loc_16C6D42:         var_E0 = -1 & Proc_6_38_E69628(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_398)
  loc_16C6D5A:         var_168 = CVar(var_E0 & ",'" & global_76 & "' as MsgType From (Select Aday=case when dateadd(yy,datediff(yy,guestprof.Anniversary,") 'String
  loc_16C6D71:         Proc_6_7_F26918(var_158, Me.DTP.Value)
  loc_16C6D9A:         Proc_6_7_F26918(var_1AC, Me.DTP.Value)
  loc_16C6DB4:         var_1DC = var_168 & var_158 & "),guestprof.Anniversary)< " & var_1AC & " then " & "dateadd(yy,datediff(yy,guestprof.Anniversary," 
  loc_16C6DC2:         var_1F0 = Me.DTP.Value
  loc_16C6DCC:         Proc_6_7_F26918(var_200, var_1F0)
  loc_16C6DD8:         var_220 = ")+1,guestprof.Anniversary) Else "
  loc_16C6DE6:         var_250 = var_1DC & var_200 & "),MemberFamily.DOB) end,SubCode MemSubCode From MemberFamily) AA " & "dateadd(yy,datediff(yy,guestprof.Anniversary," 
  loc_16C6DFE:         Proc_6_7_F26918(var_274, Me.DTP.Value)
  loc_16C6E22:         var_2E4 = var_250 & var_274 & "),guestprof.Anniversary) end,* From GuestProf) AA Where LogSite_Code='" & CVar(MemVar_1F95078) & "' " 
  loc_16C6E4D:         Proc_6_7_F26918(var_358, Me.DTP.Value)
  loc_16C6E6C:         unk_50D71F.Execute CStr(var_2E4 & CVar(var_98) & " And Aday=" & var_358 & " order By Name "), var_3BC, 
  loc_16C6E77:         Set var_C0 = var_3BC
  loc_16C6ED4:       Else
  loc_16C6EF5:         var_E0 = -1 & Proc_6_38_E69628(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_41C)
  loc_16C6F0D:         var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code "
  loc_16C6F2B:         Proc_6_7_F26918(var_158, Me.DTP.Value)
  loc_16C6F3C:         var_188 = CVar(var_EC & "Left Join (Select Aday= case when dateadd(yy,datediff(yy,MemberFamily.WedDate,") & var_158 & "),MemberFamily.WedDate)< " 
  loc_16C6F44:         Set var_18C = Me.DTP
  loc_16C6F54:         Proc_6_7_F26918(var_1AC, var_18C.Value)
  loc_16C6F7D:         Proc_6_7_F26918(var_1F0, Me.DTP.Value)
  loc_16C6F89:         var_144 = ")+1,MemberFamily.WedDate) Else dateadd(yy,datediff(yy,MemberFamily.WedDate,"
  loc_16C6F8E:         var_210 = var_188 & var_1AC & " then dateadd(yy,datediff(yy,MemberFamily.WedDate," & var_1F0 & "dateadd(yy,datediff(yy,guestprof.Anniversary," 
  loc_16C6F96:         Set var_254 = Me.DTP
  loc_16C6FA6:         Proc_6_7_F26918(var_250, var_254.Value)
  loc_16C6FC0:         var_284 = var_210 & var_250 & "),MemberFamily.WedDate) end,SubCode MemSubCode From MemberFamily) AA " & "On SubCode=AA.MemSubCode Where GroupCode='" 
  loc_16C6FF6:         var_324 = var_3BC & CVar(Proc_6_38_E69628(global_68, var_284 & CVar(global_64) & "' And Nature='")) & "' And CompanyType='" 
  loc_16C7031:         Set var_348 = Me.DTP
  loc_16C7041:         Proc_6_7_F26918(var_3CC, var_348.Value)
  loc_16C7052:         var_3FC = var_324 & CVar(Proc_6_38_E69628(global_72)) & "' " & CVar(var_98) & " And ADay=" & var_3CC & " And SubGroup.ActiveYN=1 order By Subgroup.Name " 
  loc_16C7060:         unk_50D71F.Execute CStr(var_3FC), , 
  loc_16C706B:         Set var_C0 = var_3BC
  loc_16C70D1:       End If
  loc_16C70D4:     Else
  loc_16C70DC:       If (var_D4 = "Outstanding") Then
  loc_16C70EA:         If (global_68 <> "Customer") Then
  loc_16C70F3:           global_68 = vbNullString
  loc_16C70F7:         End If
  loc_16C7148:         Set var_BC = Me.Txt
  loc_16C714E:         Call 0.Method_Proc_235_38_16C7D1C0 (CInt(1))
  loc_16C7156:         var_10C = CVar(var_18C) 'Address
  loc_16C715D:         Proc_6_7_F26918(var_158, var_10C)
  loc_16C7170:         Set var_1E0 = Me.Txt
  loc_16C7176:         Call 0.Method_Proc_235_38_16C7D1C0 (CInt(2), var_254)
  loc_16C7195:         var_45C = Val(CStr(Val(var_254.Text)))
  loc_16C71B6:         var_E4 = "SELECT max(L.SubCode) AS LedgerSubCode,max(SG.SubCode) AS PartyCode,max(SG.Name) AS PartyName, " & vbNullString & Proc_6_38_E69628(var_8C)
  loc_16C71C4:         var_EC = var_E4 & ",max(SG.Add1) AS Address1, " & "isnull(Sum(AmtDr)-Sum(AmtCr),0) AS PartyBalance, "
  loc_16C71E3:         var_FC = var_EC & "max(SG.CityCode) AS CityCode,max(SG.AreaCode) AS AreaCode,'" & global_76 & "' as MsgType " & "FROM Ledger L RIGHT JOIN SubGroup SG ON L.SubCode=SG.SubCode "
  loc_16C720C:         var_134 = var_FC & "WHERE SG.GroupCode='" & global_64 & "' And Nature='" & Proc_6_38_E69628(global_68) & "' And CompanyType='"
  loc_16C7235:         var_168 = CVar(var_134 & Proc_6_38_E69628(global_72) & "' " & Proc_6_38_E69628(var_90) & " And SG.ActiveYN=1 " & "and IsNull(L.V_Date,'')<=") 'String
  loc_16C724D:         var_19C = var_168 & var_158 & " " & "GROUP BY SG.SUBCODE " 
  loc_16C7251:         var_294 = "Having isnull(Sum(AmtDr)-Sum(AmtCr),0)>="
  loc_16C7281:         unk_50D71F.Execute CStr(var_19C & CVar(global_64) & CVar(var_45C) & " " & "ORDER BY PartyName "), var_1F0, -1
  loc_16C728C:         Set var_C0 = var_348
  loc_16C72F1:       Else
  loc_16C72F7:         var_460 = global_68
  loc_16C7302:         If (var_460 = "Guest") Then
  loc_16C7322:           var_DC = Proc_6_38_E69628(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C, -1)
  loc_16C7326:           var_E0 = var_BC & "SELECT max(L.SubCode) AS LedgerSubCode,max(SG.SubCode) AS PartyCode,max(SG.Name) AS PartyName, " & vbNullString
  loc_16C7353:           var_F8 = var_E0 & ",'" & global_76 & "' as MsgType From GuestProf Where LogSite_Code='" & MemVar_1F95078 & "' " & var_98
  loc_16C7363:           unk_50D71F.Execute var_F8 & " order By Name ", var_348, var_45C
  loc_16C736E:           Set var_C0 = var_BC
  loc_16C738F:         Else
  loc_16C7397:           If (var_460 = "Employee") Then
  loc_16C73BB:             var_E0 = -1 & Proc_6_38_E69628(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C)
  loc_16C73E8:             var_F8 = var_E0 & ",'" & global_76 & "' as MsgType From Employee Where LogSite_Code='" & MemVar_1F95078 & "' " & var_98
  loc_16C73F8:             unk_50D71F.Execute var_F8 & " order By Name ", var_BC, var_18C
  loc_16C7403:             Set var_C0 = var_BC
  loc_16C7424:           Else
  loc_16C7445:             var_E0 = -1 & Proc_6_38_E69628(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_10C)
  loc_16C745D:             var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code Where GroupCode='"
  loc_16C74A3:             var_128 = var_BC & Proc_6_38_E69628(global_68, var_EC & global_64 & "' And Nature='") & "' And CompanyType='" & Proc_6_38_E69628(global_72)
  loc_16C74C1:             unk_50D71F.Execute var_128 & "' " & var_98 & " And SubGroup.ActiveYN=1 order By Subgroup.Name ", , 
  loc_16C74CC:             Set var_C0 = var_BC
  loc_16C74F6:           End If
  loc_16C74F6:         End If
  loc_16C74F6:       End If
  loc_16C74F6:     End If
  loc_16C74F6:   End If
  loc_16C74F6: End If
  loc_16C750D: If (Me.Recordset15.State = 1) Then
  loc_16C751E:   Me.Recordset20.Clone
  loc_16C752F:   Set global_84 = var_BC
  loc_16C753A: End If
  loc_16C7566: If ((var_C0.RecordCount > 0) And (Me.Recordset15.EOF = 0)) Then
  loc_16C758A:   Me.ProgressBar1.Max = CVar(CDbl(Me.Recordset15.RecordCount))
  loc_16C759F:   Set var_BC = Me.FGrid1
  loc_16C75A5:   var_BC.Rows = 1
  loc_16C75B2:   global_138 = 1
  loc_16C75B5:   ' Referenced from: 16C7C11
  loc_16C75C7:   If Not(Me.var_BC.EOF) Then
  loc_16C75D4:     Set var_BC = Me.FGrid1
  loc_16C75E9:     Set var_468 = Me.FGrid1
  loc_16C75F6:     Me.LBLInsertInfo.Refresh
  loc_16C761B:     Proc_6_39_E7D3A0(var_158, CVar(Me.Recordset15.RecordCount), "Out of Party : ", FGrid1.DispID_10000)
  loc_16C7648:     Proc_6_39_E7D3A0(var_19C, CVar(Me.Recordset15.AbsolutePosition), vbNullString & var_158 & "        Fill Party : ")
  loc_16C7654:     var_DC = CStr(global_138 & var_19C)
  loc_16C7662:     Me.LBLInsertInfo.Caption = var_DC
  loc_16C7685:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C768D:     var_11C = CVar(CLng(0)) 'Long
  loc_16C769A:     var_10C = CVar(CStr(global_138)) 'String
  loc_16C76A1:     LateIdCallSt
  loc_16C76D9:     If (CDbl(CDbl(Me.ProgressBar1.Value)) < CDbl(Me.Recordset15.RecordCount)) Then
  loc_16C76F3:       var_A8 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_16C7702:       Me.ProgressBar1.Value = var_A8
  loc_16C7711:     End If
  loc_16C7718:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C7728:     var_A8 = CVar(CLng(1)) 'Long
  loc_16C7735:     var_A8 = "wingdings"
  loc_16C7746:     var_A8 = CVar(CDbl(&HC)) 'Single
  loc_16C775A:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C7770:     LateIdCallSt
  loc_16C778F:     var_A8 = "PartyCode"
  loc_16C77B7:     var_158 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_A8)), CVar(CLng(2)), CVar(CLng(global_138)), var_468, "þ", CVar(CLng(1)), var_A8)) 'String
  loc_16C77BE:     LateIdCallSt
  loc_16C780F:     var_158 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PartyName")), CVar(CLng(3)), CVar(CLng(global_138)), var_468, var_158, ProgressBar1.DispID_4E)) 'String
  loc_16C7816:     LateIdCallSt
  loc_16C782F:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C783F:     var_A8 = CVar(CLng(4)) 'Long
  loc_16C784C:     var_A8 = "wingdings"
  loc_16C785D:     var_A8 = CVar(CDbl(&HC)) 'Single
  loc_16C7871:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C7887:     LateIdCallSt
  loc_16C78A6:     var_A8 = "Mobile"
  loc_16C78CE:     var_158 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_A8)), CVar(CLng(5)), CVar(CLng(global_138)), var_468, "¨", CVar(CLng(4)), var_A8)) 'String
  loc_16C78D5:     LateIdCallSt
  loc_16C7926:     var_158 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Mobile1")), CVar(CLng(6)), CVar(CLng(global_138)), var_468, var_158, ProgressBar1.DispID_4E)) 'String
  loc_16C792D:     LateIdCallSt
  loc_16C797E:     var_158 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Address1")), CVar(CLng(7)), CVar(CLng(global_138)), var_468, var_158)) 'String
  loc_16C7985:     LateIdCallSt
  loc_16C79C5:     var_18C = Me.Recordset15.Fields.Item("MsgType")
  loc_16C79D6:     var_158 = CVar(Proc_6_38_E69628(CVar(var_18C), CVar(CLng(&HB)), CVar(CLng(global_138)), var_468, var_158)) 'String
  loc_16C79DD:     LateIdCallSt
  loc_16C7A06:     If ((global_76 = "Outstanding") And (global_68 <> "Guest")) Then
  loc_16C7A17:       Set var_BC = Me.Txt
  loc_16C7A1D:       Call 0.Method_Proc_235_38_16C7D1C0 (CInt(2), var_18C, var_DC, var_468, var_158)
  loc_16C7A25:       var_A8 = var_18C.Text
  loc_16C7A41:       If (CDbl(Val(var_DC)) > CDbl(0)) Then
  loc_16C7A81:         Proc_6_39_E7D3A0(var_158, CVar(Me.Recordset15.Fields.Item("PartyBalance")), CVar(CLng(&HA)), CVar(CLng(global_138)))
  loc_16C7A8A:         var_168 = CVar(CStr(var_158)) 'String
  loc_16C7A91:         LateIdCallSt
  loc_16C7AA8:       Else
  loc_16C7ABB:         var_A8 = "PartyCode"
  loc_16C7AE3:         var_DC = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_A8)), "Select isnull(Sum(AmtDr)-Sum(AmtCr),0) as PartyBalance from Ledger Where SubCode='", var_158, -1, var_1E0, var_468)
  loc_16C7AF7:         unk_50D71F.Execute var_168 & var_DC & "' ", ProgressBar1.DispID_4D, var_A8
  loc_16C7B02:         Set var_C4 = var_1E0
  loc_16C7B33:         If (Me.Recordset15.RecordCount > 0) Then
  loc_16C7B3D:           var_B8 = CVar(CLng(global_138)) 'Long
  loc_16C7B73:           Proc_6_39_E7D3A0(var_158, CVar(Me.Recordset15.Fields.Item("PartyBalance")), CVar(CLng(&HA)))
  loc_16C7B7C:           var_168 = CVar(CStr(var_158)) 'String
  loc_16C7B83:           LateIdCallSt
  loc_16C7B9A:         Else
  loc_16C7BA1:           var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C7BA9:           var_11C = CVar(CLng(&HA)) 'Long
  loc_16C7BB2:           var_10C = CVar(CStr(0)) 'String
  loc_16C7BB9:           LateIdCallSt
  loc_16C7BC4:         End If
  loc_16C7BC4:       End If
  loc_16C7BC7:     Else
  loc_16C7BCE:       var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C7BD6:       var_11C = CVar(CLng(&HA)) 'Long
  loc_16C7BDF:       var_10C = CVar(CStr(0)) 'String
  loc_16C7BE6:       LateIdCallSt
  loc_16C7BF1:     End If
  loc_16C7BF3:     Set var_468 = Nothing 
  loc_16C7C03:     global_138 = (global_138 + 1)
  loc_16C7C0C:     Me.Recordset15.MoveNext
  loc_16C7C11:     GoTo loc_16C75B5
  loc_16C7C14:   End If
  loc_16C7C14:   var_A8 = 1
  loc_16C7C27:   Me.FGrid1.FixedRows = var_A8
  loc_16C7C39:   Me.LBLInsertInfo.Refresh
  loc_16C7C41:   var_B8 = "Total Party :-> "
  loc_16C7C5E:   Proc_6_39_E7D3A0(var_158, CVar(Me.Recordset15.RecordCount), var_B8, global_138, var_468, CVar(Me.Recordset15.RecordCount), var_11C, var_A8)
  loc_16C7C78:   Me.LBLInsertInfo.Caption = CStr(var_468 & var_158)
  loc_16C7C9E:   Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_16C7CA9: Else
  loc_16C7CBC:   Me.FGrid1.Rows = 1
  loc_16C7CD9:   var_158 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_16C7CE1:   Set var_18C = Me.FGrid1
  loc_16C7D10:   Me.FGrid1.FixedRows = 1
  loc_16C7D18: End If
  loc_16C7D18: Exit Sub
End Sub

Public Sub Proc_235_39_1346C04
  'Data Table: 50D6DC
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_F4 As MSHFlexGrid
  loc_134640B: Me.FGrid1.Cols = &HC
  loc_1346410: var_98 = 0
  loc_134641C: var_B8 = CVar(CLng(0)) 'Long
  loc_1346421: var_D8 = "Sr."
  loc_134642A: LateIdCallSt
  loc_1346435: var_98 = CVar(CLng(0)) 'Long
  loc_1346440: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346447: LateIdCallSt
  loc_1346452: var_98 = CVar(CLng(0)) 'Long
  loc_134645D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346464: LateIdCallSt
  loc_134646F: var_98 = CVar(CLng(0)) 'Long
  loc_1346474: var_B8 = &H1F4
  loc_1346480: LateIdCallSt
  loc_1346488: var_98 = 0
  loc_1346494: var_B8 = CVar(CLng(1)) 'Long
  loc_1346499: var_D8 = " "
  loc_13464A2: LateIdCallSt
  loc_13464AD: var_98 = CVar(CLng(1)) 'Long
  loc_13464B8: var_B8 = CVar(CInt(1)) 'Integer
  loc_13464BF: LateIdCallSt
  loc_13464CA: var_98 = CVar(CLng(1)) 'Long
  loc_13464D5: var_B8 = CVar(CInt(1)) 'Integer
  loc_13464DC: LateIdCallSt
  loc_13464E7: var_98 = CVar(CLng(1)) 'Long
  loc_13464EC: var_B8 = &H12C
  loc_13464F8: LateIdCallSt
  loc_1346500: var_98 = 0
  loc_134650C: var_B8 = CVar(CLng(2)) 'Long
  loc_1346511: var_D8 = "Code"
  loc_134651A: LateIdCallSt
  loc_1346525: var_98 = CVar(CLng(2)) 'Long
  loc_1346530: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346537: LateIdCallSt
  loc_1346542: var_98 = CVar(CLng(2)) 'Long
  loc_134654D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346554: LateIdCallSt
  loc_134655F: var_98 = CVar(CLng(2)) 'Long
  loc_1346564: var_B8 = 0
  loc_1346570: LateIdCallSt
  loc_1346578: var_98 = 0
  loc_1346584: var_B8 = CVar(CLng(3)) 'Long
  loc_1346589: var_D8 = "Party Name"
  loc_1346592: LateIdCallSt
  loc_134659D: var_98 = CVar(CLng(3)) 'Long
  loc_13465A8: var_B8 = CVar(CInt(1)) 'Integer
  loc_13465AF: LateIdCallSt
  loc_13465BA: var_98 = CVar(CLng(3)) 'Long
  loc_13465C5: var_B8 = CVar(CInt(1)) 'Integer
  loc_13465CC: LateIdCallSt
  loc_13465D7: var_98 = CVar(CLng(3)) 'Long
  loc_13465DC: var_B8 = &HBB8
  loc_13465E8: LateIdCallSt
  loc_13465F0: var_98 = 0
  loc_13465FC: var_B8 = CVar(CLng(4)) 'Long
  loc_1346601: var_D8 = " "
  loc_134660A: LateIdCallSt
  loc_1346615: var_98 = CVar(CLng(4)) 'Long
  loc_1346620: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346627: LateIdCallSt
  loc_1346632: var_98 = CVar(CLng(4)) 'Long
  loc_134663D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346644: LateIdCallSt
  loc_134664F: var_98 = CVar(CLng(4)) 'Long
  loc_1346654: var_B8 = 0
  loc_1346660: LateIdCallSt
  loc_1346668: var_98 = 0
  loc_1346674: var_B8 = CVar(CLng(5)) 'Long
  loc_1346679: var_D8 = "Mobile"
  loc_1346682: LateIdCallSt
  loc_134668D: var_98 = CVar(CLng(5)) 'Long
  loc_1346698: var_B8 = CVar(CInt(1)) 'Integer
  loc_134669F: LateIdCallSt
  loc_13466AA: var_98 = CVar(CLng(5)) 'Long
  loc_13466B5: var_B8 = CVar(CInt(1)) 'Integer
  loc_13466BC: LateIdCallSt
  loc_13466C7: var_98 = CVar(CLng(5)) 'Long
  loc_13466CC: var_B8 = &H578
  loc_13466D8: LateIdCallSt
  loc_13466E0: var_98 = 0
  loc_13466EC: var_B8 = CVar(CLng(6)) 'Long
  loc_13466F1: var_D8 = "Mobile2"
  loc_13466FA: LateIdCallSt
  loc_1346705: var_98 = CVar(CLng(6)) 'Long
  loc_1346710: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346717: LateIdCallSt
  loc_1346722: var_98 = CVar(CLng(6)) 'Long
  loc_134672D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346734: LateIdCallSt
  loc_134673F: var_98 = CVar(CLng(6)) 'Long
  loc_1346744: var_B8 = &H578
  loc_1346750: LateIdCallSt
  loc_1346758: var_98 = 0
  loc_1346764: var_B8 = CVar(CLng(7)) 'Long
  loc_1346769: var_D8 = "Address"
  loc_1346772: LateIdCallSt
  loc_134677D: var_98 = CVar(CLng(7)) 'Long
  loc_1346788: var_B8 = CVar(CInt(1)) 'Integer
  loc_134678F: LateIdCallSt
  loc_134679A: var_98 = CVar(CLng(7)) 'Long
  loc_13467A5: var_B8 = CVar(CInt(1)) 'Integer
  loc_13467AC: LateIdCallSt
  loc_13467B7: var_98 = CVar(CLng(7)) 'Long
  loc_13467BC: var_B8 = &HA28
  loc_13467C8: LateIdCallSt
  loc_13467D0: var_98 = 0
  loc_13467DC: var_B8 = CVar(CLng(8)) 'Long
  loc_13467E1: var_D8 = "City"
  loc_13467EA: LateIdCallSt
  loc_13467F5: var_98 = CVar(CLng(8)) 'Long
  loc_1346800: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346807: LateIdCallSt
  loc_1346812: var_98 = CVar(CLng(8)) 'Long
  loc_134681D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346824: LateIdCallSt
  loc_134682F: var_98 = CVar(CLng(8)) 'Long
  loc_1346834: var_B8 = 0
  loc_1346840: LateIdCallSt
  loc_1346848: var_98 = 0
  loc_1346854: var_B8 = CVar(CLng(9)) 'Long
  loc_1346859: var_D8 = "DBW"
  loc_1346862: LateIdCallSt
  loc_134686D: var_98 = CVar(CLng(9)) 'Long
  loc_1346878: var_B8 = CVar(CInt(1)) 'Integer
  loc_134687F: LateIdCallSt
  loc_134688A: var_98 = CVar(CLng(9)) 'Long
  loc_1346895: var_B8 = CVar(CInt(1)) 'Integer
  loc_134689C: LateIdCallSt
  loc_13468A7: var_98 = CVar(CLng(9)) 'Long
  loc_13468AC: var_B8 = 0
  loc_13468B8: LateIdCallSt
  loc_13468C0: var_98 = 0
  loc_13468CC: var_B8 = CVar(CLng(&HA)) 'Long
  loc_13468D1: var_D8 = "Balance"
  loc_13468DA: LateIdCallSt
  loc_13468E5: var_98 = CVar(CLng(&HA)) 'Long
  loc_13468F0: var_B8 = CVar(CInt(7)) 'Integer
  loc_13468F7: LateIdCallSt
  loc_1346902: var_98 = CVar(CLng(&HA)) 'Long
  loc_134690D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1346914: LateIdCallSt
  loc_134691F: var_98 = CVar(CLng(&HA)) 'Long
  loc_1346924: var_B8 = &H514
  loc_1346930: LateIdCallSt
  loc_1346938: var_98 = 0
  loc_1346944: var_B8 = CVar(CLng(&HB)) 'Long
  loc_1346949: var_D8 = "MSGType"
  loc_1346952: LateIdCallSt
  loc_134695D: var_98 = CVar(CLng(&HB)) 'Long
  loc_1346968: var_B8 = CVar(CInt(1)) 'Integer
  loc_134696F: LateIdCallSt
  loc_134697A: var_98 = CVar(CLng(&HB)) 'Long
  loc_1346985: var_B8 = CVar(CInt(1)) 'Integer
  loc_134698C: LateIdCallSt
  loc_13469A8: LateIdCallSt
  loc_13469BF: Set var_EC = Me.GridSel
  loc_13469C5: Call 0.Method_Proc_235_39_1346C040 (1, var_F0, Nothing, &H3E8, CVar(CLng(&HB)), Nothing, &H3E8)
  loc_13469DF: var_F0.Cols = 6
  loc_13469E4: var_98 = 0
  loc_13469F0: var_B8 = CVar(CLng(0)) 'Long
  loc_13469F5: var_D8 = "Sr."
  loc_13469FE: LateIdCallSt
  loc_1346A09: var_98 = CVar(CLng(0)) 'Long
  loc_1346A14: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346A1B: LateIdCallSt
  loc_1346A26: var_98 = CVar(CLng(0)) 'Long
  loc_1346A31: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346A38: LateIdCallSt
  loc_1346A43: var_98 = CVar(CLng(0)) 'Long
  loc_1346A48: var_B8 = &H190
  loc_1346A54: LateIdCallSt
  loc_1346A5C: var_98 = 0
  loc_1346A68: var_B8 = CVar(CLng(1)) 'Long
  loc_1346A6D: var_D8 = " "
  loc_1346A76: LateIdCallSt
  loc_1346A81: var_98 = CVar(CLng(1)) 'Long
  loc_1346A8C: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346A93: LateIdCallSt
  loc_1346A9E: var_98 = CVar(CLng(1)) 'Long
  loc_1346AA9: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346AB0: LateIdCallSt
  loc_1346ABB: var_98 = CVar(CLng(1)) 'Long
  loc_1346AC0: var_B8 = &H12C
  loc_1346ACC: LateIdCallSt
  loc_1346AD4: var_98 = 0
  loc_1346AE0: var_B8 = CVar(CLng(2)) 'Long
  loc_1346AE5: var_D8 = "Code"
  loc_1346AEE: LateIdCallSt
  loc_1346AF9: var_98 = CVar(CLng(2)) 'Long
  loc_1346B04: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346B0B: LateIdCallSt
  loc_1346B16: var_98 = CVar(CLng(2)) 'Long
  loc_1346B21: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346B28: LateIdCallSt
  loc_1346B33: var_98 = CVar(CLng(2)) 'Long
  loc_1346B38: var_B8 = 0
  loc_1346B44: LateIdCallSt
  loc_1346B4C: var_98 = 0
  loc_1346B58: var_B8 = CVar(CLng(3)) 'Long
  loc_1346B5D: var_D8 = "Group Name"
  loc_1346B66: LateIdCallSt
  loc_1346B71: var_98 = CVar(CLng(3)) 'Long
  loc_1346B7C: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346B83: LateIdCallSt
  loc_1346B8E: var_98 = CVar(CLng(3)) 'Long
  loc_1346B99: var_B8 = CVar(CInt(1)) 'Integer
  loc_1346BA0: LateIdCallSt
  loc_1346BAB: var_98 = CVar(CLng(3)) 'Long
  loc_1346BB0: var_B8 = &H960
  loc_1346BBC: LateIdCallSt
  loc_1346BC7: var_98 = CVar(CLng(4)) 'Long
  loc_1346BCC: var_B8 = 0
  loc_1346BD8: LateIdCallSt
  loc_1346BE3: var_98 = CVar(CLng(5)) 'Long
  loc_1346BE8: var_B8 = 0
  loc_1346BF4: LateIdCallSt
  loc_1346BFE: Set var_F4 = Nothing 
  loc_1346C02: Exit Sub
End Sub

Public Sub Proc_235_40_EA9F70
  'Data Table: 50D6DC
  Dim var_CC As Variant
  loc_EA9EFB: Me.FGrid1.Rows = 1
  loc_EA9F18: var_CC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_EA9F20: Set var_D0 = Me.FGrid1
  loc_EA9F4F: Me.FGrid1.FixedRows = 1
  loc_EA9F66: Me.CmdReload.BackColor = &H80FF80
  loc_EA9F6E: Exit Sub
End Sub

Public Sub Proc_235_41_E84C18
  'Data Table: 50D6DC
  loc_E84BC4: If (CBool(Me.DGHoliday.Visible) = &HFF) Then
  loc_E84BD6:   Me.DGHoliday.Visible = False
  loc_E84BDE: End If
  loc_E84BFA: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_E84C0C:   Me.DGCity.Visible = False
  loc_E84C14: End If
  loc_E84C14: Exit Sub
  loc_E84C15: () = 
  loc_E84C16: CopyBytes 25600
End Sub

Public Sub Proc_235_42_FD7120(arg_C) 'FD7120
  'Data Table: 50D6DC
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  loc_FD6F83: var_A8 = CLng(Me.FGrid1.Col)
  loc_FD6F93: If (var_A8 = CLng(5)) Then
  loc_FD6FA3:   Set var_94 = Me.TxtGrid
  loc_FD6FA9:   Call 0.Method_Proc_235_42_FD71200 (arg_C, var_AC)
  loc_FD6FB1:   var_B0 = var_AC.Text
  loc_FD6FD4:   var_128 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD6FEC:   var_148 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FD7019:   var_168 = CVar(CStr(Format(CVar(Val(var_B0)), "0"))) 'String
  loc_FD7021:   Set var_17C = Me.FGrid1
  loc_FD7027:   LateIdCallSt
  loc_FD7051: Else
  loc_FD7058:   If (var_A8 = CLng(6)) Then
  loc_FD7068:     Set var_94 = Me.TxtGrid
  loc_FD706E:     Call 0.Method_Proc_235_42_FD71200 (arg_C, var_AC, var_B0, var_17C, var_168, 1)
  loc_FD7076:     1 = var_AC.Text
  loc_FD7099:     var_128 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD70B1:     var_148 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FD70DE:     var_168 = CVar(CStr(Format(CVar(Val(var_B0)), "0"))) 'String
  loc_FD70E6:     Set var_17C = Me.FGrid1
  loc_FD70EC:     LateIdCallSt
  loc_FD7113:   End If
  loc_FD7113: End If
  loc_FD7118: Proc_235_42_FD7120 = &HFF
End Sub

Public Sub Proc_235_43_EE95C4(arg_C) 'EE95C4
  'Data Table: 50D6DC
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE9532: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE9551: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE9574:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE9590:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE9598:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE959D:   var_8C = CStr(var_108)
  loc_EE95B1: Next var_B8 'Integer
  loc_EE95B9: var_88 = var_8C
  loc_EE95BC: Proc_235_43_EE95C4 = 
End Sub

Public Sub Proc_235_44_EF0330(arg_C) 'EF0330
  'Data Table: 50D6DC
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EF0275: Randomize(var_B0)
  loc_EF0296: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EF02A6: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EF02BF: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EF02FB:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EF0303:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EF0308:   var_8C = CStr(var_10C)
  loc_EF031C: Next var_B8 'Integer
  loc_EF0324: var_88 = var_8C
  loc_EF0327: Proc_235_44_EF0330 = 
End Sub

Public Sub Proc_235_45_12A4198(arg_C, arg_10, arg_14) '12A4198
  'Data Table: 50D6DC
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_24C As Variant
  Dim var_256 As Integer
  loc_12A3BBA: On Error Goto loc_12A4182
  loc_12A3BC0: var_8C = vbNullString
  loc_12A3BCB: CRefVarAry
  loc_12A3BD3: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_12A3BF4:   If (arg_C(var_8E) = 0) Then
  loc_12A3BF7:     GoTo loc_12A3FD3
  loc_12A3BFA:   End If
  loc_12A3C0B:   var_90 = CInt(arg_C(var_8E))
  loc_12A3C15:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A3C2D:   Set var_DC = Me.GridSel
  loc_12A3C33:   Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, 1)
  loc_12A3C5B:   If (CStr(var_E0.TextMatrix)) = "þ") Then
  loc_12A3C67:     If (CInt(arg_14) = 0) Then
  loc_12A3C6E:       var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A3C86:       Set var_DC = Me.GridSel
  loc_12A3C8C:       Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, 2, var_A8)
  loc_12A3CD1:       Set var_118 = Me.GridSel
  loc_12A3CD7:       Call 0.Method_Proc_235_45_12A41980 (arg_10, var_11C, 2, CVar(CLng(var_90)), ",")
  loc_12A3CF8:       var_1AC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A3D16:       var_1EC = (var_A8 + IIf((var_8C = vbNullString), Trim(CVar(CStr(var_E0.TextMatrix)))), var_1AC))
  loc_12A3D1B:       var_8C = CStr(var_1EC)
  loc_12A3D43:     Else
  loc_12A3D4C:       If (CInt(arg_14) = 1) Then
  loc_12A3D6B:         Set var_DC = Me.GridSel
  loc_12A3D71:         Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, 2)
  loc_12A3DBB:         Set var_118 = Me.GridSel
  loc_12A3DC1:         Call 0.Method_Proc_235_45_12A41980 (arg_10, var_11C, 2, CVar(CLng(var_90)), CVar("," & "'"))
  loc_12A3DE2:         var_1FC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A3DEB:         var_20C = (var_1FC + "'")
  loc_12A3DF7:         var_16C = ("'" + Trim(CVar(CStr(var_E0.TextMatrix)))))
  loc_12A3E00:         var_17C = (var_11C.TextMatrix) + "'")
  loc_12A3E1B:         var_24C = (CVar(CLng(var_90)) + IIf((var_8C = vbNullString), CVar(CStr(var_11C.TextMatrix))), var_20C))
  loc_12A3E20:         var_8C = CStr(var_24C)
  loc_12A3E4D:       End If
  loc_12A3E4D:     End If
  loc_12A3E6C:     Set var_DC = Me.GridSel
  loc_12A3E72:     Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_12A3EA4:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12A3EC3:       Set var_DC = Me.GridSel
  loc_12A3EC9:       Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, 2)
  loc_12A3EE2:       var_114 = Trim(CVar(CStr(var_E0.TextMatrix))))
  loc_12A3F0E:       Set var_118 = Me.GridSel
  loc_12A3F14:       Call 0.Method_Proc_235_45_12A41980 (arg_10, var_11C, 2, CVar(CLng(var_90)), ",")
  loc_12A3F1C:       var_16C = var_11C.TextMatrix)
  loc_12A3F27:       var_17C = CVar(CStr(var_16C)) 'String
  loc_12A3F35:       var_1AC = (CVar(var_94) + Trim(var_17C))
  loc_12A3F53:       var_1EC = (CVar(CLng(var_90)) + IIf((var_94 = vbNullString), var_114, CVar(CStr(var_11C.TextMatrix)))))
  loc_12A3F58:       var_94 = CStr(CVar("," & "'"))
  loc_12A3F7D:     End If
  loc_12A3F81:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A3F9F:     Set var_DC = Me.GridSel
  loc_12A3FA5:     Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, "¨", 1)
  loc_12A3FAD:     LateIdCallSt
  loc_12A3FBF:   Else
  loc_12A3FC6:     var_B8 = 0
  loc_12A3FCF:     VarIndexSt
  loc_12A3FD3:   End If
  loc_12A3FD3:   ' Referenced from: 12A3BF7
  loc_12A3FD6: Next var_98 'Integer
  loc_12A3FE3: CRefVarAry
  loc_12A3FEB: For var_254 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_254 'Integer
  loc_12A4023:   If CBool(arg_C(var_8E) <> 0) Then
  loc_12A402A:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_12A4048:     Set var_DC = Me.GridSel
  loc_12A404E:     Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, "þ", 1)
  loc_12A4056:     LateIdCallSt
  loc_12A4065:   End If
  loc_12A4068: Next var_254 'Integer
  loc_12A4075: If (var_8C = vbNullString) Then
  loc_12A4078:   var_A8 = 0
  loc_12A4081:   var_F0 = 2
  loc_12A4094:   Set var_DC = Me.GridSel
  loc_12A409A:   Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0)
  loc_12A40A2:   var_C8 = var_E0.TextMatrix)
  loc_12A40CA:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_114, var_16C, var_17C)
  loc_12A40F0:   Set var_DC = Me.GridSel
  loc_12A40F6:   Call 0.Method_Proc_235_45_12A41980 (arg_10, var_E0, var_C8)
  loc_12A4115:   Proc_235_45_12A4198 = 0
  loc_12A411B: End If
  loc_12A411E: var_88 = var_8C
  loc_12A4124: var_256 = arg_10
  loc_12A412D: If (var_256 = 1) Then
  loc_12A4136:   global_112 = var_94
  loc_12A413D: Else
  loc_12A4143:   If (var_256 = 2) Then
  loc_12A414C:     global_116 = var_94
  loc_12A4153:   Else
  loc_12A4159:     If (var_256 = 3) Then
  loc_12A4162:       global_120 = var_94
  loc_12A4169:     Else
  loc_12A416F:       If (var_256 = 4) Then
  loc_12A4178:         global_124 = var_94
  loc_12A417C:       End If
  loc_12A417C:     End If
  loc_12A417C:   End If
  loc_12A417C: End If
  loc_12A417C: Proc_235_45_12A4198 = var_256
  loc_12A4182: ' Referenced from: 12A3BBA
  loc_12A418A: Proc_6_60_E63754(0, GridSel.DispID_8001)
  loc_12A418F: Proc_235_45_12A4198 = var_F0
End Sub
