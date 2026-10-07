VERSION 5.00
Begin VB.Form InHouseGuestFolio
  Caption = "Inhouse Guest Folio"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 360
  ClientWidth = 17160
  ClientHeight = 10185
  LockControls = -1  'True
  Begin Timer Timer2
    Interval = 5000
    Left = 16545
    Top = 6525
  End
  Begin Frame Frame2
    Left = 15750
    Top = -15
    Width = 5205
    Height = 2595
    Visible = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Begin CheckBox Check1
      Left = 3540
      Top = 1215
      Width = 195
      Height = 240
      TabIndex = 46
    End
    Begin TextBox txtEXTBChrg
      Left = 2235
      Top = 1215
      Width = 1200
      Height = 285
      TabIndex = 45
    End
    Begin TextBox txtFoliono
      Left = 2430
      Top = 105
      Width = 855
      Height = 285
      Enabled = 0   'False
      TabIndex = 43
    End
    Begin TextBox txtRoomNo
      Left = 4170
      Top = 105
      Width = 630
      Height = 285
      Enabled = 0   'False
      TabIndex = 42
    End
    Begin BtnEnh CmdOK
      Left = 2400
      Top = 2070
      Width = 780
      Height = 375
      TabIndex = 44
    End
    Begin Label Label1
      Caption = "Extra Bed Charge"
      Left = 750
      Top = 1215
      Width = 1395
      Height = 360
      TabIndex = 51
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label4
      Caption = "ExtraBed/Person for Folio No."
      Index = 0
      Left = 75
      Top = 105
      Width = 2355
      Height = 255
      TabIndex = 50
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label4
      Caption = "Room No."
      Index = 1
      Left = 3345
      Top = 105
      Width = 855
      Height = 195
      TabIndex = 49
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label5
      Caption = "Label5"
      BackColor = &H8000000A&
      ForeColor = &H80&
      Left = 105
      Top = 465
      Width = 5055
      Height = 345
      Visible = 0   'False
      TabIndex = 48
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label6
      Caption = "Note : Please Tick On Check Box For Charges Posting"
      Left = 210
      Top = 1710
      Width = 4320
      Height = 210
      TabIndex = 47
    End
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFF0000&
    Left = 0
    Top = 8265
    Width = 14460
    Height = 405
    TabIndex = 25
    BorderStyle = 0 'None
    Begin Label LBLVR
      Caption = "VR"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 9990
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 40
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
      ToolTipText = "Vacant Rooms"
    End
    Begin Label LBLVC
      Caption = "VC"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 13665
      Top = 45
      Width = 720
      Height = 300
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
      ToolTipText = "Vacant Clean"
    End
    Begin Label LblMsgBox
      Caption = "*"
      ForeColor = &HFF0000&
      Left = 7530
      Top = 60
      Width = 270
      Height = 240
      TabIndex = 34
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Wingdings"
        Size = 11.25
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Caption = "Guest Bill Printed "
      Index = 1
      BackColor = &HB4FEBD&
      ForeColor = &H80000008&
      Left = 1335
      Top = 30
      Width = 1440
      Height = 330
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = " In House Guest"
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 0
      Top = 30
      Width = 1335
      Height = 330
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = "Current Guest Selected"
      Index = 2
      BackColor = &HBFBDFF&
      ForeColor = &H80000008&
      Left = 2775
      Top = 30
      Width = 1905
      Height = 330
      TabIndex = 36
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = "Message"
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 7515
      Top = 30
      Width = 990
      Height = 330
      TabIndex = 35
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblOccRoom
      Caption = "OR"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 9255
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 33
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
      ToolTipText = "Occupied Rooms"
    End
    Begin Label Label2
      Caption = "Plan/Package Guest"
      Index = 4
      BackColor = &HFFFFC0&
      ForeColor = &H80000008&
      Left = 4680
      Top = 30
      Width = 1635
      Height = 330
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = "Exp.Departure"
      Index = 5
      BackColor = &H80FFFF&
      ForeColor = &H80000008&
      Left = 6315
      Top = 30
      Width = 1200
      Height = 330
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lblblockroom
      Caption = "OO"
      BackColor = &HC0FFC0&
      ForeColor = &H808000&
      Left = 10725
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 30
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
      ToolTipText = "Out of Order"
    End
    Begin Label LBLOD
      Caption = "OD"
      BackColor = &HC0FFC0&
      ForeColor = &HC0&
      Left = 11460
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 29
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
      ToolTipText = "Occupied Dirty"
    End
    Begin Label LBLOC
      Caption = "OC"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 12195
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 28
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
      ToolTipText = "Occupied Clean"
    End
    Begin Label LblTR
      Caption = "TR"
      BackColor = &HC0FFC0&
      ForeColor = &H8080&
      Left = 8520
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 27
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
      ToolTipText = "Total Rooms"
    End
    Begin Label LBLVD
      Caption = "VD"
      BackColor = &HC0FFC0&
      ForeColor = &HC0&
      Left = 12930
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 26
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
      ToolTipText = "Vacant Dirty"
    End
  End
  Begin BtnEnh CmdNew
    Index = 8
    Left = 30
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 9
  End
  Begin CommandButton Cmd1
    Caption = "House &Keeping"
    Index = 1
    Left = 6765
    Top = 10530
    Width = 1725
    Height = 510
    Visible = 0   'False
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
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 6090
    Top = 1800
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 7
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
  Begin MSHFlexGrid FPlanGrid
    Left = 5655
    Top = 3705
    Width = 4065
    Height = 1020
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid2
    Left = 0
    Top = 945
    Width = 540
    Height = 7250
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 555
    Top = 945
    Width = 15345
    Height = 7245
    TabIndex = 0
  End
  Begin CommandButton Cmd
    Caption = "Close Dial Facility"
    Index = 12
    Left = 5925
    Top = 10185
    Width = 855
    Height = 855
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "Open Dial Facility"
    Index = 11
    Left = 5070
    Top = 10185
    Width = 855
    Height = 855
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 0
    Top = 0
  End
  Begin CommandButton Cmd
    Caption = "Register wake - up Calls"
    Index = 3
    Left = 4215
    Top = 10185
    Width = 855
    Height = 855
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin BtnEnh CmdNew
    Index = 14
    Left = 1065
    Top = 30
    Width = 1095
    Height = 885
    TabIndex = 10
  End
  Begin BtnEnh CmdNew
    Index = 2
    Left = 2160
    Top = 30
    Width = 1095
    Height = 885
    TabIndex = 11
  End
  Begin BtnEnh CmdNew
    Index = 7
    Left = 3240
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 12
  End
  Begin BtnEnh CmdNew
    Index = 6
    Left = 4260
    Top = 30
    Width = 1020
    Height = 885
    TabIndex = 13
  End
  Begin BtnEnh CmdNew
    Index = 1
    Left = 6300
    Top = 30
    Width = 975
    Height = 885
    TabIndex = 15
  End
  Begin BtnEnh CmdNew
    Index = 0
    Left = 9285
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 18
  End
  Begin BtnEnh CmdNew
    Index = 4
    Left = 10320
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 19
  End
  Begin BtnEnh CmdNew
    Index = 10
    Left = 11355
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 20
  End
  Begin BtnEnh CmdNew
    Index = 9
    Left = 12375
    Top = 30
    Width = 1005
    Height = 885
    TabIndex = 21
  End
  Begin BtnEnh CmdExit
    Left = 13380
    Top = 30
    Width = 1110
    Height = 885
    TabIndex = 22
  End
  Begin BtnEnh CmdUP
    Left = 16065
    Top = 3225
    Width = 930
    Height = 885
    TabIndex = 23
  End
  Begin BtnEnh CmdDown
    Left = 16080
    Top = 4530
    Width = 930
    Height = 885
    TabIndex = 24
  End
  Begin BtnEnh CmdNew
    Index = 3
    Left = 8295
    Top = 30
    Width = 990
    Height = 885
    TabIndex = 17
  End
  Begin BtnEnh CmdNew
    Index = 5
    Left = 7275
    Top = 30
    Width = 1020
    Height = 885
    TabIndex = 16
  End
  Begin BtnEnh CmdNew
    Index = 11
    Left = 5265
    Top = 30
    Width = 1020
    Height = 885
    TabIndex = 14
  End
  Begin BtnEnh CmdLockCard
    Left = 14490
    Top = 30
    Width = 1035
    Height = 885
    Visible = 0   'False
    TabIndex = 52
  End
  Begin Label LblWebProfile
    Caption = "Web Profile"
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 14475
    Top = 8730
    Width = 1470
    Height = 315
    TabIndex = 53
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
  Begin Label Label3
    BackColor = &H0&
    ForeColor = &H0&
    Left = -15
    Top = 8670
    Width = 14475
    Height = 495
    TabIndex = 2
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "InHouseGuestFolio"


Private Sub CmdDown_UnknownEvent_9 'F04920
  'Data Table: 52FB6C
  Dim var_BC As Variant
  loc_F0487B: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F04897:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F048A6:   Me.FGrid.Row = var_BC
  loc_F048CE:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F048DD:   Me.FGrid.ColSel = var_BC
  loc_F0490E:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F0491D: End If
  loc_F0491D: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 'FB937C
  'Data Table: 52FB6C
  Dim var_A4 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim Me As Recordset15
  Dim var_17C As Variant
  Dim unk_52FB72 As Connection15
  loc_FB9233: If (Me.Check1.Value = 1) Then
  loc_FB924D:   var_A4 = CVar(Proc_6_15_EF37AC()) 'String
  loc_FB9253:   Proc_6_7_F26918(var_B4)
  loc_FB926B:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB9273:   var_138 = CVar(CLng(&H13)) 'Long
  loc_FB92ED:   var_17C = CVar("Update RoomOcc set Extrabed=" & Me.txtEXTBChrg.Text & ",U_EntDt=") & var_B4 & ",U_AE='E' where Docid='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_FB9314:   unk_52FB72.Execute CStr(var_17C & "' and Sno='" & Me.Fields.Item("SNo").Value & "' "), var_218, -1
  loc_FB9350: End If
  loc_FB935C: Me.Frame2.Visible = False
  loc_FB9370: Me.Label5.Visible = False
  loc_FB9378: Exit Sub
End Sub

Private Sub LblWebProfile_Click() 'F30A78
  'Data Table: 52FB6C
  Dim var_90 As String
  Dim MemVar_1F950E4 As String
  Dim unk_52FB72 As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  loc_F3097C: On Error Goto loc_F30A6F
  loc_F30990: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F95078
  loc_F309A5: MemVar_1F950E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " And GUESTPROF.WebYN='Y'" & " Order by GuestProf.Name"
  loc_F309C8: unk_52FB72.Execute MemVar_1F950E4, var_B8, -1
  loc_F309F0: If (var_BC.RecordCount <= 0) Then
  loc_F309F9:   var_D0 = "Information"
  loc_F30A14:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_F30A24:   Exit Sub
  loc_F30A25: End If
  loc_F30A2B: MemVar_1F95120 = Me
  loc_F30A38: Proc_6_126_F1C850("3200,2500,2500,2400", var_BC)
  loc_F30A49: Call 0.Method_arg_54 ("Web Profile")
  loc_F30A61: Call 0.Method_arg_2B0 (1, var_D0)
  loc_F30A6B: Set var_8C = Nothing
  loc_F30A6E: Exit Sub
  loc_F30A6F: ' Referenced from: F3097C
  loc_F30A6F: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F30A74: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E5469C
  'Data Table: 52FB6C
  loc_E54680: If (CBool(Me.FPlanGrid.Visible) = &HFF) Then
  loc_E54692:   Me.FPlanGrid.Visible = False
  loc_E5469A: End If
  loc_E5469A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFC278
  'Data Table: 52FB6C
  loc_DFC274: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) 'FD7988
  'Data Table: 52FB6C
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_FD77D1: If ((CLng(arg_C) = &H53) And (arg_10 = 2)) Then
  loc_FD77F5:   For var_A4 = CInt(CLng(Me.FGrid.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_FD7834:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_FD7848:   Next var_A4 'Integer
  loc_FD7857:   var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_FD7874:   var_88 = CStr(Mid(var_88, 1, Me.FGrid.Col))
  loc_FD7889:   Me.Requery -1
  loc_FD7897:   Me.Sort = var_88
  loc_FD789C:   Call Form_Paint()
  loc_FD78A4: Else
  loc_FD78B5:   If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FD78D9:     For var_E4 = CInt(CLng(Me.FGrid.Col)) To 1 Step &HFF:   var_8A = var_E4 'Integer
  loc_FD7918:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_FD792C:     Next var_E4 'Integer
  loc_FD793B:     var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_FD796D:     Me.Requery -1
  loc_FD797B:     Me.Sort = CStr(Mid(var_88, 1, Me.FGrid.Col))
  loc_FD7980:     Call Form_Paint()
  loc_FD7985:   End If
  loc_FD7985: End If
  loc_FD7985: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F2A804
  'Data Table: 52FB6C
  Dim Me As Recordset15
  loc_F2A7B3: Call MadFaSelGridKeyPress(Me.TxtSearch, Me.FGrid, global_52, Index, Me.Fields.Item(CVar(CLng(Me.FGrid.Col))).Name, "16777152", CStr(CLng(Me.FGrid.CellBackColor)))
  loc_F2A7F6: global_84 = CStr(CLng(Me.FGrid.CellBackColor))
  loc_F2A803: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_10(Index As Integer) '10CD540
  'Data Table: 52FB6C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_138 As Long
  Dim var_16C As Variant
  loc_10CD267: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CD26C: var_C8 = &H11
  loc_10CD2A3: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10CD2AC:   If (Index = 2) Then
  loc_10CD2B3:     Set var_88 = Me.FGrid
  loc_10CD2D2:     Me.FPlanGrid.Visible = True
  loc_10CD2ED:     Me.FPlanGrid.Rows = 0
  loc_10CD308:     var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CD30D:     var_C8 = &H11
  loc_10CD339:     var_104 = CVar(CStr(Me.FGrid.TextMatrix)) & " " & "Posting") 'String
  loc_10CD341:     Set var_118 = Me.FPlanGrid
  loc_10CD368:     var_A8 = "Post Plan/Package Charges For All Rooms"
  loc_10CD372:     Set var_88 = Me.FPlanGrid
  loc_10CD383:     var_A8 = 0
  loc_10CD38C:     var_C8 = &H12C
  loc_10CD399:     Set var_88 = Me.FPlanGrid
  loc_10CD39F:     LateIdCallSt
  loc_10CD3AA:     var_A8 = 1
  loc_10CD3B3:     var_C8 = &H12C
  loc_10CD3C0:     Set var_88 = Me.FPlanGrid
  loc_10CD3C6:     LateIdCallSt
  loc_10CD3D1:     var_A8 = 0
  loc_10CD3E4:     var_98 = Me.FPlanGrid.RowHeight)
  loc_10CD411:     var_114 = CVar(CDbl((1 + CLng(Me.FPlanGrid.RowHeight))))) 'Single
  loc_10CD420:     Me.FPlanGrid.Height = var_114
  loc_10CD435:     var_A8 = 0
  loc_10CD43E:     var_C8 = &HFA0
  loc_10CD44B:     Set var_88 = Me.FPlanGrid
  loc_10CD451:     LateIdCallSt
  loc_10CD45C:     var_A8 = 0
  loc_10CD47B:     var_C8 = 1
  loc_10CD49A:     var_114 = 0
  loc_10CD4B9:     var_138 = 1
  loc_10CD4FA:     var_16C = CVar((((arg_18 + CDbl(CLng(Me.FPlanGrid.RowHeight)))) + CDbl(CLng(Me.FPlanGrid.RowHeight)))) - (CDbl((CLng(Me.FPlanGrid.RowHeight)) + CLng(Me.FPlanGrid.RowHeight)))) / CDbl(4)))) 'Single
  loc_10CD509:     Me.FPlanGrid.Top = var_16C
  loc_10CD537:     Me.FPlanGrid.Left = arg_14
  loc_10CD53F:   End If
  loc_10CD53F: End If
  loc_10CD53F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E5446C
  'Data Table: 52FB6C
  loc_E54450: If (CBool(Me.FPlanGrid.Visible) = &HFF) Then
  loc_E54462:   Me.FPlanGrid.Visible = False
  loc_E5446A: End If
  loc_E5446A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'F7E944
  'Data Table: 52FB6C
  Dim var_8A As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_8C As Integer
  Dim var_88 As Integer
  loc_F7E7EE: var_8A = 0
  loc_F7E816: For var_A4 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F7E820:   var_D4 = CVar(CLng(var_86)) 'Long
  loc_F7E829:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F7E844:   var_F4 = CVar(CLng(Me.FGrid.RowHeight))) 'Long
  loc_F7E84D:   Set var_108 = Me.FGrid2
  loc_F7E853:   LateIdCallSt
  loc_F7E868: Next var_A4 'Integer
  loc_F7E892: For var_10C = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_10C 'Integer
  loc_F7E89C:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F7E8C0:   If (CBool(Me.FGrid.RowIsVisible)) = 0) Then
  loc_F7E8C6:     var_8A = var_86
  loc_F7E8CB:     var_8C = &HFF
  loc_F7E8D1:     var_88 = var_86
  loc_F7E8D4:   End If
  loc_F7E8D7: Next var_10C 'Integer
  loc_F7E900: If (CLng(var_8A) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F7E90B:   For var_110 = 1 To var_8A: var_86 = var_110 'Integer
  loc_F7E915:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F7E91A:     var_D4 = 0
  loc_F7E927:     Set var_90 = Me.FGrid2
  loc_F7E92D:     LateIdCallSt
  loc_F7E93B:   Next var_110 'Integer
  loc_F7E940: End If
  loc_F7E940: Exit Sub
  loc_F7E941: StAryRecMove
End Sub

Private Sub Timer2_Timer() 'EB3620
  'Data Table: 52FB6C
  Dim var_88 As Label
  Dim var_90 As String
  Dim unk_52FB72 As Connection15
  Dim var_8C As Recordset15
  loc_EB3599: Set var_88 = Me.LblWebProfile
  loc_EB359F: var_88.BackColor = &HFF0000
  loc_EB35BB: var_90 = "Select Code FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F95078
  loc_EB35CB: unk_52FB72.Execute var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null And GUESTPROF.WebYN='Y'", var_B4, -1
  loc_EB35FA: If (var_88.RecordCount > 0) Then
  loc_EB360C:   Me.LblWebProfile.BackColor = &HFF00
  loc_EB3614: End If
  loc_EB3619: Set var_8C = Nothing
  loc_EB361C: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EED254
  'Data Table: 52FB6C
  Dim var_88 As Variant
  loc_EED18B: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_EED192:   Set var_88 = Me.FGrid
  loc_EED1AF:   Me.TxtSearch.Visible = False
  loc_EED1B7: End If
  loc_EED1C1: If (CLng(KeyCode) = &H2E) Then
  loc_EED1D1:   Me.TxtSearch.Text = vbNullString
  loc_EED1D9: End If
  loc_EED1EE: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EED1F5:   Set var_88 = Me.FGrid
  loc_EED212:   Me.TxtSearch.Visible = False
  loc_EED21A: End If
  loc_EED22F: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EED248:   Me.FGrid.CellBackColor = CVar(CLng(global_84))
  loc_EED250: End If
  loc_EED250: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'F02508
  'Data Table: 52FB6C
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_F024BD: Call MadFaSelGridKeyPress(Me.TxtSearch, Me.FGrid, global_52, KeyAscii, Me.Fields.Item(CVar(CLng(Me.FGrid.Col))).Name, global_84, global_84)
  loc_F024DB: KeyAscii = 0
  loc_F024F9: global_84 = CStr(CLng(Me.FGrid.CellBackColor))
  loc_F02506: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E58AA0
  'Data Table: 52FB6C
  Dim var_88 As TextBox
  loc_E58A6D: Me.TxtSearch.Text = vbNullString
  loc_E58A79: Set var_88 = Me.FGrid
  loc_E58A96: Me.TxtSearch.Visible = False
  loc_E58A9E: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E58A2C
  'Data Table: 52FB6C
  Dim var_88 As TextBox
  loc_E589F9: Me.TxtSearch.Text = vbNullString
  loc_E58A05: Set var_88 = Me.FGrid
  loc_E58A22: Me.TxtSearch.Visible = False
  loc_E58A2A: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '1070A44
  'Data Table: 52FB6C
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_10C As String
  loc_10707CC: On Error Goto loc_1070A3C
  loc_10707E2: var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10707FA: var_E0 = CVar(CLng(Me.FGrid2.ColSel)) 'Long
  loc_1070814: var_108 = CStr(Me.FGrid2.TextMatrix))
  loc_1070831: If (var_108 = "*") Then
  loc_107083B:   var_10C = "SELECT GuestMessage.DocId as SearchCode, GuestProf.Name, GuestMessage.RoomNo, GuestMessage.Caller, GuestMessage.Telephone, GuestMessage.Message,'' as Status FROM RoomOcc LEFT JOIN (GuestMessage INNER JOIN GuestProf ON GuestMessage.GuestProf = GuestProf.Code) ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL And (GuestMessage.LOGSITE_CODE='" & MemVar_1F95078
  loc_10708A8:   MemVar_1F95120 = Me
  loc_10708B5:   Proc_6_126_F1C850("2500,800,2000,1600,10000,500", CVar(CLng(&H13)) & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid2.Row)))
  loc_10708D0:   Call 0.Method_arg_2B0 (1, var_D0, "2500,800,2000,1600,10000,500" & "' or GuestMessage.LOGSITE_CODE='HO') AND IsNull(GuestMessage.Solved,'')<>'Y' AND RoomOcc.DocId='")
  loc_10708D8: Else
  loc_10708E0:   If (var_108 = ") 'String Then
  loc_10708EA:     var_10C = "SELECT GuestMessage.DocId as SearchCode, GuestProf.Name, GuestMessage.RoomNo, GuestMessage.Caller, GuestMessage.Telephone, GuestMessage.Message,'' as Status FROM RoomOcc LEFT JOIN (GuestMessage INNER JOIN GuestProf ON GuestMessage.GuestProf = GuestProf.Code) ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL And (GuestMessage.LOGSITE_CODE='" & MemVar_1F95078
  loc_1070957:     MemVar_1F95120 = Me
  loc_1070964:     Proc_6_126_F1C850("2500,800,2000,1600,10000,500", CVar(CLng(&H13)) & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid2.Row)))
  loc_107097F:     Call 0.Method_arg_2B0 (1, var_D0, "2500,800,2000,1600,10000,500" & "' or GuestMessage.LOGSITE_CODE='HO') AND RoomOcc.DocId='")
  loc_1070987:   Else
  loc_107098F:     If (var_108 = "*) 'String Then
  loc_1070999:       var_10C = "SELECT GuestMessage.DocId as SearchCode, GuestProf.Name, GuestMessage.RoomNo, GuestMessage.Caller, GuestMessage.Telephone, GuestMessage.Message,'' as Status FROM RoomOcc LEFT JOIN (GuestMessage INNER JOIN GuestProf ON GuestMessage.GuestProf = GuestProf.Code) ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL And (GuestMessage.LOGSITE_CODE='" & MemVar_1F95078
  loc_10709BE:       var_E0 = CVar(CLng(&H13)) 'Long
  loc_1070A06:       MemVar_1F95120 = Me
  loc_1070A13:       Proc_6_126_F1C850("2500,800,2000,1600,10000,500", var_E0 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid2.Row)))
  loc_1070A2E:       Call 0.Method_arg_2B0 (1, var_D0, "2500,800,2000,1600,10000,500" & "' or GuestMessage.LOGSITE_CODE='HO') AND RoomOcc.DocId='")
  loc_1070A33:     End If
  loc_1070A33:   End If
  loc_1070A33: End If
  loc_1070A38: Set var_88 = Nothing
  loc_1070A3B: Exit Sub
  loc_1070A3C: ' Referenced from: 10707CC
  loc_1070A3C: Proc_6_60_E63754(var_E0)
  loc_1070A41: Exit Sub
End Sub

Private Sub Timer1_Timer() 'FCED98
  'Data Table: 52FB6C
  Dim var_8C As Variant
  Dim var_F8 As Single
  Dim var_FC As Single
  Dim Me As Variant
  loc_FCEBFC: If (Me.Label3.Caption <> vbNullString) Then
  loc_FCEC1D:   var_FC = Rnd(var_F0)
  loc_FCEC4A:   Me.Label3.BackColor = RGB(CInt((CDbl(255) * Rnd(var_B0))), CInt((CDbl(255) * Rnd(var_D0))), CInt((CDbl(255) * var_FC)))
  loc_FCEC6A:   Me.Label3.ForeColor = &HFFFFFF
  loc_FCEC75: Else
  loc_FCEC7E:   Set var_8C = Me.Label3
  loc_FCEC84:   var_8C.BackColor = &HE0E0E0
  loc_FCEC8C: End If
  loc_FCEC9A: Me.Clone
  loc_FCECA5: Set var_88 = var_8C
  loc_FCECB6: Me.Recordset15.Requery -1
  loc_FCECD5: var_F8 = Me.RecordCount
  loc_FCECDE: If (Me.Recordset15.RecordCount <> var_F8) Then
  loc_FCECF0:   Me.FGrid.Redraw = False
  loc_FCED07:   Me.FGrid2.Redraw = False
  loc_FCED1A:   Me.Requery -1
  loc_FCED28:   CVarUnk
  loc_FCED2D:   VerifyVarObj
  loc_FCED33:   Set var_8C = Me.FGrid
  loc_FCED39:   LateIdStAd
  loc_FCED52:   Me.Requery -1
  loc_FCED5F:   Set var_8C = Me.FGrid
  loc_FCED65:   var_8C.Redraw = True
  loc_FCED6D:   Call Proc_52_37_1396BF8(var_8C, global_52, -1, var_8C)
  loc_FCED80:   Me.FGrid2.Redraw = True
  loc_FCED88:   Call Proc_52_33_1501288(var_FC, var_F8)
  loc_FCED8D: End If
  loc_FCED92: Set var_88 = Nothing
  loc_FCED95: Exit Sub
End Sub

Private Sub Form_Load() '110F778
  'Data Table: 52FB6C
  Dim var_AC As Variant
  Dim var_B4 As String
  Dim var_A8 As Variant
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_104 As String
  Dim unk_52FB72 As Connection15
  Dim var_110 As Variant
  Dim var_114 As Field20
  loc_110F453: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_110F46B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_110F486: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_110F49E: Set var_AC = Me
  loc_110F4A4: Proc_6_23_DFC5B8(var_AC, 0)
  loc_110F4B7: If (global_60 <> vbNullString) Then
  loc_110F4CB:   var_88 = " And RoomOcc.RoomNo='" & global_60 & "'"
  loc_110F4D1: End If
  loc_110F4D1: Call Proc_52_35_1434FB4(0)
  loc_110F4F7: If CBool(Trim(global_56) <> vbNullString) Then
  loc_110F518:   var_D4 = CVar(var_88 & " And LEFT(GuestProf.NAme," & CStr(Len(global_56)) & ") Like '") 'String
  loc_110F529:   var_C4 = Trim(global_56)
  loc_110F53F:   var_88 = CStr(var_D4 & var_C4 & "'")
  loc_110F556: End If
  loc_110F56A: var_B4 = "SELECT Distinct RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, convert(Varchar(6),GuestFolio.FolioNo) FolioNo,convert(Varchar(10),GuestFolio.vDate ,103) as ChkInDate ,convert(Varchar(10),RoomOcc.DepDate ,103) as DepDate , GuestProf.Name AS GuestName, GuestStat.Name GuestStatus, IsNull(SubGroup.Name,'') + Case When IsNull(TA.Name,'')='' Or IsNull(SubGroup.Name,'')='' Then '' Else '/ ' End + IsNull(TA.Name,'') AS CompanyName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,Guestprof.Code as GuestCode,GuestFolio.mFoliono,RoomOcc.PlanCode,PlanMast.Plan_package,PlanMast.name as PlanName,GuestFolio.DocId,GuestFolio.MFolioNoDocid,Case RoomOcc.RateCode When '1' Then E.Rate1 When '2' Then E.Rate2 When '3' Then E.Rate3 When '4' Then E.Rate4 When '5' Then E.Rate5 End RateLabel,RoomOcc.ChkInTime,RoomOcc.DepTime,Cast(RoomOcc.Adult As Varchar)+'/'+Cast(RoomOcc.Children As Varchar) Pax" & " FROM ((((((RoomOcc iNNER JOIN RoomMast ON RoomMast.Code = RoomOcc.RoomNo) Left join PlanMast on RoomOcc.PlanCode=PlanMast.Code) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN GuestStat ON GuestStat.Code = GuestProf.GuestStatus) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN SubGroup TA ON GuestFolio.TravelAgent = TA.SubCode INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code INNER JOIN Enviro E On GuestFolio.LogSite_Code=E.LogSite_Code WHERE (ROOMOCC.LOGSITE_CODE='"
  loc_110F586: var_104 = var_88 & " And LEFT(GuestProf.NAme," & MemVar_1F95078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F95078 & "') AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' "
  loc_110F59D: unk_52FB72.Execute var_104 & var_88 & " ORDER BY RoomMast.Code", var_C4, -1
  loc_110F5D6: CVarUnk
  loc_110F5DB: VerifyVarObj
  loc_110F5E7: LateIdStAd
  loc_110F609: var_B4 = "SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where (ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078
  loc_110F619: unk_52FB72.Execute var_B4 & "' or ROOMOCC.LOGSITE_CODE='HO') AND RoomOcc.ChkoutDate is NULL AND Solved<>'Y' order by RoomOcc.RoomNO", var_C4, -1
  loc_110F62A: Set global_64 = Me.FGrid
  loc_110F64B: Set var_AC = Me.Label2
  loc_110F651: Call 0.Method_Form_Load0 (3, var_110, "wingdings", var_AC)
  loc_110F659: var_110.FontName = var_AC
  loc_110F672: Set var_AC = Me.Label2
  loc_110F678: Call 0.Method_Form_Load0 (3, var_110, CDbl(&HF))
  loc_110F680: var_110.FontSize = var_AC
  loc_110F698: Set var_AC = Me.Label2
  loc_110F69E: Call 0.Method_Form_Load0 (3, var_110)
  loc_110F6A6: var_110.Caption = "*"
  loc_110F6BD: Set var_AC = Me.Label2
  loc_110F6C3: Call 0.Method_Form_Load0 (3, var_110)
  loc_110F6CB: var_110.FontBold = True
  loc_110F6DD: var_A8 = 0
  loc_110F70F: var_100 = "Select count(*) from menuhelp where Flag<>'V' And username='" & MemVar_1F950C8 & "' and CompCode='" & MemVar_1F95128 & "' AND MODULE_NAME='LockManage'"
  loc_110F718: unk_52FB72.Execute var_100, var_C4, -1
  loc_110F720: var_AC = var_AC.Fields
  loc_110F728: var_A8 = var_110.Item(var_110)
  loc_110F730: var_114 = var_114.Value
  loc_110F75B: If CBool(var_D4 <> 0) Then
  loc_110F766:   Set var_AC = Me.CmdLockCard
  loc_110F76C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_110F774: End If
  loc_110F774: Exit Sub
End Sub

Private Sub Form_Activate() 'FA3564
  'Data Table: 52FB6C
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_D4 As String
  Dim unk_52FB72 As Connection15
  Dim var_88 As Recordset15
  loc_FA3417: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_FA342D:   Me.FGrid.Row = 1
  loc_FA3439:   Set var_90 = Me.FGrid
  loc_FA343F:   var_A0 = var_90.Cols
  loc_FA344E:   var_B0 = CVar((CLng(var_A0) - 1)) 'Long
  loc_FA345D:   Me.FGrid.ColSel = 1
  loc_FA346C: End If
  loc_FA3495: var_D4 = "SELECT CancelGuestBill FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128 & "' And UserName='"
  loc_FA34AC: unk_52FB72.Execute var_D4 & MemVar_1F950C8 & "'", var_A0, -1
  loc_FA34B7: Set var_88 = var_90
  loc_FA34E3: If (var_88.RecordCount > 0) Then
  loc_FA34FD:   var_C4 = var_88.Fields.Item("CancelGuestBill")
  loc_FA350E:   var_8C = Proc_6_38_E69628(CVar(var_C4))
  loc_FA3517: End If
  loc_FA351F: If (var_8C <> "Yes") Then
  loc_FA3530:   Set var_90 = Me.CmdNew
  loc_FA3536:   Call 0.Method_Form_Activate0 (&HA, var_C4)
  loc_FA353E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_FA354A: End If
  loc_FA354F: Set var_88 = Nothing
  loc_FA355B: Call 0.Method_arg_9C (CInt(2))
  loc_FA3560: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8E8A4
  'Data Table: 52FB6C
  loc_E8E83D: If ((CLng(KeyCode) = &H74) And (Shift = 2)) Then
  loc_E8E840:   GoTo loc_E8E876
  loc_E8E843: End If
  loc_E8E854: If ((CLng(KeyCode) = &H43) And (Shift = 4)) Then
  loc_E8E85C:   Call CmdNew_UnknownEvent_9()
  loc_E8E864: Else
  loc_E8E86E:   If (CLng(KeyCode) = &H74) Then
  loc_E8E871:     Call Proc_52_33_1501288(8)
  loc_E8E876:   End If
  loc_E8E876:   ' Referenced from: E8E840
  loc_E8E876: End If
  loc_E8E88B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E8E89B:   Me.Global.Unload Me
  loc_E8E8A3: End If
  loc_E8E8A3: Exit Sub
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E5470C
  'Data Table: 52FB6C
  loc_E546F0: If (CBool(Me.FPlanGrid.Visible) = &HFF) Then
  loc_E54702:   Me.FPlanGrid.Visible = False
  loc_E5470A: End If
  loc_E5470A: Exit Sub
End Sub

Private Sub Form_Paint() '120B57C
  'Data Table: 52FB6C
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_52FB72 As Connection15
  Dim var_90 As Recordset15
  Dim var_C4 As Variant
  Dim var_DC As String
  Dim var_FC As Variant
  Dim var_12C As Variant
  Dim var_16C As String
  Dim var_1AC As Variant
  Dim var_88 As Recordset15
  Dim var_1F4 As Fields15
  Dim var_19C As Variant
  Dim var_8A As Integer
  loc_120B10B: Me.FGrid.Redraw = False
  loc_120B11E: Me.Requery -1
  loc_120B12C: CVarUnk
  loc_120B131: VerifyVarObj
  loc_120B13D: LateIdStAd
  loc_120B14B: Call Proc_52_35_1434FB4(Me.FGrid)
  loc_120B162: Me.FGrid.Col = CVar(CLng(1))
  loc_120B16A: Call Proc_52_33_1501288(global_52)
  loc_120B176: Set var_B4 = Me.Label3
  loc_120B17C: var_B4.Caption = vbNullString
  loc_120B1A8: unk_52FB72.Execute "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C4, -1
  loc_120B1B3: Set var_90 = var_B4
  loc_120B1C3: ' Referenced from: 120B493
  loc_120B1D2: If Not(var_90.EOF) Then
  loc_120B1F4:   var_B4 = var_90.Fields
  loc_120B20D:   var_C8 = Proc_6_38_E69628(CVar(var_B4.Item("Code")), "Select max(RoomCAt.Name) as RoomType,Sum(NoofRooms) as  Rooms from ViewBooking as Booking INNER join RoomCat on Booking.RoomCAt=RoomCAt.Code  where bOOKING.ROOMCAT='", var_1F0)
  loc_120B211:   var_CC = -1 & var_C8
  loc_120B21F:   var_DC = "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "' AND Cancel='N' and BOOKING.LOGSITE_CODE='" & MemVar_1F95078
  loc_120B234:   Proc_6_7_F26918(var_EC, MemVar_1F950EC, CVar(var_DC & "' AND "))
  loc_120B254:   Proc_6_7_F26918(var_14C, MemVar_1F950EC)
  loc_120B260:   var_16C = " < Depdate and Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_120B274:   Proc_6_7_F26918(var_19C, MemVar_1F950EC)
  loc_120B27C:   var_1AC = var_1F4 & var_EC & " >=Arrdate and " & var_14C & var_16C & var_19C 
  loc_120B293:   unk_52FB72.Execute CStr(var_1AC & " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Group By Booking.RoomCAt"), var_B4, 
  loc_120B29E:   Set var_88 = var_1F4
  loc_120B2E4:   If (var_88.RecordCount > 0) Then
  loc_120B302:     If (Me.Timer1.Enabled = 0) Then
  loc_120B311:       Me.Timer1.Enabled = True
  loc_120B319:       ' Referenced from: 120B485
  loc_120B319:     End If
  loc_120B32A:     If (var_88.EOF = 0) Then
  loc_120B35C:       var_EC = "; "
  loc_120B384:       var_12C = (CVar(Me.Label3.Caption) + IIf((Me.Label3.Caption = vbNullString), vbNullString, var_EC))
  loc_120B3E5:       Proc_6_39_E7D3A0(var_1AC, CVar(var_88.Fields.Item("Rooms")))
  loc_120B3FF:       Me.Label3.Caption = CStr(var_90.Fields & var_EC & " >=Arrdate and " & var_90.Fields.Item("Name").Value & "=" & var_1AC)
  loc_120B461:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("Rooms")))
  loc_120B469:       var_FC = (CVar(var_8A) + var_EC)
  loc_120B46E:       var_8A = CInt(IIf((Me.Label3.Caption = vbNullString), vbNullString, var_EC))
  loc_120B480:       var_88.MoveNext
  loc_120B485:       GoTo loc_120B319
  loc_120B488:     End If
  loc_120B488:     GoTo loc_120B48B
  loc_120B48B:     ' Referenced from: 120B488
  loc_120B48B:   End If
  loc_120B48E:   var_90.MoveNext
  loc_120B493:   GoTo loc_120B1C3
  loc_120B496: End If
  loc_120B4B6: If (Me.Label3.Caption <> vbNullString) Then
  loc_120B4F2:   Me.Label3.Caption = "ToDay 's Arrivals (" & CStr(var_8A) & ") > " & Me.Label3.Caption
  loc_120B526:   If (Me.Timer1.Enabled = 0) Then
  loc_120B535:     Me.Timer1.Enabled = True
  loc_120B53D:   End If
  loc_120B53D: End If
  loc_120B542: Set var_88 = Nothing
  loc_120B54A: Set var_90 = Nothing
  loc_120B55B: Me.FGrid.Redraw = True
  loc_120B56E: Me.Requery -1
  loc_120B573: Call Proc_52_37_1396BF8(var_8A)
  loc_120B578: Exit Sub
End Sub

Private Sub FPlanGrid_UnknownEvent_9 'E2B5B8
  'Data Table: 52FB6C
  loc_E2B5AB: Call Proc_52_36_136B68C(CInt(CLng(Me.FPlanGrid.Row)))
  loc_E2B5B6: Exit Sub
End Sub

Public Sub CmdNew_UnknownEvent_9(arg_C, arg_10) '1C8EF34
  'Data Table: 52FB6C
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_116 As Integer
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim unk_52FB72 As Connection15
  Dim var_94 As Recordset15
  Dim var_138 As Variant
  Dim var_1E0 As Variant
  Dim var_1BC As Variant
  Dim var_1D0 As Variant
  Dim var_1FC As String
  Dim var_200 As Variant
  Dim var_204 As Variant
  Dim var_18C As Variant
  Dim var_22C As Variant
  Dim var_208 As String
  Dim var_21C As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_8C As Recordset15
  Dim MemVar_1F950EC As Double
  Dim var_1AC As Variant
  Dim var_320 As Variant
  Dim var_380 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_450 As Variant
  Dim var_460 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_158 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2C0 As Variant
  Dim var_218 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_340 As Variant
  Dim var_350 As String
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_430 As String
  Dim var_4E0 As Variant
  Dim unk_52FBE4 As Connection15
  Dim var_90 As Long
  Dim var_240 As Variant
  Dim var_504 As String
  Dim var_508 As String
  Dim var_50C As String
  Dim var_510 As String
  Dim var_514 As String
  Dim var_518 As String
  Dim var_260 As Variant
  Dim var_C0 As Recordset15
  Dim var_A4 As Recordset15
  Dim var_2A0 As Variant
  Dim var_2D0 As Variant
  Dim var_AC As Double
  Dim var_B8 As Recordset15
  Dim var_548 As Double
  Dim var_524 As Fields15
  Dim Me As Recordset15
  Dim var_D8 As Integer
  loc_1C88880: If ((((CLng(Me.FGrid.Rows) = 1) And (arg_C <> 5)) And (arg_C <> &HD)) And (arg_C <> &HF)) Then
  loc_1C88883:   Exit Sub
  loc_1C88884: End If
  loc_1C88887: var_116 = arg_C
  loc_1C88890: If (var_116 = 0) Then
  loc_1C888A6:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C888AE:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C888C8:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C888CE:   var_18C = Trim(var_17C)
  loc_1C888F0:   If (var_18C = vbNullString) Then
  loc_1C88906:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8890E:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C88941:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C88951:     unk_52FB72.Execute var_1B4 & "'", var_17C, -1
  loc_1C8898E:     If (var_1BC.RecordCount > 0) Then
  loc_1C889B2:       MsgBox("Operation is Not Allowed", &H10, "Bill Already Generated", var_17C, var_18C)
  loc_1C889C2:       Exit Sub
  loc_1C889C3:     End If
  loc_1C889C6:   Else
  loc_1C889D9:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C889E1:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C88A14:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C88A24:     unk_52FB72.Execute var_1B4 & "'", var_17C, -1
  loc_1C88A61:     If (var_1BC.RecordCount > 0) Then
  loc_1C88A6A:       var_138 = "Bill Already Generated"
  loc_1C88A85:       MsgBox("Operation is Not Allowed", &H10, var_138, var_17C, var_18C)
  loc_1C88A95:       Exit Sub
  loc_1C88A96:     End If
  loc_1C88A96:   End If
  loc_1C88AA0:   Set var_88 = New fdPaymentCharge
  loc_1C88AB2:   var_88.OpenMode = 1
  loc_1C88AC0:   Set var_104 = var_1BC(0)
  loc_1C88ACF:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C88AD7:   var_148 = CVar(CLng(1)) 'Long
  loc_1C88AF1:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C88AF8:   LateMemCallSt
  loc_1C88B0E:   var_128 = 0
  loc_1C88B14:   var_148 = True
  loc_1C88B1B:   Call var_88.Txt_Validate
  loc_1C88B25:   var_128 = 1
  loc_1C88B31:   var_88.Show var_128, var_138
  loc_1C88B36:   GoTo loc_1C8EF19
  loc_1C88B39: End If
  loc_1C88B3F: If (var_116 = 1) Then
  loc_1C88B4C:   Set var_88 = New fdDisplayFolio
  loc_1C88B56:   Set var_104 = var_128(var_148)
  loc_1C88B8E:   var_88.FDispDocid = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_1C88BA6:   Set var_104 = CVar(CLng(fdDisplayFolio.FGrid.Row))(CVar(CLng(&H13)))
  loc_1C88BB5:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C88BE9:   var_88.mFolioNo = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C88C0B:   var_88.OpenMode = 1
  loc_1C88C19:   Set var_104 = CVar(CLng(&HF))(0)
  loc_1C88C28:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C88C30:   var_148 = CVar(CLng(1)) 'Long
  loc_1C88C4A:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C88C51:   LateMemCallSt
  loc_1C88C67:   var_19C = 10
  loc_1C88C80:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C88C88:   var_148 = CVar(CLng(3)) 'Long
  loc_1C88CA2:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C88CA9:   LateMemCallSt
  loc_1C88CBF:   var_128 = 0
  loc_1C88CC5:   var_148 = True
  loc_1C88CCC:   Call var_88.Txt_Validate
  loc_1C88CE2:   var_88.Show 1, var_138
  loc_1C88CE7:   GoTo loc_1C8EF19
  loc_1C88CEA: End If
  loc_1C88CF0: If (var_116 = 2) Then
  loc_1C88CFD:   Set var_88 = New FrmHouGuestMsg
  loc_1C88D0F:   var_88.OpenMode = 1
  loc_1C88D1D:   Set var_104 = var_148(2)
  loc_1C88D2C:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C88D34:   var_148 = CVar(CLng(1)) 'Long
  loc_1C88D4E:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C88D55:   LateMemCallSt
  loc_1C88D6B:   var_128 = 2
  loc_1C88D71:   var_148 = True
  loc_1C88D78:   Call var_88.Txt_Validate
  loc_1C88D8E:   var_88.Show 1, var_138
  loc_1C88D93:   GoTo loc_1C8EF19
  loc_1C88D96: End If
  loc_1C88D9C: If (var_116 = 3) Then
  loc_1C88DA9:   Set var_88 = New fdPrintScreen
  loc_1C88DBB:   var_88.OpenMode = 1
  loc_1C88DC9:   Set var_104 = var_148(0)
  loc_1C88DD8:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C88DE0:   var_148 = CVar(CLng(1)) 'Long
  loc_1C88DFA:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C88E01:   LateMemCallSt
  loc_1C88E17:   var_19C = 10
  loc_1C88E30:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C88E38:   var_148 = CVar(CLng(3)) 'Long
  loc_1C88E52:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C88E59:   LateMemCallSt
  loc_1C88E6F:   var_128 = 0
  loc_1C88E75:   var_148 = True
  loc_1C88E7C:   Call var_88.Txt_Validate
  loc_1C88E92:   var_88.Show 1, var_138
  loc_1C88E97:   GoTo loc_1C8EF19
  loc_1C88E9A: End If
  loc_1C88EA0: If (var_116 = 4) Then
  loc_1C88EB6:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C88EBE:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C88EDE:   var_18C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C88F00:   If CBool(var_18C <> vbNullString) Then
  loc_1C88F28:     For var_1E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_1E4 'Integer
  loc_1C88F32:       var_128 = CVar(CLng(var_96)) 'Long
  loc_1C88F3A:       var_148 = CVar(CLng(&H14)) 'Long
  loc_1C88F54:       var_1B0 = CStr(Me.FGrid.TextMatrix))
  loc_1C88F61:       var_16C = Me.FGrid.Row
  loc_1C88F6A:       var_19C = CVar(CLng(var_16C)) 'Long
  loc_1C88F7B:       Set var_1BC = Me.FGrid
  loc_1C88F81:       var_17C = var_1BC.TextMatrix)
  loc_1C88FAA:       If (CVar(CLng(&H14)) = CStr(var_17C)) Then
  loc_1C88FB1:         var_128 = CVar(CLng(var_96)) 'Long
  loc_1C88FB9:         var_148 = CVar(CLng(1)) 'Long
  loc_1C88FDA:         var_1D0 = 0
  loc_1C88FFE:         var_1B4 = "Select Count(*) From ROOMOCC RC where LogSite_Code='" & MemVar_1F95078 & "' and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RoomType='RO' And Pending='Y' AND NCKOT<> 'Y' AND VOIDYN='N' AND (DELFLAG='N' Or Delflag is NULL or Delflag='') and RoomNo='"
  loc_1C89019:         unk_52FB72.Execute var_1B4 & CStr(Me.FGrid.TextMatrix)) & "')", var_16C, -1
  loc_1C89021:         var_15C = var_15C.Fields
  loc_1C89029:         var_1D0 = var_1BC.Item(var_1BC)
  loc_1C89031:         var_200 = var_200.Value
  loc_1C89062:         If (var_17C > 0) Then
  loc_1C89069:           var_128 = CVar(CLng(var_96)) 'Long
  loc_1C89071:           var_148 = CVar(CLng(1)) 'Long
  loc_1C890A8:           MsgBox(CVar("There is Some Room Service Bills are pending for Room No. " & CStr(Me.FGrid.TextMatrix))), &H40, var_17C, var_18C, var_1AC)
  loc_1C890C0:           Exit Sub
  loc_1C890C1:         End If
  loc_1C890C1:       End If
  loc_1C890C4:     Next var_1E4 'Integer
  loc_1C890DC:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C890E4:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C890F3:     var_16C = Me.FGrid.TextMatrix)
  loc_1C89105:     var_1D0 = 0
  loc_1C89136:     unk_52FB72.Execute "Select Count(*) from PayCharge where FolioNoDocid='" & CStr(var_16C) & "' and Bill_No<>'' and Bill_No is Not NULL", var_17C, -1
  loc_1C8913E:     var_1BC = var_1BC.Fields
  loc_1C89146:     var_1D0 = var_200.Item(var_200)
  loc_1C8914E:     var_204 = var_204.Value
  loc_1C8917F:     If (var_18C > 0) Then
  loc_1C89182:       Exit Sub
  loc_1C89183:     End If
  loc_1C891B2:     If (MsgBox("Do you want to split bill ?", &H24, var_16C, var_17C, var_18C) = 6) Then
  loc_1C891CC:       New FdGrpdetCheckOut.SplitBill = True
  loc_1C891D3:     Else
  loc_1C891DD:       Set var_88 = New FdGrpdetCheckOut
  loc_1C891EB:       var_88.SplitBill = False
  loc_1C891EF:     End If
  loc_1C891FB:     var_88.OpenMode = 1
  loc_1C89203:     Set var_104 = var_16C(var_18C)
  loc_1C89212:     var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C8921A:     var_148 = CVar(CLng(&HF)) 'Long
  loc_1C89234:     var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C8923A:     var_18C = Trim(var_17C)
  loc_1C89246:     var_88.mFolioNo = var_18C
  loc_1C8926C:     var_88.Show 1, var_138
  loc_1C89274:   Else
  loc_1C89287:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8928F:     var_148 = CVar(CLng(1)) 'Long
  loc_1C8929E:     var_16C = Me.FGrid.TextMatrix)
  loc_1C892B0:     var_1D0 = 0
  loc_1C892E6:     var_1FC = "Select COunt(*) From KOT Where LogSite_Code='" & MemVar_1F95078 & "' and RoomType='RO' And RoomNO='" & CStr(var_16C) & "' and Pending='Y' AND NCKOT<>'Y' AND VOIDYN='N' AND (DELFLAG='N' or Delflag is NULL or DelFlag ='')"
  loc_1C892EF:     unk_52FB72.Execute var_1FC, var_17C, -1
  loc_1C892F7:     var_1BC = var_1BC.Fields
  loc_1C892FF:     var_1D0 = var_200.Item(var_200)
  loc_1C89307:     var_204 = var_204.Value
  loc_1C8933C:     If (var_18C > 0) Then
  loc_1C89358:       MsgBox("KOT is Pending for this Room, First Clear Bill", &H40, var_16C, var_17C, var_18C)
  loc_1C89368:       Exit Sub
  loc_1C89369:     End If
  loc_1C8937C:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89384:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89393:     var_16C = Me.FGrid.TextMatrix)
  loc_1C893A5:     var_1D0 = 0
  loc_1C893D6:     unk_52FB72.Execute "Select Count(*) from PayCharge where FolioNoDocid='" & CStr(var_16C) & "' and IsNull(Bill_No,'')<>''", var_17C, -1
  loc_1C893DE:     var_1BC = var_1BC.Fields
  loc_1C893E6:     var_1D0 = var_200.Item(var_200)
  loc_1C893EE:     var_204 = var_204.Value
  loc_1C8941F:     If (var_18C > 0) Then
  loc_1C89422:       Exit Sub
  loc_1C89423:     End If
  loc_1C8942D:     Set var_88 = New FdCheckOut
  loc_1C8943F:     var_88.OpenMode = 1
  loc_1C89447:     Set var_104 = var_16C(var_18C)
  loc_1C89456:     var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C8945E:     var_148 = CVar(CLng(1)) 'Long
  loc_1C8947B:     var_1E0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C89490:     var_88.Txt.TEXT = 0
  loc_1C894A7:     var_128 = 0
  loc_1C894AD:     var_148 = True
  loc_1C894B4:     Call var_88.Txt_Validate
  loc_1C894CA:     var_88.Show 1, var_138
  loc_1C894CF:   End If
  loc_1C894CF:   GoTo loc_1C8EF19
  loc_1C894D2: End If
  loc_1C894D8: If (var_116 = 5) Then
  loc_1C894E5:   Set var_88 = New fdDisplayFolioSumm
  loc_1C894F7:   var_88.OpenMode = 1
  loc_1C89505:   Set var_104 = var_148(0)
  loc_1C89514:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C8951C:   var_148 = CVar(CLng(1)) 'Long
  loc_1C89536:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C8953D:   LateMemCallSt
  loc_1C89553:   var_19C = 10
  loc_1C8956C:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89574:   var_148 = CVar(CLng(3)) 'Long
  loc_1C8958E:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C89595:   LateMemCallSt
  loc_1C895AB:   var_128 = 0
  loc_1C895B1:   var_148 = True
  loc_1C895B8:   Call var_88.Txt_Validate
  loc_1C895CE:   var_88.Show 1, var_138
  loc_1C895D3:   GoTo loc_1C8EF19
  loc_1C895D6: End If
  loc_1C895DC: If (var_116 = 6) Then
  loc_1C895F2:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C895FA:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C89619:   Set var_1BC = Me.FGrid
  loc_1C89628:   var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C89630:   var_1E0 = CVar(CLng(&H13)) 'Long
  loc_1C89639:   Set var_200 = Me.FGrid
  loc_1C89651:   var_22C = 0
  loc_1C89672:   var_1B4 = "Select Count(*) from PayCharge where Folionodocid is not null and folionodocid<>'' and (FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C89694:   unk_52FB72.Execute var_1B4 & "' Or Folionodocid='" & CStr(var_200.TextMatrix)) & "') and Bill_No<>'' and Bill_No is Not NULL", var_1AC, -1
  loc_1C8969C:   var_204 = var_204.Fields
  loc_1C896A4:   var_22C = var_21C.Item(var_21C)
  loc_1C896AC:   var_230 = var_230.Value
  loc_1C896EB:   If (var_240 > 0) Then
  loc_1C896EE:     Exit Sub
  loc_1C896EF:   End If
  loc_1C896F9:   Set var_88 = New fdRoomChange
  loc_1C8970B:   var_88.OpenMode = 1
  loc_1C89719:   Set var_104 = var_240(0)
  loc_1C89728:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C89730:   var_148 = CVar(CLng(1)) 'Long
  loc_1C8974A:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C89751:   LateMemCallSt
  loc_1C89767:   var_128 = 0
  loc_1C8976D:   var_148 = True
  loc_1C89774:   Call var_88.Txt_Validate
  loc_1C8978A:   var_88.Show 1, var_138
  loc_1C8978F:   GoTo loc_1C8EF19
  loc_1C89792: End If
  loc_1C89798: If (var_116 = 7) Then
  loc_1C897A5:   Set var_88 = New fdAmendEntry
  loc_1C897B7:   var_88.OpenMode = 1
  loc_1C897C5:   Set var_104 = var_148(0)
  loc_1C897D4:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C897DC:   var_148 = CVar(CLng(1)) 'Long
  loc_1C897F6:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C897FD:   LateMemCallSt
  loc_1C89813:   var_128 = 0
  loc_1C89819:   var_148 = True
  loc_1C89820:   Call var_88.Txt_Validate
  loc_1C89836:   var_88.Show 1, var_138
  loc_1C8983B:   GoTo loc_1C8EF19
  loc_1C8983E: End If
  loc_1C89844: If (var_116 = 8) Then
  loc_1C8985A:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89862:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C8987C:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C89882:   var_18C = Trim(var_17C)
  loc_1C898A4:   If (var_18C = vbNullString) Then
  loc_1C898BA:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C898C2:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C898F5:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C89905:     unk_52FB72.Execute var_1B4 & "'", var_17C, -1
  loc_1C89942:     If (var_1BC.RecordCount > 0) Then
  loc_1C89966:       MsgBox("Operation is Not Allowed", &H10, "Bill Already Generated", var_17C, var_18C)
  loc_1C89976:       Exit Sub
  loc_1C89977:     End If
  loc_1C8997A:   Else
  loc_1C8998D:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89995:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C899C8:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C899D8:     unk_52FB72.Execute var_1B4 & "'", var_17C, -1
  loc_1C89A15:     If (var_1BC.RecordCount > 0) Then
  loc_1C89A1E:       var_138 = "Bill Already Generated"
  loc_1C89A39:       MsgBox("Operation is Not Allowed", &H10, var_138, var_17C, var_18C)
  loc_1C89A49:       Exit Sub
  loc_1C89A4A:     End If
  loc_1C89A4A:   End If
  loc_1C89A54:   Set var_88 = New GuestProfile
  loc_1C89AA1:   var_88.GuestFolio = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C89ABB:   Set var_104 = CVar(CLng(Me.FGrid.Row))(CVar(CLng(&H13)))
  loc_1C89ACA:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C89AD2:   var_148 = CVar(CLng(&HE)) 'Long
  loc_1C89AEC:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C89AF2:   var_18C = Trim(var_17C)
  loc_1C89AFE:   var_88.GuestCode = var_18C
  loc_1C89B1D:   var_88.OpenType = "ChangeGuestProfile"
  loc_1C89B2D:   var_88.OpenMode = 1
  loc_1C89B41:   var_88.Show 1, var_138
  loc_1C89B46:   GoTo loc_1C8EF19
  loc_1C89B49: End If
  loc_1C89B4F: If (var_116 = 9) Then
  loc_1C89B65:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89B6D:   var_148 = CVar(CLng(&HF)) 'Long
  loc_1C89BA5:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1C89BBB:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89BC3:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89BD2:     var_16C = Me.FGrid.TextMatrix)
  loc_1C89BF9:     var_1B4 = "Select  bill_no,AmtDr from paycharge where LogSite_Code='" & MemVar_1F95078 & "' and (ContraDocId is NULL or contradocid='') and  (modeset<>'S' or ModeSet is NULL) and folionoDocid='"
  loc_1C89C14:     unk_52FB72.Execute var_1B4 & CStr(var_16C) & "'", var_17C, -1
  loc_1C89C1F:     Set var_94 = var_1BC
  loc_1C89C55:     If (var_94.RecordCount > 0) Then
  loc_1C89C61:       var_94.Filter = "Bill_No='' and AmtDr<>0"
  loc_1C89C66:     End If
  loc_1C89C6C:     var_1C0 = var_94.RecordCount
  loc_1C89C7A:     If (var_1C0 > 0) Then
  loc_1C89C96:       MsgBox("First Print Bill ", &H40, var_16C, var_17C, var_18C)
  loc_1C89CA6:       Exit Sub
  loc_1C89CA7:     End If
  loc_1C89CBA:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89CC2:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89CCB:     Set var_15C = Me.FGrid
  loc_1C89CD1:     var_16C = var_15C.TextMatrix)
  loc_1C89D0D:     var_1FC = "Select distinct bill_no from paycharge where LogSite_Code='" & MemVar_1F95078 & "' and folionoDocid='" & CStr(var_16C) & "' and IsNull(Bill_NO,'')<>''"
  loc_1C89D16:     unk_52FB72.Execute var_1FC, var_17C, -1
  loc_1C89D1E:     var_1BC = var_1BC.RecordCount
  loc_1C89D4B:     If (var_1C0 <= 0) Then
  loc_1C89D67:       MsgBox("First Print Bill ", &H40, var_16C, var_17C, var_18C)
  loc_1C89D77:       Exit Sub
  loc_1C89D78:     End If
  loc_1C89D7B:   Else
  loc_1C89D7B:     var_128 = 3
  loc_1C89D8E:     Me.FGrid.Col = var_128
  loc_1C89DA2:     Set var_104 = Me.Label2
  loc_1C89DA8:     Call 0.Method_CmdNew_UnknownEvent_90 (1, var_15C, var_1C0, var_1C0, var_16C, var_148, var_128)
  loc_1C89DB0:     var_1BC = var_15C.BackColor
  loc_1C89DD8:     If (var_1C0 <> CLng(Me.FGrid.CellBackColor)) Then
  loc_1C89DF4:       MsgBox("First Print Bill ", &H40, var_16C, var_17C, var_18C)
  loc_1C89E04:       Exit Sub
  loc_1C89E05:     End If
  loc_1C89E05:   End If
  loc_1C89E0F:   Set var_88 = New fdPaymentCharge
  loc_1C89E21:   var_88.OpenMode = 1
  loc_1C89E2E:   var_88.ParentForm = "Check Out"
  loc_1C89E3C:   Set var_104 = var_16C(0)
  loc_1C89E4B:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C89E53:   var_148 = CVar(CLng(1)) 'Long
  loc_1C89E6D:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C89E74:   LateMemCallSt
  loc_1C89E8A:   var_128 = 1
  loc_1C89E91:   var_148 = False
  loc_1C89E99:   Call var_88.Txt_Validate
  loc_1C89EA5:   var_88.Caption = "Bill Settlement"
  loc_1C89EBA:   Form.Show 1, var_138
  loc_1C89ED2:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89EDA:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89EFB:   var_1D0 = 0
  loc_1C89F1F:   var_1B4 = "Select Count(*) from PayCharge where LogSite_Code='" & MemVar_1F95078 & "' and VType Not In ('ARRES','ADRES') and FolionoDocid='"
  loc_1C89F3A:   unk_52FB72.Execute var_1B4 & CStr(Me.FGrid.TextMatrix)) & "'", var_17C, -1
  loc_1C89F42:   var_1BC = var_1BC.Fields
  loc_1C89F4A:   var_1D0 = var_200.Item(var_200)
  loc_1C89F52:   var_204 = var_204.Value
  loc_1C89F87:   If (var_18C > 0) Then
  loc_1C89F9D:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89FA5:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89FB4:     var_16C = Me.FGrid.TextMatrix)
  loc_1C89FD4:     var_1B0 = "Select Sum(AmtDr)-Sum(AmtCr) as Bal from PayCharge where LogSite_Code='" & MemVar_1F95078
  loc_1C89FDB:     var_1B4 = "Select Count(*) from PayCharge where LogSite_Code='" & MemVar_1F95078 & "' and VType Not In ('ARRES','ADRES') and FolionoDocid='"
  loc_1C89FF6:     unk_52FB72.Execute var_1B4 & CStr(var_16C) & "'", var_17C, -1
  loc_1C8A001:     Set var_8C = var_1BC
  loc_1C8A026:   Else
  loc_1C8A029:   Else
  loc_1C8A02C:     var_128 = "Bal"
  loc_1C8A040:     var_15C = var_8C.Fields.Item(var_128)
  loc_1C8A04F:     Proc_6_39_E7D3A0(var_16C, CVar(var_15C), var_1BC, var_16C, var_148, var_128, var_18C)
  loc_1C8A063:     var_17C = "0.00"
  loc_1C8A06F:     var_18C = Format(var_16C, var_17C)
  loc_1C8A08D:     If CBool(var_18C <> 0) Then
  loc_1C8A0A3:       var_114 = "Guest Not Checked Out"
  loc_1C8A0A9:       MsgBox(var_114, &H40, var_16C, var_17C, var_18C)
  loc_1C8A0BD:       Set var_104 = Me.FGrid
  loc_1C8A0CE:       Exit Sub
  loc_1C8A0D2:     Else
  loc_1C8A0D2:     End If
  loc_1C8A0D8:     var_138 = 0
  loc_1C8A105:     unk_52FB72.Execute "Select NCUR from enviro where logsite_code='" & MemVar_1F95078 & "'", var_114, -1
  loc_1C8A10D:     var_104 = var_104.Fields
  loc_1C8A115:     var_138 = var_15C.Item(var_15C)
  loc_1C8A11D:     var_1BC = var_1BC.Value
  loc_1C8A127:     MemVar_1F950EC = CDate(var_16C)
  loc_1C8A14A:     unk_52FB72.BeginTrans var_1C0
  loc_1C8A162:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A16A:     var_148 = CVar(CLng(3)) 'Long
  loc_1C8A184:     var_1B0 = CStr(Me.FGrid.TextMatrix))
  loc_1C8A19A:     var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A1DE:     If (CVar(CLng(&HF)) = CStr(Me.FGrid.TextMatrix))) Then
  loc_1C8A270:       If (CVar(CLng(&HF)) = CStr(Me.FGrid.TextMatrix))) Then
  loc_1C8A278:         var_1B4 = Proc_6_16_EF358C(CVar(CLng(Me.FGrid.Row)), CStr(Me.FGrid.TextMatrix)), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(Me.FGrid.Row)), CStr(Me.FGrid.TextMatrix)), CVar(CLng(&HF)))
  loc_1C8A285:         var_128 = "hh"
  loc_1C8A28A:         var_16C = var_128
  loc_1C8A2D4:         Proc_6_7_F26918(var_2A0, MemVar_1F950EC, 1, 1)
  loc_1C8A2E4:         Proc_6_7_F26918(var_2D0, MemVar_1F950EC, var_16C)
  loc_1C8A2F4:         Proc_6_7_F26918(var_330, CVar(Proc_6_15_EF37AC(FGrid.DispID_8001, 1)))
  loc_1C8A323:         var_3C0 = Me.FGrid.TextMatrix)
  loc_1C8A339:         var_450 = Me.FGrid.Row
  loc_1C8A359:         var_4A0 = Me.FGrid.TextMatrix)
  loc_1C8A37F:         var_18C = (Format(CVar(var_1B4), var_16C) + ":")
  loc_1C8A386:         var_270 = (Me.FGrid.TextMatrix) + Format(CVar(Proc_6_16_EF358C(1, 1, var_128, MemVar_1F950EC)), "nn"))
  loc_1C8A3B3:         var_2F0 = "Update RoomOcc set chkouttime='" & var_270 & "',ChkOutDate=" & var_2A0 & ",UserchkoutDate=" & var_2D0 & ",ChkOutUser='" 
  loc_1C8A3EA:         var_400 = var_2F0 & CVar(MemVar_1F950C8) & "',Type='O',U_EntDt=" & var_330 & ",U_AE='E' where Docid='" & CVar(CStr(var_3C0)) & "' and LogSite_Code='" 
  loc_1C8A41F:         unk_52FB72.Execute CStr(var_400 & CVar(MemVar_1F95078) & "' and RoomNo='" & CVar(CStr(var_4A0)) & "' And (IsNull(Type,'')='')"), var_500, -1
  loc_1C8A4A9:         var_17C = Format(CVar(Proc_6_16_EF358C(var_204, var_4A0, CVar(CLng(1)), CVar(CLng(var_450)))), "hh")
  loc_1C8A4D4:         var_260 = Format(CVar(Proc_6_16_EF358C(1, 1, var_3C0)), "nn")
  loc_1C8A4E4:         Proc_6_7_F26918(var_2A0, MemVar_1F950EC, 1, 1)
  loc_1C8A4F4:         Proc_6_7_F26918(var_2D0, MemVar_1F950EC, CVar(CLng(&H13)))
  loc_1C8A504:         Proc_6_7_F26918(var_330, CVar(Proc_6_15_EF37AC(CVar(CLng(Me.FGrid.Row)))))
  loc_1C8A51C:         var_380 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A524:         var_3A0 = CVar(CLng(&H13)) 'Long
  loc_1C8A559:         var_18C = (var_17C + ":")
  loc_1C8A560:         var_270 = (Me.FGrid.TextMatrix) + var_260)
  loc_1C8A58D:         var_2F0 = "Update RoomOcc set chkouttime='" & var_270 & "',ChkOutDate=" & var_2A0 & ",UserchkoutDate=" & var_2D0 & ",ChkOutUser='" 
  loc_1C8A5AB:         var_350 = ",U_AE='E' WHERE DocId In (SELECT G.DocId FROM GuestFolio G LEFT JOIN PayCharge P On G.DocId=P.FolioNoDocId WHERE G.MFolioNoDocid='"
  loc_1C8A5C4:         var_400 = var_2F0 & CVar(MemVar_1F950C8) & "',Type='O',U_EntDt=" & var_330 & var_350 & CVar(CStr(Me.FGrid.TextMatrix))) & "' and G.LogSite_Code='" 
  loc_1C8A5D2:         var_430 = "' GROUP BY G.DocId HAVING Round(IsNull(Sum(P.AmtDr),0)-IsNull(Sum(P.AmtCr),0),2)=0) And (IsNull(Type,'')='')"
  loc_1C8A5E5:         unk_52FB72.Execute CStr(var_400 & CVar(MemVar_1F95078) & "' and RoomNo='"), var_450, -1
  loc_1C8A645:         var_114 = Me.FGrid.Row
  loc_1C8A64E:         var_128 = CVar(CLng(var_114)) 'Long
  loc_1C8A656:         var_148 = CVar(CLng(1)) 'Long
  loc_1C8A65F:         Set var_15C = Me.FGrid
  loc_1C8A665:         var_16C = var_15C.TextMatrix)
  loc_1C8A699:         unk_52FB72.Execute "Update RoomMast set ROOMSTAT='D' WHERE CODE='" & CStr(var_16C) & "' AND TYPE='RO'", var_17C, -1
  loc_1C8A6C1:         If (MemVar_1F951D4 = "Y") Then
  loc_1C8A6CA:           var_138 = 0
  loc_1C8A6E9:           unk_52FBE4.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_114, -1
  loc_1C8A6F1:           var_104 = var_104.Fields
  loc_1C8A6F9:           var_138 = var_15C.Item(var_15C)
  loc_1C8A701:           var_1BC = var_1BC.Value
  loc_1C8A70B:           var_90 = CLng(var_16C)
  loc_1C8A728:           var_114 = Me.FGrid.Row
  loc_1C8A731:           var_128 = CVar(CLng(var_114)) 'Long
  loc_1C8A739:           var_148 = CVar(CLng(1)) 'Long
  loc_1C8A758:           Set var_1BC = Me.FGrid
  loc_1C8A767:           var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C8A76F:           var_1E0 = CVar(CLng(3)) 'Long
  loc_1C8A77E:           var_18C = Me.FGrid.TextMatrix)
  loc_1C8A78E:           Set var_204 = Me.FGrid
  loc_1C8A79D:           var_218 = CVar(CLng(var_204.Row)) 'Long
  loc_1C8A7A5:           var_250 = CVar(CLng(6)) 'Long
  loc_1C8A7B4:           var_240 = Me.FGrid.TextMatrix)
  loc_1C8A7EB:           var_1FC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_90) & ",'CHKOT','" & CStr(Me.FGrid.TextMatrix))
  loc_1C8A81F:           unk_52FBE4.Execute var_1FC & "','" & CStr(var_18C) & "','" & CStr(var_240) & "',0)", var_260, -1
  loc_1C8A861:         End If
  loc_1C8A86C:         Proc_6_7_F26918(var_114, MemVar_1F950EC, var_230, var_240, var_250, var_218, var_18C)
  loc_1C8A884:         var_158 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A88C:         var_1D0 = CVar(CLng(&H13)) 'Long
  loc_1C8A89B:         var_1AC = Me.FGrid.TextMatrix)
  loc_1C8A8D9:         var_270 = "Update Paycharge set SettleDate=" & var_114 & " where FolioNoDocid='" & CVar(CStr(var_1AC)) & "' and LogSite_Code='" 
  loc_1C8A8FA:         unk_52FB72.Execute CStr(var_270 & CVar(MemVar_1F95078) & "'"), var_2A0, -1
  loc_1C8A924:       End If
  loc_1C8A93F:       var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8A94E:       var_16C = Me.FGrid.TextMatrix)
  loc_1C8A96D:       Proc_96_84_FFE61C(CStr(var_16C), 0, var_16C, var_148, CVar(CLng(Me.FGrid.Row)), var_1BC, var_1AC, var_1D0)
  loc_1C8A98A:     Else
  loc_1C8A99C:       var_128 = "hh"
  loc_1C8A9B0:       var_17C = Format(CVar(Proc_6_16_EF358C(var_158, var_1E0, var_19C, var_128)), var_128)
  loc_1C8A9EB:       Proc_6_7_F26918(var_2A0, MemVar_1F950EC, 1, 1)
  loc_1C8A9FB:       Proc_6_7_F26918(var_2D0, MemVar_1F950EC, var_128)
  loc_1C8AA0B:       Proc_6_7_F26918(var_330, CVar(Proc_6_15_EF37AC(var_90)))
  loc_1C8AA23:       var_380 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8AA2B:       var_3A0 = CVar(CLng(&H13)) 'Long
  loc_1C8AA4A:       Set var_1BC = Me.FGrid
  loc_1C8AA59:       var_460 = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C8AA61:       var_480 = CVar(CLng(1)) 'Long
  loc_1C8AA96:       var_18C = (var_17C + ":")
  loc_1C8AA9D:       var_270 = (Me.FGrid.Row + Format(CVar(Proc_6_16_EF358C(1, 1, "nn")), "nn"))
  loc_1C8AACA:       var_2F0 = "Update RoomOcc set chkouttime='" & var_270 & "',ChkOutDate=" & var_2A0 & ",UserchkoutDate=" & var_2D0 & ",ChkOutUser='" 
  loc_1C8AAF8:       var_3E0 = var_2F0 & CVar(MemVar_1F950C8) & "',Type='O',U_EntDt=" & var_330 & ",U_AE='E' where Docid='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C8AB28:       var_4E0 = var_3E0 & "' and LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomNo='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' And (IsNull(Type,'')='')" 
  loc_1C8AB36:       unk_52FB72.Execute CStr(var_4E0), var_500, -1
  loc_1C8ABA4:       var_114 = Me.FGrid.Row
  loc_1C8ABAD:       var_128 = CVar(CLng(var_114)) 'Long
  loc_1C8ABC4:       var_16C = Me.FGrid.TextMatrix)
  loc_1C8ABFD:       var_1FC = "Update RoomMast set ROOMSTAT='D' WHERE logsite_code='" & MemVar_1F95078 & "' and CODE='" & CStr(var_16C) & "' AND TYPE='RO'"
  loc_1C8AC06:       unk_52FB72.Execute var_1FC, var_17C, -1
  loc_1C8AC35:       Proc_6_7_F26918(var_114, MemVar_1F950EC, var_1BC, var_16C, CVar(CLng(1)), MemVar_1F950EC, var_204)
  loc_1C8AC4D:       var_158 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8AC55:       var_1D0 = CVar(CLng(&H13)) 'Long
  loc_1C8AC5E:       Set var_15C = Me.FGrid
  loc_1C8AC85:       var_16C = "Update Paycharge set SettleDate=" & var_114 
  loc_1C8AC99:       var_260 = var_16C & " where FolioNoDocid='" & CVar(CStr(var_15C.TextMatrix))) 
  loc_1C8ACC3:       unk_52FB72.Execute CStr(var_260 & "' and LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_2A0, -1
  loc_1C8ACF5:       If (MemVar_1F951D4 = "Y") Then
  loc_1C8ACFE:         var_138 = 0
  loc_1C8AD1D:         unk_52FBE4.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_114, -1
  loc_1C8AD25:         var_104 = var_104.Fields
  loc_1C8AD2D:         var_138 = var_15C.Item(var_15C)
  loc_1C8AD35:         var_1BC = var_1BC.Value
  loc_1C8AD3F:         var_90 = CLng(var_16C)
  loc_1C8AD5C:         var_114 = Me.FGrid.Row
  loc_1C8AD65:         var_128 = CVar(CLng(var_114)) 'Long
  loc_1C8AD6D:         var_148 = CVar(CLng(1)) 'Long
  loc_1C8AD8C:         Set var_1BC = Me.FGrid
  loc_1C8AD9B:         var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C8ADA3:         var_1E0 = CVar(CLng(3)) 'Long
  loc_1C8ADB2:         var_18C = Me.FGrid.TextMatrix)
  loc_1C8ADC2:         Set var_204 = Me.FGrid
  loc_1C8ADD1:         var_218 = CVar(CLng(var_204.Row)) 'Long
  loc_1C8ADD9:         var_250 = CVar(CLng(6)) 'Long
  loc_1C8ADE8:         var_240 = Me.FGrid.TextMatrix)
  loc_1C8AE1F:         var_1FC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_90) & ",'CHKOT','" & CStr(Me.FGrid.TextMatrix))
  loc_1C8AE53:         unk_52FBE4.Execute var_1FC & "','" & CStr(var_18C) & "','" & CStr(var_240) & "',0)", var_260, -1
  loc_1C8AE95:       End If
  loc_1C8AEA0:       Proc_6_7_F26918(var_114, MemVar_1F950EC, var_230, var_240, var_250, var_218, var_18C)
  loc_1C8AEB8:       var_158 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8AECF:       var_1AC = Me.FGrid.TextMatrix)
  loc_1C8AF17:       var_280 = "Update Paycharge set SettleDate=" & var_114 & " where FolioNoDocid='" & CVar(CStr(var_1AC)) & "' and LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_1C8AF2E:       unk_52FB72.Execute CStr(var_280 & "'"), var_2A0, -1
  loc_1C8AF5C:       Set var_104 = Me.FGrid
  loc_1C8AF62:       var_114 = var_104.Row
  loc_1C8AF73:       var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8AFA1:       Proc_96_84_FFE61C(CStr(Me.FGrid.TextMatrix)), 0, Me.FGrid.TextMatrix), var_148, CVar(CLng(var_114)), var_1BC, var_1AC, CVar(CLng(&H13)))
  loc_1C8AFBB:     End If
  loc_1C8AFC1:     unk_52FB72.CommitTrans
  loc_1C8AFE1:     var_1B4 = "Select TxtMsg,MobileNo from EmailSMSForward WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And Type='Check Out' And Len(MobileNo)>=10 And Len(TxtMsg)>0"
  loc_1C8AFEA:     unk_52FB72.Execute var_1B4, var_114, -1
  loc_1C8AFF5:     Set var_C0 = var_104
  loc_1C8B019:     If (var_C0.RecordCount > 0) Then
  loc_1C8B02B:       var_104 = var_C0.Fields
  loc_1C8B053:       var_CC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_104.Item("MobileNo")), var_104, var_158, var_1E0, var_19C))))
  loc_1C8B071:       var_104 = var_C0.Fields
  loc_1C8B081:       var_114 = CVar(var_104.Item("TxtMsg")) 'Address
  loc_1C8B099:       var_C8 = CStr(Trim(CVar(Proc_6_38_E69628(var_114, CVar(Proc_6_38_E69628(var_114, var_16C, var_148)), var_148))))
  loc_1C8B0A8:     End If
  loc_1C8B0CC:     unk_52FB72.Execute "Select CheckOutMsg,SendingMessageText from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_114, -1
  loc_1C8B0D7:     Set var_C0 = var_104
  loc_1C8B0FB:     If (var_C0.RecordCount > 0) Then
  loc_1C8B101:       var_128 = "SendingMessageText"
  loc_1C8B10D:       var_104 = var_C0.Fields
  loc_1C8B135:       var_D4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_104.Item(var_128)), var_104, var_128))))
  loc_1C8B17B:       var_C4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("CheckOutMsg")), var_90))))
  loc_1C8B18A:     End If
  loc_1C8B19D:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8B1A5:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8B1EA:     var_18C = Me.FGrid.TextMatrix)
  loc_1C8B20A:     var_1B0 = "Select FB.Bill_No,FB.SettAmt,FB.FolionoDocId,R.RoomNo,R.GuestProf,GP.Name,GP.MobileNo,R.RoomRate,R.ChkOutDate,R.ChkOutTime,Q.DebitAmt,Q.CreditAmt,GP.Add1,GP.Add2,City.CityName From ((FomBillDetails FB Inner Join RoomOcc R On R.DocId=FB.FolioNoDocId And R.Type='O' And FB.Status='SETTLE') " & "Inner Join (select FolionoDocid,SUM(AmtDR) DebitAmt,SUM(AmtCr) CreditAmt from PayCharge where FolioNoDocid ='"
  loc_1C8B22A:     var_208 = var_1B0 & CStr(Me.FGrid.TextMatrix)) & "' And Not (ModeSet='S' And PayCode<>'" & MemVar_1F95078 & "ROFF') Group By FolioNoDocid)Q On FB.FolioNoDocid=Q.FolioNoDocid Inner Join GuestProf GP On R.GuestProf=GP.Code And R.Type='O') Left Join City On City.CityCode=GP.City Where FB.FolioNoDocid='"
  loc_1C8B253:     unk_52FB72.Execute var_208 & CStr(var_18C) & "' And FB.LogSite_Code='" & MemVar_1F95078 & "'", var_1AC, -1
  loc_1C8B25E:     Set var_A4 = var_204
  loc_1C8B2A8:     If (var_A4.RecordCount > 0) Then
  loc_1C8B2D8:       If ((var_D4 <> "Auto") And (Len(CStr(Trim(var_C4))) <> 0)) Then
  loc_1C8B2DE:         var_128 = "Add1"
  loc_1C8B303:         var_16C = CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item(var_128)), var_204, var_18C, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1C8B311:         var_148 = "Add2"
  loc_1C8B3A2:         var_2C0 = Trim(var_16C) & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item(var_148)), var_16C, var_148))) & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("CityName")), var_128))) 
  loc_1C8B3B5:         var_D0 = Replace(var_D0, "<Address>", CStr(var_2C0), 1, -1, 0)
  loc_1C8B40C:         var_16C = "dd/MMM/yyyy"
  loc_1C8B46D:         var_260 = Format(CVar(var_A4.Fields.Item("ChkOutDate")), var_16C) & " " & CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkOutTime")), 1)) 
  loc_1C8B480:         var_D0 = Replace(var_D0, "<Check Out Date>", CStr(var_260), 1, -1, 0)
  loc_1C8B4C8:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("DebitAmt")))
  loc_1C8B50E:         var_D0 = Replace(var_D0, "<Debit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C8B548:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("CreditAmt")), 1)
  loc_1C8B58E:         var_D0 = Replace(var_D0, "<Credit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C8B5C8:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("SettAmt")), 1, 1)
  loc_1C8B60E:         var_D0 = Replace(var_D0, "<Bill Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C8B66D:         var_D0 = Replace(var_D0, "<Bill Number>", Proc_6_38_E69628(CVar(var_A4.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_1C8B6D1:         var_D0 = Replace(var_D0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_1C8B70B:         var_16C = CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name")), 1)) 'String
  loc_1C8B72D:         var_200 = var_A4.Fields.Item("Name")
  loc_1C8B7D8:         var_2C0 = (InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name"))))), " ", 0) - 1)
  loc_1C8B7DC:         var_320 = var_2C0 'Variant
  loc_1C8B80D:         var_340 = IIf((InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_200)))), " ", 0) <> 0), var_320, Len(Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name")))))))
  loc_1C8B843:         var_D0 = Replace(var_D0, "<Guest First Name>", CStr(Left(Trim(var_16C), CLng(var_340))), 1, -1, 0)
  loc_1C8B8C8:         var_D0 = Replace(var_D0, "<Room Number>", Proc_6_38_E69628(CVar(var_A4.Fields.Item("RoomNo"))), 1, -1, 0)
  loc_1C8B8FE:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("RoomRate")))
  loc_1C8B912:         var_17C = "0.00"
  loc_1C8B91E:         var_18C = Format(var_16C, var_17C)
  loc_1C8B944:         var_D0 = Replace(var_D0, "<Room Tariff>", CStr(var_18C), 1, -1, 0)
  loc_1C8B970:         If (InStr(1, CStr(Trim(var_C4)), "<Room Discount>", 0) > 0) Then
  loc_1C8B986:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8B98E:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8B9AF:           var_1D0 = 0
  loc_1C8B9CC:           var_1B0 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F95078
  loc_1C8B9EE:           unk_52FB72.Execute CStr(var_18C) & "DISC') And FolioNoDocid='" & CStr(Me.FGrid.TextMatrix)) & "'", var_17C, -1
  loc_1C8B9F6:           var_1BC = var_1BC.Fields
  loc_1C8B9FE:           var_1D0 = var_200.Item(var_200)
  loc_1C8BA06:           var_204 = var_204.Value
  loc_1C8BA0F:           var_AC = CSng(var_18C)
  loc_1C8BA61:           var_17C = vbNullString
  loc_1C8BA9E:           var_D0 = Replace(var_D0, "<Room Discount>", CStr(IIf((var_AC <> CDbl(0)), Format(var_AC, "0.00"), var_17C)), 1, -1, 0)
  loc_1C8BAB1:         End If
  loc_1C8BAC9:         If (InStr(1, CStr(Trim(var_C4)), "<Payment Mode>", 0) > 0) Then
  loc_1C8BADF:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8BAE7:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8BAF6:           var_16C = Me.FGrid.TextMatrix)
  loc_1C8BB1A:           var_1B4 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='" & CStr(var_16C)
  loc_1C8BB2A:           unk_52FB72.Execute var_1B4 & "' And AmtCr>0", var_17C, -1
  loc_1C8BB35:           Set var_B8 = var_1BC
  loc_1C8BB56:           var_BC = vbNullString
  loc_1C8BB59:           ' Referenced from:   1C8BBB9
  loc_1C8BB68:           If Not(var_B8.EOF) Then
  loc_1C8BB71:             var_128 = "PayType"
  loc_1C8BBA1:             var_BC = 1 & Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_128)), var_BC, var_1BC, var_16C, var_148, var_128, 1) & ", "
  loc_1C8BBB4:             var_B8.MoveNext
  loc_1C8BBB9:             GoTo loc_1C8BB59
  loc_1C8BBBC:           End If
  loc_1C8BBC1:           Set var_B8 = Nothing
  loc_1C8BBEF:           var_1AC = Trim(var_BC)
  loc_1C8BC05:           var_260 = (Len(var_1AC) - 1)
  loc_1C8BC1D:           var_18C = (Len(Trim(var_BC)) > 0)
  loc_1C8BC77:           var_D0 = Replace(var_D0, "<Payment Mode>", CStr(Left(Trim(var_BC), CLng(IIf(var_18C, InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_200)))), " ", 0), 0)))), 1, -1, 0)
  loc_1C8BC7A:         End If
  loc_1C8BC7A:       End If
  loc_1C8BCCC:       var_240 = (Len(Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("MobileNo")), var_AC, var_18C)))) >= 10) And (Len(CStr(Trim(var_C4))) <> 0)
  loc_1C8BCE0:       If CBool(var_240) Then
  loc_1C8BD3C:         Proc_6_39_E7D3A0(var_1AC, CVar(var_A4.Fields.Item("Bill_no")))
  loc_1C8BD4D:         var_548 = Val(CStr(var_1AC))
  loc_1C8BD53:         var_148 = "GuestProf"
  loc_1C8BDE4:         var_2D0 = Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name")))))
  loc_1C8BE17:         var_300 = Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("RoomNo")))))
  loc_1C8BE42:         Proc_6_39_E7D3A0(var_320, CVar(var_A4.Fields.Item("SettAmt")))
  loc_1C8BE4A:         var_50C = "Check Out"
  loc_1C8BEA4:         Proc_233_5_11B7BF4(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("FolioNoDocid")), var_16C)))), "CHKOT", CLng(var_548), 0, CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item(var_148)), var_548)))), CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("MobileNo")), var_148)))), vbNullString)
  loc_1C8BEF8:       End If
  loc_1C8BF0C:       var_D0 = CStr(Trim(var_C8))
  loc_1C8BF25:       If ((var_D4 <> "Auto") And (Len(var_D0) <> 0)) Then
  loc_1C8BFDF:         var_270 = Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Add1")), var_D0, MemVar_1F950C8, CStr(var_2D0)))) & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Add2")), CStr(var_300), CSng(var_320)))) 
  loc_1C8C002:         var_D0 = Replace(var_D0, "<Address>", CStr(var_270 & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("CityName")), var_50C)))), 1, -1, 0)
  loc_1C8C059:         var_16C = "dd/MMM/yyyy"
  loc_1C8C0BA:         var_260 = Format(CVar(var_A4.Fields.Item("ChkOutDate")), var_16C) & " " & CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkOutTime")), 1)) 
  loc_1C8C0CD:         var_D0 = Replace(var_D0, "<Check Out Date>", CStr(var_260), 1, -1, 0)
  loc_1C8C115:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("DebitAmt")))
  loc_1C8C15B:         var_D0 = Replace(var_D0, "<Debit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C8C195:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("CreditAmt")), 1)
  loc_1C8C1DB:         var_D0 = Replace(var_D0, "<Credit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C8C215:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("SettAmt")), 1, 1)
  loc_1C8C25B:         var_D0 = Replace(var_D0, "<Bill Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C8C2BA:         var_D0 = Replace(var_D0, "<Bill Number>", Proc_6_38_E69628(CVar(var_A4.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_1C8C31E:         var_D0 = Replace(var_D0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_1C8C358:         var_16C = CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name")), 1)) 'String
  loc_1C8C37A:         var_200 = var_A4.Fields.Item("Name")
  loc_1C8C3F7:         var_2F0 = Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name")))))
  loc_1C8C425:         var_2C0 = (InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Name"))))), " ", 0) - 1)
  loc_1C8C45A:         var_340 = IIf((InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_200)))), " ", 0) <> 0), var_270 & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("CityName")), var_50C))), Len(var_2F0))
  loc_1C8C490:         var_D0 = Replace(var_D0, "<Guest First Name>", CStr(Left(Trim(var_16C), CLng(var_340))), 1, -1, 0)
  loc_1C8C515:         var_D0 = Replace(var_D0, "<Room Number>", Proc_6_38_E69628(CVar(var_A4.Fields.Item("RoomNo"))), 1, -1, 0)
  loc_1C8C54B:         Proc_6_39_E7D3A0(var_16C, CVar(var_A4.Fields.Item("RoomRate")))
  loc_1C8C55F:         var_17C = "0.00"
  loc_1C8C56B:         var_18C = Format(var_16C, var_17C)
  loc_1C8C591:         var_D0 = Replace(var_D0, "<Room Tariff>", CStr(var_18C), 1, -1, 0)
  loc_1C8C5BD:         If (InStr(1, var_D0, "<Room Discount>", 0) > 0) Then
  loc_1C8C5D3:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8C5DB:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8C5FC:           var_1D0 = 0
  loc_1C8C619:           var_1B0 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F95078
  loc_1C8C63B:           unk_52FB72.Execute CStr(var_18C) & "DISC') And FolioNoDocid='" & CStr(Me.FGrid.TextMatrix)) & "'", var_17C, -1
  loc_1C8C643:           var_1BC = var_1BC.Fields
  loc_1C8C64B:           var_1D0 = var_200.Item(var_200)
  loc_1C8C653:           var_204 = var_204.Value
  loc_1C8C65C:           var_AC = CSng(var_18C)
  loc_1C8C6AE:           var_17C = vbNullString
  loc_1C8C6EB:           var_D0 = Replace(var_D0, "<Room Discount>", CStr(IIf((var_AC <> CDbl(0)), Format(var_AC, "0.00"), var_17C)), 1, -1, 0)
  loc_1C8C6FE:         End If
  loc_1C8C716:         If (InStr(1, var_D0, "<Payment Mode>", 0) > 0) Then
  loc_1C8C72C:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8C734:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8C743:           var_16C = Me.FGrid.TextMatrix)
  loc_1C8C767:           var_1B4 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='" & CStr(var_16C)
  loc_1C8C777:           unk_52FB72.Execute var_1B4 & "' And AmtCr>0", var_17C, -1
  loc_1C8C782:           Set var_B8 = var_1BC
  loc_1C8C7A3:           var_BC = vbNullString
  loc_1C8C7A6:           ' Referenced from:   1C8C806
  loc_1C8C7B5:           If Not(var_B8.EOF) Then
  loc_1C8C7BE:             var_128 = "PayType"
  loc_1C8C7EE:             var_BC = 1 & Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_128)), var_BC, var_1BC, var_16C, var_148, var_128, 1) & ", "
  loc_1C8C801:             var_B8.MoveNext
  loc_1C8C806:             GoTo loc_1C8C7A6
  loc_1C8C809:           End If
  loc_1C8C80E:           Set var_B8 = Nothing
  loc_1C8C83C:           var_1AC = Trim(var_BC)
  loc_1C8C852:           var_260 = (Len(var_1AC) - 1)
  loc_1C8C86A:           var_18C = (Len(Trim(var_BC)) > 0)
  loc_1C8C8C4:           var_D0 = Replace(var_D0, "<Payment Mode>", CStr(Left(Trim(var_BC), CLng(IIf(var_18C, InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_200)))), " ", 0), 0)))), 1, -1, 0)
  loc_1C8C8C7:         End If
  loc_1C8C8C7:       End If
  loc_1C8C8DC:       If ((Len(var_CC) >= &HA) And (Len(var_D0) <> 0)) Then
  loc_1C8C907:         var_16C = CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("FolioNoDocid")), var_AC, var_18C)) 'String
  loc_1C8C90D:         var_17C = Trim(var_16C)
  loc_1C8C921:         var_1BC = var_A4.Fields
  loc_1C8C931:         var_18C = CVar(var_1BC.Item("Bill_no")) 'Address
  loc_1C8C938:         Proc_6_39_E7D3A0(var_1AC, var_18C, var_16C)
  loc_1C8C949:         var_548 = Val(CStr(var_1AC))
  loc_1C8C94F:         var_148 = "GuestProf"
  loc_1C8C95B:         var_204 = var_A4.Fields
  loc_1C8C96B:         var_240 = CVar(var_204.Item(var_148)) 'Address
  loc_1C8C974:         var_260 = CVar(Proc_6_38_E69628(var_240, var_548)) 'String
  loc_1C8C98E:         var_230 = var_A4.Fields
  loc_1C8C996:         var_51C = var_230.Item("Name")
  loc_1C8C9AD:         var_2A0 = Trim(CVar(Proc_6_38_E69628(CVar(var_51C), var_148)))
  loc_1C8C9C1:         var_524 = var_A4.Fields
  loc_1C8C9C9:         var_528 = var_524.Item("RoomNo")
  loc_1C8C9DA:         var_2C0 = CVar(Proc_6_38_E69628(CVar(var_528))) 'String
  loc_1C8C9E0:         var_2D0 = Trim(var_2C0)
  loc_1C8CA0B:         Proc_6_39_E7D3A0(var_2F0, CVar(var_A4.Fields.Item("SettAmt")))
  loc_1C8CA13:         var_508 = "Check Out"
  loc_1C8CA68:         Proc_233_5_11B7BF4(CStr(var_17C), "CHKOT", CLng(var_548), 0, CStr(Trim(var_260)), var_CC, vbNullString)
  loc_1C8CAB2:       End If
  loc_1C8CAB2:     End If
  loc_1C8CAB7:     Set var_C0 = Nothing
  loc_1C8CABF:     Set var_A4 = Nothing
  loc_1C8CAC2:   End If
  loc_1C8CAC6:   Set var_104 = Me.FGrid
  loc_1C8CAE0:   Call 0.Method_arg_2AC (1, FGrid.DispID_8001, var_D0, MemVar_1F950C8, CStr(var_2A0))
  loc_1C8CAE5:   GoTo loc_1C8EF19
  loc_1C8CAE8: End If
  loc_1C8CAEE: If (var_116 = &HA) Then
  loc_1C8CB04:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8CB0C:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8CB1B:   var_16C = Me.FGrid.TextMatrix)
  loc_1C8CB3F:   var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT,FolioNoDocid from Paycharge where bill_no<>'' and Bill_No is not null and FolioNoDocid='" & CStr(var_16C)
  loc_1C8CB4F:   unk_52FB72.Execute var_1B4 & "'", var_17C, -1
  loc_1C8CB5A:   Set var_94 = var_1BC
  loc_1C8CB7E:   var_1C0 = var_94.RecordCount
  loc_1C8CB8C:   If (var_1C0 > 0) Then
  loc_1C8CBBE:     If (MsgBox("Are you sure to Cancel bill?", 4, var_16C, var_17C, var_18C) = 6) Then
  loc_1C8CBD2:       var_17C = vbNullString
  loc_1C8CBDD:       var_16C = "Bill Cancel"
  loc_1C8CBF3:       var_A0 = InputBox("Reason For Cancellation", var_16C, var_17C, var_18C, var_1AC, var_240, var_260)
  loc_1C8CC25:       If (Trim(var_A0) = vbNullString) Then
  loc_1C8CC47:         MsgBox(CVar("Blank Reason Is Not Allowed" & vbCrLf & "Bill Cancellation Aborted."), &H40, var_16C, var_17C, var_18C)
  loc_1C8CC5A:         Exit Sub
  loc_1C8CC5B:       End If
  loc_1C8CCA0:       var_17C = "Delete From paycharge where folionoDocid='" & var_94.Fields.Item("FolioNoDocid").Value & "' and modeset='S' and paycode='" 
  loc_1C8CCC1:       unk_52FB72.Execute CStr(var_17C & CVar(MemVar_1F95078) & "ROFF'"), var_240, -1
  loc_1C8CD1C:       var_518 = 0
  loc_1C8CD2F:       var_514 = 0
  loc_1C8CD3A:       var_510 = 0
  loc_1C8CD4D:       var_50C = 0
  loc_1C8CD58:       var_508 = 0
  loc_1C8CD6B:       var_504 = 0
  loc_1C8CDB5:       Proc_154_5_10E3BD4(MemVar_1F95044, "PayCharge", "FolioNo", 1, CStr(Val(CStr(var_94.Fields.Item("FolioNo").Value))), 0, 0, 0)
  loc_1C8CDDF:       ' Referenced from: 1C8CF64
  loc_1C8CDE5:       var_51E = var_94.EOF
  loc_1C8CDEE:       If Not(var_51E) Then
  loc_1C8CE16:         var_16C = "Update FOMBillDetails set SettMode='" & Trim(var_A0) 
  loc_1C8CE3B:         var_240 = CVar(Proc_6_15_EF37AC(var_16C & "',U_Name='" & CVar(MemVar_1F950C8) & "',Status='CANCEL',U_AE='E',U_EntDt=", var_2C0, -1, var_1BC, var_504, 0)) 'String
  loc_1C8CE41:         Proc_6_7_F26918(var_260, var_240, var_508, var_50C)
  loc_1C8CE49:         var_270 = 0 & var_260 
  loc_1C8CE97:         unk_52FB72.Execute CStr(var_270 & " where Bill_NO='" & var_94.Fields.Item("Bill_no").Value & "'"), var_510, var_514
  loc_1C8CEDC:         var_114 = CVar(Proc_6_15_EF37AC("Update PayCharge set Bill_No='',U_EntDt=", var_270, -1)) 'String
  loc_1C8CEE2:         Proc_6_7_F26918(var_16C, Trim(var_A0))
  loc_1C8CEEA:         var_17C = var_1BC & var_16C 
  loc_1C8CEF3:         var_18C = var_17C & " where folionoDocId='" 
  loc_1C8CF2A:         var_260 = var_18C & var_94.Fields.Item("FolioNoDocid").Value & "'" 
  loc_1C8CF38:         unk_52FB72.Execute CStr(var_260), 0, 
  loc_1C8CF5F:         var_94.MoveNext
  loc_1C8CF64:         GoTo loc_1C8CDDF
  loc_1C8CF67:       End If
  loc_1C8CF67:       Call Form_Paint()
  loc_1C8CF6C:     End If
  loc_1C8CF6F:   Else
  loc_1C8CF82:     var_114 = "Bill is not Generated"
  loc_1C8CF88:     MsgBox(var_114, 0, var_16C, var_17C, var_18C)
  loc_1C8CF98:   End If
  loc_1C8CF98:   GoTo loc_1C8EF19
  loc_1C8CF9B: End If
  loc_1C8CFA1: If (var_116 = &HB) Then
  loc_1C8CFB0:   Me.Frame2.Visible = True
  loc_1C8CFC7:   Me.Frame2.Top = CDbl(1000)
  loc_1C8CFDE:   Me.Frame2.Left = CDbl(2000)
  loc_1C8CFEC:   Set var_104 = Me.Check1
  loc_1C8CFF2:   var_104.Value = 0
  loc_1C8D010:   unk_52FB72.Execute "Select SaleRate from RevMast where ShortName='EXTB' ", var_114, -1
  loc_1C8D021:   Set global_68 = var_104
  loc_1C8D06D:   var_17C = Format(CVar(Me.Fields.Item("SaleRate")), "0.00")
  loc_1C8D083:   Me.txtEXTBChrg.Text = CStr(var_17C)
  loc_1C8D0AE:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8D0B6:   var_148 = CVar(CLng(1)) 'Long
  loc_1C8D0DD:   Me.txtRoomNo.Text = CStr(Me.FGrid.TextMatrix))
  loc_1C8D108:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8D110:   var_148 = CVar(CLng(3)) 'Long
  loc_1C8D131:   Set var_1BC = Me.txtFoliono
  loc_1C8D137:   var_1BC.Text = CStr(Me.FGrid.TextMatrix))
  loc_1C8D162:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8D16A:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8D1AD:   unk_52FB72.Execute "Select MAX(sno) AS SNO from RoomOcc where Docid='" & CStr(Me.FGrid.TextMatrix)) & "' ", var_17C, -1
  loc_1C8D1BE:   Set global_76 = var_1BC
  loc_1C8D1F2:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8D209:   var_16C = Me.FGrid.TextMatrix)
  loc_1C8D22A:   var_1BC = Me.Fields
  loc_1C8D25E:   var_18C = CVar("Select Extrabed from RoomOcc where Docid='" & CStr(var_16C) & "' and Sno='") 'String
  loc_1C8D27B:   unk_52FB72.Execute CStr(var_18C & var_1BC.Item("SNo").Value & "' "), var_260, -1
  loc_1C8D28C:   Set global_72 = var_204
  loc_1C8D2F8:   If (Me.Fields.Item("ExtraBed").Value > 0) Then
  loc_1C8D307:     Me.Label5.Visible = True
  loc_1C8D317:     var_128 = "ExtraBed"
  loc_1C8D32E:     var_15C = Me.Fields.Item(var_128)
  loc_1C8D33D:     Proc_6_39_E7D3A0(var_16C, CVar(var_15C), "Extra Bed charges All Ready Posted For Rs. ", var_204, var_16C, CVar(CLng(&H13)), var_128)
  loc_1C8D345:     var_17C = var_1BC & var_16C 
  loc_1C8D357:     Me.Label5.Caption = CStr(var_17C)
  loc_1C8D36F:   End If
  loc_1C8D36F:   GoTo loc_1C8EF19
  loc_1C8D372: End If
  loc_1C8D378: If (var_116 = &HC) Then
  loc_1C8D383:   If (MemVar_1F951D4 = "Y") Then
  loc_1C8D391:     var_16C = "EPABX Message"
  loc_1C8D3A1:     var_114 = "Want to Close Dial Facility ?"
  loc_1C8D3BD:     If (MsgBox(var_114, &H24, var_16C, var_17C, var_18C) = 6) Then
  loc_1C8D3C6:       var_138 = 0
  loc_1C8D3E5:       unk_52FBE4.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_114, -1
  loc_1C8D3ED:       var_104 = var_104.Fields
  loc_1C8D3F5:       var_138 = var_15C.Item(var_15C)
  loc_1C8D3FD:       var_1BC = var_1BC.Value
  loc_1C8D407:       var_90 = CLng(var_16C)
  loc_1C8D41E:       Set var_104 = Me.FGrid
  loc_1C8D42D:       var_128 = CVar(CLng(var_104.Row)) 'Long
  loc_1C8D435:       var_148 = CVar(CLng(1)) 'Long
  loc_1C8D43E:       Set var_15C = Me.FGrid
  loc_1C8D444:       var_16C = var_15C.TextMatrix)
  loc_1C8D454:       Set var_1BC = Me.FGrid
  loc_1C8D463:       var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C8D46B:       var_1E0 = CVar(CLng(3)) 'Long
  loc_1C8D474:       Set var_200 = Me.FGrid
  loc_1C8D47A:       var_18C = var_200.TextMatrix)
  loc_1C8D48A:       Set var_204 = Me.FGrid
  loc_1C8D499:       var_218 = CVar(CLng(var_204.Row)) 'Long
  loc_1C8D4A1:       var_250 = CVar(CLng(6)) 'Long
  loc_1C8D4AA:       Set var_21C = Me.FGrid
  loc_1C8D4B0:       var_240 = var_21C.TextMatrix)
  loc_1C8D4D1:       var_1B0 = CStr(var_90)
  loc_1C8D4E7:       var_1FC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & var_1B0 & ",'CHKOT','" & CStr(var_16C)
  loc_1C8D51B:       unk_52FBE4.Execute var_1FC & "','" & CStr(var_18C) & "','" & CStr(var_240) & "',0)", var_260, -1
  loc_1C8D55D:     End If
  loc_1C8D55D:   End If
  loc_1C8D55D:   GoTo loc_1C8EF19
  loc_1C8D560: End If
  loc_1C8D566: If (var_116 = &HD) Then
  loc_1C8D56B:   Close 1
  loc_1C8D574:   Open "C:\reptmp\STRUCT.TXT" For Output As 1 Len = &HFF
  loc_1C8D58B:   Call 0.Method_arg_9C (-1, var_230, var_240, var_250, var_218, var_18C, var_1E0)
  loc_1C8D593:   Set var_55C = New 
  loc_1C8D59C:   Call 0.Method_arg_BC (0, var_19C, var_16C, var_148)
  loc_1C8D5A6:   Call 0.Method_arg_E8 (0, var_128)
  loc_1C8D5B1:   var_138 = "SA"
  loc_1C8D5C1:   Call 0.Method_arg_100 (CVar(MemVar_1F95098), var_138, vbNullString)
  loc_1C8D5C8:   Set var_55C = Nothing 
  loc_1C8D5E3:   Call 0.Method_arg_34 (var_104, CVar(MemVar_1F95108), var_138)
  loc_1C8D5EB:   Call 0.Method_arg_30 (var_15C, var_90)
  loc_1C8D5F3:   MemVar_1F95208 = var_15C
  loc_1C8D5FD:   Set var_560 = MemVar_1F95208 
  loc_1C8D60F:   Call 0.Method_arg_3C (var_104, var_1C0, var_D6)
  loc_1C8D617:   Call 0.Method_arg_38 (1)
  loc_1C8D623:   For var_564 =  To CInt(var_1C0): var_16C = var_564 'Integer
  loc_1C8D640:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8D648:     Call 0.Method_arg_30 (var_15C)
  loc_1C8D650:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8D658:     var_E0 = var_1B0
  loc_1C8D669:     var_1B0 = "SanCreateTableObj """ & var_E0
  loc_1C8D670:     var_1B4 = var_1B0 & """"
  loc_1C8D675:     Print 1, var_1B4
  loc_1C8D696:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8D69E:     Call 0.Method_arg_30 (var_138)
  loc_1C8D6A6:     Set var_568 = var_15C
  loc_1C8D6BA:     Call 0.Method_arg_3C (var_104, var_1C0, var_D8)
  loc_1C8D6C2:     Call 0.Method_arg_38 (1)
  loc_1C8D6CE:     For var_56C =  To CInt(var_1C0): var_15C = var_56C 'Integer
  loc_1C8D6E7:       Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8D6EF:       Call 0.Method_arg_30 (var_15C)
  loc_1C8D6F7:       Call 0.Method_arg_54 (var_1B0)
  loc_1C8D70D:       var_57C = Ucase(CVar(var_1B0)) 'Variant
  loc_1C8D726:       If Not (var_57C = "INT") Then
  loc_1C8D734:         If Not (var_57C = "SMALLINT") Then
  loc_1C8D742:           If Not (var_57C = "LONG") Then
  loc_1C8D750:             If Not (var_57C = "DOUBLE") Then
  loc_1C8D75E:               If Not (var_57C = "DATETIME") Then
  loc_1C8D76C:                 If (var_57C = "FLOAT") Then
  loc_1C8D76F:                 End If
  loc_1C8D76F:               End If
  loc_1C8D76F:             End If
  loc_1C8D76F:           End If
  loc_1C8D76F:         End If
  loc_1C8D772:         var_E8 = "0"
  loc_1C8D778:       Else
  loc_1C8D783:         If Not (var_57C = "VARCHAR") Then
  loc_1C8D791:           If Not (var_57C = "CHAR") Then
  loc_1C8D79F:             If (var_57C = "NVARCHAR") Then
  loc_1C8D7A2:             End If
  loc_1C8D7A2:           End If
  loc_1C8D7A5:           var_E8 = """"""""""""""
  loc_1C8D7A8:         End If
  loc_1C8D7A8:       End If
  loc_1C8D7BB:       Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8D7C3:       Call 0.Method_arg_30 (var_15C)
  loc_1C8D7CB:       Call 0.Method_arg_54 (var_1B0)
  loc_1C8D7F7:       If (Ucase(CVar(var_1B0)) = "NVARCHAR") Then
  loc_1C8D7FD:         var_F0 = vbNullString
  loc_1C8D819:         Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8D821:         Call 0.Method_arg_30 (var_15C)
  loc_1C8D829:         Call 0.Method_arg_34 (var_1B4)
  loc_1C8D841:         Call 0.Method_arg_3C (var_1BC, CVar(var_D8))
  loc_1C8D849:         Call 0.Method_arg_30 (var_200)
  loc_1C8D851:         Call 0.Method_arg_60 (var_1C0)
  loc_1C8D869:         Call 0.Method_arg_3C (var_204, CVar(var_D8))
  loc_1C8D871:         Call 0.Method_arg_30 (var_21C)
  loc_1C8D879:         Call 0.Method_arg_78 (var_51E)
  loc_1C8D891:         Call 0.Method_arg_3C (var_230, CVar(var_D8))
  loc_1C8D899:         Call 0.Method_arg_30 (var_51C)
  loc_1C8D8A1:         Call 0.Method_arg_78 (var_57E)
  loc_1C8D8C2:         var_1FC = "SanFieldsProperties """ & var_E0 & """, """ & var_1B4 & """, """
  loc_1C8D91A:         Print 1, CVar(var_1FC & "varchar" & """, " & CStr(var_1C0) & ", ") & var_51E & ", " & CVar(var_E8) & ", " & var_57E
  loc_1C8D95E:         var_F0 = vbNullString
  loc_1C8D964:       Else
  loc_1C8D977:         Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8D97F:         Call 0.Method_arg_30 (var_15C)
  loc_1C8D987:         Call 0.Method_arg_34 (var_1B4)
  loc_1C8D995:         var_138 = CVar(var_D8) 'Integer
  loc_1C8D99F:         Call 0.Method_arg_3C (var_1BC, var_138)
  loc_1C8D9A7:         Call 0.Method_arg_30 (var_200)
  loc_1C8D9AF:         Call 0.Method_arg_54 (var_1FC)
  loc_1C8D9C7:         Call 0.Method_arg_3C (var_204, CVar(var_D8))
  loc_1C8D9CF:         Call 0.Method_arg_30 (var_21C)
  loc_1C8D9D7:         Call 0.Method_arg_60 (var_1C0)
  loc_1C8D9EF:         Call 0.Method_arg_3C (var_230, CVar(var_D8))
  loc_1C8D9F7:         Call 0.Method_arg_30 (var_51C)
  loc_1C8D9FF:         Call 0.Method_arg_78 (var_51E)
  loc_1C8DA17:         Call 0.Method_arg_3C (var_524, CVar(var_D8))
  loc_1C8DA1F:         Call 0.Method_arg_30 (var_528)
  loc_1C8DA27:         Call 0.Method_arg_78 (var_57E)
  loc_1C8DA33:         var_1B0 = "SanFieldsProperties """ & var_E0
  loc_1C8DA86:         var_18C = CVar(var_1B0 & """, """ & var_1B4 & """, """ & var_1FC & """, " & CStr(var_1C0) & ", ") & var_51E & ", " & CVar(var_E8) 
  loc_1C8DAA0:         Print 1, var_18C & ", " & var_57E
  loc_1C8DAE7:       End If
  loc_1C8DAEA:       var_E8 = vbNullString
  loc_1C8DAF0:     Next var_56C 'Integer
  loc_1C8DAF7:     Set var_568 = Nothing 
  loc_1C8DB00:     Print 1, vbNullString
  loc_1C8DB09:   Next var_564 'Integer
  loc_1C8DB10:   Set var_560 = Nothing 
  loc_1C8DB17:   Set var_584 = MemVar_1F95208 
  loc_1C8DB29:   Call 0.Method_arg_3C (var_104, var_1C0)
  loc_1C8DB31:   Call 0.Method_arg_38 (var_D6)
  loc_1C8DB3D:   For var_588 =  To CInt(var_1C0): 1 = var_588 'Integer
  loc_1C8DB5A:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8DB62:     Call 0.Method_arg_30 (var_15C)
  loc_1C8DB6A:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8DB72:     var_E0 = var_1B0
  loc_1C8DB90:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8DB98:     Call 0.Method_arg_30 (var_138)
  loc_1C8DBA0:     Set var_58C = var_15C
  loc_1C8DBA8:     var_D8 = 1
  loc_1C8DBB1:     Call 0.Method_arg_60 (var_104, var_D8)
  loc_1C8DBC1:     If Not((var_104 Is Nothing)) Then
  loc_1C8DBCD:       Call 0.Method_arg_60 (var_104, var_1B0)
  loc_1C8DBD5:       Call 0.Method_arg_34 (var_15C)
  loc_1C8DBE6:       var_F0 = vbNullString
  loc_1C8DBF0:       var_1B0 = "SanCreateKey """ & var_1B0
  loc_1C8DC1D:       Call 0.Method_arg_60 (var_104, var_15C)
  loc_1C8DC25:       Call 0.Method_CmdNew_UnknownEvent_9C (var_1C0)
  loc_1C8DC2D:       Call 0.Method_arg_38 ()
  loc_1C8DC42:       If (var_1C0 = 1) Then
  loc_1C8DC5B:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8DC63:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8DC6B:         Call 0.Method_arg_30 (var_1B0 & """, """ & var_E0 & """, SQLDMOKey_Primary, True, True, """)
  loc_1C8DC7B:         var_F0 = var_1B0 & """"
  loc_1C8DC8F:       Else
  loc_1C8DCA0:         Call 0.Method_arg_60 (var_104, var_15C, var_1C0)
  loc_1C8DCA8:         Call 0.Method_CmdNew_UnknownEvent_9C (var_D8)
  loc_1C8DCB0:         Call 0.Method_arg_38 (1)
  loc_1C8DCC6:         For var_590 =  To CInt((var_1C0 - 1)):    = var_590 'Integer
  loc_1C8DCE2:           Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8DCEA:           Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8DCF2:           Call 0.Method_arg_30 (var_F0)
  loc_1C8DD02:           var_F0 = var_1B0 & """, """
  loc_1C8DD16:         Next var_590 'Integer
  loc_1C8DD31:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8DD39:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8DD41:         Call 0.Method_arg_30 (var_F0)
  loc_1C8DD4A:         var_1B4 = var_1B0
  loc_1C8DD51:         var_F0 = var_1B4 & """"
  loc_1C8DD62:       End If
  loc_1C8DD67:       Print 1, var_F0
  loc_1C8DD6D:     End If
  loc_1C8DD7B:     Call 0.Method_arg_64 (var_104, var_1C0)
  loc_1C8DD83:     Call 0.Method_arg_38 (var_D8)
  loc_1C8DD8F:     For var_594 =  To CInt(var_1C0): 1 = var_594 'Integer
  loc_1C8DD98:       var_F0 = vbNullString
  loc_1C8DDB3:       Call 0.Method_arg_64 (var_104, CVar(var_D8), var_15C)
  loc_1C8DDBB:       Call 0.Method_arg_30 (var_1B0)
  loc_1C8DDC3:       Call 0.Method_arg_34 (1)
  loc_1C8DDF3:       Call 0.Method_arg_64 (var_1BC, CVar(var_D8), var_200)
  loc_1C8DDFB:       Call 0.Method_arg_30 (var_1B4, 1)
  loc_1C8DE03:       Call 0.Method_arg_34 ((InStr(, var_1B0, "PK", 0) = 0))
  loc_1C8DE2E:       If ( And (InStr(, var_1B4, "Sys", 0) = 0)) Then
  loc_1C8DE47:         Call 0.Method_arg_64 (var_104, CVar(var_D8), var_15C)
  loc_1C8DE4F:         Call 0.Method_arg_30 (var_1B0)
  loc_1C8DE57:         Call 0.Method_arg_34 ("SanCreateIndex """)
  loc_1C8DE9D:         Call 0.Method_arg_64 (var_104, CVar(var_D8))
  loc_1C8DEA5:         Call 0.Method_arg_30 (var_15C)
  loc_1C8DEAD:         Call 0.Method_arg_5C (var_1BC)
  loc_1C8DEB5:         Set var_EC = var_1BC
  loc_1C8DECA:         Call 0.Method_arg_38 (var_1C0, var_DA)
  loc_1C8DED9:         For var_598 =  To CInt((var_1C0 - 1)): 1 = var_598 'Integer
  loc_1C8DEEC:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8DF15:           var_F0 = CStr(CVar(var_1B0 & """, """ & var_E0 & """, SQLDMOIndex_Default, """) & var_104.Name & """, """)
  loc_1C8DF24:         Next var_598 'Integer
  loc_1C8DF2F:         Call 0.Method_arg_38 (var_1C0)
  loc_1C8DF3D:         If (var_1C0 = 1) Then
  loc_1C8DF4D:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8DF55:           var_100 = var_104 'Address Function
  loc_1C8DF59:         End If
  loc_1C8DF68:         var_16C = CVar(var_F0) & var_100.Name 
  loc_1C8DF71:         var_17C = var_16C & """" 
  loc_1C8DF87:         Print 1, CStr(var_17C)
  loc_1C8DF8D:       End If
  loc_1C8DF90:     Next var_594 'Integer
  loc_1C8DF97:     Set var_58C = Nothing 
  loc_1C8DFA0:     Print 1, vbNullString
  loc_1C8DFA9:   Next var_588 'Integer
  loc_1C8DFB0:   Set var_584 = Nothing 
  loc_1C8DFCD:   MsgBox("structure created !!", &H40, var_16C, var_17C, var_18C)
  loc_1C8DFE2:   MemVar_1F9520C = Nothing
  loc_1C8DFEB:   MemVar_1F95208 = Nothing
  loc_1C8DFF4:   Set var_EC = Nothing
  loc_1C8DFF9:   Close 1
  loc_1C8DFFB:   GoTo loc_1C8EF19
  loc_1C8DFFE: End If
  loc_1C8E004: If (var_116 = &HE) Then
  loc_1C8E01A:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8E022:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C8E03C:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C8E042:   var_18C = Trim(var_17C)
  loc_1C8E064:   If (var_18C = vbNullString) Then
  loc_1C8E07A:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8E082:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8E0B5:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C8E0C5:     unk_52FB72.Execute var_1B4 & "'", var_17C, -1
  loc_1C8E102:     If (var_1BC.RecordCount > 0) Then
  loc_1C8E126:       MsgBox("Operation is Not Allowed", &H10, "Bill Already Generated", var_17C, var_18C)
  loc_1C8E136:       Exit Sub
  loc_1C8E137:     End If
  loc_1C8E13A:   Else
  loc_1C8E14D:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8E155:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C8E184:     var_1B0 = CStr(Me.FGrid.TextMatrix))
  loc_1C8E188:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & var_1B0
  loc_1C8E198:     unk_52FB72.Execute var_1B4 & "'", var_17C, -1
  loc_1C8E1C7:     var_1C0 = var_1BC.RecordCount
  loc_1C8E1D5:     If (var_1C0 > 0) Then
  loc_1C8E1DE:       var_138 = "Bill Already Generated"
  loc_1C8E1F9:       MsgBox("Operation is Not Allowed", &H10, var_138, var_17C, var_18C)
  loc_1C8E209:       Exit Sub
  loc_1C8E20A:     End If
  loc_1C8E20A:   End If
  loc_1C8E214:   Set var_88 = New GuestProfile
  loc_1C8E21E:   Set var_104 = Me.FGrid
  loc_1C8E22D:   var_128 = CVar(CLng(var_104.Row)) 'Long
  loc_1C8E235:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8E23E:   Set var_15C = Me.FGrid
  loc_1C8E244:   var_16C = var_15C.TextMatrix)
  loc_1C8E261:   var_88.GuestFolio = Trim(CVar(CStr(var_16C)))
  loc_1C8E280:   var_88.OpenType = "InsertGuestProfile"
  loc_1C8E290:   var_88.OpenMode = 1
  loc_1C8E298:   var_128 = 1
  loc_1C8E2A4:   var_88.Show var_128, var_138
  loc_1C8E2A9:   GoTo loc_1C8EF19
  loc_1C8E2AC: End If
  loc_1C8E2B2: If (var_116 = &HF) Then
  loc_1C8E2B7:   Close 1
  loc_1C8E2C0:   Open "C:\reptmp\ASSSTRUCT.TXT" For Output As 1 Len = &HFF
  loc_1C8E2D7:   Call 0.Method_arg_9C (-1, var_148, var_128, var_1BC, var_16C, var_148, var_128)
  loc_1C8E2DF:   Set var_5A0 = New 
  loc_1C8E2E8:   Call 0.Method_arg_BC (0, var_1BC, var_16C, var_148)
  loc_1C8E2F2:   Call 0.Method_arg_E8 (0, var_128)
  loc_1C8E2F7:   var_148 = vbNullString
  loc_1C8E2FD:   var_138 = "SA"
  loc_1C8E30D:   Call 0.Method_arg_100 (CVar(MemVar_1F95098), var_138, var_148)
  loc_1C8E314:   Set var_5A0 = Nothing 
  loc_1C8E32F:   Call 0.Method_arg_34 (var_104, CVar(MemVar_1F95108), var_138)
  loc_1C8E337:   Call 0.Method_arg_30 (var_15C, var_148)
  loc_1C8E33F:   MemVar_1F95208 = var_15C
  loc_1C8E349:   var_E0 = vbNullString
  loc_1C8E34F:   Set var_5A4 = MemVar_1F95208 
  loc_1C8E361:   Call 0.Method_arg_3C (var_104, var_1C0, var_D6)
  loc_1C8E369:   Call 0.Method_arg_38 (1)
  loc_1C8E375:   For var_5A8 =  To CInt(var_1C0): var_128 = var_5A8 'Integer
  loc_1C8E392:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8E39A:     Call 0.Method_arg_30 (var_15C)
  loc_1C8E3A2:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8E3AA:     var_E0 = var_1B0
  loc_1C8E3BB:     var_1B0 = "bl = PubAnalysis.SanFaCreateTable(Cat, """ & var_E0
  loc_1C8E3C7:     Print 1, var_1B0 & """)"
  loc_1C8E3E8:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8E3F0:     Call 0.Method_arg_30 (var_138)
  loc_1C8E3F8:     Set var_5AC = var_15C
  loc_1C8E40C:     Call 0.Method_arg_3C (var_104, var_1C0, var_D8)
  loc_1C8E414:     Call 0.Method_arg_38 (1)
  loc_1C8E420:     For var_5B0 =  To CInt(var_1C0): var_15C = var_5B0 'Integer
  loc_1C8E439:       Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8E441:       Call 0.Method_arg_30 (var_15C)
  loc_1C8E449:       Call 0.Method_arg_54 (var_1B0)
  loc_1C8E45F:       var_5C0 = Ucase(CVar(var_1B0)) 'Variant
  loc_1C8E478:       If Not (var_5C0 = "INT") Then
  loc_1C8E486:         If Not (var_5C0 = "SMALLINT") Then
  loc_1C8E494:           If (var_5C0 = "LONG") Then
  loc_1C8E497:           End If
  loc_1C8E497:         End If
  loc_1C8E49A:         var_E8 = "0"
  loc_1C8E4A6:         var_F0 = vbNullString
  loc_1C8E4B0:         var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8E4DA:         Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E4E2:         Call 0.Method_arg_30 (var_1B0)
  loc_1C8E4EA:         Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8E53A:         Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E542:         Call 0.Method_arg_30 (var_51E)
  loc_1C8E54A:         Call 0.Method_arg_78 (CVar(var_1B0 & """, " & "adInteger" & """, " & "adInteger" & """, " & "adInteger" & ", , "))
  loc_1C8E576:         Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8E57E:         Call 0.Method_arg_30 (var_57E)
  loc_1C8E586:         Call 0.Method_arg_78 (var_51E & ", 0, ")
  loc_1C8E5C3:         Print 1, CStr(Not(var_57E) & ")")
  loc_1C8E5CC:       Else
  loc_1C8E5D7:         If (var_5C0 = "DOUBLE") Then
  loc_1C8E5DD:           var_E8 = "0"
  loc_1C8E5E9:           var_F0 = vbNullString
  loc_1C8E5F3:           var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8E61D:           Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E625:           Call 0.Method_arg_30 (var_1B0)
  loc_1C8E62D:           Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8E67D:           Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E685:           Call 0.Method_arg_30 (var_51E)
  loc_1C8E68D:           Call 0.Method_arg_78 (CVar(var_1B0 & """, " & "adDouble" & """, " & "adDouble" & """, " & "adDouble" & ", , "))
  loc_1C8E6B9:           Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8E6C1:           Call 0.Method_arg_30 (var_57E)
  loc_1C8E6C9:           Call 0.Method_arg_78 (var_51E & ", 0, ")
  loc_1C8E706:           Print 1, CStr(Not(var_57E) & ")")
  loc_1C8E70F:         Else
  loc_1C8E71A:           If (var_5C0 = "DATETIME") Then
  loc_1C8E726:             var_F0 = vbNullString
  loc_1C8E730:             var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8E75A:             Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E762:             Call 0.Method_arg_30 (var_1B0)
  loc_1C8E76A:             Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8E7BA:             Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E7C2:             Call 0.Method_arg_30 (var_51E)
  loc_1C8E7CA:             Call 0.Method_arg_78 (CVar(var_1B0 & """, " & "adDate" & """, " & "adDate" & """, " & "adDate" & ", , "))
  loc_1C8E7F6:             Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8E7FE:             Call 0.Method_arg_30 (var_57E)
  loc_1C8E806:             Call 0.Method_arg_78 (var_51E & ", , ")
  loc_1C8E843:             Print 1, CStr(Not(var_57E) & ")")
  loc_1C8E84C:           Else
  loc_1C8E857:             If Not (var_5C0 = "VARCHAR") Then
  loc_1C8E865:               If Not (var_5C0 = "CHAR") Then
  loc_1C8E873:                 If (var_5C0 = "NVARCHAR") Then
  loc_1C8E876:                 End If
  loc_1C8E876:               End If
  loc_1C8E885:               var_F0 = vbNullString
  loc_1C8E88F:               var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8E8B9:               Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E8C1:               Call 0.Method_arg_30 (var_1B0)
  loc_1C8E8C9:               Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8E8F3:               var_1B0 = var_1B0 & """, " & "adWChar"
  loc_1C8E910:               Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E918:               Call 0.Method_arg_30 (var_1C0)
  loc_1C8E920:               Call 0.Method_arg_60 (var_1B0 & ", ")
  loc_1C8E94D:               var_138 = CVar(CStr(var_1C0) & ", ") 'String
  loc_1C8E963:               Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8E96B:               Call 0.Method_arg_30 (var_51E)
  loc_1C8E973:               Call 0.Method_arg_78 (var_138)
  loc_1C8E99B:               var_18C = var_51E & ", " & CVar("""""""""""""") & ", " 
  loc_1C8E9B2:               Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8E9BA:               Call 0.Method_arg_30 (var_57E)
  loc_1C8E9C2:               Call 0.Method_arg_78 (var_18C)
  loc_1C8EA03:               Print 1, CStr(Not(var_57E) & ")")
  loc_1C8EA09:             End If
  loc_1C8EA09:           End If
  loc_1C8EA09:         End If
  loc_1C8EA09:       End If
  loc_1C8EA0C:     Next var_5B0 'Integer
  loc_1C8EA13:     Set var_5AC = Nothing 
  loc_1C8EA1C:     Print 1, vbNullString
  loc_1C8EA25:   Next var_5A8 'Integer
  loc_1C8EA2C:   Set var_5A4 = Nothing 
  loc_1C8EA33:   Set var_5C4 = MemVar_1F95208 
  loc_1C8EA45:   Call 0.Method_arg_3C (var_104, var_1C0)
  loc_1C8EA4D:   Call 0.Method_arg_38 (var_D6)
  loc_1C8EA59:   For var_5C8 =  To CInt(var_1C0): 1 = var_5C8 'Integer
  loc_1C8EA76:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8EA7E:     Call 0.Method_arg_30 (var_15C)
  loc_1C8EA86:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8EA8E:     var_E0 = var_1B0
  loc_1C8EAAC:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8EAB4:     Call 0.Method_arg_30 (var_138)
  loc_1C8EABC:     Set var_5CC = var_15C
  loc_1C8EAC4:     var_D8 = 1
  loc_1C8EACD:     Call 0.Method_arg_60 (var_104, var_D8)
  loc_1C8EADD:     If Not((var_104 Is Nothing)) Then
  loc_1C8EAE9:       Call 0.Method_arg_60 (var_104, var_1B0)
  loc_1C8EAF1:       Call 0.Method_arg_34 (var_15C)
  loc_1C8EB02:       var_F0 = vbNullString
  loc_1C8EB0C:       var_1B0 = "b1 = PubAnalysis.SanFaCreateIndex(Cat, """ & var_E0
  loc_1C8EB39:       Call 0.Method_arg_60 (var_104, var_15C)
  loc_1C8EB41:       Call 0.Method_CmdNew_UnknownEvent_9C (var_1C0)
  loc_1C8EB49:       Call 0.Method_arg_38 ()
  loc_1C8EB5E:       If (var_1C0 = 1) Then
  loc_1C8EB77:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8EB7F:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8EB87:         Call 0.Method_arg_30 (var_1B0 & """, """ & var_1B0 & """, True, True, adIndexNullsDisallow, """)
  loc_1C8EB97:         var_F0 = var_1B0 & """)"
  loc_1C8EBAB:       Else
  loc_1C8EBBC:         Call 0.Method_arg_60 (var_104, var_15C, var_1C0)
  loc_1C8EBC4:         Call 0.Method_CmdNew_UnknownEvent_9C (var_D8)
  loc_1C8EBCC:         Call 0.Method_arg_38 (1)
  loc_1C8EBE2:         For var_5D0 =  To CInt((var_1C0 - 1)):    = var_5D0 'Integer
  loc_1C8EBFE:           Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8EC06:           Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8EC0E:           Call 0.Method_arg_30 (var_F0)
  loc_1C8EC1E:           var_F0 = var_1B0 & """, """
  loc_1C8EC32:         Next var_5D0 'Integer
  loc_1C8EC4D:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8EC55:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8EC5D:         Call 0.Method_arg_30 (var_F0)
  loc_1C8EC66:         var_1B4 = var_1B0
  loc_1C8EC6D:         var_F0 = var_1B4 & """)"
  loc_1C8EC7E:       End If
  loc_1C8EC83:       Print 1, var_F0
  loc_1C8EC89:     End If
  loc_1C8EC97:     Call 0.Method_arg_64 (var_104, var_1C0)
  loc_1C8EC9F:     Call 0.Method_arg_38 (var_D8)
  loc_1C8ECAB:     For var_5D4 =  To CInt(var_1C0): 1 = var_5D4 'Integer
  loc_1C8ECB4:       var_F0 = vbNullString
  loc_1C8ECBA:       var_E4 = vbNullString
  loc_1C8ECD5:       Call 0.Method_arg_64 (var_104, CVar(var_D8), var_15C)
  loc_1C8ECDD:       Call 0.Method_arg_30 (var_1B0)
  loc_1C8ECE5:       Call 0.Method_arg_34 (1)
  loc_1C8ED15:       Call 0.Method_arg_64 (var_1BC, CVar(var_D8), var_200)
  loc_1C8ED1D:       Call 0.Method_arg_30 (var_1B4, 1)
  loc_1C8ED25:       Call 0.Method_arg_34 ((InStr(, var_1B0, "PK", 0) = 0))
  loc_1C8ED50:       If ( And (InStr(, var_1B4, "Sys", 0) = 0)) Then
  loc_1C8ED66:         Call 0.Method_arg_64 (var_104, CVar(var_D8))
  loc_1C8ED6E:         Call 0.Method_arg_30 (var_15C)
  loc_1C8ED76:         Call 0.Method_arg_34 (var_1B0)
  loc_1C8ED9D:         var_1B8 = "b1 = PubAnalysis.SanFaCreateIndex(Cat, """ & var_E0 & """, """ & "b1 = PubAnalysis.SanFaCreateIndex(Cat, """ & var_E0
  loc_1C8EDC3:         Call 0.Method_arg_64 (var_104, CVar(var_D8))
  loc_1C8EDCB:         Call 0.Method_arg_30 (var_15C)
  loc_1C8EDD3:         Call 0.Method_arg_5C (var_1BC)
  loc_1C8EDDB:         Set var_EC = var_1BC
  loc_1C8EDF0:         Call 0.Method_arg_38 (var_1C0, var_DA)
  loc_1C8EDFF:         For var_5D8 =  To CInt((var_1C0 - 1)): 1 = var_5D8 'Integer
  loc_1C8EE12:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8EE3B:           var_F0 = CStr(CVar(var_1B8 & """, False, False, adIndexNullsAllow, """) & var_104.Name & """, """)
  loc_1C8EE4A:         Next var_5D8 'Integer
  loc_1C8EE55:         Call 0.Method_arg_38 (var_1C0)
  loc_1C8EE63:         If (var_1C0 = 1) Then
  loc_1C8EE73:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8EE7B:           var_100 = var_104 'Address Function
  loc_1C8EE7F:         End If
  loc_1C8EE8E:         var_16C = CVar(var_F0) & var_100.Name 
  loc_1C8EE97:         var_17C = var_16C & """)" 
  loc_1C8EEAD:         Print 1, CStr(var_17C)
  loc_1C8EEB3:       End If
  loc_1C8EEB6:     Next var_5D4 'Integer
  loc_1C8EEBD:     Set var_5CC = Nothing 
  loc_1C8EEC6:     Print 1, vbNullString
  loc_1C8EECF:   Next var_5C8 'Integer
  loc_1C8EED6:   Set var_5C4 = Nothing 
  loc_1C8EEF3:   MsgBox("access structure created !!", &H40, var_16C, var_17C, var_18C)
  loc_1C8EF08:   MemVar_1F9520C = Nothing
  loc_1C8EF11:   MemVar_1F95208 = Nothing
  loc_1C8EF17:   Close 1
  loc_1C8EF19:   ' Referenced from: 1C8E2A9
  loc_1C8EF19:   ' Referenced from: 1C8DFFB
  loc_1C8EF19:   ' Referenced from: 1C8D55D
  loc_1C8EF19:   ' Referenced from: 1C8D36F
  loc_1C8EF19:   ' Referenced from: 1C8CF98
  loc_1C8EF19:   ' Referenced from: 1C8CAE5
  loc_1C8EF19:   ' Referenced from: 1C89B46
  loc_1C8EF19:   ' Referenced from: 1C8983B
  loc_1C8EF19:   ' Referenced from: 1C8978F
  loc_1C8EF19:   ' Referenced from: 1C895D3
  loc_1C8EF19:   ' Referenced from: 1C894CF
  loc_1C8EF19:   ' Referenced from: 1C88E97
  loc_1C8EF19:   ' Referenced from: 1C88D93
  loc_1C8EF19:   ' Referenced from: 1C88CE7
  loc_1C8EF19:   ' Referenced from: 1C88B36
  loc_1C8EF19: End If
  loc_1C8EF1E: Set var_8C = Nothing
  loc_1C8EF26: Set var_94 = Nothing
  loc_1C8EF2E: Set var_88 = Nothing
  loc_1C8EF31: Exit Sub
End Sub

Private Sub CmdLockCard_UnknownEvent_9 'E7D1D0
  'Data Table: 52FB6C
  Dim var_AC As Variant
  Dim var_88 As Long
  loc_E7D18F: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E7D1BA: var_88 = Proc_336_1_11FB9C0(CStr(Me.FGrid.TextMatrix)), CVar(CLng(&H13)))
  loc_E7D1CE: Exit Sub
End Sub

Private Sub Label3_Click() 'F7513C
  'Data Table: 52FB6C
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_128 As String
  Dim var_178 As String
  Dim MemVar_1F950E4 As String
  Dim unk_52FB72 As Connection15
  Dim var_88 As Recordset15
  loc_F75018: On Error Goto loc_F75135
  loc_F75022: var_B8 = CVar("Select '' As SearchCode,Booking.BookNo as Res_No,LTrim(GuestName) As Guest_Name,Case When LTrim(IsNull(GuestProf.MobileNo,''))<>'' Then LTrim(IsNull(GuestProf.MobileNo,'')) Else LTrim(IsNull(GuestProf.PhoneNo,'')) End Mobile_No,Roomcat.Name as Room_Type,Convert(Varchar(11),Booking.ArrDate,106) Arr_Date,Booking.ArrTime As Arr_Tm,Convert(Varchar(11),Booking.DepDate,106) Dep_Date,Booking.DepTime Dep_Tm,RoomNo,Booking.ResStatus Status,BookedBy Booked_By,Booking.Remarks,Booking.NoofRooms as RoomDet,Booking.Adult As Pax,Booking.Child as Child,PlanMast.Name As Plan_Name,LTrim(ISNULL(S.Name,''))  + Case When LTrim(ISNULL(sg.Name,''))<>'' Then '/' Else '' End + LTrim(ISNULL(sg.Name,'')) as [Company/Travel Agent],ArrFrom as Arr_From " & "From ViewBooking as Booking Left Join GuestProf On GuestProf.Code=Booking.GuestProf Left Join PlanMast On Booking.PackageCode=PlanMast.Code Left Join Roomcat On Roomcat.code=Booking.RoomCat Left Join Subgroup S On Booking.Company=S.SubCode LEFT JOIN SubGroup sg ON Booking.TravelAgency = sg.SubCode where RoomType='RO' And Cancel='N' And ") 'String
  loc_F75030: Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_F7503C: var_D8 = " >=Booking.Arrdate and "
  loc_F75050: Proc_6_7_F26918(var_108, MemVar_1F950EC)
  loc_F7505C: var_128 = " < Booking.Depdate And Not Exists(Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_F75070: Proc_6_7_F26918(var_158, MemVar_1F950EC)
  loc_F7507C: var_178 = " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Order by Booking.ResStatus,Booking.ArrDate,Guest_Name,Res_No,Booking.Sno"
  loc_F75086: MemVar_1F950E4 = CStr(var_B8 & var_A8 & var_D8 & var_108 & var_128 & var_158 & var_178)
  loc_F750B7: unk_52FB72.Execute MemVar_1F950E4, var_A8, -1
  loc_F750DF: If (var_18C.RecordCount = 0) Then
  loc_F750E7:   Set var_88 = Nothing
  loc_F750EA:   Exit Sub
  loc_F750EB: End If
  loc_F750F1: MemVar_1F95120 = Me
  loc_F750FE: Proc_6_126_F1C850("600,2000,1100,1400,1100,650,1100,650,700,800,1200,1200,0,0,0,1600,2000,1400", var_18C)
  loc_F7510F: Call 0.Method_arg_54 ("Arrival List")
  loc_F75127: Call 0.Method_arg_2B0 (1, var_D8)
  loc_F75131: Set var_88 = Nothing
  loc_F75134: Exit Sub
  loc_F75135: ' Referenced from: F75018
  loc_F75135: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F7513A: Exit Sub
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE3658
  'Data Table: 52FB6C
  Dim var_A8 As Variant
  loc_EE35B3: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE35CF:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE35DE:   Me.FGrid.Row = var_A8
  loc_EE3606:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE3615:   Me.FGrid.ColSel = var_A8
  loc_EE3646:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE3655: End If
  loc_EE3655: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18E00
  'Data Table: 52FB6C
  Dim var_B88 As Integer
  loc_E18DF5: Me.Global.Unload Me
  loc_E18DFD: Exit Sub
  loc_E18DFE: var_B88 = 
End Sub

Public Property Get PGuestName() 'E1542C
  'Data Table: 52FB6C
  loc_E15420: var_88 = global_56
  loc_E15423: PGuestName = 
End Sub

Public Property Let PGuestName(vNewValue) 'E1530C
  'Data Table: 52FB6C
  loc_E15304: global_56 = vNewValue
  loc_E15308: Exit Sub
End Sub

Public Property Get PRoomNo() 'E1152C
  'Data Table: 52FB6C
  loc_E11520: var_88 = global_60
  loc_E11523: PRoomNo = 
End Sub

Public Property Let PRoomNo(vNewValue) 'E0E124
  'Data Table: 52FB6C
  loc_E0E113: var_88 = vNewValue
  loc_E0E11F: global_60 = global_60
  loc_E0E123: Exit Sub
End Sub

Public Sub MadFaSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '1126BBC
  'Data Table: 52FB6C
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim KeyAscii As Integer
  loc_1126873: If (^.rows < 1) Then
  loc_1126876:   Exit Sub
  loc_1126877: End If
  loc_112688B: If (Me.RecordCount <= 0) Then
  loc_1126897:   Me.TEXT = vbNullString
  loc_112689B:   Exit Sub
  loc_112689C: End If
  loc_11268B1: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11268B4:   Exit Sub
  loc_11268B5: End If
  loc_11268BF: If (CLng(KeyAscii) = 8) Then
  loc_11268D9:   If (Len(Me.SelText) > 1) Then
  loc_11268ED:     var_E0 = (Len(Me.SelText) - 1)
  loc_11268F5:     Me.SelLength = var_E0
  loc_1126905:     var_8C = CStr(Me.SelText)
  loc_112690E:   Else
  loc_1126917:     Me.TEXT = vbNullString
  loc_112691E:     Call ^.SetFocus
  loc_112692C:     Me.Visible = False
  loc_1126930:     Exit Sub
  loc_1126931:   End If
  loc_1126934: Else
  loc_112694B:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_1126950:   var_8C = CStr(var_E0)
  loc_112695C: End If
  loc_1126979: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_112697F: Me.Recordset15.MoveFirst
  loc_11269BC: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11269FF:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_1126A14: Else
  loc_1126A44:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_1126A54: End If
  loc_1126A56: KeyAscii = 0
  loc_1126A82: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_1126A9B:   ^.Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_1126ACE:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_1126AE8:   Me.SelLength = CVar(Len(var_8C))
  loc_1126AFC:   var_E0 = (^.CellLeft + ^.left)
  loc_1126B04:   Me.left = var_E0
  loc_1126B21:   var_E0 = (^.CellTop + ^.top)
  loc_1126B29:   Me.top = var_E0
  loc_1126B48:   If (Me.Visible = False) Then
  loc_1126B52:     Me.Visible = True
  loc_1126B56:     var_9C = 0
  loc_1126B5F:     Call Me.ZOrder
  loc_1126B68:     Call Me.SetFocus
  loc_1126B7A:     Me.BackColor = ^.CellBackColor
  loc_1126B8D:     Me.ForeColor = ^.CellForeColor
  loc_1126BA0:     Me.width = ^.CellWidth
  loc_1126BB3:     Me.height = ^.CellHeight
  loc_1126BBA:   End If
  loc_1126BBA: End If
  loc_1126BBA: Exit Sub
End Sub

Public Sub Proc_52_33_1501288
  'Data Table: 52FB6C
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_144 As Variant
  Dim var_14C As Variant
  Dim var_DC As Integer
  Dim unk_52FB72 As Connection15
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_17C As Variant
  Dim var_22C As Variant
  Dim var_28C As Variant
  Dim var_2DC As Variant
  Dim var_2E4 As String
  Dim var_2E8 As String
  Dim var_2EC As String
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_1BC As Integer
  Dim var_300 As Fields15
  Dim var_304 As Field20
  loc_150042C: On Error Resume Next
  loc_1500446: var_A2 = CByte(CLng(Me.FGrid.Row)) 'Byte
  loc_1500477: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_1500483:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1500488:   var_EC = &H1C2
  loc_1500495:   Set var_A8 = Me.FGrid
  loc_150049B:   LateIdCallSt
  loc_15004AC:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15004CF:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15004F1:   If CBool(Trim(var_10C) <> vbNullString) Then
  loc_1500507:     var_B8 = Me.FGrid.Cols
  loc_150051E:     For var_140 = CByte(1) To CByte((CLng(var_B8) - 1)): var_8E = var_140 'Byte
  loc_1500539:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_1500557:       Me.FGrid.Col = CVar(CLng(var_8E))
  loc_150056D:       Set var_A8 = Me.Label2
  loc_1500573:       Call 0.Method_Proc_52_33_15012880 (4, var_144, var_148, CByte(1), &H11)
  loc_150057B:       var_CC = var_144.BackColor
  loc_1500592:       Me.FGrid.CellBackColor = CVar(var_148)
  loc_15005A5:     Next var_140 'Byte
  loc_15005AB:   End If
  loc_15005B5:   var_DC = 0
  loc_15005D4:   unk_52FB72.Execute "Select getDate()", var_B8, -1
  loc_15005DC:   var_A8 = var_A8.Fields
  loc_15005E4:   var_DC = var_144.Item(var_144)
  loc_15005EC:   var_14C = var_14C.Value
  loc_1500611:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1500619:   var_EC = CVar(CLng(5)) 'Long
  loc_1500639:   var_11C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1500642:   var_18C = CVar(CLng(var_86)) 'Long
  loc_150064A:   var_1AC = CVar(CLng(&H17)) 'Long
  loc_1500653:   Set var_144 = Me.FGrid
  loc_15006C8:   var_13C = "dd/MMM/yyyy"
  loc_15006E1:   var_17C = (Format(var_11C, var_13C) + " ")
  loc_1500708:   var_22C = (1 + Format(Trim(CVar(CStr(var_144.TextMatrix)))), "hh:nn"))
  loc_1500716:   var_28C = (Format(MemVar_1F950EC, "dd/MMM/yyyy") + " ")
  loc_150071D:   var_2DC = (var_28C + Format(CDate(CVar(CStr(Me.FGrid.TextMatrix)))), "hh:nn"))
  loc_1500756:   If (CDate(var_22C) <= CDate(var_2DC)) Then
  loc_1500783:     For var_2E0 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 1)): var_8E = var_2E0 'Byte
  loc_150079E:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_15007BC:       Me.FGrid.Col = CVar(CLng(var_8E))
  loc_15007D2:       Set var_A8 = Me.Label2
  loc_15007D8:       Call 0.Method_Proc_52_33_15012880 (5, var_144, var_148, CByte(1), 1, var_17C, 1)
  loc_15007E0:       1 = var_144.BackColor
  loc_15007F7:       Me.FGrid.CellBackColor = CVar(var_148)
  loc_150080A:     Next var_2E0 'Byte
  loc_1500810:   End If
  loc_1500818:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1500820:   var_EC = CVar(CLng(&HF)) 'Long
  loc_150083A:   var_2E4 = CStr(Me.FGrid.TextMatrix))
  loc_1500846:   var_12C = CVar(CLng(var_86)) 'Long
  loc_150088B:   If (CVar(CLng(&HF)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1500894:     var_CC = CVar(CLng(var_86)) 'Long
  loc_150089C:     var_EC = CVar(CLng(3)) 'Long
  loc_15008B6:     var_2E4 = CStr(Me.FGrid.TextMatrix))
  loc_15008BD:     var_12C = CVar(CLng(var_86)) 'Long
  loc_15008CE:     Set var_144 = Me.FGrid
  loc_15008D4:     var_10C = var_144.TextMatrix)
  loc_15008F9:     If (CVar(CLng(&HF)) = CStr(var_10C)) Then
  loc_1500902:       var_CC = CVar(CLng(var_86)) 'Long
  loc_150090A:       var_EC = CVar(CLng(&H13)) 'Long
  loc_1500944:       var_2EC = "Select Distinct Bill_No from paycharge where FolionodOCID='" & CStr(Me.FGrid.TextMatrix)) & "' and (Bill_No<>'' or bill_no is Not Null)"
  loc_150094D:       unk_52FB72.Execute var_2EC, var_10C, -1
  loc_1500958:       Set var_8C = var_144
  loc_1500988:       If (var_8C.RecordCount > 0) Then
  loc_1500996:         var_8C.Filter = "Bill_No<>NULL and BIll_No<>''"
  loc_150099B:       End If
  loc_15009B1:       If (var_8C.RecordCount > 0) Then
  loc_15009BA:         var_CC = CVar(CLng(var_86)) 'Long
  loc_15009C2:         var_EC = CVar(CLng(&H13)) 'Long
  loc_15009F5:         var_2E8 = "Select  bill_no,AmtDr,RoomNo from paycharge where (ContraDocId is NULL or contradocid='') and folionodOCID='" & CStr(Me.FGrid.TextMatrix))
  loc_1500A05:         unk_52FB72.Execute var_2E8 & "'", var_10C, -1
  loc_1500A10:         Set var_94 = var_144
  loc_1500A40:         If (var_94.RecordCount > 0) Then
  loc_1500A4E:           var_94.Filter = "Bill_No=NULL and AmtDr<>0"
  loc_1500A53:         End If
  loc_1500A5B:         var_148 = var_94.RecordCount
  loc_1500A69:         If (var_148 > 0) Then
  loc_1500A6E:           GoTo loc_150120E
  loc_1500A71:         End If
  loc_1500A84:         var_B8 = Me.FGrid.Cols
  loc_1500A9B:         For var_2F0 = CByte(1) To CByte((CLng(var_B8) - 1)): var_8E = var_2F0 'Byte
  loc_1500AB6:           Me.FGrid.Row = CVar(CLng(var_86))
  loc_1500AD4:           Me.FGrid.Col = CVar(CLng(var_8E))
  loc_1500AEA:           Set var_A8 = Me.Label2
  loc_1500AF0:           Call 0.Method_Proc_52_33_15012880 (1, var_144, var_148, CByte(1), var_144, var_B8, var_EC)
  loc_1500AF8:           var_CC = var_144.BackColor
  loc_1500B0F:           Me.FGrid.CellBackColor = CVar(var_148)
  loc_1500B22:         Next var_2F0 'Byte
  loc_1500B28:       End If
  loc_1500B4B:       If (CLng(Me.FGrid.Rows) > 1) Then
  loc_1500B63:         Me.FGrid.Row = 1
  loc_1500B6B:       End If
  loc_1500B6E:     Else
  loc_1500B76:       var_CC = CVar(CLng(var_86)) 'Long
  loc_1500B7E:       var_EC = CVar(CLng(&H13)) 'Long
  loc_1500BB8:       var_2EC = "Select Distinct Bill_No from paycharge where FolioNoDocid='" & CStr(Me.FGrid.TextMatrix)) & "' and (ModeSet<>'S' OR ModeSet is NULL or Modeset='') and (Bill_No<>'' or bill_no is Not Null)"
  loc_1500BC1:       unk_52FB72.Execute var_2EC, var_10C, -1
  loc_1500BCC:       Set var_8C = var_144
  loc_1500BEE:       var_148 = var_8C.RecordCount
  loc_1500BFC:       If (var_148 <= 0) Then
  loc_1500C05:         var_CC = CVar(CLng(var_86)) 'Long
  loc_1500C0D:         var_EC = CVar(CLng(3)) 'Long
  loc_1500C2C:         var_12C = CVar(CLng(var_86)) 'Long
  loc_1500C34:         var_18C = CVar(CLng(&H14)) 'Long
  loc_1500C3D:         Set var_144 = Me.FGrid
  loc_1500C43:         var_10C = var_144.TextMatrix)
  loc_1500C55:         var_1BC = 0
  loc_1500C7D:         var_2EC = "Select COunt(*) from paycharge where Bill_No<>'' and RelatedFolioNo=" & CStr(Me.FGrid.TextMatrix)) & " and FolioNODocid='"
  loc_1500C98:         unk_52FB72.Execute var_2EC & CStr(var_10C) & "'", var_11C, -1
  loc_1500CA0:         var_14C = var_14C.Fields
  loc_1500CA8:         var_1BC = var_300.Item(var_300)
  loc_1500CB0:         var_304 = var_304.Value
  loc_1500CE7:         If (var_13C > 0) Then
  loc_1500D14:           For var_308 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 1)):   var_8E = var_308 'Byte
  loc_1500D2F:             Me.FGrid.Row = CVar(CLng(var_86))
  loc_1500D4D:             Me.FGrid.Col = CVar(CLng(var_8E))
  loc_1500D63:             Set var_A8 = Me.Label2
  loc_1500D69:             Call 0.Method_Proc_52_33_15012880 (1, var_144, var_148, CByte(1), var_13C, var_10C)
  loc_1500D71:             var_18C = var_144.BackColor
  loc_1500D88:             Me.FGrid.CellBackColor = CVar(var_148)
  loc_1500D9B:           Next var_308 'Byte
  loc_1500DA4:         Else
  loc_1500DAB:         Else
  loc_1500DB0:         Else
  loc_1500DBD:           var_8C.Filter = "Bill_No<>NULL and BIll_No<>''"
  loc_1500DD8:           If (var_8C.RecordCount > 0) Then
  loc_1500DE1:             var_CC = CVar(CLng(var_86)) 'Long
  loc_1500DE9:             var_EC = CVar(CLng(&H13)) 'Long
  loc_1500E1C:             var_2E8 = "Select  bill_no,AmtDr,RoomNo from paycharge where (ContraDocId is NULL or contradocid='') and (ModeSet<>'S' OR ModeSet is NULL) and folionoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1500E2C:             unk_52FB72.Execute var_2E8 & "'", var_10C, -1
  loc_1500E37:             Set var_94 = var_144
  loc_1500E67:             If (var_94.RecordCount > 0) Then
  loc_1500E75:               var_94.Filter = "Bill_No=NULL and AmtDr<>0"
  loc_1500E7A:             End If
  loc_1500E82:             var_148 = var_94.RecordCount
  loc_1500E90:             If (var_148 > 0) Then
  loc_1500E95:               GoTo loc_150120E
  loc_1500E98:             End If
  loc_1500EC2:             For var_30C = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 1)):       var_8E = var_30C 'Byte
  loc_1500EDD:               Me.FGrid.Row = CVar(CLng(var_86))
  loc_1500EFB:               Me.FGrid.Col = CVar(CLng(var_8E))
  loc_1500F11:               Set var_A8 = Me.Label2
  loc_1500F17:               Call 0.Method_Proc_52_33_15012880 (1, var_144, var_148, CByte(1))
  loc_1500F1F:               var_144 = var_144.BackColor
  loc_1500F36:               Me.FGrid.CellBackColor = CVar(var_148)
  loc_1500F49:             Next var_30C 'Byte
  loc_1500F4F:           End If
  loc_1500F72:           If (CLng(Me.FGrid.Rows) > 1) Then
  loc_1500F8A:             Me.FGrid.Row = 1
  loc_1500F92:           End If
  loc_1500F92:         End If
  loc_1500F94:       End If
  loc_1500F99:     Else
  loc_1500FA1:       var_CC = CVar(CLng(var_86)) 'Long
  loc_1500FA9:       var_EC = CVar(CLng(&H13)) 'Long
  loc_1500FE3:       var_2EC = "Select Distinct Bill_No from paycharge where FolionoDocid='" & CStr(Me.FGrid.TextMatrix)) & "' and (ModeSet<>'S' OR ModeSet is NULL) and (Bill_No<>'' and bill_no is Not Null)"
  loc_1500FEC:       unk_52FB72.Execute var_2EC, var_10C, -1
  loc_1500FF7:       Set var_8C = var_144
  loc_1501027:       If (var_8C.RecordCount > 0) Then
  loc_1501035:         var_8C.Filter = "Bill_No<>NULL and BIll_No<>''"
  loc_150103A:       End If
  loc_1501050:       If (var_8C.RecordCount > 0) Then
  loc_1501059:         var_CC = CVar(CLng(var_86)) 'Long
  loc_1501061:         var_EC = CVar(CLng(&H13)) 'Long
  loc_1501094:         var_2E8 = "Select  bill_no,AmtDr,RoomNo from paycharge where (ContraDocId is NULL or contradocid='') and (ModeSet<>'S' OR ModeSet is NULL) and folionoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_15010A4:         unk_52FB72.Execute var_2E8 & "'", var_10C, -1
  loc_15010AF:         Set var_94 = var_144
  loc_15010DF:         If (var_94.RecordCount > 0) Then
  loc_15010ED:           var_94.Filter = "Bill_No='' and AmtDr<>0"
  loc_15010F2:         End If
  loc_15010FC:         var_148 = var_94.RecordCount
  loc_150110A:         If (var_148 > 0) Then
  loc_150110F:           GoTo loc_150120E
  loc_1501112:         End If
  loc_1501125:         var_B8 = Me.FGrid.Cols
  loc_150113C:         For var_310 = CByte(1) To CByte((CLng(var_B8) - 1)):     var_8E = var_310 'Byte
  loc_1501157:           Me.FGrid.Row = CVar(CLng(var_86))
  loc_1501175:           Me.FGrid.Col = CVar(CLng(var_8E))
  loc_150118B:           Set var_A8 = Me.Label2
  loc_1501191:           Call 0.Method_Proc_52_33_15012880 (1, var_144, var_148, CByte(1), var_144, var_B8)
  loc_1501199:           var_EC = var_144.BackColor
  loc_15011B0:           Me.FGrid.CellBackColor = CVar(var_148)
  loc_15011C3:         Next var_310 'Byte
  loc_15011C9:       End If
  loc_15011EC:       If (CLng(Me.FGrid.Rows) > 1) Then
  loc_1501204:         Me.FGrid.Row = 1
  loc_150120C:       End If
  loc_150120C:     End If
  loc_150120E:     ' Referenced from:   150110F
  loc_150120E:     ' Referenced from:   1500E95
  loc_150120E:   End If
  loc_150120E:   ' Referenced from: 1500A6E
  loc_1501213: Next var_BC 'Integer
  loc_150122E: Me.FGrid.Row = CVar(CLng(var_A2))
  loc_1501251: var_CC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_1501260: Me.FGrid.ColSel = CVar(CLng(var_A2))
  loc_1501276: Set var_8C = Nothing
  loc_1501280: Set var_98 = Nothing
  loc_1501285: Exit Sub
End Sub

Public Sub Proc_52_34_E52930
  'Data Table: 52FB6C
  loc_E5291D: MsgBox("aa", 0, var_C4, var_E4, var_104)
  loc_E5292D: Exit Sub
  loc_E5292E: Exit Sub
End Sub

Public Sub Proc_52_35_1434FB4
  'Data Table: 52FB6C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_104 As MSHFlexGrid
  loc_14344CC: Set var_88 = Me.FGrid
  loc_14344DA: var_88.Left = CVar(CDbl(0))
  loc_14344EB: var_88.Cols = &H19
  loc_14344F0: var_98 = 0
  loc_14344F9: var_B8 = &H20D
  loc_1434505: LateIdCallSt
  loc_1434510: var_98 = CVar(CLng(0)) 'Long
  loc_1434515: var_B8 = &H221
  loc_1434521: LateIdCallSt
  loc_1434529: var_98 = 0
  loc_1434535: var_B8 = CVar(CLng(1)) 'Long
  loc_143453A: var_D8 = "Room No."
  loc_1434543: LateIdCallSt
  loc_143454E: var_98 = CVar(CLng(1)) 'Long
  loc_1434559: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434560: LateIdCallSt
  loc_143456B: var_98 = CVar(CLng(1)) 'Long
  loc_1434570: var_B8 = &H28A
  loc_143457C: LateIdCallSt
  loc_1434587: var_98 = CVar(CLng(2)) 'Long
  loc_143458C: var_B8 = 0
  loc_1434598: LateIdCallSt
  loc_14345A0: var_98 = 0
  loc_14345AC: var_B8 = CVar(CLng(3)) 'Long
  loc_14345B1: var_D8 = "Folio No."
  loc_14345BA: LateIdCallSt
  loc_14345C5: var_98 = CVar(CLng(3)) 'Long
  loc_14345D0: var_B8 = CVar(CInt(1)) 'Integer
  loc_14345D7: LateIdCallSt
  loc_14345E2: var_98 = CVar(CLng(3)) 'Long
  loc_14345ED: var_B8 = CVar(CInt(1)) 'Integer
  loc_14345F4: LateIdCallSt
  loc_14345FF: var_98 = CVar(CLng(3)) 'Long
  loc_1434604: var_B8 = &H28A
  loc_1434610: LateIdCallSt
  loc_1434618: var_98 = 0
  loc_1434624: var_B8 = CVar(CLng(4)) 'Long
  loc_1434629: var_D8 = "Arrival Date"
  loc_1434632: LateIdCallSt
  loc_143463D: var_98 = CVar(CLng(4)) 'Long
  loc_1434648: var_B8 = CVar(CInt(1)) 'Integer
  loc_143464F: LateIdCallSt
  loc_143465A: var_98 = CVar(CLng(4)) 'Long
  loc_1434665: var_B8 = CVar(CInt(1)) 'Integer
  loc_143466C: LateIdCallSt
  loc_1434677: var_98 = CVar(CLng(4)) 'Long
  loc_143467C: var_B8 = &H38E
  loc_1434688: LateIdCallSt
  loc_1434690: var_98 = 0
  loc_143469C: var_B8 = CVar(CLng(5)) 'Long
  loc_14346A1: var_D8 = "Depature Date"
  loc_14346AA: LateIdCallSt
  loc_14346B5: var_98 = CVar(CLng(5)) 'Long
  loc_14346C0: var_B8 = CVar(CInt(1)) 'Integer
  loc_14346C7: LateIdCallSt
  loc_14346D2: var_98 = CVar(CLng(5)) 'Long
  loc_14346DD: var_B8 = CVar(CInt(1)) 'Integer
  loc_14346E4: LateIdCallSt
  loc_14346EF: var_98 = CVar(CLng(5)) 'Long
  loc_14346F4: var_B8 = &H38E
  loc_1434700: LateIdCallSt
  loc_1434708: var_98 = 0
  loc_1434714: var_B8 = CVar(CLng(6)) 'Long
  loc_1434719: var_D8 = "Guest Name"
  loc_1434722: LateIdCallSt
  loc_143472D: var_98 = CVar(CLng(6)) 'Long
  loc_1434738: var_B8 = CVar(CInt(1)) 'Integer
  loc_143473F: LateIdCallSt
  loc_143474A: var_98 = CVar(CLng(6)) 'Long
  loc_1434755: var_B8 = CVar(CInt(1)) 'Integer
  loc_143475C: LateIdCallSt
  loc_1434767: var_98 = CVar(CLng(6)) 'Long
  loc_143476C: var_B8 = &H7D0
  loc_1434778: LateIdCallSt
  loc_1434780: var_98 = 0
  loc_143478C: var_B8 = CVar(CLng(7)) 'Long
  loc_1434791: var_D8 = "Guest Status"
  loc_143479A: LateIdCallSt
  loc_14347A5: var_98 = CVar(CLng(7)) 'Long
  loc_14347B0: var_B8 = CVar(CInt(1)) 'Integer
  loc_14347B7: LateIdCallSt
  loc_14347C2: var_98 = CVar(CLng(7)) 'Long
  loc_14347CD: var_B8 = CVar(CInt(1)) 'Integer
  loc_14347D4: LateIdCallSt
  loc_14347DF: var_98 = CVar(CLng(7)) 'Long
  loc_14347E4: var_B8 = &H2BC
  loc_14347F0: LateIdCallSt
  loc_14347F8: var_98 = 0
  loc_1434804: var_B8 = CVar(CLng(8)) 'Long
  loc_1434809: var_D8 = "Company/Travel Agent"
  loc_1434812: LateIdCallSt
  loc_143481D: var_98 = CVar(CLng(8)) 'Long
  loc_1434828: var_B8 = CVar(CInt(1)) 'Integer
  loc_143482F: LateIdCallSt
  loc_143483A: var_98 = CVar(CLng(8)) 'Long
  loc_1434845: var_B8 = CVar(CInt(1)) 'Integer
  loc_143484C: LateIdCallSt
  loc_1434857: var_98 = CVar(CLng(8)) 'Long
  loc_143485C: var_B8 = &H7D0
  loc_1434868: LateIdCallSt
  loc_1434870: var_98 = 0
  loc_143487C: var_B8 = CVar(CLng(9)) 'Long
  loc_1434881: var_D8 = "Address"
  loc_143488A: LateIdCallSt
  loc_1434895: var_98 = CVar(CLng(9)) 'Long
  loc_14348A0: var_B8 = CVar(CInt(1)) 'Integer
  loc_14348A7: LateIdCallSt
  loc_14348B2: var_98 = CVar(CLng(9)) 'Long
  loc_14348BD: var_B8 = CVar(CInt(1)) 'Integer
  loc_14348C4: LateIdCallSt
  loc_14348CF: var_98 = CVar(CLng(9)) 'Long
  loc_14348D4: var_B8 = &H7D0
  loc_14348E0: LateIdCallSt
  loc_14348E8: var_98 = 0
  loc_14348F4: var_B8 = CVar(CLng(&HA)) 'Long
  loc_14348F9: var_D8 = "Address2"
  loc_1434902: LateIdCallSt
  loc_143490D: var_98 = CVar(CLng(&HA)) 'Long
  loc_1434918: var_B8 = CVar(CInt(1)) 'Integer
  loc_143491F: LateIdCallSt
  loc_143492A: var_98 = CVar(CLng(&HA)) 'Long
  loc_1434935: var_B8 = CVar(CInt(1)) 'Integer
  loc_143493C: LateIdCallSt
  loc_1434947: var_98 = CVar(CLng(&HA)) 'Long
  loc_143494C: var_B8 = 0
  loc_1434958: LateIdCallSt
  loc_1434960: var_98 = 0
  loc_143496C: var_B8 = CVar(CLng(&HB)) 'Long
  loc_1434971: var_D8 = "City"
  loc_143497A: LateIdCallSt
  loc_1434985: var_98 = CVar(CLng(&HB)) 'Long
  loc_1434990: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434997: LateIdCallSt
  loc_14349A2: var_98 = CVar(CLng(&HB)) 'Long
  loc_14349AD: var_B8 = CVar(CInt(1)) 'Integer
  loc_14349B4: LateIdCallSt
  loc_14349BF: var_98 = CVar(CLng(&HB)) 'Long
  loc_14349C4: var_B8 = &H3E8
  loc_14349D0: LateIdCallSt
  loc_14349D8: var_98 = 0
  loc_14349E4: var_B8 = CVar(CLng(&HC)) 'Long
  loc_14349E9: var_D8 = "State"
  loc_14349F2: LateIdCallSt
  loc_14349FD: var_98 = CVar(CLng(&HC)) 'Long
  loc_1434A08: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434A0F: LateIdCallSt
  loc_1434A1A: var_98 = CVar(CLng(&HC)) 'Long
  loc_1434A25: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434A2C: LateIdCallSt
  loc_1434A37: var_98 = CVar(CLng(&HC)) 'Long
  loc_1434A3C: var_B8 = 0
  loc_1434A48: LateIdCallSt
  loc_1434A50: var_98 = 0
  loc_1434A5C: var_B8 = CVar(CLng(&HD)) 'Long
  loc_1434A61: var_D8 = "Country"
  loc_1434A6A: LateIdCallSt
  loc_1434A75: var_98 = CVar(CLng(&HD)) 'Long
  loc_1434A80: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434A87: LateIdCallSt
  loc_1434A92: var_98 = CVar(CLng(&HD)) 'Long
  loc_1434A9D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434AA4: LateIdCallSt
  loc_1434AAF: var_98 = CVar(CLng(&HD)) 'Long
  loc_1434AB4: var_B8 = &H3E8
  loc_1434AC0: LateIdCallSt
  loc_1434ACB: var_98 = CVar(CLng(&HE)) 'Long
  loc_1434AD0: var_B8 = 0
  loc_1434ADC: LateIdCallSt
  loc_1434AE7: var_98 = CVar(CLng(&HF)) 'Long
  loc_1434AEC: var_B8 = 0
  loc_1434AF8: LateIdCallSt
  loc_1434B03: var_98 = CVar(CLng(&H10)) 'Long
  loc_1434B08: var_B8 = 0
  loc_1434B14: LateIdCallSt
  loc_1434B1C: var_98 = &H11
  loc_1434B25: var_B8 = 0
  loc_1434B31: LateIdCallSt
  loc_1434B39: var_98 = 0
  loc_1434B45: var_B8 = CVar(CLng(&H12)) 'Long
  loc_1434B4A: var_D8 = "Plan"
  loc_1434B53: LateIdCallSt
  loc_1434B5E: var_98 = CVar(CLng(&H12)) 'Long
  loc_1434B69: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434B70: LateIdCallSt
  loc_1434B7B: var_98 = CVar(CLng(&H12)) 'Long
  loc_1434B86: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434B8D: LateIdCallSt
  loc_1434B98: var_98 = CVar(CLng(&H12)) 'Long
  loc_1434B9D: var_B8 = &H3E8
  loc_1434BA9: LateIdCallSt
  loc_1434BB4: var_98 = CVar(CLng(&H13)) 'Long
  loc_1434BB9: var_B8 = 0
  loc_1434BC5: LateIdCallSt
  loc_1434BD0: var_98 = CVar(CLng(&H14)) 'Long
  loc_1434BD5: var_B8 = 0
  loc_1434BE1: LateIdCallSt
  loc_1434BE9: var_98 = 0
  loc_1434BF5: var_B8 = CVar(CLng(&H15)) 'Long
  loc_1434BFA: var_D8 = "Label"
  loc_1434C03: LateIdCallSt
  loc_1434C0E: var_98 = CVar(CLng(&H15)) 'Long
  loc_1434C19: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434C20: LateIdCallSt
  loc_1434C2B: var_98 = CVar(CLng(&H15)) 'Long
  loc_1434C36: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434C3D: LateIdCallSt
  loc_1434C48: var_98 = CVar(CLng(&H15)) 'Long
  loc_1434C4D: var_B8 = &H258
  loc_1434C59: LateIdCallSt
  loc_1434C61: var_98 = 0
  loc_1434C6D: var_B8 = CVar(CLng(&H16)) 'Long
  loc_1434C72: var_D8 = "Arr. Time"
  loc_1434C7B: LateIdCallSt
  loc_1434C86: var_98 = CVar(CLng(&H16)) 'Long
  loc_1434C91: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434C98: LateIdCallSt
  loc_1434CA3: var_98 = CVar(CLng(&H16)) 'Long
  loc_1434CAE: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434CB5: LateIdCallSt
  loc_1434CC0: var_98 = CVar(CLng(&H16)) 'Long
  loc_1434CC5: var_B8 = &H1F4
  loc_1434CD1: LateIdCallSt
  loc_1434CD9: var_98 = 0
  loc_1434CE5: var_B8 = CVar(CLng(&H17)) 'Long
  loc_1434CEA: var_D8 = "Dep. Time"
  loc_1434CF3: LateIdCallSt
  loc_1434CFE: var_98 = CVar(CLng(&H17)) 'Long
  loc_1434D09: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434D10: LateIdCallSt
  loc_1434D1B: var_98 = CVar(CLng(&H17)) 'Long
  loc_1434D26: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434D2D: LateIdCallSt
  loc_1434D38: var_98 = CVar(CLng(&H17)) 'Long
  loc_1434D3D: var_B8 = 0
  loc_1434D49: LateIdCallSt
  loc_1434D51: var_98 = 0
  loc_1434D5D: var_B8 = CVar(CLng(&H18)) 'Long
  loc_1434D62: var_D8 = "Pax"
  loc_1434D6B: LateIdCallSt
  loc_1434D76: var_98 = CVar(CLng(&H18)) 'Long
  loc_1434D81: var_B8 = CVar(CInt(4)) 'Integer
  loc_1434D88: LateIdCallSt
  loc_1434D93: var_98 = CVar(CLng(&H18)) 'Long
  loc_1434D9E: var_B8 = CVar(CInt(4)) 'Integer
  loc_1434DA5: LateIdCallSt
  loc_1434DB0: var_98 = CVar(CLng(&H18)) 'Long
  loc_1434DB5: var_B8 = &H1F4
  loc_1434DC1: LateIdCallSt
  loc_1434DCB: Set var_88 = Nothing 
  loc_1434DF1: Me.FGrid2.Rows = CVar(CLng(Me.FGrid.Rows))
  loc_1434E04: Set var_104 = Me.FGrid2
  loc_1434E12: var_104.Left = CVar(CDbl(0))
  loc_1434E32: var_104.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1434E58: var_104.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1434E6F: var_104.Cols = 2
  loc_1434E74: var_98 = 0
  loc_1434E7D: var_B8 = &H20D
  loc_1434E89: LateIdCallSt
  loc_1434E91: var_98 = 0
  loc_1434E9A: var_B8 = 0
  loc_1434EA6: LateIdCallSt
  loc_1434EEA: var_104.FontFixed.FormatString = CVar(CCur(Me.FGrid.FontFixed.FormatString))
  loc_1434F1C: var_104.ForeColorFixed = CVar(CLng(Me.FGrid.ForeColorFixed))
  loc_1434F42: var_104.BackColorFixed = CVar(CLng(Me.FGrid.BackColorFixed))
  loc_1434F4D: var_98 = 0
  loc_1434F56: var_B8 = 1
  loc_1434F5F: var_D8 = "Msg."
  loc_1434F68: LateIdCallSt
  loc_1434F70: var_98 = 1
  loc_1434F7F: var_B8 = CVar(CInt(4)) 'Integer
  loc_1434F86: LateIdCallSt
  loc_1434F8E: var_98 = 1
  loc_1434F97: var_B8 = &H221
  loc_1434FA3: LateIdCallSt
  loc_1434FAD: Set var_104 = Nothing 
  loc_1434FB1: Exit Sub
End Sub

Public Sub Proc_52_36_136B68C(arg_C) '136B68C
  'Data Table: 52FB6C
  Dim var_88 As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_15C As Byte
  Dim var_1C0 As Variant
  Dim var_1E0 As Byte
  Dim var_230 As Variant
  Dim var_250 As Integer
  Dim var_2A0 As Variant
  Dim var_2C0 As Byte
  Dim var_310 As Variant
  Dim var_330 As Byte
  Dim var_380 As Variant
  Dim var_3A0 As Byte
  Dim var_3F0 As Variant
  Dim var_410 As Byte
  Dim var_4AC As Variant
  Dim var_8C As MSHFlexGrid
  loc_136AF23: Call 0.Method_arg_A4 (CInt(&HB))
  loc_136AF2B: var_88 = arg_C
  loc_136AF34: If (var_88 = 0) Then
  loc_136AF43:   var_8C = Me.Global.Screen
  loc_136AF58:   var_B8 = Screen.ActiveForm.FGrid.Row
  loc_136AF5F:   var_D8 = &HF
  loc_136AF72:   var_A4 = Me.Global.Screen
  loc_136AFA7:   var_110 = Me.Global.Screen
  loc_136AFBC:   var_13C = Screen.ActiveForm.FGrid.Row
  loc_136AFC3:   var_15C = 3
  loc_136AFD6:   var_128 = Me.Global.Screen
  loc_136B00B:   var_194 = Me.Global.Screen
  loc_136B020:   var_1C0 = Screen.ActiveForm.FGrid.Row
  loc_136B027:   var_1E0 = &H10
  loc_136B03A:   var_1AC = Me.Global.Screen
  loc_136B065:   var_204 = Me.Global.Screen
  loc_136B07A:   var_230 = Screen.ActiveForm.FGrid.Row
  loc_136B081:   var_250 = 17
  loc_136B093:   var_21C = Me.Global.Screen
  loc_136B0BE:   var_274 = Me.Global.Screen
  loc_136B0D3:   var_2A0 = Screen.ActiveForm.FGrid.Row
  loc_136B0DA:   var_2C0 = 1
  loc_136B0ED:   var_28C = Me.Global.Screen
  loc_136B118:   var_2E4 = Me.Global.Screen
  loc_136B12D:   var_310 = Screen.ActiveForm.FGrid.Row
  loc_136B134:   var_330 = &HE
  loc_136B147:   var_2FC = Me.Global.Screen
  loc_136B172:   var_354 = Me.Global.Screen
  loc_136B187:   var_380 = Screen.ActiveForm.FGrid.Row
  loc_136B18E:   var_3A0 = &H13
  loc_136B1A1:   var_36C = Me.Global.Screen
  loc_136B1CC:   var_3C4 = Me.Global.Screen
  loc_136B1E1:   var_3F0 = Screen.ActiveForm.FGrid.Row
  loc_136B1E8:   var_410 = &H14
  loc_136B1FB:   var_3DC = Me.Global.Screen
  loc_136B210:   var_4AC = Screen.ActiveForm.FGrid.TextMatrix
  loc_136B256:   Proc_96_23_1C36494(MemVar_1F950EC, CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix))
  loc_136B2F7: Else
  loc_136B2FD:   If (var_88 = 1) Then
  loc_136B30C:     var_8C = Me.Global.Screen
  loc_136B33D:     If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_136B353:       var_8C = Me.Global.Screen
  loc_136B373:       var_F8 = (Screen.ActiveForm.FGrid.rows - 1)
  loc_136B387:       For var_4C4 = CByte(1) To CByte(Screen.ActiveForm.FGrid):   var_86 = var_4C4 'Byte
  loc_136B394:         var_D8 = 17
  loc_136B3A6:         var_8C = Me.Global.Screen
  loc_136B3BB:         VarLateMemCallLdRfVar
  loc_136B3E6:         If CBool(Trim(Screen.ActiveForm.FGrid) <> vbNullString) Then
  loc_136B3F0:           var_D8 = &HF
  loc_136B403:           var_8C = Me.Global.Screen
  loc_136B433:           var_15C = 3
  loc_136B446:           var_A4 = Me.Global.Screen
  loc_136B476:           var_1E0 = &H10
  loc_136B489:           var_110 = Me.Global.Screen
  loc_136B4AF:           var_250 = 17
  loc_136B4C1:           var_128 = Me.Global.Screen
  loc_136B4E7:           var_2C0 = 1
  loc_136B4FA:           var_194 = Me.Global.Screen
  loc_136B520:           var_330 = &HE
  loc_136B533:           var_1AC = Me.Global.Screen
  loc_136B559:           var_3A0 = &H13
  loc_136B56C:           var_204 = Me.Global.Screen
  loc_136B592:           var_410 = &H14
  loc_136B5A5:           var_21C = Me.Global.Screen
  loc_136B5BA:           var_2A0 = Screen.ActiveForm.FGrid.TextMatrix
  loc_136B600:           Proc_96_23_1C36494(MemVar_1F950EC, CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix))
  loc_136B65E:         End If
  loc_136B661:       Next var_4C4 'Byte
  loc_136B667:     End If
  loc_136B667:   End If
  loc_136B667: End If
  loc_136B676: Me.FPlanGrid.Visible = False
  loc_136B685: Call 0.Method_arg_A4 (CInt(0))
  loc_136B68A: Exit Sub
End Sub

Public Sub Proc_52_37_1396BF8
  'Data Table: 52FB6C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F8 As String
  Dim unk_52FB72 As Connection15
  Dim var_8C As Recordset15
  Dim var_124 As MSHFlexGrid
  Dim var_10C As Variant
  Dim var_164 As Variant
  Dim var_C8 As Variant
  Dim var_184 As Variant
  Dim var_11C As Variant
  Dim var_1A8 As Variant
  Dim var_23C As Field20
  Dim var_274 As String
  loc_1396380: Set var_CC = Me.FGrid2
  loc_1396386: var_CC.Rows = CVar(CLng(Me.FGrid.Rows))
  loc_13963BA: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_13963C4:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_13963C9:   var_E0 = 1
  loc_1396400:   var_F8 = "SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL AND (Solved<>'Y' or Solved is NULL) AND GuestMessage.RoomNo = '" & CStr(Me.FGrid.TextMatrix))
  loc_1396410:   unk_52FB72.Execute var_F8 & "' order by RoomOcc.RoomNO", var_11C, -1
  loc_139641B:   Set var_8C = var_CC
  loc_1396449:   If (var_8C.RecordCount > 0) Then
  loc_1396450:     Set var_124 = Me.FGrid2
  loc_1396453:     var_B8 = vbNullString
  loc_1396470:     var_124.Col = 1
  loc_1396481:     var_124.Row = CVar(CLng(var_86))
  loc_139648F:     var_124.CellFontName = "wingdings"
  loc_139649F:     var_124.CellFontSize = CVar(CDbl(&HC))
  loc_13964B0:     var_124.CellForeColor = &HFF0000
  loc_13964E4:     var_10C = CVar(CLng(var_86)) 'Long
  loc_13964E9:     var_164 = 1
  loc_139651B:     var_184 = CVar(CStr(IIf(IsNull(CVar(var_8C.Fields.Item("Message"))), vbNullString, "*"))) 'String
  loc_1396522:     LateIdCallSt
  loc_139653E:     Set var_124 = Nothing 
  loc_1396545:   Else
  loc_1396549:     var_B8 = CVar(CLng(var_86)) 'Long
  loc_139654E:     var_E0 = 1
  loc_1396557:     var_10C = vbNullString
  loc_1396561:     Set var_98 = Me.FGrid2
  loc_1396567:     LateIdCallSt
  loc_1396572:   End If
  loc_1396576:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_139657F:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_139659A:   var_10C = CVar(CLng(Me.FGrid.RowHeight))) 'Long
  loc_13965A3:   Set var_CC = Me.FGrid2
  loc_13965A9:   LateIdCallSt
  loc_13965BE: Next var_D0 'Integer
  loc_13965C7: Set var_98 = Me.FGrid
  loc_13965CD: var_A8 = var_98.Rows
  loc_13965DF: Set var_CC = Me.FGrid2
  loc_13965E5: var_CC.Rows = CVar(CLng(var_A8))
  loc_1396623: var_11C = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<=") 'String
  loc_1396631: Proc_6_7_F26918(var_A8, MemVar_1F950EC, var_11C, var_228, -1, var_98)
  loc_1396651: Proc_6_7_F26918(var_184, MemVar_1F950EC, var_CC & var_A8 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_1396671: Proc_6_7_F26918(var_1C8, MemVar_1F950EC, var_23C & var_184 & " And ChkOutDate > ")
  loc_1396691: Proc_6_7_F26918(var_1F8, MemVar_1F950EC)
  loc_13966B0: unk_52FB72.Execute CStr(var_24C & var_1C8 & ") OR (CHKINDATE=" & var_1F8 & " and  ChkOutDate is null)"), "OR: ", 
  loc_13966B8:  = var_98.Fields
  loc_13966C0:  = var_CC.Item()
  loc_13966C8:  = var_23C.Value
  loc_13966E2: Me.lblOccRoom.Caption = CStr(var_24C)
  loc_139674D: var_11C = CVar("SELECT Count(*) FROM RoomBlockOut WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and Type ='O' And ") 'String
  loc_139675B: Proc_6_7_F26918(var_A8, MemVar_1F950EC, var_11C, var_184, -1, var_98)
  loc_139677A: unk_52FB72.Execute CStr(var_CC & var_A8 & " between Fromdate and ToDate"), 0, var_23C
  loc_1396782: var_1A8 = var_98.Fields
  loc_139678A:  = var_CC.Item("OO:")
  loc_1396792:  = var_23C.Value
  loc_13967AC: Me.Lblblockroom.Caption = CStr(var_1A8)
  loc_13967D6: var_E0 = "OD:"
  loc_13967E1: var_C8 = 0
  loc_1396800: unk_52FB72.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO'", var_A8, -1
  loc_1396808: var_98 = var_98.Fields
  loc_1396810: var_C8 = var_CC.Item(var_CC)
  loc_1396818: var_23C = var_23C.Value
  loc_1396832: Me.LBLOD.Caption = CStr(var_11C & var_11C)
  loc_139684E: var_E0 = "TR:"
  loc_1396859: var_C8 = 0
  loc_1396878: unk_52FB72.Execute "SELECT Count(*) FROM RoomMast where type='RO' and inclcount='Y'", var_A8, -1
  loc_1396880: var_98 = var_98.Fields
  loc_1396888: var_C8 = var_CC.Item(var_CC)
  loc_1396890: var_23C = var_23C.Value
  loc_13968AA: Me.LblTR.Caption = CStr(var_11C & var_11C)
  loc_13968C6: var_E0 = "OC:"
  loc_13968D1: var_C8 = 0
  loc_13968F0: unk_52FB72.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='C' and roommast.type='RO'", var_A8, -1
  loc_13968F8: var_98 = var_98.Fields
  loc_1396900: var_C8 = var_CC.Item(var_CC)
  loc_1396908: var_23C = var_23C.Value
  loc_1396922: Me.LBLOC.Caption = CStr(var_11C & var_11C)
  loc_139693E: var_10C = "VR:"
  loc_139696D: var_F8 = "Select Count(*) FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_139697B: var_274 = var_F8 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_1396997: Proc_6_7_F26918(var_A8, MemVar_1F950EC, CVar(var_274 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And "), var_184, -1, var_98, var_CC)
  loc_13969B6: unk_52FB72.Execute CStr(0 & var_A8 & " between Fromdate and ToDate)"), var_23C, var_1A8
  loc_13969BE: var_10C = var_98.Fields
  loc_13969C6: var_E0 = var_CC.Item(var_E0)
  loc_13969CE: var_E0 = var_23C.Value
  loc_13969E8: Me.LBLVR.Caption = CStr(var_1A8)
  loc_1396A49: var_F8 = "Select Count(*) FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_1396A57: var_274 = var_F8 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_1396A73: Proc_6_7_F26918(var_A8, MemVar_1F950EC, CVar(var_274 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And "), var_184, -1, var_98)
  loc_1396A92: unk_52FB72.Execute CStr(var_CC & var_A8 & " between Fromdate and ToDate) And Roomstat='D'"), 0, var_23C
  loc_1396AA2:  = var_CC.Item("VD:")
  loc_1396AAA:  = var_23C.Value
  loc_1396AC4: Me.LBLVD.Caption = CStr(var_98.Fields)
  loc_1396B25: var_F8 = "Select Count(*) FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_1396B33: var_274 = var_F8 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_1396B4F: Proc_6_7_F26918(var_A8, MemVar_1F950EC, CVar(var_274 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And "), var_184, -1, var_98)
  loc_1396B6E: unk_52FB72.Execute CStr(var_CC & var_A8 & " between Fromdate and ToDate) And Roomstat='C'"), 0, var_23C
  loc_1396B7E:  = var_CC.Item("VC:")
  loc_1396B86:  = var_23C.Value
  loc_1396BA0: Me.LBLVC.Caption = CStr(var_98.Fields)
  loc_1396BE4: Me.FGrid.Col = CVar(CLng(1))
  loc_1396BF1: Set var_8C = Nothing
  loc_1396BF4: Exit Sub
End Sub
