VERSION 5.00
Begin VB.Form FdLookUpRoomNo
  Caption = "Display Rack"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11715
  ClientHeight = 7500
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrRoomDtl
    Caption = "Frame1"
    Left = 30
    Top = 9105
    Width = 14310
    Height = 1230
    TabIndex = 7
    BorderStyle = 0 'None
    Begin Label Label4
      BackColor = &HFFC0C0&
      ForeColor = &HFF&
      Left = 0
      Top = 915
      Width = 14565
      Height = 315
      TabIndex = 4
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
    Begin Label Label3
      BackColor = &HFFC0C0&
      ForeColor = &HC00000&
      Left = 0
      Top = 600
      Width = 14565
      Height = 315
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
      Appearance = 0 'Flat
    End
    Begin Label LblRoomDtl
      Caption = "Room Detail"
      ForeColor = &H0&
      Left = 120
      Top = 15
      Width = 14145
      Height = 210
      TabIndex = 19
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Caption = "Out Of Order"
      Index = 2
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 2445
      Top = 315
      Width = 1170
      Height = 270
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Vacant Dirty"
      Index = 1
      BackColor = &HFFFF&
      ForeColor = &H80000008&
      Left = 1290
      Top = 315
      Width = 1125
      Height = 270
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Guest In House"
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 3645
      Top = 315
      Width = 1350
      Height = 270
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Expected Arrival"
      Index = 4
      BackColor = &H8080FF&
      ForeColor = &H80000008&
      Left = 5025
      Top = 315
      Width = 1455
      Height = 270
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblTR
      BackColor = &HFFC0C0&
      ForeColor = &H8080&
      Left = 6525
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 14
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
    Begin Label LBLOC
      BackColor = &HFFC0C0&
      ForeColor = &HC000&
      Left = 9465
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 13
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
    Begin Label LBLOD
      BackColor = &HFFC0C0&
      ForeColor = &HC0&
      Left = 8730
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 12
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
    Begin Label Lblblockroom
      BackColor = &HFFC0C0&
      ForeColor = &H808000&
      Left = 7995
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 11
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
    Begin Label lblOccRoom
      BackColor = &HFFC0C0&
      ForeColor = &H8000&
      Left = 7260
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 10
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
    Begin Label LBLRoomName
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 10260
      Top = 285
      Width = 4020
      Height = 285
      TabIndex = 8
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
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Vacant Clean"
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 60
      Top = 315
      Width = 1215
      Height = 270
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 1000
    Left = 9930
    Top = 3015
  End
  Begin TextBox Text1
    Left = 15120
    Top = 4605
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 2
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
    Left = 810
    Top = 600
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Tag = "2,0"
    Alignment = 2 'Center
    MaxLength = 1
    Locked = -1  'True
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
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 0
    Width = 14565
    Height = 7170
    TabIndex = 1
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh BtnExit
    Left = 14550
    Top = 8160
    Width = 1275
    Height = 1050
    TabIndex = 3
  End
  Begin BtnEnh CmdOption
    Index = 1
    Left = 1470
    Top = 7230
    Width = 1020
    Height = 885
    Visible = 0   'False
    TabIndex = 5
  End
  Begin BtnEnh CmdOption
    Index = 0
    Left = 465
    Top = 7230
    Width = 975
    Height = 885
    Visible = 0   'False
    TabIndex = 6
  End
End

Attribute VB_Name = "FdLookUpRoomNo"

Private global_92 As Long
Private global_100 As Long
Private global_78 As Integer
Private global_84 As Recordset15

Private Sub btnExit_UnknownEvent_9 'E18BEC
  'Data Table: 47DD54
  loc_E18BE1: Me.Global.Unload Me
  loc_E18BE9: Exit Sub
End Sub

Private Sub Timer1_Timer() 'EDE9D4
  'Data Table: 47DD54
  loc_EDE940: If (Me.Label3.Caption <> vbNullString) Then
  loc_EDE98E:   Me.Label3.BackColor = RGB(CInt((CDbl(255) * Rnd(var_AC))), CInt((CDbl(255) * Rnd(var_CC))), CInt((CDbl(255) * Rnd(var_EC))))
  loc_EDE9AE:   Me.Label3.ForeColor = &HFFFFFF
  loc_EDE9B9: Else
  loc_EDE9C8:   Me.Label3.BackColor = &HE0E0E0
  loc_EDE9D0: End If
  loc_EDE9D0: Exit Sub
End Sub

Private Sub Form_Load() '12347CC
  'Data Table: 47DD54
  Dim var_90 As String
  Dim unk_47DD60 As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_C0 As Fields15
  Dim var_224 As Field20
  loc_12342E8: On Error Goto loc_1234785
  loc_123430F: unk_47DD60.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B4, -1
  loc_123431A: Set var_8C = var_B8
  loc_123433E: If (var_8C.RecordCount > 0) Then
  loc_1234367:   Proc_6_39_E7D3A0(var_D0, CVar(var_8C.Fields.Item("DisplayRackRow")))
  loc_1234374:   global_92 = CLng(var_D0)
  loc_12343A7:   Proc_6_39_E7D3A0(var_D0, CVar(var_8C.Fields.Item("DisplayRackcol")))
  loc_12343D8:   var_C0 = var_8C.Fields.Item("DisplayRackFontSize")
  loc_12343E0:   var_B4 = CVar(var_C0) 'Address
  loc_12343E7:   Proc_6_39_E7D3A0(var_D0, var_B4, CLng(var_D0))
  loc_12343F4:   global_100 = CLng(var_D0)
  loc_1234401: End If
  loc_1234406: Set var_8C = Nothing
  loc_1234410: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), global_100)
  loc_1234422: Set var_B8 = Me.FGrid1
  loc_1234428: var_B8.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1234430: Call ColorLabel()
  loc_1234435: Call Proc_81_16_16BABC4(global_92)
  loc_1234469: var_D0 = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<") 'String
  loc_1234477: Proc_6_7_F26918(var_B4, MemVar_1F950EC, var_D0, var_210, -1, var_B8)
  loc_1234497: Proc_6_7_F26918(var_120, MemVar_1F950EC, var_C0 & var_B4 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_12344B7: Proc_6_7_F26918(var_170, MemVar_1F950EC, var_224 & var_120 & " And ChkOutDate > ")
  loc_12344D7: Proc_6_7_F26918(var_1C0, MemVar_1F950EC, var_234 & var_170 & ") OR (CHKINDATE=")
  loc_12344F6: unk_47DD60.Execute CStr("OR: " & var_1C0 & " and  ChkOutDate is null)"), var_B8, 
  loc_12344FE:  = var_B8.Fields
  loc_1234506:  = var_C0.Item()
  loc_123450E:  = var_224.Value
  loc_1234528: Me.lblOccRoom.Caption = CStr(var_234)
  loc_1234593: var_D0 = CVar("SELECT Count(*) FROM RoomBlockOut WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and Type ='O' And (FromDate = ") 'String
  loc_12345A1: Proc_6_7_F26918(var_B4, MemVar_1F950EC, var_D0, var_120, -1, var_B8)
  loc_12345B2: var_100 = var_C0 & var_B4 & ")" 
  loc_12345C0: unk_47DD60.Execute CStr(var_100), 0, var_224
  loc_12345D0:  = var_C0.Item("OO: ")
  loc_12345D8:  = var_224.Value
  loc_12345F2: Me.Lblblockroom.Caption = CStr(var_B8.Fields)
  loc_123461C: var_110 = "OD: "
  loc_1234627: var_E0 = 0
  loc_1234646: unk_47DD60.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO'", var_B4, -1
  loc_123464E: var_B8 = var_B8.Fields
  loc_1234656: var_E0 = var_C0.Item(var_C0)
  loc_123465E: var_224 = var_224.Value
  loc_1234678: Me.LBLOD.Caption = CStr(var_D0 & var_D0)
  loc_1234694: var_110 = "OC: "
  loc_123469F: var_E0 = 0
  loc_12346BE: unk_47DD60.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='C' and roommast.type='RO'", var_B4, -1
  loc_12346C6: var_B8 = var_B8.Fields
  loc_12346CE: var_E0 = var_C0.Item(var_C0)
  loc_12346D6: var_224 = var_224.Value
  loc_12346F0: Me.LBLOC.Caption = CStr(var_D0 & var_D0)
  loc_123470C: var_110 = "TR:"
  loc_1234717: var_E0 = 0
  loc_1234736: unk_47DD60.Execute "SELECT Count(*) FROM RoomMast where type='RO' and inclcount='Y'", var_B4, -1
  loc_123473E: var_B8 = var_B8.Fields
  loc_1234746: var_E0 = var_C0.Item(var_C0)
  loc_123474E: var_224 = var_224.Value
  loc_1234756: var_F0 = var_D0 & var_D0 
  loc_123475A: var_90 = CStr(var_F0)
  loc_1234768: Me.LblTR.Caption = var_90
  loc_1234784: Exit Sub
  loc_1234785: ' Referenced from: 12342E8
  loc_123478D: Set var_B8 = Err()
  loc_1234793: Call 0.Method_arg_2C (var_90, var_110)
  loc_12347B4: MsgBox(CVar(var_90), &H10, "Information", var_F0, var_100)
  loc_12347C7: Exit Sub
  loc_12347C8: Exit Sub
End Sub

Private Sub Form_Resize() 'EFA850
  'Data Table: 47DD54
  Dim var_98 As Variant
  Dim var_B4 As Variant
  Dim var_120 As String
  loc_EFA776: Call 0.Method_arg_100 (var_88)
  loc_EFA782: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_EFA791: Me.FGrid1.Width = var_98
  loc_EFA7B1: Call 0.Method_arg_108 (var_88)
  loc_EFA7C8: Me.FrRoomDtl.Top = (var_88 - Me.FrRoomDtl.Height)
  loc_EFA7E1: var_88 = Me.FrRoomDtl.Top
  loc_EFA7F2: Set var_B4 = Me.BtnExit
  loc_EFA7F8: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(var_88))
  loc_EFA81C: Call 0.Method_arg_108 (var_88)
  loc_EFA82C: var_98 = CVar(((var_88 - Me.FrRoomDtl.Height) - CDbl(&H32))) 'Single
  loc_EFA83B: Me.FGrid1.Height = CVar(var_88)
  loc_EFA847: Call Proc_81_16_16BABC4()
  loc_EFA84C: Exit Sub
  loc_EFA84D: var_120 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2AE30
  'Data Table: 47DD54
  loc_E2AE13: Set global_84 = Nothing
  loc_E2AE25: Set global_88 = Nothing
  loc_E2AE2C: Exit Sub
End Sub

Private Sub Form_Activate() '115AC44
  'Data Table: 47DD54
  Dim var_90 As Variant
  Dim var_94 As String
  Dim unk_47DD60 As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim var_168 As String
  Dim var_1A8 As Variant
  Dim var_88 As Recordset15
  Dim var_1F0 As Fields15
  Dim var_198 As Variant
  loc_115A8E0: Call Proc_81_16_16BABC4()
  loc_115A8EE: If (global_78 = &HFF) Then
  loc_115A8F1:   Call Proc_81_16_16BABC4()
  loc_115A8FB:   global_78 = 0
  loc_115A8FE: End If
  loc_115A905: Set var_90 = Me.Label3
  loc_115A90B: var_90.Caption = vbNullString
  loc_115A937: unk_47DD60.Execute "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_115A942: Set var_8C = var_90
  loc_115A952: ' Referenced from: 115ABDA
  loc_115A961: If Not(var_8C.EOF) Then
  loc_115A983:   var_90 = var_8C.Fields
  loc_115A99C:   var_94 = Proc_6_38_E69628(CVar(var_90.Item("Code")), "Select max(RoomCAt.Name) as RoomType,Sum(NoofRooms) as  Rooms from ViewBooking as Booking INNER join RoomCat on Booking.RoomCAt=RoomCAt.Code  where bOOKING.ROOMCAT='", var_1EC, -1)
  loc_115A9AE:   var_C8 = var_1F0 & "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' AND Cancel='N' and BOOKING.LOGSITE_CODE='" & MemVar_1F95078
  loc_115A9C3:   Proc_6_7_F26918(var_E8, MemVar_1F950EC, CVar(var_C8 & "' AND "))
  loc_115A9E3:   Proc_6_7_F26918(var_148, MemVar_1F950EC)
  loc_115A9EF:   var_168 = " < Depdate and Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_115AA03:   Proc_6_7_F26918(var_198, MemVar_1F950EC)
  loc_115AA0B:   var_1A8 = var_90 & var_E8 & " >=Arrdate and " & var_148 & var_168 & var_198 
  loc_115AA22:   unk_47DD60.Execute CStr(var_1A8 & " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Group By Booking.RoomCAt"), global_78, 
  loc_115AA2D:   Set var_88 = var_1F0
  loc_115AA73:   If (var_88.RecordCount > 0) Then
  loc_115AA91:     If (Me.Timer1.Enabled = 0) Then
  loc_115AAA0:       Me.Timer1.Enabled = True
  loc_115AAA8:       ' Referenced from: 115ABCC
  loc_115AAA8:     End If
  loc_115AAB9:     If (var_88.EOF = 0) Then
  loc_115AAF1:       var_D8 = " Todays Expected Arrivals-> "
  loc_115AB13:       var_128 = (CVar(Me.Label3.Caption) + IIf((Me.Label3.Caption = vbNullString), MemVar_1F950EC, " ; "))
  loc_115AB74:       Proc_6_39_E7D3A0(var_1A8, CVar(var_88.Fields.Item("Rooms")))
  loc_115AB8E:       Me.Label3.Caption = CStr(Me.Label3 & " ; " & " >=Arrdate and " & var_8C.Fields.Item("Name").Value & "=" & var_1A8)
  loc_115ABC7:       var_88.MoveNext
  loc_115ABCC:       GoTo loc_115AAA8
  loc_115ABCF:     End If
  loc_115ABCF:     GoTo loc_115ABD2
  loc_115ABD2:     ' Referenced from: 115ABCF
  loc_115ABD2:   End If
  loc_115ABD5:   var_8C.MoveNext
  loc_115ABDA:   GoTo loc_115A952
  loc_115ABDD: End If
  loc_115ABFD: If (Me.Label3.Caption <> vbNullString) Then
  loc_115AC1B:   If (Me.Timer1.Enabled = 0) Then
  loc_115AC2A:     Me.Timer1.Enabled = True
  loc_115AC32:   End If
  loc_115AC32: End If
  loc_115AC37: Set var_8C = Nothing
  loc_115AC3F: Set var_88 = Nothing
  loc_115AC42: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E58944
  'Data Table: 47DD54
  loc_E5890E: If (CLng(KeyCode) = &H74) Then
  loc_E58911:   Call Proc_81_16_16BABC4()
  loc_E58916: End If
  loc_E5892B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E5893B:   Me.Global.Unload Me
  loc_E58943: End If
  loc_E58943: Exit Sub
End Sub

Private Sub Label2_Click(Index As Integer) '101EF4C
  'Data Table: 47DD54
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_47DD60 As Connection15
  loc_101ED6C: var_94 = 1
  loc_101ED76: Set var_A8 = Me.FGrid1
  loc_101ED91: arg_20 = Me.CDLG._Action
  loc_101EDBB: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101EDBE:   Exit Sub
  loc_101EDBF: End If
  loc_101EDC9: var_B8 = Me.CDLG.Color
  loc_101EDDC: Set var_BC = Me.Label2
  loc_101EDE2: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101EDEA: var_C0.BackColor = arg_20
  loc_101EE32: unk_47DD60.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_101EE71: Set var_A8 = Me.CDLG
  loc_101EE86: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_101EE9D: Set var_BC = Me.Label2
  loc_101EEA3: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_101EEAB: -1 = var_C0.Caption
  loc_101EEDA: Proc_6_7_F26918(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F95070 & "',"))
  loc_101EEE6: var_94 = ",'A','"
  loc_101EF0C: unk_47DD60.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F95078) & "')"), FGrid1.DispID_18001, var_94
  loc_101EF4A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '10A2478
  'Data Table: 47DD54
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_47DD60 As Connection15
  Dim var_F8 As Recordset15
  Dim var_1A0 As String
  Dim var_194 As Label
  loc_10A21E0: On Error Goto loc_10A2431
  loc_10A2202: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_10A2205:   Exit Sub
  loc_10A2206: End If
  loc_10A2221: If (Me.Text3.Visible = &HFF) Then
  loc_10A2230:   Me.Text3.Visible = False
  loc_10A2238: End If
  loc_10A2242: var_98 = Me.FGrid1.Rows
  loc_10A2251: var_AC = 1
  loc_10A2292: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_10A2295:   Exit Sub
  loc_10A2296: End If
  loc_10A22A3: Me.Label4.Caption = vbNullString
  loc_10A22BE: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10A22DC: var_CC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10A22EB: var_10C = Me.FGrid1.TextMatrix)
  loc_10A22F6: var_11C = CVar(CStr(var_10C)) 'String
  loc_10A2315: var_F4 = "Select RF.Name As RoomFeature from Roommast1 R Left Join RoomFeature RF On R.RoomFeat=RF.code Where (R.LOGSITE_CODE='" & MemVar_1F95078
  loc_10A2339: unk_47DD60.Execute CStr(CVar(var_F4 & "') and R.RoomCode='") & Trim(var_11C) & "' Order By R.Sno"), var_190, -1
  loc_10A2344: Set var_F8 = var_194
  loc_10A2382: If (var_F8.RecordCount > 0) Then
  loc_10A2392:   Me.Label4.Caption = "Room Features : "
  loc_10A239A:   ' Referenced from: 10A2425
  loc_10A23A9:   If Not(var_F8.EOF) Then
  loc_10A23B9:     var_F4 = Me.Label4.Caption
  loc_10A23C4:     var_AC = "RoomFeature"
  loc_10A23F4:     var_1A0 = var_AC & Proc_6_38_E69628(CVar(var_F8.Fields.Item(var_AC)), var_F4, var_194, 1) & " + "
  loc_10A2401:     Me.Label4.Caption = var_1A0
  loc_10A2420:     var_F8.MoveNext
  loc_10A2425:     GoTo loc_10A239A
  loc_10A2428:   End If
  loc_10A2428: End If
  loc_10A242D: Set var_F8 = Nothing
  loc_10A2430: Exit Sub
  loc_10A2431: ' Referenced from: 10A21E0
  loc_10A2439: Set var_88 = Err()
  loc_10A243F: Call 0.Method_arg_2C (var_F4, var_AC)
  loc_10A2460: MsgBox(CVar(var_F4), &H10, "Information", var_10C, var_11C)
  loc_10A2473: Exit Sub
  loc_10A2474: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E90538
  'Data Table: 47DD54
  loc_E904C6: If (Index = &HD) Then
  loc_E904F4:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E904F7:     Call Fgrid1_UnknownEvent_9()
  loc_E904FC:   End If
  loc_E9052F:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E90532:     Call Fgrid1_UnknownEvent_B()
  loc_E90537:   End If
  loc_E90537: End If
  loc_E90537: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '132171C
  'Data Table: 47DD54
  Dim var_A4 As Variant
  Dim var_A8 As String
  Dim var_8E As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_1A0 As Variant
  Dim var_1C4 As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim unk_47DD60 As Connection15
  Dim var_11C As Variant
  Dim var_DC As Variant
  loc_1321013: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_132102A:   var_8E = CInt(CLng(Me.FGrid1.Col))
  loc_1321036: Else
  loc_1321075:   var_8E = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1321089: End If
  loc_132109C: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13210A5: var_EC = CVar(CLng(var_8E)) 'Long
  loc_13210E0: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_13210E8: var_14C = "VACANT"
  loc_13210F6: Set var_160 = Me.FGrid1
  loc_13210FC: var_170 = var_160.Row
  loc_1321111: var_1A0 = CVar(CLng((var_8E + 1))) 'Long
  loc_1321178: If CBool(var_1A0 And (Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) <> "O")) Then
  loc_132118E:   var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132119A:   var_EC = CVar(CLng((var_8E - 1))) 'Long
  loc_13211D3:   var_A8 = "SELECT RoomCat.Name, RoomCat.Code FROM RoomMast Inner JOIN RoomCat ON RoomMast.RoomCat = RoomCat.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_13211E0:   var_13C = CVar(var_A8 & "') and RoomMast.CODE='") & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_13211E4:   var_14C = "'"
  loc_13211F7:   unk_47DD60.Execute CStr(var_13C & var_14C), var_170, -1
  loc_1321202:   Set var_8C = var_160
  loc_132123F:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1321258:     If (FdLookUpRoomNo.OpenMode = "Online") Then
  loc_1321265:       var_11C = Me.FGrid1.Col
  loc_1321271:       var_CC = "Code"
  loc_1321299:       var_170 = CVar(Proc_6_38_E69628(CVar(Me.var_11C.Fields.Item(var_CC)), var_11C, var_160, var_EC, var_CC, CVar(CLng(var_170)))) 'String
  loc_13212A0:       var_DC = "Name"
  loc_13212C8:       var_1C4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_DC)), var_170, (var_13C = var_14C), var_EC)) 'String
  loc_13212DF:       var_EC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13212FB:       var_14C = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_11C) + 1)) / CDbl(6)))))) 'Long
  loc_132131B:       var_15C = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_132132A:       Call unk_47DD7A.SEARCHBACKRoomNo
  loc_132135F:       Me.Global.Unload Me
  loc_132136A:     Else
  loc_1321374:       var_BC = Me.FGrid1.Col
  loc_1321390:       var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13213AC:       var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_13213BB:       var_10C = Me.FGrid1.TextMatrix)
  loc_13213DE:       fdWalkInEntry.PRoomNo = CStr(Trim(CVar(CStr(var_10C))))
  loc_13213FF:       var_CC = "Code"
  loc_1321430:       fdWalkInEntry.PRoomTypeCode = Proc_6_38_E69628(CVar(Me.var_10C.Fields.Item(var_CC)), var_EC, var_CC, var_BC, var_15C, var_14C)
  loc_1321441:       var_CC = "Name"
  loc_1321472:       fdWalkInEntry.PRoomTypeName = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_CC)), var_EC, var_1C4)
  loc_1321489:       Call 0.Method_arg_1C4 ("Online", var_CC)
  loc_132149C:       Call 0.Method_arg_2B0 (var_CC, var_DC)
  loc_13214A6:       global_78 = &HFF
  loc_13214A9:     End If
  loc_13214A9:   End If
  loc_13214AC: Else
  loc_13214C6:   If (global_84.RecordCount > 0) Then
  loc_13214D2:     Me.Recordset15.MoveFirst
  loc_13214D7:   End If
  loc_1321508:   var_EC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1321517:   var_10C = Me.FGrid1.TextMatrix)
  loc_1321558:   Me.var_10C.Find "RoomNo='" & Proc_6_38_E69628(CVar(CStr(var_10C)), var_EC, CVar(CLng(Me.FGrid1.Row))) & "'", 0, 1
  loc_1321596:   If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_13215DB:     If CBool(Me.Recordset15.Fields.Item("FolioNo").Value <> 0) Then
  loc_13215E2:       var_248 = New fdDisplayFolio 'Address Function
  loc_1321613:       var_248.FDispDocid = CVar(Me.Recordset15.Fields.Item("DocID"))
  loc_132164A:       var_248.mFolioNo = CVar(Me.Recordset15.Fields.Item("mFolioNo"))
  loc_1321660:       var_248.OpenMode = 1
  loc_1321664:       var_DC = 0
  loc_132168F:       var_A4 = CVar(Me.Recordset15.Fields.Item("RoomNo")) 'Address
  loc_1321697:       VarLateMemCallSt
  loc_13216A3:       var_DC = 10
  loc_13216CE:       var_A4 = CVar(Me.Recordset15.Fields.Item("FolioNo")) 'Address
  loc_13216D6:       VarLateMemCallSt
  loc_13216E2:       var_CC = 0
  loc_13216E8:       var_EC = True
  loc_13216F1:       Call var_248.Txt_Validate
  loc_13216F7:       var_CC = 1
  loc_1321705:       Call var_248.Show
  loc_132170B:     End If
  loc_132170B:   End If
  loc_132170B: End If
  loc_1321710: Set var_88 = Nothing
  loc_1321718: Set var_8C = Nothing
  loc_132171B: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'E5AF10
  'Data Table: 47DD54
  loc_E5AED6: If (Index = &HD) Then
  loc_E5AF04:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5AF07:     Call Fgrid1_UnknownEvent_9()
  loc_E5AF0C:   End If
  loc_E5AF0C: End If
  loc_E5AF0C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '148508C
  'Data Table: 47DD54
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_178 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_188 As Variant
  Dim var_190 As String
  Dim var_F4 As Variant
  Dim var_114 As String
  Dim var_1D0 As String
  Dim var_1F0 As String
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim unk_47DD60 As Connection15
  Dim var_2E4 As String
  Dim var_88 As Recordset15
  Dim var_33C As Variant
  Dim var_36C As Variant
  Dim var_8C As Recordset15
  Dim var_168 As Variant
  loc_14844E7: var_178 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_14844FE: var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_148456A: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1484580:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1484598:   var_104 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_14845B2:   var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_14845DD:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14845FB:   var_104 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1484620:   var_90 = var_104 & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_148464F:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_148466D:   var_104 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1484687:   var_98 = CStr(Me.FGrid1.TextMatrix))
  loc_148469F: Else
  loc_14846C4:   var_178 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_14846DB:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1484747:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_148475D:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_148477B:     var_104 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1484795:     var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_14847C0:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14847FD:     var_90 = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_148482C:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_148484A:     var_104 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1484864:     var_98 = CStr(Me.FGrid1.TextMatrix))
  loc_148487C:   Else
  loc_14848A1:     var_178 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_14848B8:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1484924:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_148493A:       var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1484958:       var_104 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1484972:       var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_148499D:       var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14849BB:       var_104 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_14849E0:       var_90 = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_1484A00:       Set var_9C = Me.FGrid1
  loc_1484A0F:       var_E4 = CVar(CLng(var_9C.Row)) 'Long
  loc_1484A27:       var_104 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1484A41:       var_98 = CStr(Me.FGrid1.TextMatrix))
  loc_1484A56:     End If
  loc_1484A56:   End If
  loc_1484A56: End If
  loc_1484A73: var_90 = Replace(var_90, vbCrLf, " ", 1, -1, 0)
  loc_1484A76: var_104 = "convert(char,GuestFolio.vDate ,103)"
  loc_1484A86: var_AC = " GuestFolio.Vdate "
  loc_1484AD7: var_114 = "SELECT Distinct RoomOcc.adult as NoOfPax,GuestFolio.rodisc as Discount,RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot,"
  loc_1484AE8: var_138 = var_114 & IIf((MemVar_1F953B0 = "A"), var_AC, var_104) & " as CheckInDate ," 
  loc_1484AF3: var_1D0 = " as DepDate , GuestProf.Name AS GuestName, GuestProf.GuestStatus, SubGroup.Name AS CompanyName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono,RoomOcc.PlanCode,PlanMast.Plan_package,GuestFolio.DocId ,GuestFolio.MFolioNoDocid,RoomOcc.ChkinTime,RoomOcc.DepTime,(CASE WHEN GuestFolio.DocId =GuestFolio.MFolioNoDocid THEN 'Ldr' ELSE '' END) AS Leader,PlanMast.Name AS PlanType "
  loc_1484AFC: var_1F0 = " FROM (((((RoomOcc iNNER JOIN RoomMast ON RoomMast.Code = RoomOcc.RoomNo) Left join PlanMast on RoomOcc.PlanCode=PlanMast.Code) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (ROOMOCC.LOGSITE_CODE='"
  loc_1484B0B: var_220 = var_138 & IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1D0 & var_1F0 & CVar(MemVar_1F95078) 
  loc_1484B27: var_280 = var_220 & "' AND ROOMMAST.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "') AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' and roommast.code='" 
  loc_1484B48: unk_47DD60.Execute CStr(var_280 & CVar(var_94) & "' ORDER BY RoomMast.Code"), var_2E0, -1
  loc_1484B53: Set var_88 = var_9C
  loc_1484BA2: var_190 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type In ('O','M') And RoomCode='"
  loc_1484BB6: var_E4 = MemVar_1F950EC
  loc_1484BBE: Proc_6_7_F26918(var_AC, var_E4, CVar(var_190 & var_94 & "' And "), var_138, -1, var_9C, var_9C, var_104)
  loc_1484BDD: unk_47DD60.Execute CStr(var_E4 & var_AC & " between fromdate and ToDate"), var_E4, "("
  loc_1484BE8: Set var_8C = var_9C
  loc_1484C1A: If (var_88.RecordCount > 0) Then
  loc_1484C23:   var_E4 = "PlanType"
  loc_1484C4A:   var_104 = "PlanType"
  loc_1484D12:   var_178 = CVar(var_90) 'String
  loc_1484D20:   var_114 = " <-> Plan Type "
  loc_1484D28:   var_128 = (var_114 + var_88.Fields.Item(var_104).Value)
  loc_1484D43:   var_168 = IIf((var_88.Fields.Item(var_E4).Value <> vbNullString), var_E4 & var_88.Fields.Item(var_E4).Value & " between fromdate and ToDate", vbNullString)
  loc_1484D4B:   var_188 = (var_178 + var_168)
  loc_1484D64:   var_240 = CVar(" <-> Discount " & Proc_6_38_E69628(CVar(var_88.Fields.Item("Discount")), var_104, var_E4)) 'String
  loc_1484D7E:   var_280 = IIf((var_88.Fields.Item("Discount").Value <> 0), (var_88.Fields.Item("Discount").Value <> 0) & "' AND ROOMMAST.LOGSITE_CODE='", vbNullString)
  loc_1484D86:   var_2A0 = (IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") + var_280)
  loc_1484D9F:   var_33C = CVar(" <-> No Of Pax " & Proc_6_38_E69628(CVar(var_88.Fields.Item("NoofPax")), var_E4)) 'String
  loc_1484DC1:   var_36C = (var_280 & CVar(var_94) + IIf((var_88.Fields.Item("NoofPax").Value <> 0), var_33C, vbNullString))
  loc_1484DD3:   Me.LblRoomDtl.Caption = CStr(var_36C)
  loc_1484E2E: Else
  loc_1484E42:   If (var_8C.RecordCount > 0) Then
  loc_1484E54:     var_C4 = var_8C.Fields
  loc_1484E9E:     var_B0 = var_8C.Fields.Item("U_Name")
  loc_1484EA6:     var_AC = CVar(var_B0) 'Address
  loc_1484EBA:     var_138 = CVar(var_178 & Proc_6_38_E69628(var_AC, var_90 & " Blocked By :   ") & " From :   ") 'String
  loc_1484EED:     var_168 = 1 & Format(CVar(var_C4.Item("FromDate")), "dd/MMM/yyyy") & " To " 
  loc_1484F63:     var_2A0 = 1 & Format(CVar(var_8C.Fields.Item("ToDate")), "dd/MMM/yyyy") & Space(3) & "Reason:   " & var_8C.Fields.Item("Reasons").Value 
  loc_1484F75:     Me.LblRoomDtl.Caption = CStr(var_2A0)
  loc_1484FBA:   Else
  loc_1484FC7:     Me.LblRoomDtl.Caption = var_90
  loc_1484FCF:   End If
  loc_1484FCF: End If
  loc_1484FD5: var_F4 = 0
  loc_1485000: var_2E4 = "Select IsNull(Max(Name),'') from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and code='" & var_94
  loc_1485010: unk_47DD60.Execute var_2E4 & "'", var_AC, -1
  loc_1485018: var_9C = var_9C.Fields
  loc_1485020: var_F4 = var_B0.Item(var_B0)
  loc_1485042: Me.LBLRoomName.Caption = var_168 & Proc_6_38_E69628(CVar(var_C4), var_C4, " ", 1)
  loc_1485070: Me.LBLRoomName.Refresh
  loc_148507D: Set var_88 = Nothing
  loc_1485085: Set var_8C = Nothing
  loc_1485088: Exit Sub
End Sub

Public Sub ColorLabel() 'F6947C
  'Data Table: 47DD54
  Dim unk_47DD60 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_B8 As Fields15
  Dim var_E4 As Label
  loc_F6936E: unk_47DD60.Execute "Select * from DispColor", var_A8, -1
  loc_F69379: Set var_88 = var_AC
  loc_F69382: ' Referenced from: F69477
  loc_F69388: var_AE = var_88.EOF
  loc_F69391: If Not(var_AE) Then
  loc_F693A6:   var_AC = var_88.Fields
  loc_F693C5:   Set var_B8 = Me.Label2
  loc_F693CB:   Call 0.Method_ColorLabel8 (var_AE, var_AC.Item("index").Value)
  loc_F693E5:   If (var_AC <= CVar(var_AE)) Then
  loc_F69446:     Set var_E0 = Me.Label2
  loc_F6944C:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F69454:     var_E4.BackColor = CLng(var_88.Fields.Item("Color").Value)
  loc_F6946F:   End If
  loc_F69472:   var_88.MoveNext
  loc_F69477:   GoTo loc_F69382
  loc_F6947A: End If
  loc_F6947A: Exit Sub
End Sub

Public Property Get OpenMode() 'E0FD44
  'Data Table: 47DD54
  loc_E0FD38: var_88 = global_80
  loc_E0FD3B: OpenMode = 
End Sub

Public Property Let OpenMode(vNewValue) 'E0FD8C
  'Data Table: 47DD54
  loc_E0FD84: global_80 = vNewValue
  loc_E0FD88: Exit Sub
End Sub

Public Sub Proc_81_16_16BABC4
  'Data Table: 47DD54
  Dim var_96 As Integer
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_47DD60 As Connection15
  Dim var_CC As String
  Dim var_DC As Variant
  Dim var_B4 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_8C As Integer
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_C8 As Variant
  Dim var_120 As Variant
  Dim var_16C As Variant
  Dim var_134 As Variant
  Dim var_20C As Variant
  Dim var_220 As Variant
  Dim var_2D4 As Variant
  Dim var_2C4 As Variant
  Dim var_2F4 As Variant
  Dim var_2A0 As Variant
  Dim var_190 As Field20
  Dim var_130 As Variant
  Dim var_1A0 As Variant
  Dim var_17C As Variant
  Dim var_1B0 As Variant
  Dim var_18C As Variant
  Dim var_1B4 As Variant
  Dim var_1B8 As Field20
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_290 As Variant
  Dim var_314 As Variant
  Dim Me As Recordset15
  Dim var_1C8 As Variant
  Dim var_9C As Recordset15
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_92 As Integer
  loc_16B9269: var_A0 = "SELECT roommast.*, RoomCat.Name AS RoomCategory, RoomCat.ShortName FROM roommast INNER JOIN RoomCat ON (roommast.Type = RoomCat.Type) AND (roommast.RoomCat = RoomCat.Code) WHERE (ROOMMAST.LOGSITE_CODE='" & MemVar_1F95078
  loc_16B9279: unk_47DD60.Execute var_A0 & "') AND (((roommast.Type)='RO' AND RoomMast.InclCount='Y')) ORDER BY roommast.Code", var_C4, -1
  loc_16B9284: Set var_88 = var_C8
  loc_16B92A8: var_A0 = "Select RoomOcc.dOCID,RoomOcc.FolioNo,RoomOcc.Vtype,RoomOcc.Site_Code,RoomOcc.VPrefix,RoomOcc.GuestProf,RoomOcc.RoomCat,RoomOcc.RoomType,RoomOcc.RoomNo,RoomOcc.RateCode,RoomOcc.RoomRate,GuestProf.Name,GuestFolio.mFolioNo from RoomOcc Inner Join GuestFolio On GuestFolio.DocId=RoomOcc.DocId left join GuestProf on RoomOcc.Guestprof=Guestprof.code where (ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078
  loc_16B92AF: var_A4 = var_A0 & "') AND ChkOutDate is Null Union Select DOCID,0 as FolioNo, Vtype,Site_Code,VPrefix,GuestProf,RoomCat,RoomType,RoomNo,RateCode,RoomRate,GuestName,0 mFolioNo from booking where (LOGSITE_CODE='"
  loc_16B92CB: Proc_6_7_F26918(var_C4, MemVar_1F950EC, CVar(var_A4 & MemVar_1F95078 & "') AND (RoomNo is Not Null and RoomNO<>'') and Arrdate="), var_130)
  loc_16B92D3: var_EC = -1 & var_C4 
  loc_16B92EA: unk_47DD60.Execute CStr(var_EC & " and cancel='N' and Docid not in (Select BookingDocid from GuestFolio)"), var_C8, var_C8
  loc_16B92FB: Set global_84 = var_C8
  loc_16B9347: Proc_6_7_F26918(var_C4, MemVar_1F950EC, CVar("Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "') AND Type='O' And "), var_130)
  loc_16B934F: var_EC = -1 & var_C4 
  loc_16B9358: var_10C = var_EC & " between fromdate and ToDate" 
  loc_16B9366: unk_47DD60.Execute CStr(var_10C), var_C8, 0
  loc_16B9377: Set global_88 = var_C8
  loc_16B9398: var_8A = &HA
  loc_16B93C1: If (((global_92 <> 0) And (global_96 <> 0)) And (global_92 < &HA)) Then
  loc_16B93D1:   var_8A = CInt((global_92 + 1))
  loc_16B93D4: End If
  loc_16B93EB: If (var_88.RecordCount > 0) Then
  loc_16B941B:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_16B9488:     var_C4 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_16B94A9:     var_8C = CInt(((Val(CStr(Format(var_C4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_16B94C1:   Else
  loc_16B94DE:     var_DC = "00"
  loc_16B94F0:     var_C4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_16B94F7:     var_EC = Format(var_C4, var_DC)
  loc_16B9511:     var_8C = CInt(((Val(CStr(var_EC)) + CDbl(1)) * CDbl(6)))
  loc_16B9520:   End If
  loc_16B9523: Else
  loc_16B953C:   MsgBox("No Records in Room Master", &H40, var_DC, var_EC, var_10C)
  loc_16B954F: Else
  loc_16B9551:   var_90 = 1
  loc_16B9556:   var_8E = 0
  loc_16B956C:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_16B9587:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_16B95A1:   Call Proc_81_17_11A1188((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_16B95B9:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_16B95D4:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_16B95EB:   Me.FGrid1.Redraw = False
  loc_16B9618:   For var_164 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_164 'Integer
  loc_16B962A:     If (global_92 <> 0) Then
  loc_16B9631:       var_B4 = CVar(CLng(var_94)) 'Long
  loc_16B9657:       var_120 = CVar(CLng(((CDbl(Me.FGrid1.Height) - CDbl(285)) / CDbl(global_92)))) 'Long
  loc_16B9660:       Set var_134 = Me.FGrid1
  loc_16B9666:       LateIdCallSt
  loc_16B967B:     Else
  loc_16B967F:       var_B4 = CVar(CLng(var_94)) 'Long
  loc_16B9684:       var_120 = &H320
  loc_16B9691:       Set var_C8 = Me.FGrid1
  loc_16B9697:       LateIdCallSt
  loc_16B96A2:     End If
  loc_16B96A5:   Next var_164 'Integer
  loc_16B96AA:   ' Referenced from:   16BAB9F
  loc_16B96BE:   If (Me.FGrid1.EOF = 0) Then
  loc_16B96C3:     var_90 = 1
  loc_16B96C6:     ' Referenced from:   16BAB9C
  loc_16B96D0:     If (var_90 <= (var_8A - 1)) Then
  loc_16B96D5:       var_96 = &HFF
  loc_16B96E7:       For var_168 = (var_8C - 6) To (var_8C - 1):   var_94 = var_168 'Integer
  loc_16B96F7:         If (var_94 = (var_8C - 6)) Then
  loc_16B96FE:           var_FC = CVar(CLng(var_90)) 'Long
  loc_16B970D:           var_DC = Me.FGrid1.Col
  loc_16B9746:           var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item("Code")), CVar(CLng(var_DC)), var_FC)) 'String
  loc_16B974E:           Set var_190 = Me.FGrid1
  loc_16B9754:           LateIdCallSt
  loc_16B9787:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16B9796:           Me.FGrid1.Col = "Code"
  loc_16B97A5:         End If
  loc_16B97AF:         If (var_94 = (var_8C - 5)) Then
  loc_16B97CC:           If (Me.Recordset15.RecordCount > 0) Then
  loc_16B97D8:             Me.Recordset15.MoveFirst
  loc_16B97DD:           End If
  loc_16B9830:           Me.Recordset15.Find var_190 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_FC) & "'", var_EC, (var_8C - 6)
  loc_16B985E:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16B98A3:             If (Me.Recordset15.Fields.Item("FolioNo").Value = 0) Then
  loc_16B98DB:               var_2D4 = CVar(CLng(var_90)) 'Long
  loc_16B98EA:               var_2C4 = Me.FGrid1.Col
  loc_16B98F3:               var_2F4 = CVar(CLng(var_2C4)) 'Long
  loc_16B992F:               var_DC = (Me.var_2C4.Fields.Item("ShortName").Value + "(")
  loc_16B9968:               var_130 = (var_DC + CVar(CStr(Me.Recordset15.Fields.Item("RoomRate").Value)))
  loc_16B9971:               var_1A0 = (var_130 + ")")
  loc_16B997A:               var_1B0 = (var_1A0 + vbCrLf)
  loc_16B99AB:               var_1D8 = (var_1B0 + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B99B4:               var_1F8 = (var_1D8 + vbCrLf)
  loc_16B99CB:               var_250 = (var_1F8 + Left(Trim(CVar(Me.Recordset15.Fields.Item("Name"))), &HF))
  loc_16B99D4:               var_270 = (var_250 + vbCrLf)
  loc_16B99DD:               var_290 = (var_270 + "Vacant")
  loc_16B99E6:               var_314 = CVar(CStr("*" & var_290)) 'String
  loc_16B99EE:               Set var_328 = Me.FGrid1
  loc_16B99F4:               LateIdCallSt
  loc_16B9A3D:             Else
  loc_16B9A72:               var_260 = CVar(CLng(var_90)) 'Long
  loc_16B9A81:               var_270 = Me.FGrid1.Col
  loc_16B9A8A:               var_2A0 = CVar(CLng(var_270)) 'Long
  loc_16B9ABC:               var_FC = "("
  loc_16B9AC1:               var_DC = (Me.var_270.Fields.Item("ShortName").Value + var_FC)
  loc_16B9ADD:               var_16C = Me.Recordset15.Fields
  loc_16B9AFA:               var_130 = (var_DC + CVar(CStr(var_16C.Item("RoomRate").Value)))
  loc_16B9B03:               var_1A0 = (var_130 + ")")
  loc_16B9B0C:               var_1B0 = (var_1A0 + vbCrLf)
  loc_16B9B3D:               var_1D8 = (var_1B0 + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B9B46:               var_1F8 = (var_1D8 + vbCrLf)
  loc_16B9B5D:               var_250 = (var_1F8 + Left(Trim(CVar(Me.Recordset15.Fields.Item("Name"))), &HF))
  loc_16B9B62:               var_290 = CVar(CStr(var_250)) 'String
  loc_16B9B6A:               Set var_328 = Me.FGrid1
  loc_16B9B70:               LateIdCallSt
  loc_16B9BB0:             End If
  loc_16B9BB3:           Else
  loc_16B9BCA:             If (Me.RecordCount > 0) Then
  loc_16B9BD3:               Me.MoveFirst
  loc_16B9BD8:             End If
  loc_16B9C18:             var_A4 = var_2A0 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "RoomCode='", 0, 1, var_FC, var_328, var_290)
  loc_16B9C28:             Me.Find var_A4 & "'", var_260, var_328
  loc_16B9C56:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16B9CA4:               var_EC = CVar("Select Rate2 from ratelist where (LOGSITE_CODE='" & MemVar_1F95078 & "') and RoomNo='") & Me.Recordset15.Fields.Item("Code").Value 
  loc_16B9CBB:               unk_47DD60.Execute CStr(var_EC & "'"), var_130, -1
  loc_16B9CC6:               Set var_9C = var_16C
  loc_16B9CEA:               var_18C = CVar(CLng(var_90)) 'Long
  loc_16B9CF3:               Set var_1B4 = Me.FGrid1
  loc_16B9CF9:               var_1B0 = var_1B4.Col
  loc_16B9D02:               var_20C = CVar(CLng(var_1B0)) 'Long
  loc_16B9D39:               var_DC = (Me.var_1B0.Fields.Item("ShortName").Value + vbCrLf)
  loc_16B9D6A:               var_10C = (CVar("Select Rate2 from ratelist where (LOGSITE_CODE='" & MemVar_1F95078 & "') and RoomNo='") + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B9D73:               var_130 = (Me.Recordset15.Fields.Item("Code").Value & "'" + vbCrLf)
  loc_16B9D7C:               var_1A0 = (var_130 + "Out Of Order")
  loc_16B9D81:               var_1C8 = CVar(CStr(var_1A0)) 'String
  loc_16B9D89:               Set var_1B8 = Me.FGrid1
  loc_16B9D8F:               LateIdCallSt
  loc_16B9DBC:             Else
  loc_16B9DD7:               var_DC = CVar("Select Rate2 from ratelist where (LOGSITE_CODE='" & MemVar_1F95078 & "') and COde='*' and RoomNo='") 'String
  loc_16B9E41:               var_1A0 = var_DC & Me.Recordset15.Fields.Item("Code").Value & "' and RoomCat='" & Me.Recordset15.Fields.Item("RoomCat").Value 
  loc_16B9E58:               unk_47DD60.Execute CStr(var_1A0 & "'"), var_1C8, -1
  loc_16B9E63:               Set var_9C = var_1B4
  loc_16B9EA1:               If (var_9C.RecordCount <= 0) Then
  loc_16B9EA8:                 var_18C = CVar(CLng(var_90)) 'Long
  loc_16B9EB7:                 var_1B0 = Me.FGrid1.Col
  loc_16B9EC0:                 var_20C = CVar(CLng(var_1B0)) 'Long
  loc_16B9EF7:                 var_DC = (Me.var_1B0.Fields.Item("ShortName").Value + vbCrLf)
  loc_16B9F28:                 var_10C = (var_DC + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B9F31:                 var_130 = (var_DC & Me.Recordset15.Fields.Item("Code").Value & "' and RoomCat='" + vbCrLf)
  loc_16B9F3A:                 var_1A0 = (Me.Recordset15.Fields.Item("RoomCat").Value + "Vacant")
  loc_16B9F3F:                 var_1C8 = CVar(CStr(var_1A0)) 'String
  loc_16B9F47:                 Set var_1B8 = Me.FGrid1
  loc_16B9F4D:                 LateIdCallSt
  loc_16B9F7A:               Else
  loc_16B9F7E:                 var_260 = CVar(CLng(var_90)) 'Long
  loc_16B9F8D:                 var_230 = Me.FGrid1.Col
  loc_16B9F96:                 var_2A0 = CVar(CLng(var_230)) 'Long
  loc_16B9FC8:                 var_FC = "("
  loc_16B9FCD:                 var_DC = (Me.var_230.Fields.Item("ShortName").Value + var_FC)
  loc_16BA000:                 var_130 = (var_DC + CVar(CStr(var_9C.Fields.Item("Rate2").Value)))
  loc_16BA009:                 var_1A0 = (Me.Recordset15.Fields.Item("RoomCat").Value + ")")
  loc_16BA012:                 var_1B0 = (var_1A0 + vbCrLf)
  loc_16BA033:                 var_1B8 = Me.Recordset15.Fields.Item("Code")
  loc_16BA03B:                 var_1C8 = var_1B8.Value
  loc_16BA043:                 var_1D8 = (var_1B0 + var_1C8)
  loc_16BA04C:                 var_1F8 = (var_1D8 + vbCrLf)
  loc_16BA055:                 var_220 = (var_1F8 + "Vacant")
  loc_16BA05A:                 var_240 = CVar(CStr(CVar(Me.Recordset15.Fields.Item("Name")))) 'String
  loc_16BA062:                 Set var_210 = Me.FGrid1
  loc_16BA068:                 LateIdCallSt
  loc_16BA0A0:               End If
  loc_16BA0A0:             End If
  loc_16BA0A0:           End If
  loc_16BA0B9:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16BA0C8:           Me.FGrid1.Col = "ShortName"
  loc_16BA0D7:         End If
  loc_16BA0E1:         If (var_94 = (var_8C - 4)) Then
  loc_16BA0FB:           If (Me.RecordCount > 0) Then
  loc_16BA104:             Me.MoveFirst
  loc_16BA109:           End If
  loc_16BA150:           var_CC = var_2A0 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "RoomCode='", 0, 1, var_FC, var_210, var_240) & "'"
  loc_16BA159:           Me.Find var_CC, var_260, var_1B8
  loc_16BA184:           If (Me.AbsolutePosition > 0) Then
  loc_16BA1D3:             var_EC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_16BA1DB:             Set var_190 = Me.FGrid1
  loc_16BA1E1:             LateIdCallSt
  loc_16BA1FE:           Else
  loc_16BA23F:             var_1A0 = Me.FGrid1.Col
  loc_16BA278:             var_10C = CVar(Proc_6_38_E69628(CVar(Me.var_1A0.Fields.Item("RoomStat")), CVar(CLng(var_1A0)), CVar(CLng(var_90)))) 'String
  loc_16BA291:             var_120 = (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomStat")), Me.var_1A0.Fields.Item("RoomStat"), "C") = vbNullString)
  loc_16BA2A1:             var_1B0 = CVar(CStr(IIf(var_120, "C", var_10C))) 'String
  loc_16BA2A9:             Set var_1B8 = Me.FGrid1
  loc_16BA2AF:             LateIdCallSt
  loc_16BA2DC:           End If
  loc_16BA2F0:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_16BA30C:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_16BA32D:           Call Proc_81_18_13CA6C4(CByte(CLng(Me.FGrid1.Col)), var_92, var_1B8, var_1B0)
  loc_16BA34B:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_16BA36C:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16BA37B:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_16BA38A:         End If
  loc_16BA394:         If (var_94 = (var_8C - 3)) Then
  loc_16BA3E4:           If (Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_1C8))) = "O") Then
  loc_16BA3FE:             If (Me.RecordCount > 0) Then
  loc_16BA407:               Me.MoveFirst
  loc_16BA463:               Me.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_16BA492:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16BA4E1:                 var_EC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_16BA4E9:                 Set var_190 = Me.FGrid1
  loc_16BA4EF:                 LateIdCallSt
  loc_16BA50C:               Else
  loc_16BA510:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BA528:                 var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BA52D:                 var_17C = vbNullString
  loc_16BA537:                 Set var_134 = Me.FGrid1
  loc_16BA53D:                 LateIdCallSt
  loc_16BA54F:               End If
  loc_16BA552:             Else
  loc_16BA556:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BA56E:               var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BA573:               var_17C = vbNullString
  loc_16BA57D:               Set var_134 = Me.FGrid1
  loc_16BA583:               LateIdCallSt
  loc_16BA595:             End If
  loc_16BA598:           Else
  loc_16BA59C:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BA5B4:             var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BA5B9:             var_17C = vbNullString
  loc_16BA5C3:             Set var_134 = Me.FGrid1
  loc_16BA5C9:             LateIdCallSt
  loc_16BA5DB:           End If
  loc_16BA5F4:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16BA603:           Me.FGrid1.Col = var_B4
  loc_16BA612:         End If
  loc_16BA61C:         If (var_94 = (var_8C - 2)) Then
  loc_16BA622:           var_B4 = "RoomStat"
  loc_16BA639:           var_134 = Me.Recordset15.Fields.Item(var_B4)
  loc_16BA66C:           If (Trim(CVar(Proc_6_38_E69628(CVar(var_134), var_134, var_17C, var_120, var_B4, var_134, var_17C))) = "O") Then
  loc_16BA686:             If (Me.RecordCount > 0) Then
  loc_16BA68F:               Me.MoveFirst
  loc_16BA6D8:               var_120 = "'"
  loc_16BA6EB:               Me.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_120), 0, 1
  loc_16BA71A:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16BA769:                 var_EC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_120)) 'String
  loc_16BA771:                 Set var_190 = Me.FGrid1
  loc_16BA777:                 LateIdCallSt
  loc_16BA794:               Else
  loc_16BA798:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BA7B0:                 var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BA7B5:                 var_17C = vbNullString
  loc_16BA7BF:                 Set var_134 = Me.FGrid1
  loc_16BA7C5:                 LateIdCallSt
  loc_16BA7D7:               End If
  loc_16BA7DA:             Else
  loc_16BA7DE:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BA7F6:               var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BA7FB:               var_17C = vbNullString
  loc_16BA805:               Set var_134 = Me.FGrid1
  loc_16BA80B:               LateIdCallSt
  loc_16BA81D:             End If
  loc_16BA820:           Else
  loc_16BA824:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BA83C:             var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BA841:             var_17C = vbNullString
  loc_16BA84B:             Set var_134 = Me.FGrid1
  loc_16BA851:             LateIdCallSt
  loc_16BA863:           End If
  loc_16BA87C:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16BA88B:           Me.FGrid1.Col = var_B4
  loc_16BA89A:         End If
  loc_16BA8A4:         If (var_94 = (var_8C - 1)) Then
  loc_16BA8AA:           var_B4 = "RoomStat"
  loc_16BA8C1:           var_134 = Me.Recordset15.Fields.Item(var_B4)
  loc_16BA8F4:           If (Trim(CVar(Proc_6_38_E69628(CVar(var_134), var_134, var_17C, var_120, var_B4, var_134, var_17C))) = "O") Then
  loc_16BA90E:             If (Me.RecordCount > 0) Then
  loc_16BA917:               Me.MoveFirst
  loc_16BA960:               var_120 = "'"
  loc_16BA973:               Me.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_120), 0, 1
  loc_16BA9A2:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16BA9F1:                 var_EC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ToDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_120)) 'String
  loc_16BA9F9:                 Set var_190 = Me.FGrid1
  loc_16BA9FF:                 LateIdCallSt
  loc_16BAA1C:               Else
  loc_16BAA20:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BAA38:                 var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BAA3D:                 var_17C = vbNullString
  loc_16BAA47:                 Set var_134 = Me.FGrid1
  loc_16BAA4D:                 LateIdCallSt
  loc_16BAA5F:               End If
  loc_16BAA62:             Else
  loc_16BAA66:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BAA7E:               var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BAA83:               var_17C = vbNullString
  loc_16BAA8D:               Set var_134 = Me.FGrid1
  loc_16BAA93:               LateIdCallSt
  loc_16BAAA5:             End If
  loc_16BAAA8:           Else
  loc_16BAAAC:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_16BAAC4:             var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16BAAC9:             var_17C = vbNullString
  loc_16BAAD3:             Set var_134 = Me.FGrid1
  loc_16BAAD9:             LateIdCallSt
  loc_16BAAEB:           End If
  loc_16BAB04:           var_B4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_16BAB13:           Me.FGrid1.Col = var_B4
  loc_16BAB22:         End If
  loc_16BAB25:       Next var_168 'Integer
  loc_16BAB30:       var_90 = (var_90 + 1)
  loc_16BAB3D:       If (var_90 > (var_8A - 1)) Then
  loc_16BAB59:         var_B4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_16BAB68:         Me.FGrid1.Col = var_B4
  loc_16BAB77:       End If
  loc_16BAB7D:       var_88.MoveNext
  loc_16BAB96:       If (var_88.EOF = &HFF) Then
  loc_16BAB99:         GoTo loc_16BABA2
  loc_16BAB9C:       End If
  loc_16BAB9C:       GoTo loc_16B96C6
  loc_16BAB9F:     End If
  loc_16BAB9F:     GoTo loc_16B96AA
  loc_16BABA2:     ' Referenced from:   16BAB99
  loc_16BABA2:   End If
  loc_16BABA2: End If
  loc_16BABB0: Me.FGrid1.Redraw = True
  loc_16BABBD: Set var_88 = Nothing
  loc_16BABC0: Exit Sub
End Sub

Public Sub Proc_81_17_11A1188(arg_C, arg_10) '11A1188
  'Data Table: 47DD54
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_FC As String
  Dim var_120 As Variant
  Dim arg_10 As Integer
  loc_11A0D7B: Me.FGrid1.Row = 0
  loc_11A0D96: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A0D9B: var_CC = 0
  loc_11A0DA8: Set var_E0 = Me.FGrid1
  loc_11A0DAE: LateIdCallSt
  loc_11A0DCC: If (global_100 > 8) Then
  loc_11A0DF5:   Me.FGrid1.Font.FormatString = CVar(global_100)
  loc_11A0E04:   ' Referenced from: 11A10CB
  loc_11A0E04: End If
  loc_11A0E0A: If (arg_10 < 5) Then
  loc_11A0E0D:   GoTo loc_11A10CE
  loc_11A0E10: End If
  loc_11A0E14: Set var_E4 = Me.FGrid1
  loc_11A0E25: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_11A0E2F:   var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0E34:   var_CC = 0
  loc_11A0E41:   Set var_AC = Me.FGrid1
  loc_11A0E47:   LateIdCallSt
  loc_11A0E55: Next var_E8 'Integer
  loc_11A0E69: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_11A0E79:   If (var_86 = (arg_10 - 5)) Then
  loc_11A0E80:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0E85:     var_CC = 0
  loc_11A0E92:     Set var_AC = Me.FGrid1
  loc_11A0E98:     LateIdCallSt
  loc_11A0EA7:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0EAC:     var_CC = 1
  loc_11A0EB6:     Set var_AC = Me.FGrid1
  loc_11A0EBC:     LateIdCallSt
  loc_11A0EDA:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A0EE3:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11A0EE8:     var_FC = "Room No"
  loc_11A0EF2:     Set var_E0 = Me.FGrid1
  loc_11A0EF8:     LateIdCallSt
  loc_11A0F0A:   End If
  loc_11A0F14:   If (var_86 = (arg_10 - 4)) Then
  loc_11A0F23:     If (global_96 <> 0) Then
  loc_11A0F2A:       var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0F50:       var_CC = CVar(CLng(((CDbl(Me.FGrid1.Width) - CDbl(285)) / CDbl(global_96)))) 'Long
  loc_11A0F59:       Set var_E0 = Me.FGrid1
  loc_11A0F5F:       LateIdCallSt
  loc_11A0F74:     Else
  loc_11A0F78:       var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0F7D:       var_CC = &H4B0
  loc_11A0F8A:       Set var_AC = Me.FGrid1
  loc_11A0F90:       LateIdCallSt
  loc_11A0F9B:     End If
  loc_11A0F9F:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0FA4:     var_CC = 1
  loc_11A0FAE:     Set var_AC = Me.FGrid1
  loc_11A0FB4:     LateIdCallSt
  loc_11A0FD2:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A0FDB:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11A0FEE:     var_120 = CVar("Room Rate" & vbCrLf & "Status") 'String
  loc_11A0FF6:     Set var_E0 = Me.FGrid1
  loc_11A0FFC:     LateIdCallSt
  loc_11A1015:   End If
  loc_11A101F:   If (var_86 = (arg_10 - 3)) Then
  loc_11A1026:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A102B:     var_CC = &H12C
  loc_11A1038:     Set var_AC = Me.FGrid1
  loc_11A103E:     LateIdCallSt
  loc_11A104D:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A1058:     var_CC = CVar(CInt(4)) 'Integer
  loc_11A1060:     Set var_AC = Me.FGrid1
  loc_11A1066:     LateIdCallSt
  loc_11A1084:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A108D:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11A1092:     var_FC = vbNullString
  loc_11A109C:     Set var_E0 = Me.FGrid1
  loc_11A10A2:     LateIdCallSt
  loc_11A10B4:   End If
  loc_11A10B7: Next var_EC 'Integer
  loc_11A10BE: Set var_E4 = Nothing 
  loc_11A10C8: arg_10 = (arg_10 - 6)
  loc_11A10CB: GoTo loc_11A0E04
  loc_11A10CE: ' Referenced from: 11A0E0D
  loc_11A10F5: For var_124 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_124 'Integer
  loc_11A110E:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11A111E:   For var_128 = 1 To arg_C: var_88 = var_128 'Integer
  loc_11A1137:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11A1152:     Me.FGrid1.CellBackColor = &HE69839
  loc_11A116D:     Me.FGrid1.CellForeColor = &HFFFF
  loc_11A1178:   Next var_128 'Integer
  loc_11A1180: Next var_124 'Integer
  loc_11A1185: Exit Sub
End Sub

Public Sub Proc_81_18_13CA6C4(arg_C) '13CA6C4
  'Data Table: 47DD54
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_13C9D43: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C9D4D: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_13C9D8F: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_13C9DA5:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C9DB4:   var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13C9E08:   If CBool(Right(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 6) <> "Vacant") Then
  loc_13C9E24:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C9E2D:     Set var_DC = Me.FGrid1
  loc_13C9E33:     var_DC.Col = var_A8
  loc_13C9E4E:     Set var_88 = Me.Label2
  loc_13C9E54:     Call 0.Method_Proc_81_18_13CA6C40 (3, var_DC, var_140, var_C8)
  loc_13C9E5C:     var_A8 = var_DC.BackColor
  loc_13C9E73:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C9E9A:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C9EA3:     Set var_DC = Me.FGrid1
  loc_13C9EA9:     var_DC.Col = CVar(var_140)
  loc_13C9EC4:     Set var_88 = Me.Label2
  loc_13C9ECA:     Call 0.Method_Proc_81_18_13CA6C40 (3, var_DC, var_140)
  loc_13C9ED2:     var_C8 = var_DC.BackColor
  loc_13C9EE9:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C9EFA:   Else
  loc_13C9F0D:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C9F1C:     var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13C9F70:     If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_13C9F8C:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C9F95:       Set var_DC = Me.FGrid1
  loc_13C9F9B:       var_DC.Col = var_A8
  loc_13C9FB6:       Set var_88 = Me.Label2
  loc_13C9FBC:       Call 0.Method_Proc_81_18_13CA6C40 (4, var_DC, var_140)
  loc_13C9FC4:       var_C8 = var_DC.BackColor
  loc_13C9FDB:       Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA002:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA00B:       Set var_DC = Me.FGrid1
  loc_13CA011:       var_DC.Col = CVar(var_140)
  loc_13CA02C:       Set var_88 = Me.Label2
  loc_13CA032:       Call 0.Method_Proc_81_18_13CA6C40 (4, var_DC, var_140)
  loc_13CA03A:       var_A8 = var_DC.BackColor
  loc_13CA051:       Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA062:     Else
  loc_13CA07B:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA084:       Set var_DC = Me.FGrid1
  loc_13CA08A:       var_DC.Col = CVar(var_140)
  loc_13CA0A5:       Set var_88 = Me.Label2
  loc_13CA0AB:       Call 0.Method_Proc_81_18_13CA6C40 (1, var_DC)
  loc_13CA0CA:       Me.FGrid1.CellBackColor = CVar(var_DC.BackColor)
  loc_13CA0F1:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA0FA:       Set var_DC = Me.FGrid1
  loc_13CA100:       var_DC.Col = CVar(var_DC.BackColor)
  loc_13CA11B:       Set var_88 = Me.Label2
  loc_13CA121:       Call 0.Method_Proc_81_18_13CA6C40 (1, var_DC)
  loc_13CA129:       var_140 = var_DC.BackColor
  loc_13CA140:       Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA14E:     End If
  loc_13CA14E:   End If
  loc_13CA151: Else
  loc_13CA164:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13CA16E:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_13CA1B0:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_13CA1CC:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA1D5:     Set var_DC = Me.FGrid1
  loc_13CA1DB:     var_DC.Col = var_A8
  loc_13CA1F6:     Set var_88 = Me.Label2
  loc_13CA1FC:     Call 0.Method_Proc_81_18_13CA6C40 (2, var_DC, var_140)
  loc_13CA204:     var_C8 = var_DC.BackColor
  loc_13CA21B:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA242:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA24B:     Set var_DC = Me.FGrid1
  loc_13CA251:     var_DC.Col = CVar(var_140)
  loc_13CA26C:     Set var_88 = Me.Label2
  loc_13CA272:     Call 0.Method_Proc_81_18_13CA6C40 (2, var_DC, var_140)
  loc_13CA27A:     var_A8 = var_DC.BackColor
  loc_13CA291:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA2A2:   Else
  loc_13CA2B5:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13CA2BF:     var_C8 = CVar(CLng(arg_C)) 'Long
  loc_13CA301:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_13CA317:       var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13CA326:       var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13CA37A:       If CBool(Right(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 6) <> "Vacant") Then
  loc_13CA396:         var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA39F:         Set var_DC = Me.FGrid1
  loc_13CA3A5:         var_DC.Col = var_A8
  loc_13CA3C0:         Set var_88 = Me.Label2
  loc_13CA3C6:         Call 0.Method_Proc_81_18_13CA6C40 (3, var_DC, var_140, var_C8)
  loc_13CA3CE:         var_A8 = var_DC.BackColor
  loc_13CA3E5:         Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA40C:         var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA415:         Set var_DC = Me.FGrid1
  loc_13CA41B:         var_DC.Col = CVar(var_140)
  loc_13CA436:         Set var_88 = Me.Label2
  loc_13CA43C:         Call 0.Method_Proc_81_18_13CA6C40 (3, var_DC, var_140)
  loc_13CA444:         var_C8 = var_DC.BackColor
  loc_13CA45B:         Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA46C:       Else
  loc_13CA47F:         var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13CA48E:         var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13CA4E2:         If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_13CA4FE:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA507:           Set var_DC = Me.FGrid1
  loc_13CA50D:           var_DC.Col = var_A8
  loc_13CA528:           Set var_88 = Me.Label2
  loc_13CA52E:           Call 0.Method_Proc_81_18_13CA6C40 (4, var_DC, var_140, var_C8)
  loc_13CA536:           var_A8 = var_DC.BackColor
  loc_13CA54D:           Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA574:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA57D:           Set var_DC = Me.FGrid1
  loc_13CA583:           var_DC.Col = CVar(var_140)
  loc_13CA59E:           Set var_88 = Me.Label2
  loc_13CA5A4:           Call 0.Method_Proc_81_18_13CA6C40 (4, var_DC, var_140)
  loc_13CA5AC:           var_A8 = var_DC.BackColor
  loc_13CA5C3:           Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13CA5D4:         Else
  loc_13CA5ED:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA5F6:           Set var_DC = Me.FGrid1
  loc_13CA5FC:           var_DC.Col = CVar(var_140)
  loc_13CA617:           Set var_88 = Me.Label2
  loc_13CA61D:           Call 0.Method_Proc_81_18_13CA6C40 (0, var_DC)
  loc_13CA63C:           Me.FGrid1.CellBackColor = CVar(var_DC.BackColor)
  loc_13CA663:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13CA66C:           Set var_DC = Me.FGrid1
  loc_13CA672:           var_DC.Col = CVar(var_DC.BackColor)
  loc_13CA68D:           Set var_88 = Me.Label2
  loc_13CA693:           Call 0.Method_Proc_81_18_13CA6C40 (0, var_DC)
  loc_13CA6B2:           Me.FGrid1.CellBackColor = CVar(var_DC.BackColor)
  loc_13CA6C0:         End If
  loc_13CA6C0:       End If
  loc_13CA6C0:     End If
  loc_13CA6C0:   End If
  loc_13CA6C0: End If
  loc_13CA6C0: Exit Sub
End Sub
