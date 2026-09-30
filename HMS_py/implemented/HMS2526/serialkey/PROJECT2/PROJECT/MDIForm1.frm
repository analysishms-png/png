VERSION 5.00
Begin VB.MDIForm MDIForm1
  BackColor = &HAFFFFF&
  WindowState = 2
  Icon = "MDIForm1.ctx":0
  LinkTopic = "MDIForm1"
  ClientLeft = 2640
  ClientTop = 2025
  ClientWidth = 11715
  ClientHeight = 9240
  Begin PictureBox PictShortCuts
    BackColor = &H0&
    Left = 1605
    Top = 1200
    Width = 3170
    Height = 7680
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin TreeView TreeView1
      Left = 0
      Top = 0
      Width = 3120
      Height = 6750
      DragIcon = "MDIForm1.ctx":442
      TabIndex = 22
    End
    Begin ListView ListView1
      Left = 0
      Top = 0
      Width = 3120
      Height = 6420
      TabIndex = 23
    End
    Begin MSHFlexGrid mnuGrid
      Left = 0
      Top = 6810
      Width = 3120
      Height = 2370
      TabIndex = 24
    End
  End
  Begin PictureBox PictSubMenu
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 0
    Top = 0
    Width = 11715
    Height = 1200
    TabIndex = 5
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    FillColor = &HC00000&
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 1 'Align Top
    Begin BtnEnh CmdSubMenu
      Index = 0
      Left = 0
      Top = 0
      Width = 2040
      Height = 600
      TabIndex = 7
    End
    Begin Label LblCompany
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 16215
      Height = 600
      TabIndex = 15
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 18
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin PictureBox PictTitleBar
    BackColor = &HFFFFFF&
    Left = 9915
    Top = 1200
    Width = 1800
    Height = 7680
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 4 'Align Right
    Begin BtnEnh LblTimeAustralia
      Left = 0
      Top = 5595
      Width = 1875
      Height = 675
      TabIndex = 14
    End
    Begin BtnEnh LblTimeJapan
      Left = 0
      Top = 4980
      Width = 1875
      Height = 675
      TabIndex = 13
    End
    Begin BtnEnh LblTimeLondon
      Left = 0
      Top = 4380
      Width = 1875
      Height = 675
      TabIndex = 12
    End
    Begin BtnEnh LblTimeItaly
      Left = 0
      Top = 3780
      Width = 1875
      Height = 675
      TabIndex = 11
    End
    Begin BtnEnh LblTimeCanada
      Left = 0
      Top = 3165
      Width = 1875
      Height = 675
      TabIndex = 9
    End
    Begin BtnEnh LblTimeIndia
      Left = 0
      Top = 2550
      Width = 1875
      Height = 675
      TabIndex = 10
    End
    Begin BtnEnh LblCalender
      Left = 0
      Top = 1890
      Width = 1800
      Height = 675
      TabIndex = 16
    End
    Begin BtnEnh Reload
      Left = 0
      Top = 6240
      Width = 900
      Height = 480
      TabIndex = 17
    End
    Begin BtnEnh cmdExit
      Left = 900
      Top = 6240
      Width = 900
      Height = 480
      TabIndex = 18
    End
    Begin Image DealerLogo
      Picture = "MDIForm1.ctx":74C
      Left = -180
      Top = 7275
      Width = 2100
      Height = 1650
    End
    Begin Image ImgLogo
      Left = 0
      Top = 0
      Width = 1800
      Height = 1890
      Stretch = -1  'True
    End
    Begin Image tmpImage
      Left = 0
      Top = 0
      Width = 1800
      Height = 1890
      Visible = 0   'False
      Stretch = -1  'True
    End
  End
  Begin PictureBox PictMainMenu
    BackColor = &HFFFFFF&
    Left = 0
    Top = 1200
    Width = 1605
    Height = 7680
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin BtnEnh LblMgsInfo
      Left = 720
      Top = 8400
      Width = 975
      Height = 375
      Visible = 0   'False
      TabIndex = 20
    End
    Begin BtnEnh LblMgs
      Left = 0
      Top = 8400
      Width = 1695
      Height = 375
      TabIndex = 19
    End
    Begin BtnEnh LblStatus
      Left = 0
      Top = 8745
      Width = 1605
      Height = 465
      TabIndex = 8
    End
    Begin BtnEnh CmdMainMenu
      Index = 0
      Left = 0
      Top = 0
      Width = 1605
      Height = 650
      TabIndex = 6
    End
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 2025
    Top = 1050
  End
  Begin PictureBox Picture3
    BackColor = &H80000006&
    ForeColor = &H80000008&
    Left = 4770
    Top = 1200
    Width = 7335
    Height = 7680
    Visible = 0   'False
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Align = 3 'Align Left
    Appearance = 0 'Flat
    Begin Timer Print_KOT_Timer
      Enabled = 0   'False
      Interval = 5000
      Left = 420
      Top = 825
    End
    Begin Timer SMSJobTimer
      Enabled = 0   'False
      Interval = 1000
      Left = 0
      Top = 825
    End
    Begin Timer SMSTimer
      Enabled = 0   'False
      Interval = 5000
      Left = 405
      Top = 405
    End
    Begin Winsock sckControlPanel
    End
    Begin Timer Timer2
      Enabled = 0   'False
      Interval = 10000
      Left = 0
      Top = 405
    End
    Begin Label Label1
      BackColor = &H80000007&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 0
      Width = 12225
      Height = 1665
      TabIndex = 2
      WordWrap = -1  'True
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
  Begin StatusBar sbar
    Left = 0
    Top = 8880
    Width = 11715
    Height = 360
    TabIndex = 0
  End
  Begin ImageList ImageList1
  End
  Begin Menu FA
    Caption = "&Finance"
    Begin Menu FAT
      Caption = "&Transaction"
      Begin Menu fate
        Index = 0
        Caption = "&Voucher Entry"
      End
      Begin Menu fate
        Index = 1
        Visible = 0   'False
        Caption = "Adjustment Entry"
      End
      Begin Menu fate
        Index = 2
        Visible = 0   'False
        Caption = "Delete Adjustment Entry"
      End
      Begin Menu fate
        Index = 3
        Caption = "Bank Reconciliation"
      End
      Begin Menu fate
        Index = 5
        Visible = 0   'False
        Caption = "T.D.S. Challan Entry"
      End
      Begin Menu fate
        Index = 6
        Visible = 0   'False
        Caption = "T.D.S. Certificate Entry"
      End
      Begin Menu fate
        Index = 7
        Caption = "&Expense Voucher"
      End
    End
    Begin Menu faD
      Visible = 0   'False
      Caption = "&Display"
      Begin Menu FAREPORTD
        Index = 0
        Visible = 0   'False
        Caption = "Balanc&e Sheet"
      End
      Begin Menu FAREPORTD
        Index = 1
        Visible = 0   'False
        Caption = "&Profit And Loss Account"
      End
      Begin Menu FAREPORTD
        Index = 2
        Visible = 0   'False
        Caption = "&Trial Balance (Group)"
      End
      Begin Menu FAREPORTD
        Index = 3
        Caption = "&Trial Ledger"
      End
      Begin Menu FAREPORTD
        Index = 4
        Visible = 0   'False
        Caption = "Cash &Flow"
      End
      Begin Menu FAREPORTD
        Index = 5
        Visible = 0   'False
        Caption = "Fund Flo&w"
      End
      Begin Menu FAREPORTD
        Index = 6
        Visible = 0   'False
        Caption = "Cash And Bank Books"
      End
    End
    Begin Menu farp
      Caption = "&Reports"
      Begin Menu FAREPORT
        Index = 0
        Caption = "Trial Balance"
      End
      Begin Menu FAREPORT
        Index = 1
        Visible = 0   'False
        Caption = "&Day Book"
      End
      Begin Menu FAREPORT
        Index = 3
        Caption = "&Ledger"
      End
      Begin Menu FAREPORT
        Index = 4
        Visible = 0   'False
        Caption = "&Interest Ledger"
      End
      Begin Menu FAREPORT
        Index = 5
        Caption = "Cas&h Book"
      End
      Begin Menu FAREPORT
        Index = 6
        Caption = "Ban&k Book"
      End
      Begin Menu FAREPORT
        Index = 7
        Caption = "&Journal Books"
      End
      Begin Menu FAREPORT
        Index = 10
        Caption = "&Annexure"
      End
      Begin Menu FAREPORT
        Index = 13
        Caption = "Bank &Register"
      End
      Begin Menu FAREPORT
        Index = 14
        Caption = "A&geing Analysis for Debtors"
      End
      Begin Menu FAREPORT
        Index = 15
        Caption = "Ageing A&nalysis for Creditors"
      End
      Begin Menu FAREPORT
        Index = 22
        Caption = "Ch&eque Cleared Register"
      End
      Begin Menu FAREPORT
        Index = 23
        Caption = "Che&que Not Cleared Register"
      End
      Begin Menu FAREPORT
        Index = 24
        Caption = "Outstanding Report For Debtors"
      End
      Begin Menu FAREPORT
        Index = 25
        Caption = "Outstanding Report For Creditors"
      End
      Begin Menu FAREPORT
        Index = 27
        Visible = 0   'False
        Caption = "Daily Transaction Summary"
      End
      Begin Menu FAREPORT
        Index = 29
        Visible = 0   'False
        Caption = "Non Transaction Report"
      End
      Begin Menu FAREPORT
        Index = 30
        Visible = 0   'False
        Caption = "Reference Report"
      End
      Begin Menu FAREPORT
        Index = 31
        Caption = "Detailed Trial Ledger"
      End
      Begin Menu FAREPORT
        Index = 32
        Visible = 0   'False
        Caption = "A/c Check List"
      End
      Begin Menu FAREPORT
        Index = 33
        Caption = "Bill Wise Outstanding Report For Debtors"
      End
      Begin Menu FAREPORT
        Index = 34
        Visible = 0   'False
        Caption = "Control Ledger"
      End
      Begin Menu FAREPORT
        Index = 35
        Caption = "Roz Namcha"
      End
    End
  End
  Begin Menu Mast
    Caption = "&Main Setup"
    Begin Menu GEN
      Caption = "General Setup"
      Begin Menu GENMas
        Index = 0
        Caption = "Tax Master"
      End
      Begin Menu GENMas
        Index = 1
        Caption = "Tax Structure"
      End
      Begin Menu GENMas
        Index = 2
        Caption = "Payment Type"
      End
      Begin Menu GENMas
        Index = 4
        Caption = "Parameter"
      End
      Begin Menu GENMas
        Index = 5
        Visible = 0   'False
        Caption = "Revenue Group Setting"
      End
      Begin Menu GENMas
        Index = 6
        Caption = "Printing Parameters"
      End
      Begin Menu GENMas
        Index = 7
        Caption = "Printing Setup"
      End
      Begin Menu GENMas
        Index = 8
        Visible = 0   'False
        Caption = "Revenue Wise Budget Entry"
      End
    End
    Begin Menu FO
      Caption = "Front Office"
      Begin Menu Mas
        Index = 0
        Visible = 0   'False
        Caption = "Country Master"
      End
      Begin Menu Mas
        Index = 1
        Visible = 0   'False
        Caption = "State Master"
      End
      Begin Menu Mas
        Index = 2
        Visible = 0   'False
        Caption = "City Master"
      End
      Begin Menu Mas
        Index = 4
        Caption = "Market Segment"
      End
      Begin Menu Mas
        Index = 5
        Caption = "Business Source"
      End
      Begin Menu Mas
        Index = 6
        Caption = "Guest Status"
      End
      Begin Menu Mas
        Index = 7
        Caption = "Charge Master"
      End
      Begin Menu Mas
        Index = 8
        Caption = "Fixed Charge"
      End
      Begin Menu Mas
        Index = 9
        Caption = "Package Master"
      End
      Begin Menu Mas
        Index = 12
        Caption = "Plan Master"
      End
      Begin Menu Mas
        Index = 13
        Visible = 0   'False
        Caption = "Season Master"
      End
      Begin Menu Mas
        Index = 14
        Caption = "Room Features"
      End
      Begin Menu Mas
        Index = 15
        Caption = "Room Category"
      End
      Begin Menu Mas
        Index = 16
        Caption = "Room Master"
      End
      Begin Menu Mas
        Index = 17
        Caption = "Company Master"
      End
      Begin Menu Mas
        Index = 20
        Caption = "Forex Master"
      End
      Begin Menu Mas
        Index = 21
        Caption = "Guest History"
      End
      Begin Menu Mas
        Index = 22
        Visible = 0   'False
        Caption = "Group Profile"
      End
      Begin Menu Mas
        Index = 23
        Caption = "Room Display"
      End
    End
    Begin Menu Pos
      Caption = "Point of Sale"
      Begin Menu POSMas
        Index = 0
        Caption = "Setup Outlet"
      End
      Begin Menu POSMas
        Index = 1
        Caption = "Outlet Bill Sundry Setting"
      End
      Begin Menu POSMas
        Index = 2
        Caption = "Server Master"
      End
      Begin Menu POSMas
        Index = 3
        Caption = "Table Master"
      End
      Begin Menu POSMas
        Index = 4
        Caption = "Item List"
      End
      Begin Menu POSMas
        Index = 5
        Caption = "Menu Group"
      End
      Begin Menu POSMas
        Index = 6
        Caption = "Menu Category"
      End
      Begin Menu POSMas
        Index = 7
        Caption = "Menu Item"
      End
      Begin Menu POSMas
        Index = 8
        Caption = "Menu Item Rate"
      End
      Begin Menu POSMas
        Index = 9
        Visible = 0   'False
        Caption = "Rate Group Master"
      End
      Begin Menu POSMas
        Index = 10
        Caption = "Session Master"
      End
      Begin Menu POSMas
        Index = 11
        Caption = "Open Item Consumption"
      End
      Begin Menu POSMas
        Index = 12
        Caption = "Scheme Master"
      End
      Begin Menu POSMas
        Index = 15
        Visible = 0   'False
        Caption = "Happy Hours"
      End
      Begin Menu POSMas
        Index = 16
        Caption = "Happy Hours [ Free Items ]"
      End
      Begin Menu POSMas
        Index = 17
        Caption = "Combo Pack"
      End
      Begin Menu POSMas
        Index = 18
        Caption = "NC Type"
      End
      Begin Menu POSMas
        Index = 19
        Caption = "Customer History"
      End
      Begin Menu POSMas
        Index = 20
        Caption = "Delivery Boy"
      End
    End
    Begin Menu Mem
      Caption = "Members Mgmt"
      Begin Menu MemMas
        Index = 0
        Caption = "Category Master"
      End
      Begin Menu MemMas
        Index = 1
        Caption = "Member Master"
      End
      Begin Menu MemMas
        Index = 2
        Caption = "Corporate Member Master"
      End
      Begin Menu MemMas
        Index = 3
        Caption = "Revenue Master"
      End
      Begin Menu MemMas
        Index = 4
        Caption = "Facility Master"
      End
      Begin Menu MemMas
        Index = 5
        Caption = "Category wise Revenue"
      End
      Begin Menu MemMas
        Index = 6
        Caption = "Category wise Facility"
      End
      Begin Menu MemMas
        Index = 7
        Caption = "Member Bill Sundry Setting"
      End
      Begin Menu MemMas
        Index = 8
        Caption = "Environment Settings"
      End
      Begin Menu MemMas
        Index = 9
        Caption = "Member Age Wise Revenue"
      End
      Begin Menu MemMas
        Index = 10
        Caption = "Member Select Category"
      End
    End
    Begin Menu HL
      Caption = "Banquet"
      Begin Menu HallM
        Index = 0
        Caption = "Events"
      End
      Begin Menu HallM
        Index = 1
        Caption = "Venue Features"
      End
      Begin Menu HallM
        Index = 2
        Caption = "Venue Master"
      End
      Begin Menu HallM
        Index = 3
        Caption = "Menu Category"
      End
      Begin Menu HallM
        Index = 4
        Caption = "Item Group"
      End
      Begin Menu HallM
        Index = 5
        Caption = "Menu Item"
      End
      Begin Menu HallM
        Index = 6
        Caption = "Catalog Master"
      End
      Begin Menu HallM
        Index = 7
        Caption = "Banquet Bill Sundry Setting"
      End
    End
    Begin Menu CCenter
      Caption = "Inventory"
      Begin Menu CCenterMas
        Index = 0
        Caption = "Party Master"
      End
      Begin Menu CCenterMas
        Index = 1
        Caption = "Department"
      End
      Begin Menu CCenterMas
        Index = 2
        Caption = "Item Group"
      End
      Begin Menu CCenterMas
        Index = 3
        Caption = "Item Category"
      End
      Begin Menu CCenterMas
        Index = 4
        Caption = "Item Entry "
      End
      Begin Menu CCenterMas
        Index = 5
        Visible = 0   'False
        Caption = "Consumption Master"
      End
      Begin Menu CCenterMas
        Index = 6
        Caption = "Purchase Sundry Setting"
      End
      Begin Menu CCenterMas
        Index = 7
        Visible = 0   'False
        Caption = "Location Master"
      End
      Begin Menu CCenterMas
        Index = 8
        Caption = "Opening Stock"
      End
      Begin Menu CCenterMas
        Index = 9
        Caption = "Item  List"
      End
      Begin Menu CCenterMas
        Index = 10
        Visible = 0   'False
        Caption = "Shift Master"
      End
      Begin Menu CCenterMas
        Index = 11
        Caption = "Enviro Inventry"
      End
    End
    Begin Menu PR
      Caption = "HR/Payroll"
      Begin Menu PRM
        Index = 0
        Caption = "Designation Master"
      End
      Begin Menu PRM
        Index = 1
        Caption = "Category  Master"
      End
      Begin Menu PRM
        Index = 2
        Caption = "Holiday Master"
      End
      Begin Menu PRM
        Index = 3
        Caption = "Employee Master"
      End
    End
    Begin Menu Tel
      Caption = "EPABX"
      Begin Menu TelMaast
        Index = 0
        Visible = 0   'False
        Caption = "Com Port Properties"
      End
      Begin Menu TelMaast
        Index = 1
        Caption = "Call Type Master"
      End
      Begin Menu TelMaast
        Index = 2
        Caption = "Extension Master"
      End
      Begin Menu TelMaast
        Index = 3
        Caption = "Call Codes Master"
      End
      Begin Menu TelMaast
        Index = 4
        Visible = 0   'False
        Caption = "Call Control Master"
      End
    End
    Begin Menu fae
      Caption = "&Finance"
      Begin Menu fame
        Index = 0
        Caption = "Group Accounts"
      End
      Begin Menu fame
        Index = 1
        Caption = "Ledger Accounts"
      End
      Begin Menu fame
        Index = 2
        Caption = "Narration Master"
      End
      Begin Menu fame
        Index = 3
        Caption = "T.D.S. Category"
      End
      Begin Menu fame
        Index = 4
        Caption = "FA Environment"
      End
      Begin Menu fame
        Index = 5
        Caption = "Voucher Environment"
      End
      Begin Menu fame
        Index = 6
        Visible = 0   'False
        Caption = "Opening Balance Updation"
      End
      Begin Menu fame
        Index = 7
        Caption = "Year End Updation"
      End
      Begin Menu fame
        Index = 8
        Caption = "Current Balance Updation"
      End
      Begin Menu fame
        Index = 9
        Visible = 0   'False
        Caption = "Country Master"
      End
      Begin Menu fame
        Index = 10
        Visible = 0   'False
        Caption = "State Master"
      End
      Begin Menu fame
        Index = 11
        Visible = 0   'False
        Caption = "City Master"
      End
      Begin Menu fame
        Index = 12
        Caption = "Delete Message"
      End
      Begin Menu fame
        Index = 13
        Caption = "Account Merging"
      End
      Begin Menu fame
        Index = 14
        Caption = "Voucher Serialisation"
      End
    End
    Begin Menu Util
      Caption = "Utility"
      Begin Menu UTL
        Index = 0
        Caption = "User Master"
      End
      Begin Menu UTL
        Index = 1
        Caption = "Permissions"
      End
      Begin Menu UTL
        Index = 6
        Visible = 0   'False
        Caption = "Update Database Nulls"
      End
      Begin Menu UTL
        Index = 8
        Caption = "Backup Data"
      End
      Begin Menu UTL
        Index = 9
        Visible = 0   'False
        Caption = "Account Merging"
      End
      Begin Menu UTL
        Index = 11
        Visible = 0   'False
        Caption = "Guest Parameters Setting"
      End
      Begin Menu UTL
        Index = 12
        Caption = "Sundry Master"
      End
      Begin Menu UTL
        Index = 13
        Visible = 0   'False
        Caption = "Voucher Wise Sundry Entry"
      End
      Begin Menu UTL
        Index = 14
        Visible = 0   'False
        Caption = "Sale MIS Customized"
      End
      Begin Menu UTL
        Index = 15
        Visible = 0   'False
        Caption = "Guest BirthDates/Anniversary"
      End
      Begin Menu UTL
        Index = 16
        Caption = "Inconsistency Check"
      End
      Begin Menu UTL
        Index = 17
        Caption = "Year End Updation"
      End
      Begin Menu UTL
        Index = 18
        Visible = 0   'False
        Caption = "Data Transfer"
      End
      Begin Menu UTL
        Index = 19
        Visible = 0   'False
        Caption = "Data Recieving"
      End
      Begin Menu UTL
        Index = 20
        Caption = "Menu Item Copy"
      End
      Begin Menu UTL
        Index = 21
        Caption = "POS Bill Deletion"
      End
      Begin Menu UTL
        Index = 22
        Caption = "Guest LookUp"
      End
      Begin Menu UTL
        Index = 23
        Caption = "Country Master"
      End
      Begin Menu UTL
        Index = 24
        Caption = "State Master"
      End
      Begin Menu UTL
        Index = 25
        Caption = "City Master"
      End
      Begin Menu UTL
        Index = 26
        Caption = "Company Master"
      End
      Begin Menu UTL
        Index = 27
        Caption = "Department"
      End
      Begin Menu UTL
        Index = 28
        Caption = "Ledger Accounts"
      End
      Begin Menu UTL
        Index = 29
        Visible = 0   'False
        Caption = "Data Transfer (POS)"
      End
      Begin Menu UTL
        Index = 30
        Visible = 0   'False
        Caption = "PLU File (W.Scale)"
      End
      Begin Menu UTL
        Index = 31
        Visible = 0   'False
        Caption = "User Permissions (Advanced)"
      End
      Begin Menu UTL
        Index = 32
        Caption = "POS Recycle"
      End
      Begin Menu UTL
        Index = 33
        Caption = "Unit Master"
      End
      Begin Menu UTL
        Index = 34
        Caption = "Task Scheduler"
      End
    End
    Begin Menu SCard
      Index = 33
      Visible = 0   'False
      Caption = "Smart Card"
      Begin Menu SCRD
        Index = 1
        Caption = "Registration Entry"
      End
      Begin Menu SCRD
        Index = 2
        Caption = "Recharge/Refund Entry"
      End
      Begin Menu SCRD
        Index = 40
        Caption = "-"
      End
      Begin Menu SCRD
        Index = 41
        Caption = "Cash Card Transaction Report"
      End
      Begin Menu SCRD
        Index = 42
        Caption = "Cash Card Collection Summary"
      End
    End
  End
  Begin Menu Reserv
    Caption = "Reservation"
    Begin Menu ReservationEnt
      Index = 0
      Caption = "Operations"
      Begin Menu ResOpEnt
        Index = 0
        Caption = "Reservation/Cancellation"
      End
      Begin Menu ResOpEnt
        Index = 1
        Visible = 0   'False
        Caption = "Add/Edit/Delete Group With Reservation "
      End
      Begin Menu ResOpEnt
        Index = 2
        Caption = "Look Up Room types"
      End
      Begin Menu ResOpEnt
        Index = 3
        Caption = "Look Up Rooms"
      End
      Begin Menu ResOpEnt
        Index = 4
        Caption = "Reservation With History"
      End
      Begin Menu ResOpEnt
        Index = 5
        Caption = "Advance Deposit"
      End
      Begin Menu ResOpEnt
        Index = 6
        Caption = "Confirmation Letters"
      End
      Begin Menu ResOpEnt
        Index = 7
        Caption = "Cancellation Letters"
      End
      Begin Menu ResOpEnt
        Index = 8
        Caption = "Registration Card"
      End
      Begin Menu ResOpEnt
        Index = 9
        Caption = "Reservation Status Screen"
      End
    End
    Begin Menu ReservationEnt
      Index = 1
      Caption = "Reservation Status Report"
      Begin Menu ResStatusRpt
        Index = 0
        Caption = "Reservation Status"
      End
      Begin Menu ResStatusRpt
        Index = 1
        Caption = "Reservation Status Arrival"
      End
      Begin Menu ResStatusRpt
        Index = 2
        Caption = "Reservation Status In-House"
      End
      Begin Menu ResStatusRpt
        Index = 3
        Visible = 0   'False
        Caption = "Group Pickup Report"
      End
      Begin Menu ResStatusRpt
        Index = 4
        Visible = 0   'False
        Caption = "Group Arrival Report"
      End
      Begin Menu ResStatusRpt
        Index = 5
        Caption = "Arrival List"
      End
    End
    Begin Menu ReservationEnt
      Index = 2
      Caption = "Advance Recd. Report"
      Begin Menu AdvRecdRpt
        Index = 0
        Caption = "Advance Recd."
      End
      Begin Menu AdvRecdRpt
        Index = 1
        Caption = "Advance Recd. Arrival"
      End
      Begin Menu AdvRecdRpt
        Index = 2
        Caption = "Advance Recd. In-House"
      End
    End
    Begin Menu ReservationEnt
      Index = 4
      Caption = "M.I.S."
      Begin Menu ReservationMIS
        Index = 0
        Caption = "7-730 Days Forecast"
      End
      Begin Menu ReservationMIS
        Index = 1
        Caption = "23 Day Room Availability Forecast"
      End
      Begin Menu ReservationMIS
        Index = 2
        Caption = "23 Day Room Type Availability Forecast"
      End
      Begin Menu ReservationMIS
        Index = 3
        Caption = "Package Forecast "
      End
    End
  End
  Begin Menu FrontDesk
    Caption = "Front Office"
    Begin Menu FDO
      Index = 0
      Caption = "Operations"
      Begin Menu FDOMenu
        Index = 0
        Caption = "WalkIn CheckIn"
      End
      Begin Menu FDOMenu
        Index = 2
        Caption = "Room Status"
      End
      Begin Menu FDOMenu
        Index = 8
        Caption = "Expense Entry"
      End
      Begin Menu FDOMenu
        Index = 13
        Caption = "Forex Receive Entry"
      End
      Begin Menu FDOMenu
        Index = 16
        Caption = "Display Rack"
      End
      Begin Menu FDOMenu
        Index = 17
        Visible = 0   'False
        Caption = "House Keeping Screen"
      End
      Begin Menu FDOMenu
        Index = 18
        Visible = 0   'False
        Caption = "Travel Agency Posting"
      End
      Begin Menu FDOMenu
        Index = 19
        Caption = "Bill Reprint"
      End
      Begin Menu FDOMenu
        Index = 20
        Caption = "Reverse Check Out"
      End
      Begin Menu FDOMenu
        Index = 21
        Caption = "Merge Room"
      End
      Begin Menu FDOMenu
        Index = 22
        Caption = "Bill Re-Settlement"
      End
      Begin Menu FDOMenu
        Index = 23
        Caption = "Reverse Room Merge"
      End
      Begin Menu FDOMenu
        Index = 24
        Caption = "Plan Meal Tokens"
      End
      Begin Menu FDOMenu
        Index = 25
        Caption = "GRC Printing"
      End
      Begin Menu FDOMenu
        Index = 26
        Caption = "Blank GRC"
      End
    End
    Begin Menu FDOReports
      Caption = "Reports"
      Begin Menu FDORep
        Index = 2
        Caption = "Instant House Count "
      End
      Begin Menu FDORep
        Index = 3
        Caption = "Room Inventory"
      End
      Begin Menu FDORep
        Index = 4
        Visible = 0   'False
        Caption = "Guest In House"
      End
      Begin Menu FDORep
        Index = 5
        Visible = 0   'False
        Caption = "House Keeping Report"
      End
      Begin Menu FDORep
        Index = 6
        Visible = 0   'False
        Caption = "Arrival & Departure List"
      End
      Begin Menu FDORep
        Index = 7
        Caption = "Charge Payment Detail"
      End
      Begin Menu FDORep
        Index = 8
        Caption = "Payments By Cashier"
      End
      Begin Menu FDORep
        Index = 9
        Caption = "Cashier Report "
      End
      Begin Menu FDORep
        Index = 10
        Caption = "Settlement Report"
      End
      Begin Menu FDORep
        Index = 11
        Caption = "Cancel Bill Details"
      End
      Begin Menu FDORep
        Index = 12
        Caption = "Room Change History"
      End
      Begin Menu FDORep
        Index = 13
        Visible = 0   'False
        Caption = "Arrival And Departure Register"
      End
      Begin Menu FDORep
        Index = 14
        Caption = "FOM Sales Register"
      End
      Begin Menu FDORep
        Index = 15
        Caption = "Room Wise Plan Detail"
      End
      Begin Menu FDORep
        Index = 16
        Visible = 0   'False
        Caption = "Expected Plan/Package F&&B Details"
      End
      Begin Menu FDORep
        Index = 17
        Caption = "Occupancy Report"
      End
      Begin Menu FDORep
        Index = 20
        Caption = "Bill Change Report"
      End
      Begin Menu FDORep
        Index = 21
        Caption = "Check Out Register"
      End
      Begin Menu FDORep
        Index = 22
        Caption = "Check In Register"
      End
      Begin Menu FDORep
        Index = 23
        Caption = "Expected Check Out"
      End
      Begin Menu FDORep
        Index = 25
        Visible = 0   'False
        Caption = "Guest Bill Details"
      End
      Begin Menu FDORep
        Index = 26
        Caption = "Guest Extra Charges"
      End
      Begin Menu FDORep
        Index = 29
        Caption = "Checked In Guest Detail"
      End
      Begin Menu FDORep
        Index = 30
        Caption = "Room Rent Audit Report"
      End
      Begin Menu FDORep
        Index = 31
        Caption = "Sales Report"
      End
      Begin Menu FDORep
        Index = 32
        Caption = "Guest Payments"
      End
    End
    Begin Menu TFDOForms
      Caption = "Tourism Forms"
      Begin Menu FDOForms
        Index = 0
        Caption = "Form  C "
      End
      Begin Menu FDOForms
        Index = 1
        Caption = "Tourism Form 1"
      End
      Begin Menu FDOForms
        Index = 2
        Caption = "Tourism Form 2"
      End
      Begin Menu FDOForms
        Index = 3
        Caption = "Tourism Form 5"
      End
      Begin Menu FDOForms
        Index = 4
        Visible = 0   'False
        Caption = "Form -3 (Luxury Tax Register)"
      End
      Begin Menu FDOForms
        Index = 5
        Caption = "Tourism Form 6"
      End
      Begin Menu FDOForms
        Index = 6
        Caption = "Tourism Form 4"
      End
      Begin Menu FDOForms
        Index = 7
        Caption = "Luxury Tax Report"
      End
      Begin Menu FDOForms
        Index = 8
        Caption = "Monthly Return"
      End
      Begin Menu FDOForms
        Index = 11
        Caption = "L.T. FORM II"
      End
      Begin Menu FDOForms
        Index = 13
        Caption = "L.T. FORM IV"
      End
    End
    Begin Menu FDOMIS
      Caption = "M.I.S."
      Begin Menu FDOMISRep
        Index = 0
        Caption = "Occupancy Display"
      End
      Begin Menu FDOMISRep
        Index = 1
        Caption = "Guest wise Analysis"
      End
      Begin Menu FDOMISRep
        Index = 2
        Caption = "Company wise Analysis"
      End
      Begin Menu FDOMISRep
        Index = 3
        Caption = "Guestwise Charges Detail"
      End
      Begin Menu FDOMISRep
        Index = 4
        Caption = "Room Occupancy"
      End
      Begin Menu FDOMISRep
        Index = 5
        Caption = "Room Type Occupancy"
      End
      Begin Menu FDOMISRep
        Index = 6
        Caption = "Room Wise Room Revenue"
      End
      Begin Menu FDOMISRep
        Index = 7
        Caption = "Occupancy Analysis"
      End
      Begin Menu FDOMISRep
        Index = 8
        Caption = "Company wise Nights"
      End
      Begin Menu FDOMISRep
        Index = 9
        Caption = "Revenue During the stay"
      End
      Begin Menu FDOMISRep
        Index = 10
        Caption = "Room Type Occupancy Analysis"
      End
      Begin Menu FDOMISRep
        Index = 11
        Caption = "Plan Report"
      End
      Begin Menu FDOMISRep
        Index = 12
        Caption = "Business Source Occupancy Analysis"
      End
    End
    Begin Menu FDOTax
      Caption = "Tax Reports"
      Begin Menu FDOTaxr
        Index = 0
        Caption = "FOM Tax Detail"
      End
      Begin Menu FDOTaxr
        Index = 1
        Caption = "Tax Wise Charge Detail"
      End
    End
  End
  Begin Menu HouseKeeping
    Caption = "House Keeping"
    Begin Menu SetHK
      Caption = "Setup"
      Begin Menu HouseSet
        Index = 0
        Caption = "Block Master"
      End
    End
    Begin Menu TransHK
      Caption = "Operations"
      Begin Menu HouseEnt
        Index = 0
        Caption = "Complaint Master"
      End
      Begin Menu HouseEnt
        Index = 1
        Caption = "Complaint Clearance"
      End
      Begin Menu HouseEnt
        Index = 2
        Caption = "Lost / Found Entry"
      End
      Begin Menu HouseEnt
        Index = 3
        Caption = "Claim Entry"
      End
      Begin Menu HouseEnt
        Index = 4
        Visible = 0   'False
        Caption = "House Keeping Op.Stock Entry"
      End
      Begin Menu HouseEnt
        Index = 5
        Visible = 0   'False
        Caption = "Issue/Recd. Entry"
      End
      Begin Menu HouseEnt
        Index = 6
        Caption = "House Keeping Screen"
      End
      Begin Menu HouseEnt
        Index = 7
        Caption = "Item Issued On Cleaning"
      End
      Begin Menu HouseEnt
        Index = 8
        Caption = "Check Out Clearance Screen"
      End
      Begin Menu HouseEnt
        Index = 9
        Caption = "Room Block"
      End
    End
    Begin Menu ReportsHK
      Caption = "Reports"
      Begin Menu HouseREP
        Index = 0
        Visible = 0   'False
        Caption = "Issue Register"
      End
      Begin Menu HouseREP
        Index = 1
        Visible = 0   'False
        Caption = "Stock Register"
      End
      Begin Menu HouseREP
        Index = 2
        Visible = 0   'False
        Caption = "Stock Summary "
      End
      Begin Menu HouseREP
        Index = 3
        Visible = 0   'False
        Caption = "Room Status Report"
      End
      Begin Menu HouseREP
        Index = 4
        Visible = 0   'False
        Caption = "Complaint Detail"
      End
      Begin Menu HouseREP
        Index = 5
        Caption = "House Keeping Report"
      End
    End
    Begin Menu CHANGEHK
      Visible = 0   'False
      Caption = "Changes Department"
    End
  End
  Begin Menu Purchase
    Caption = "Inventory"
    Begin Menu Matop
      Index = 0
      Caption = "Operations"
      Begin Menu Purch
        Index = 1
        Visible = 0   'False
        Caption = "Gravy Item Entry"
      End
      Begin Menu Purch
        Index = 2
        Caption = "Indent"
      End
      Begin Menu Purch
        Index = 3
        Caption = "Purchase Order"
      End
      Begin Menu Purch
        Index = 4
        Caption = "M.R. Entry"
      End
      Begin Menu Purch
        Index = 5
        Caption = "Purchase Bill"
      End
      Begin Menu Purch
        Index = 6
        Caption = "Requisition Slip"
      End
      Begin Menu Purch
        Index = 7
        Caption = "Stock Issue on Requisition"
      End
      Begin Menu Purch
        Index = 8
        Caption = "Kitchen Closing Stock"
      End
      Begin Menu Purch
        Index = 9
        Caption = "Stock Transfer"
      End
      Begin Menu Purch
        Index = 10
        Visible = 0   'False
        Caption = "Finish Material Receive Entry"
      End
      Begin Menu Purch
        Index = 11
        Visible = 0   'False
        Caption = "Excise Invoice Cum Gate Pass"
      End
    End
    Begin Menu MatLok
      Caption = "Look Ups"
      Begin Menu MatStat
        Index = 0
        Caption = "Pending Indent"
      End
      Begin Menu MatStat
        Index = 1
        Caption = "Pending M.R."
      End
      Begin Menu MatStat
        Index = 2
        Caption = "Pending Purchase Order"
      End
    End
    Begin Menu MatReports
      Index = 1
      Caption = "Reports"
      Begin Menu MatRep
        Index = 0
        Caption = "Purchase Register"
      End
      Begin Menu MatRep
        Index = 1
        Caption = "Purchase Summary"
      End
      Begin Menu MatRep
        Index = 2
        Caption = "Cash/Credit Purchase"
      End
      Begin Menu MatRep
        Index = 3
        Caption = "Stock Register "
      End
      Begin Menu MatRep
        Index = 4
        Caption = "Stock Summary "
      End
      Begin Menu MatRep
        Index = 5
        Caption = "Stock In Hand "
      End
      Begin Menu MatRep
        Index = 6
        Caption = "Kitchen Stock Report I/R Basis"
      End
      Begin Menu MatRep
        Index = 7
        Caption = "Excess Consumption Report"
      End
      Begin Menu MatRep
        Index = 8
        Visible = 0   'False
        Caption = "Restaurant Issue Report"
      End
      Begin Menu MatRep
        Index = 9
        Visible = 0   'False
        Caption = "Store Issue Register"
      End
      Begin Menu MatRep
        Index = 10
        Visible = 0   'False
        Caption = "Change Kitchen/Store"
      End
      Begin Menu MatRep
        Index = 11
        Visible = 0   'False
        Caption = "Daily Store Issue Reports"
      End
      Begin Menu MatRep
        Index = 12
        Caption = "Purchase Ledger"
      End
      Begin Menu MatRep
        Index = 13
        Caption = "Issue CheckList"
      End
      Begin Menu MatRep
        Index = 15
        Caption = "Stock Summary P/S Basis"
      End
      Begin Menu MatRep
        Index = 16
        Caption = "ABC Analysis"
      End
      Begin Menu MatRep
        Index = 17
        Visible = 0   'False
        Caption = "Production Report I/R Basis"
      End
      Begin Menu MatRep
        Index = 18
        Caption = "Store Issue Report"
      End
      Begin Menu MatRep
        Index = 19
        Visible = 0   'False
        Caption = "Liquor Sale Report"
      End
    End
    Begin Menu MatVat
      Index = 2
      Caption = "Tax Reports"
      Begin Menu MatVatR
        Index = 0
        Caption = "VAT Register"
      End
      Begin Menu MatVatR
        Index = 10
        Caption = "VAT Register II"
      End
      Begin Menu MatVatR
        Index = 11
        Caption = "VAT Register III"
      End
      Begin Menu MatVatR
        Index = 12
        Caption = "Form24 Annexure-A"
      End
      Begin Menu MatVatR
        Index = 15
        Caption = "Form III"
      End
      Begin Menu MatVatR
        Index = 16
        Caption = "UPVAT XXIV"
      End
    End
  End
  Begin Menu Restaurant
    Caption = "Point Of Sale"
    Begin Menu Rest
      Index = 25
      Visible = 0   'False
      Caption = "Stock Register"
    End
    Begin Menu Rest
      Index = 26
      Visible = 0   'False
      Caption = "Stock Summary"
    End
    Begin Menu Rest
      Index = 28
      Visible = 0   'False
      Caption = "Kitchen Stock Summary"
    End
    Begin Menu Rest
      Index = 30
      Visible = 0   'False
      Caption = "Restaurant Change "
    End
    Begin Menu Rest
      Index = 31
      Caption = "POS Status"
    End
    Begin Menu POSOperations
      Caption = "POS Operations"
      Begin Menu POSEnt
        Index = 0
        Caption = "KOT Entry"
      End
      Begin Menu POSEnt
        Index = 1
        Caption = "Table Change Entry"
      End
      Begin Menu POSEnt
        Index = 2
        Caption = "Sale Bill Entry"
      End
      Begin Menu POSEnt
        Index = 3
        Caption = "Settlement Entry"
      End
      Begin Menu POSEnt
        Index = 4
        Caption = "POS Bill Reprint"
      End
      Begin Menu POSEnt
        Index = 5
        Caption = "Split Sale Bill"
      End
      Begin Menu POSEnt
        Index = 6
        Caption = "Display Table"
      End
      Begin Menu POSEnt
        Index = 7
        Caption = "Order Booking"
      End
      Begin Menu POSEnt
        Index = 8
        Caption = "Bill Lookup"
      End
      Begin Menu POSEnt
        Index = 9
        Caption = "Order Booking Advance"
      End
      Begin Menu POSEnt
        Index = 10
        Caption = "KOT Transfer"
      End
      Begin Menu POSEnt
        Index = 11
        Visible = 0   'False
        Caption = "Token Entry"
      End
      Begin Menu POSEnt
        Index = 12
        Caption = "Assign Delivery"
      End
      Begin Menu POSEnt
        Index = 13
        Caption = "Payment Receive"
      End
    End
    Begin Menu POSReports
      Caption = "POS Reports"
      Begin Menu POSRep
        Index = 0
        Caption = "Sales Register"
      End
      Begin Menu POSRep
        Index = 1
        Caption = "Stewardwise Sale"
      End
      Begin Menu POSRep
        Index = 2
        Caption = "Table wise Sale"
      End
      Begin Menu POSRep
        Index = 3
        Caption = "Settlement Summary"
      End
      Begin Menu POSRep
        Index = 5
        Caption = "KOT Wise Details"
      End
      Begin Menu POSRep
        Index = 6
        Visible = 0   'False
        Caption = "Discount Register"
      End
      Begin Menu POSRep
        Index = 7
        Caption = "Cover Analysis"
      End
      Begin Menu POSRep
        Index = 8
        Caption = "Pending KOT"
      End
      Begin Menu POSRep
        Index = 9
        Caption = "Item wise Sale"
      End
      Begin Menu POSRep
        Index = 10
        Caption = "Deleted Unsettled Bill"
      End
      Begin Menu POSRep
        Index = 11
        Caption = "NC KOT Detail"
      End
      Begin Menu POSRep
        Index = 12
        Visible = 0   'False
        Caption = "Sales Day Book"
      End
      Begin Menu POSRep
        Index = 14
        Caption = "Order Detail Report"
      End
      Begin Menu POSRep
        Index = 16
        Caption = "NC KOT Summary"
      End
      Begin Menu POSRep
        Index = 17
        Visible = 0   'False
        Caption = "Daily DIET Report"
      End
      Begin Menu POSRep
        Index = 18
        Caption = "Discount Register"
      End
      Begin Menu POSRep
        Index = 19
        Caption = "Not Delivered Order"
      End
      Begin Menu POSRep
        Index = 20
        Caption = "Group Wise Sale"
      End
      Begin Menu POSRep
        Index = 21
        Caption = "Customer Detail"
      End
      Begin Menu POSRep
        Index = 22
        Caption = "Delivery Status"
      End
      Begin Menu POSRep
        Index = 41
        Caption = "Denomination Detail"
      End
      Begin Menu POSRep
        Index = 42
        Caption = "Payment Receive Entry (POS)"
      End
      Begin Menu POSRep
        Index = 43
        Caption = "Bill Wise Adjustment Report"
      End
    End
    Begin Menu POSMIS
      Caption = "POS M.I.S."
      Begin Menu MISREP
        Index = 0
        Caption = "Collection Summary"
      End
      Begin Menu MISREP
        Index = 1
        Caption = "Open Item Sales"
      End
      Begin Menu MISREP
        Index = 2
        Caption = "Void Bills"
      End
      Begin Menu MISREP
        Index = 3
        Caption = "KOT Change Report"
      End
      Begin Menu MISREP
        Index = 5
        Caption = "Discount Summary"
      End
      Begin Menu MISREP
        Index = 6
        Caption = "Monthwise Sales"
      End
      Begin Menu MISREP
        Index = 7
        Caption = "ABC  Analysis"
      End
      Begin Menu MISREP
        Index = 8
        Caption = "Sale Summary"
      End
      Begin Menu MISREP
        Index = 9
        Visible = 0   'False
        Caption = "Tax Invoice Detail"
      End
      Begin Menu MISREP
        Index = 10
        Caption = "Edited Bills"
      End
    End
    Begin Menu PosTax
      Caption = "Tax Reports"
      Begin Menu PosTaxRep
        Index = 0
        Caption = "Tax Report"
      End
      Begin Menu PosTaxRep
        Index = 1
        Caption = "Tax Register"
      End
      Begin Menu PosTaxRep
        Index = 2
        Caption = "Taxwise Details"
      End
      Begin Menu PosTaxRep
        Index = 3
        Caption = "Tax Summary"
      End
    End
  End
  Begin Menu Banquet
    Caption = "Banquet"
    Begin Menu BanqMas
      Visible = 0   'False
      Caption = "Setup"
      Begin Menu HallEnt
        Index = 0
        Caption = "Events"
      End
      Begin Menu HallEnt
        Index = 1
        Caption = "Venue Features"
      End
      Begin Menu HallEnt
        Index = 2
        Caption = "Venue Master"
      End
      Begin Menu HallEnt
        Index = 3
        Caption = "Menu Category"
      End
      Begin Menu HallEnt
        Index = 4
        Caption = "Item Group"
      End
      Begin Menu HallEnt
        Index = 5
        Caption = "Menu Item"
      End
      Begin Menu HallEnt
        Index = 6
        Caption = "Catalog Master"
      End
      Begin Menu HallEnt
        Index = 7
        Caption = "Banquet Bill Sundry Setting"
      End
    End
    Begin Menu oper
      Caption = "Operation"
      Begin Menu Hallop
        Index = 0
        Caption = "Booking Inquiry"
      End
      Begin Menu Hallop
        Index = 1
        Caption = "Banquet Booking"
      End
      Begin Menu Hallop
        Index = 2
        Caption = "Catalog Selection"
      End
      Begin Menu Hallop
        Index = 3
        Caption = "Chef Pre-Costing"
      End
      Begin Menu Hallop
        Index = 4
        Caption = "Banquet Billing"
      End
      Begin Menu Hallop
        Index = 5
        Visible = 0   'False
        Caption = "Banquet Settlement"
      End
      Begin Menu Hallop
        Index = 6
        Caption = "Venue Availability"
      End
      Begin Menu Hallop
        Index = 7
        Caption = "Guest Comments"
      End
      Begin Menu Hallop
        Index = 8
        Caption = "Banquet Estimate Billing"
      End
      Begin Menu Hallop
        Index = 9
        Caption = "Banquet Booking Advance"
      End
    End
    Begin Menu HallReport
      Index = 18
      Caption = "Reports"
      Begin Menu BanqRep
        Index = 0
        Caption = "Sales Register"
      End
      Begin Menu BanqRep
        Index = 1
        Caption = "OutStanding Report"
      End
      Begin Menu BanqRep
        Index = 2
        Caption = "Party wise OutStanding"
      End
      Begin Menu BanqRep
        Index = 3
        Caption = "Cashier  Report"
      End
      Begin Menu BanqRep
        Index = 4
        Caption = "Booking Inquiry Detail"
      End
      Begin Menu BanqRep
        Index = 5
        Caption = "Settlement  Report"
      End
      Begin Menu BanqRep
        Index = 7
        Caption = "Daily Function Sheet"
      End
      Begin Menu BanqRep
        Index = 9
        Caption = "Item Wise Sales Report"
      End
      Begin Menu BanqRep
        Index = 10
        Caption = "Company Wise Sale Report"
      End
      Begin Menu BanqRep
        Index = 11
        Caption = "Function Wise Item Detail"
      End
    End
    Begin Menu HallMIS
      Index = 18
      Caption = "MIS"
      Begin Menu BanqRepMIS
        Index = 0
        Caption = "Cover Analysis"
      End
      Begin Menu BanqRepMIS
        Index = 1
        Caption = "Collection Summary"
      End
    End
    Begin Menu HallTax
      Caption = "Tax Report"
      Begin Menu HallTaxP
        Index = 0
        Caption = "Tax Report"
      End
      Begin Menu HallTaxP
        Index = 1
        Caption = "Tax Summary"
      End
      Begin Menu HallTaxP
        Index = 3
        Caption = "Banquet Taxwise Details"
      End
    End
  End
  Begin Menu NightAudit
    Caption = "Night Audit"
    Begin Menu NightAudito
      Caption = "Operation"
      Begin Menu NightAuditoR
        Index = 0
        Caption = "Guest Audit Ledger"
      End
      Begin Menu NightAuditoR
        Index = 1
        Caption = "Charges Posting"
      End
      Begin Menu NightAuditoR
        Index = 2
        Caption = "Night Audit Process"
      End
      Begin Menu NightAuditoR
        Index = 3
        Caption = "Account Posting"
      End
      Begin Menu NightAuditoR
        Index = 4
        Visible = 0   'False
        Caption = "Night Audit Control Panel"
      End
      Begin Menu NightAuditoR
        Index = 5
        Caption = "Reverse Night Audit"
      End
    End
    Begin Menu NightAuditR
      Caption = "Reports"
      Begin Menu NightAuditRR
        Index = 0
        Caption = "Daily Report "
      End
      Begin Menu NightAuditRR
        Index = 1
        Caption = "Daily Report-II"
      End
      Begin Menu NightAuditRR
        Index = 2
        Visible = 0   'False
        Caption = "Revenue Analysis"
      End
      Begin Menu NightAuditRR
        Index = 3
        Caption = "Guest Trail"
      End
      Begin Menu NightAuditRR
        Index = 4
        Caption = "Checkout Analysis"
      End
      Begin Menu NightAuditRR
        Index = 5
        Caption = "Occupancy Analysis"
      End
      Begin Menu NightAuditRR
        Index = 6
        Caption = "Market Segment Analysis"
      End
      Begin Menu NightAuditRR
        Index = 7
        Caption = "Business Source Analysis"
      End
      Begin Menu NightAuditRR
        Index = 8
        Caption = "Company Analysis"
      End
      Begin Menu NightAuditRR
        Index = 9
        Visible = 0   'False
        Caption = "Travel Agent Analysis"
      End
      Begin Menu NightAuditRR
        Index = 10
        Caption = "FOCC Report"
      End
      Begin Menu NightAuditRR
        Index = 11
        Caption = "Food Costing Report"
      End
      Begin Menu NightAuditRR
        Index = 12
        Caption = "F&&B Cost Statement"
      End
      Begin Menu NightAuditRR
        Index = 13
        Visible = 0   'False
        Caption = "Budget Analysis"
      End
      Begin Menu NightAuditRR
        Index = 14
        Caption = "Ageing Analysis (Debtors)"
      End
      Begin Menu NightAuditRR
        Index = 15
        Caption = "Ageing Analysis (Creditors)"
      End
      Begin Menu NightAuditRR
        Index = 16
        Caption = "Credit Report"
      End
    End
    Begin Menu NightAuditGST
      Caption = "GST Reports"
      Begin Menu NightAuditGSTR
        Index = 1
        Caption = "GSTR-1"
      End
      Begin Menu NightAuditGSTR
        Index = 2
        Caption = "GSTR-2(3)"
      End
      Begin Menu NightAuditGSTR
        Index = 3
        Caption = "GSTR-2(4A)"
      End
      Begin Menu NightAuditGSTR
        Index = 4
        Caption = "GSTR-2(4B)"
      End
    End
    Begin Menu NightAuditL
      Caption = "Log"
      Begin Menu NightAuditLR
        Index = 0
        Caption = "Night Audit Log"
      End
      Begin Menu NightAuditLR
        Index = 1
        Caption = "Charges Remove Log"
      End
    End
  End
  Begin Menu PayRoll
    Caption = "HR/Payroll"
    Begin Menu PayO
      Caption = "Operations"
      Begin Menu PayOpr
        Index = 0
        Caption = "Leave"
      End
      Begin Menu PayOpr
        Index = 1
        Visible = 0   'False
        Caption = "Attendance"
      End
      Begin Menu PayOpr
        Index = 2
        Caption = "Loan/Advance"
      End
      Begin Menu PayOpr
        Index = 3
        Caption = "Over Time"
      End
      Begin Menu PayOpr
        Index = 4
        Caption = "Leave Encashment"
      End
      Begin Menu PayOpr
        Index = 5
        Caption = "Salary Creation"
      End
    End
    Begin Menu PayR
      Caption = "Reports"
      Begin Menu PayRep
        Index = 0
        Caption = "Pay Slip"
      End
      Begin Menu PayRep
        Index = 1
        Caption = "Payroll Register"
      End
      Begin Menu PayRep
        Index = 2
        Caption = "Loan Register"
      End
      Begin Menu PayRep
        Index = 3
        Caption = "Loan/Advance Summary"
      End
      Begin Menu PayRep
        Index = 4
        Caption = "Loan/Advance Ledger"
      End
      Begin Menu PayRep
        Index = 5
        Caption = "Attendence Report"
      End
      Begin Menu PayRep
        Index = 6
        Caption = "Gratuity Report"
      End
      Begin Menu PayRep
        Index = 7
        Caption = "PF Statement"
      End
      Begin Menu PayRep
        Index = 8
        Caption = "Form C"
      End
    End
  End
  Begin Menu Telephone
    Caption = "EPABX"
    Begin Menu mnuTelMast
      Index = 0
      Visible = 0   'False
      Caption = "Telephone Call Entry"
    End
    Begin Menu mnuTelMast
      Index = 1
      Caption = "Telephone Report"
      Begin Menu mnuTelRep
        Index = 0
        Caption = "EPBAX Call Report"
      End
    End
  End
  Begin Menu Message
    Caption = "&Messaging"
    Begin Menu mnuMSG
      Index = 0
      Caption = "&InBox"
    End
    Begin Menu mnuMSG
      Index = 1
      Caption = "&OutBox"
    End
  End
  Begin Menu Member
    Caption = "Members Mgmt"
    Begin Menu MembOpr
      Caption = "Operations"
      Begin Menu MemOpr
        Index = 0
        Caption = "Member Visit Entry"
      End
      Begin Menu MemOpr
        Index = 1
        Caption = "Member Renewal Entry"
      End
      Begin Menu MemOpr
        Index = 2
        Caption = "Member Used Facility Entry"
      End
      Begin Menu MemOpr
        Index = 3
        Caption = "Member Facility Billing"
      End
      Begin Menu MemOpr
        Index = 4
        Caption = "Member Bill Printing"
      End
      Begin Menu MemOpr
        Index = 5
        Caption = "Member Assistant"
      End
      Begin Menu MemOpr
        Index = 6
        Caption = "Outstation Member Entry"
      End
      Begin Menu MemOpr
        Index = 7
        Caption = "Member Category Change Entry"
      End
      Begin Menu MemOpr
        Index = 8
        Caption = "Payment Receive Entry"
      End
      Begin Menu MemOpr
        Index = 9
        Visible = 0   'False
        Caption = "Revenue Change Entry"
      End
      Begin Menu MemOpr
        Index = 10
        Caption = "Payment Due Letter Entry"
      End
      Begin Menu MemOpr
        Index = 11
        Caption = "Member Category Change (Conditional)"
      End
      Begin Menu MemOpr
        Index = 12
        Caption = "Auto Settle Card Balance"
      End
    End
    Begin Menu MembRpt
      Caption = "Reports"
      Begin Menu MemRpt
        Index = 0
        Caption = "Member Visit Detail"
      End
      Begin Menu MemRpt
        Index = 1
        Caption = "Member Mailing Labels"
      End
      Begin Menu MemRpt
        Index = 2
        Caption = "Member Bill Missing Report"
      End
      Begin Menu MemRpt
        Index = 3
        Caption = "Member Sales Register"
      End
      Begin Menu MemRpt
        Index = 4
        Caption = "Member Ledger"
      End
      Begin Menu MemRpt
        Index = 5
        Caption = "Member Tax Report"
      End
      Begin Menu MemRpt
        Index = 6
        Caption = "Payment Due Letter Report"
      End
      Begin Menu MemRpt
        Index = 7
        Caption = "Member Birthday/Anniversary Details"
      End
    End
  End
  Begin Menu SMS
    Visible = 0   'False
    Caption = "SMS"
    Begin Menu SMSG
      Caption = "General"
      Begin Menu SMSGEN
        Index = 1
        Caption = "SMS Center Settings"
      End
      Begin Menu SMSGEN
        Index = 2
        Caption = "SMS Environment Settings"
      End
    End
    Begin Menu SMSSD
      Caption = "Send SMS"
      Begin Menu SMSSEND
        Index = 1
        Caption = "Multiple SMS Type"
      End
    End
  End
  Begin Menu MallManage
    Caption = "Mall Mgmt"
    Begin Menu MallOpr
      Caption = "Operations"
      Begin Menu MallMgmt
        Index = 0
        Caption = "Location-Master"
      End
      Begin Menu MallMgmt
        Index = 1
        Caption = "Facility Master"
      End
      Begin Menu MallMgmt
        Index = 2
        Caption = "Location Facilities"
      End
      Begin Menu MallMgmt
        Index = 3
        Caption = "Party Locations"
      End
      Begin Menu MallMgmt
        Index = 4
        Caption = "Meter Reading"
      End
      Begin Menu MallMgmt
        Index = 5
        Caption = "Facility Billing"
      End
      Begin Menu MallMgmt
        Index = 6
        Visible = 0   'False
        Caption = "Facility Sundry Setting"
      End
    End
    Begin Menu MallMgmtRpt
      Caption = "Reports"
      Begin Menu MallRep
        Index = 0
        Caption = "Facility Bill Register"
      End
    End
  End
  Begin Menu Odc
    Caption = "Outdoor Banquet"
    Begin Menu ODCMas
      Caption = "Setup"
      Begin Menu OdcEnt1
        Index = 0
        Visible = 0   'False
        Caption = "Events"
      End
      Begin Menu OdcEnt1
        Index = 1
        Caption = "Venue Features"
      End
      Begin Menu OdcEnt1
        Index = 2
        Caption = "Venue Master"
      End
      Begin Menu OdcEnt1
        Index = 3
        Caption = "Menu Category"
      End
      Begin Menu OdcEnt1
        Index = 4
        Caption = "Item Group"
      End
      Begin Menu OdcEnt1
        Index = 5
        Caption = "Menu Item"
      End
      Begin Menu OdcEnt1
        Index = 6
        Visible = 0   'False
        Caption = "Catalog Master"
      End
      Begin Menu OdcEnt1
        Index = 7
        Caption = "Banquet Bill Sundry Setting"
      End
    End
    Begin Menu OdcOPer
      Caption = "Operation"
      Begin Menu OdcOP
        Index = 0
        Caption = "Booking Inquiry"
      End
      Begin Menu OdcOP
        Index = 1
        Caption = "Banquet Booking"
      End
      Begin Menu OdcOP
        Index = 2
        Caption = "Catalog Selection"
      End
      Begin Menu OdcOP
        Index = 3
        Caption = "Chef Pre-Costing"
      End
      Begin Menu OdcOP
        Index = 4
        Caption = "Banquet Billing"
      End
      Begin Menu OdcOP
        Index = 5
        Caption = "Banquet Settlement"
      End
      Begin Menu OdcOP
        Index = 6
        Caption = "Venue Availability"
      End
      Begin Menu OdcOP
        Index = 7
        Caption = "Guest Comments"
      End
      Begin Menu OdcOP
        Index = 8
        Caption = "Banquet Estimate Billing"
      End
      Begin Menu OdcOP
        Index = 9
        Caption = "Banquet Booking Advance"
      End
    End
    Begin Menu OdcRepo
      Caption = "Reports"
      Begin Menu OdcRep
        Index = 0
        Caption = "Sales Register"
      End
      Begin Menu OdcRep
        Index = 1
        Caption = "OutStanding Report"
      End
      Begin Menu OdcRep
        Index = 2
        Caption = "Party wise OutStanding"
      End
      Begin Menu OdcRep
        Index = 3
        Caption = "Cashier Collection Summary"
      End
      Begin Menu OdcRep
        Index = 4
        Caption = "Booking Inquiry Detail"
      End
      Begin Menu OdcRep
        Index = 5
        Caption = "Settlement  Report"
      End
      Begin Menu OdcRep
        Index = 7
        Caption = "Daily Function Sheet"
      End
      Begin Menu OdcRep
        Index = 9
        Caption = "Function Wise Item Detail"
      End
    End
    Begin Menu OdcMisR
      Caption = "MIS"
      Begin Menu OdcMis
        Index = 0
        Caption = "Cover Analysis Report"
      End
      Begin Menu OdcMis
        Index = 1
        Caption = "Cashier Collection Summary"
      End
    End
    Begin Menu OdcTax
      Caption = "Tax Report"
      Begin Menu OdcTaxR
        Index = 0
        Caption = "Tax Report"
      End
      Begin Menu OdcTaxR
        Index = 1
        Caption = "Tax Summary"
      End
      Begin Menu OdcTaxR
        Index = 2
        Caption = "Banquet Taxwise Details"
      End
    End
  End
  Begin Menu EXTR
    Caption = "EXTRAs"
    Begin Menu EXTSCRD
      Caption = "Smart Card"
      Begin Menu EXTSCOPR
        Caption = "Operations"
        Begin Menu EXTSCOP
          Index = 1
          Caption = "Card Initialization"
        End
        Begin Menu EXTSCOP
          Index = 2
          Caption = "Card Registration"
        End
        Begin Menu EXTSCOP
          Index = 3
          Caption = "Card Recharge"
        End
        Begin Menu EXTSCOP
          Index = 4
          Caption = "Card Refund"
        End
        Begin Menu EXTSCOP
          Index = 5
          Caption = "Card Re-Issue"
        End
        Begin Menu EXTSCOP
          Index = 6
          Caption = "User Collection"
        End
      End
      Begin Menu EXTSCREP
        Caption = "Reports"
        Begin Menu EXTSCRP
          Index = 1
          Caption = "Card Statement (MINI)"
        End
        Begin Menu EXTSCRP
          Index = 2
          Caption = "Card Statement (FULL)"
        End
        Begin Menu EXTSCRP
          Index = 3
          Caption = "Card Transaction Report"
        End
        Begin Menu EXTSCRP
          Index = 4
          Caption = "Card Collection Summary"
        End
        Begin Menu EXTSCRP
          Index = 5
          Caption = "Card Status Report"
        End
      End
    End
    Begin Menu EXTSMS
      Caption = "SMS"
      Begin Menu SMSSETUP
        Caption = "Sstup"
        Begin Menu EXTSMSSETUP
          Index = 1
          Caption = "SMS (API)"
        End
      End
      Begin Menu SMSOPR
        Caption = "Operations"
        Begin Menu EXTSMSOPR
          Index = 1
          Caption = "SMS (Scheduled)"
        End
        Begin Menu EXTSMSOPR
          Index = 2
          Caption = "SMS (Conditional)"
        End
      End
    End
    Begin Menu EXTDTR
      Caption = "Data Transfer"
      Begin Menu DTRO
        Index = 0
        Caption = "Transfer (Offline)"
      End
      Begin Menu DTRON
        Index = 1
        Caption = "Transfer (Online)"
      End
    End
    Begin Menu RW
      Caption = "Reward Points"
      Begin Menu RWP
        Index = 1
        Caption = "Guest Registration"
      End
      Begin Menu RWP
        Index = 2
        Caption = "Reward Points Parameter I"
      End
      Begin Menu RWREP
        Caption = "Reports"
        Begin Menu EXTRWREP
          Index = 1
          Caption = "Registered Guest Detail"
        End
      End
    End
    Begin Menu TallyIntf
      Caption = "Tally Interface"
      Begin Menu TIntf
        Index = 1
        Caption = "Tally Export(XML)"
      End
    End
    Begin Menu LockManage
      Caption = "Lock Mgmt"
      Begin Menu DrLock
        Index = 1
        Caption = "Door Lock"
        Begin Menu DRLK
          Index = 1
          Caption = "Godrej Locks"
        End
      End
    End
  End
  Begin Menu DirectSale
    Visible = 0   'False
    Caption = "Direct Sale"
    Begin Menu dsale
      Index = 30
      Caption = "Restaurant Change "
    End
  End
  Begin Menu mnuWindow
    Visible = 0   'False
    Caption = "&Windows"
    Begin Menu mnuWindowCascade
      Caption = "&Cascade"
    End
    Begin Menu mnuWindowTileHorizontal
      Caption = "Tile &Horizontal"
    End
    Begin Menu mnuWindowTileVertical
      Caption = "Tile &Vertical"
    End
  End
  Begin Menu mnuExit
    Visible = 0   'False
    Caption = "&Exit"
  End
  Begin Menu UTLL
    Index = 0
    Visible = 0   'False
    Caption = "Sale Bill Modification"
  End
  Begin Menu GridPopUp
    Visible = 0   'False
    Caption = "PlanPopup"
    Begin Menu PP
      Index = 0
      Caption = ""
    End
    Begin Menu PP
      Index = 1
      Caption = ""
    End
  End
  Begin Menu mnuMdI
    Visible = 0   'False
    Caption = "MDI"
    Begin Menu smnuMdI
      Caption = "Manage MDI"
    End
  End
End

Attribute VB_Name = "MDIForm1"

Private global_100 As Integer
Private global_114 As Integer
Private var_158 As New CGZipFiles
Private var_270 As New CGZipFiles
Private global_112 As Integer
Private global_108 As Long

Private Sub fate_Click(Index As Integer) '10C6D18
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_10C6A33: var_B4 = CVar("fate" & "+") 'String
  loc_10C6A49: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_10C6A4E: MemVar_1F95204 = CStr(var_C4)
  loc_10C6A5D: On Error Goto loc_10C6CD1
  loc_10C6A6C: If (Index = 0) Then
  loc_10C6A79:   global_52 = New FaVrEnt
  loc_10C6A8D:   Set var_CC = Me.TxtCHno
  loc_10C6A93:   Call 0.Method_fate_Click0 (Index, var_D0, var_D4)
  loc_10C6A9B:   var_C6 = FaVrEnt.TxtCHno.Caption
  loc_10C6AAD:   global_52.CAPTION = CVar(var_D4)
  loc_10C6AC3:   Call global_52.Show
  loc_10C6ACC: Else
  loc_10C6AD2:   If (var_C6 = 1) Then
  loc_10C6ADF:     global_52 = New FaAdjust
  loc_10C6AF3:     Set var_CC = Me.TxtNARATION1
  loc_10C6AF9:     Call 0.Method_fate_Click0 (Index, var_D0)
  loc_10C6B01:     var_D4 = FaAdjust.TxtNARATION1.Caption
  loc_10C6B13:     global_52.CAPTION = CVar(var_D4)
  loc_10C6B29:     Call global_52.Show
  loc_10C6B32:   Else
  loc_10C6B38:     If (var_C6 = 2) Then
  loc_10C6B45:       global_52 = New FaAdjustDel
  loc_10C6B59:       Set var_CC = var_D0(Index)
  loc_10C6B5F:       Call 0.Method_fate_Click0 (var_D4)
  loc_10C6B67:       MemVar_1F95204 = FaAdjustDel.Menu.Caption
  loc_10C6B79:       global_52.CAPTION = CVar(var_D4)
  loc_10C6B8F:       Call global_52.Show
  loc_10C6B98:     Else
  loc_10C6B9E:       If (var_C6 = 3) Then
  loc_10C6BAB:         global_52 = New FaChqClear
  loc_10C6BBF:         Set var_CC = var_D0(Index)
  loc_10C6BC5:         Call 0.Method_fate_Click0 (var_D4)
  loc_10C6BCD:          = FaChqClear.Menu.Caption
  loc_10C6BDF:         global_52.CAPTION = CVar(var_D4)
  loc_10C6BF5:         Call global_52.Show
  loc_10C6BFE:       Else
  loc_10C6C04:         If (var_C6 = 5) Then
  loc_10C6C11:           global_52 = New FaTDSChal
  loc_10C6C25:           Set var_CC = var_D0(Index)
  loc_10C6C2B:           Call 0.Method_fate_Click0 (var_D4)
  loc_10C6C33:            = FaTDSChal.Menu.Caption
  loc_10C6C45:           global_52.CAPTION = CVar(var_D4)
  loc_10C6C5B:           Call global_52.Show
  loc_10C6C64:         Else
  loc_10C6C6A:           If (var_C6 = 6) Then
  loc_10C6C77:             global_52 = New FaTDSCertificate
  loc_10C6C8B:             Set var_CC = var_D0(Index)
  loc_10C6C91:             Call 0.Method_fate_Click0 (var_D4)
  loc_10C6C99:              = FaTDSCertificate.Menu.Caption
  loc_10C6CAB:             global_52.CAPTION = CVar(var_D4)
  loc_10C6CC1:             Call global_52.Show
  loc_10C6CC7:           End If
  loc_10C6CC7:         End If
  loc_10C6CC7:       End If
  loc_10C6CC7:     End If
  loc_10C6CC7:   End If
  loc_10C6CC7: End If
  loc_10C6CCC: global_52 = Nothing
  loc_10C6CD0: Exit Sub
  loc_10C6CD1: ' Referenced from: 10C6A5D
  loc_10C6CD9: Set var_CC = Err()
  loc_10C6CDF: Call 0.Method_arg_2C (var_D4)
  loc_10C6D00: MsgBox(CVar(var_D4), &H40, "Information", var_B4, var_C4)
  loc_10C6D13: Exit Sub
  loc_10C6D14: Exit Sub
  loc_10C6D15: GoTo loc_10C7037
End Sub

Private Sub FDOTaxr_Click(Index As Integer) 'F67A14
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_F678EF: var_B4 = CVar("FDOTaxr" & "+") 'String
  loc_F6790A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F6791C: var_C6 = Index
  loc_F67925: If (var_C6 = 0) Then
  loc_F67932:   global_52 = New rFomRepView
  loc_F67945:   global_52.GRepFormName = "FOMTaxDetail"
  loc_F67956:   Set var_CC = var_F0(Index)
  loc_F6795C:   Call 0.Method_FDOTaxr_Click0 (var_F4, var_C6)
  loc_F67964:   MemVar_1F95204 = global_52.Menu.Caption
  loc_F67976:   global_52.CAPTION = CVar(var_F4)
  loc_F6798C:   Call global_52.Show
  loc_F67995: Else
  loc_F6799B:   If (var_C6 = 1) Then
  loc_F679A8:     global_52 = New rFomRepView
  loc_F679BB:     global_52.GRepFormName = "FOMTaxWiseChargeDetail"
  loc_F679CC:     Set var_CC = var_F0(Index)
  loc_F679D2:     Call 0.Method_FDOTaxr_Click0 (var_F4)
  loc_F679DA:      = global_52.Menu.Caption
  loc_F679EC:     global_52.CAPTION = CVar(var_F4)
  loc_F67A02:     Call global_52.Show
  loc_F67A08:   End If
  loc_F67A08: End If
  loc_F67A0D: global_52 = Nothing
  loc_F67A11: Exit Sub
End Sub

Private Sub FDOForms_Click(Index As Integer) '124BB28
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_124B5DF: var_B4 = CVar("FDOForms" & "+") 'String
  loc_124B5FA: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_124B60C: var_C6 = Index
  loc_124B615: If (var_C6 = 0) Then
  loc_124B622:   global_52 = New rRepReserv
  loc_124B635:   global_52.GRepFormName = "FormCReport"
  loc_124B646:   Set var_CC = var_F0(Index)
  loc_124B64C:   Call 0.Method_FDOForms_Click0 (var_F4, var_C6)
  loc_124B654:   MemVar_1F95204 = global_52.Menu.Caption
  loc_124B666:   global_52.CAPTION = CVar(var_F4)
  loc_124B67C:   Call global_52.Show
  loc_124B685: Else
  loc_124B68B:   If (var_C6 = 1) Then
  loc_124B698:     global_52 = New rRepReserv
  loc_124B6AB:     global_52.GRepFormName = "Form1TourismReport"
  loc_124B6BC:     Set var_CC = var_F0(Index)
  loc_124B6C2:     Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124B6CA:      = global_52.Menu.Caption
  loc_124B6DC:     global_52.CAPTION = CVar(var_F4)
  loc_124B6F2:     Call global_52.Show
  loc_124B6FB:   Else
  loc_124B701:     If (var_C6 = 2) Then
  loc_124B70E:       global_52 = New rRepReserv
  loc_124B721:       global_52.GRepFormName = "Form2TourismReport"
  loc_124B732:       Set var_CC = var_F0(Index)
  loc_124B738:       Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124B740:        = global_52.Menu.Caption
  loc_124B752:       global_52.CAPTION = CVar(var_F4)
  loc_124B768:       Call global_52.Show
  loc_124B771:     Else
  loc_124B777:       If (var_C6 = 3) Then
  loc_124B784:         global_52 = New rRepReserv
  loc_124B797:         global_52.GRepFormName = "Form5TourismReport"
  loc_124B7A8:         Set var_CC = var_F0(Index)
  loc_124B7AE:         Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124B7B6:          = global_52.Menu.Caption
  loc_124B7C8:         global_52.CAPTION = CVar(var_F4)
  loc_124B7DE:         Call global_52.Show
  loc_124B7E7:       Else
  loc_124B7ED:         If (var_C6 = 4) Then
  loc_124B7FA:           global_52 = New rRepReserv
  loc_124B80D:           global_52.GRepFormName = "LuxuryTaxRegister"
  loc_124B81E:           Set var_CC = var_F0(Index)
  loc_124B824:           Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124B82C:            = global_52.Menu.Caption
  loc_124B83E:           global_52.CAPTION = CVar(var_F4)
  loc_124B854:           Call global_52.Show
  loc_124B85D:         Else
  loc_124B863:           If (var_C6 = 5) Then
  loc_124B870:             global_52 = New rRepReserv
  loc_124B883:             global_52.GRepFormName = "Form6TourismReport"
  loc_124B894:             Set var_CC = var_F0(Index)
  loc_124B89A:             Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124B8A2:              = global_52.Menu.Caption
  loc_124B8B4:             global_52.CAPTION = CVar(var_F4)
  loc_124B8CA:             Call global_52.Show
  loc_124B8D3:           Else
  loc_124B8D9:             If (var_C6 = 6) Then
  loc_124B8E6:               global_52 = New rRepReserv
  loc_124B8F9:               global_52.GRepFormName = "Form4TourismReport"
  loc_124B90A:               Set var_CC = var_F0(Index)
  loc_124B910:               Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124B918:                = global_52.Menu.Caption
  loc_124B92A:               global_52.CAPTION = CVar(var_F4)
  loc_124B940:               Call global_52.Show
  loc_124B949:             Else
  loc_124B94F:               If (var_C6 = 7) Then
  loc_124B95C:                 global_52 = New rRepReserv
  loc_124B96F:                 global_52.GRepFormName = "LuxuryTaxRegisterI"
  loc_124B980:                 Set var_CC = var_F0(Index)
  loc_124B986:                 Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124B98E:                  = global_52.Menu.Caption
  loc_124B9A0:                 global_52.CAPTION = CVar(var_F4)
  loc_124B9B6:                 Call global_52.Show
  loc_124B9BF:               Else
  loc_124B9C5:                 If (var_C6 = 8) Then
  loc_124B9D2:                   global_52 = New rRepReserv
  loc_124B9E5:                   global_52.GRepFormName = "MonthlyStatisticalReturn"
  loc_124B9F6:                   Set var_CC = var_F0(Index)
  loc_124B9FC:                   Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124BA04:                    = global_52.Menu.Caption
  loc_124BA16:                   global_52.CAPTION = CVar(var_F4)
  loc_124BA2C:                   Call global_52.Show
  loc_124BA35:                 Else
  loc_124BA3B:                   If (var_C6 = &HB) Then
  loc_124BA48:                     global_52 = New rRepReserv
  loc_124BA5B:                     global_52.GRepFormName = "LTFORMII"
  loc_124BA6C:                     Set var_CC = var_F0(Index)
  loc_124BA72:                     Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124BA7A:                      = global_52.Menu.Caption
  loc_124BA8C:                     global_52.CAPTION = CVar(var_F4)
  loc_124BAA2:                     Call global_52.Show
  loc_124BAAB:                   Else
  loc_124BAB1:                     If (var_C6 = &HD) Then
  loc_124BABE:                       global_52 = New rRepReserv
  loc_124BAD1:                       global_52.GRepFormName = "LTFORMIV"
  loc_124BAE2:                       Set var_CC = var_F0(Index)
  loc_124BAE8:                       Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124BAF0:                        = global_52.Menu.Caption
  loc_124BB02:                       global_52.CAPTION = CVar(var_F4)
  loc_124BB18:                       Call global_52.Show
  loc_124BB1E:                     End If
  loc_124BB1E:                   End If
  loc_124BB1E:                 End If
  loc_124BB1E:               End If
  loc_124BB1E:             End If
  loc_124BB1E:           End If
  loc_124BB1E:         End If
  loc_124BB1E:       End If
  loc_124BB1E:     End If
  loc_124BB1E:   End If
  loc_124BB1E: End If
  loc_124BB23: global_52 = Nothing
  loc_124BB27: Exit Sub
End Sub

Private Sub fame_Click(Index As Integer) '12BD5C4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_E4 As Variant
  Dim var_D0 As Menu
  loc_12BCF6F: var_B4 = CVar("fame" & "+") 'String
  loc_12BCF85: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_12BCF8A: MemVar_1F95204 = CStr(var_C4)
  loc_12BCF99: On Error Goto loc_12BD57D
  loc_12BCF9F: var_C6 = Index
  loc_12BCFA8: If (var_C6 = 0) Then
  loc_12BCFB5:   global_52 = New FaGrEnt
  loc_12BCFC9:   Set var_CC = var_D0(Index)
  loc_12BCFCF:   Call 0.Method_fame_Click0 (var_D4, var_C6)
  loc_12BCFD7:   MemVar_1F95204 = FaGrEnt.Menu.Caption
  loc_12BCFE9:   global_52.CAPTION = CVar(var_D4)
  loc_12BCFFF:   Call global_52.Show
  loc_12BD011:   global_52.WindowState = 2
  loc_12BD018: Else
  loc_12BD01E:   If (var_C6 = 1) Then
  loc_12BD02B:     global_52 = New FaSubGroup
  loc_12BD03F:     Set var_CC = var_D0(Index)
  loc_12BD045:     Call 0.Method_fame_Click0 (var_D4)
  loc_12BD04D:      = FaSubGroup.Menu.Caption
  loc_12BD05F:     global_52.CAPTION = CVar(var_D4)
  loc_12BD075:     Call global_52.Show
  loc_12BD087:     global_52.WindowState = 2
  loc_12BD08E:   Else
  loc_12BD094:     If (var_C6 = 2) Then
  loc_12BD0A1:       global_52 = New FaNarrMast
  loc_12BD0B5:       Set var_CC = var_D0(Index)
  loc_12BD0BB:       Call 0.Method_fame_Click0 (var_D4)
  loc_12BD0C3:        = FaNarrMast.Menu.Caption
  loc_12BD0D5:       global_52.CAPTION = CVar(var_D4)
  loc_12BD0EB:       Call global_52.Show
  loc_12BD0FD:       global_52.WindowState = 2
  loc_12BD104:     Else
  loc_12BD10A:       If (var_C6 = 3) Then
  loc_12BD117:         global_52 = New FaTDSCat
  loc_12BD12B:         Set var_CC = var_D0(Index)
  loc_12BD131:         Call 0.Method_fame_Click0 (var_D4)
  loc_12BD139:          = FaTDSCat.Menu.Caption
  loc_12BD14B:         global_52.CAPTION = CVar(var_D4)
  loc_12BD161:         Call global_52.Show
  loc_12BD167:         var_E4 = 2
  loc_12BD173:         global_52.WindowState = var_E4
  loc_12BD17A:       Else
  loc_12BD180:         If (var_C6 = 4) Then
  loc_12BD191:           Call 0.Method_arg_2B0 (var_E4)
  loc_12BD1A3:           Set var_CC = var_D0(Index)
  loc_12BD1A9:           Call 0.Method_fame_Click0 (var_D4)
  loc_12BD1B1:           var_F4 = FaEnvron.Menu.Caption
  loc_12BD1BF:           Call 0.Method_arg_54 (var_D4)
  loc_12BD1D6:           Call 0.Method_arg_9C (2)
  loc_12BD1E0:           MemVar_1F9581C = Nothing
  loc_12BD1E7:         Else
  loc_12BD1ED:           If (var_C6 = 5) Then
  loc_12BD1FD:             Set var_CC = Me.fame
  loc_12BD203:             Call 0.Method_fame_Click0 (Index, var_D0)
  loc_12BD20B:             var_D4 = var_D0.Caption
  loc_12BD219:             Call 0.Method_arg_54 (var_D4)
  loc_12BD236:             Call 0.Method_arg_2B0 (var_E4)
  loc_12BD243:             Call 0.Method_arg_9C (2)
  loc_12BD24D:             MemVar_1F95830 = Nothing
  loc_12BD254:           Else
  loc_12BD25A:             If (var_C6 = 6) Then
  loc_12BD25D:               GoTo loc_12BD573
  loc_12BD260:             End If
  loc_12BD266:             If (var_C6 = 7) Then
  loc_12BD269:               GoTo loc_12BD573
  loc_12BD26C:             End If
  loc_12BD272:             If (var_C6 = 8) Then
  loc_12BD27F:               global_52 = New FaCurrBalUpdate
  loc_12BD293:               Set var_CC = var_D0(Index)
  loc_12BD299:               Call 0.Method_fame_Click0 (var_D4)
  loc_12BD2A1:               var_F4 = FaCurrBalUpdate.Menu.Caption
  loc_12BD2B3:               global_52.CAPTION = CVar(var_D4)
  loc_12BD2C9:               Call global_52.Show
  loc_12BD2DB:               global_52.WindowState = 2
  loc_12BD2E2:             Else
  loc_12BD2E8:               If (var_C6 = 9) Then
  loc_12BD2F5:                 global_52 = New FaCountryMast
  loc_12BD309:                 Set var_CC = var_D0(Index)
  loc_12BD30F:                 Call 0.Method_fame_Click0 (var_D4)
  loc_12BD317:                  = FaCountryMast.Menu.Caption
  loc_12BD329:                 global_52.CAPTION = CVar(var_D4)
  loc_12BD33F:                 Call global_52.Show
  loc_12BD351:                 global_52.WindowState = 2
  loc_12BD358:               Else
  loc_12BD35E:                 If (var_C6 = &HA) Then
  loc_12BD36B:                   global_52 = New FaStateMast
  loc_12BD37F:                   Set var_CC = var_D0(Index)
  loc_12BD385:                   Call 0.Method_fame_Click0 (var_D4)
  loc_12BD38D:                    = FaStateMast.Menu.Caption
  loc_12BD39F:                   global_52.CAPTION = CVar(var_D4)
  loc_12BD3B5:                   Call global_52.Show
  loc_12BD3C7:                   global_52.WindowState = 2
  loc_12BD3CE:                 Else
  loc_12BD3D4:                   If (var_C6 = &HB) Then
  loc_12BD3E1:                     global_52 = New FaCityMast
  loc_12BD3F5:                     Set var_CC = var_D0(Index)
  loc_12BD3FB:                     Call 0.Method_fame_Click0 (var_D4)
  loc_12BD403:                      = FaCityMast.Menu.Caption
  loc_12BD415:                     global_52.CAPTION = CVar(var_D4)
  loc_12BD42B:                     Call global_52.Show
  loc_12BD43D:                     global_52.WindowState = 2
  loc_12BD444:                   Else
  loc_12BD44A:                     If (var_C6 = &HC) Then
  loc_12BD457:                       global_52 = New EmptyInbox
  loc_12BD46B:                       Set var_CC = var_D0(Index)
  loc_12BD471:                       Call 0.Method_fame_Click0 (var_D4)
  loc_12BD479:                        = EmptyInbox.Menu.Caption
  loc_12BD48B:                       global_52.CAPTION = CVar(var_D4)
  loc_12BD4A1:                       Call global_52.Show
  loc_12BD4AA:                     Else
  loc_12BD4B0:                       If (var_C6 = &HD) Then
  loc_12BD4BD:                         global_52 = New AccountMerg
  loc_12BD4D1:                         Set var_CC = var_D0(Index)
  loc_12BD4D7:                         Call 0.Method_fame_Click0 (var_D4)
  loc_12BD4DF:                          = AccountMerg.Menu.Caption
  loc_12BD4F1:                         global_52.CAPTION = CVar(var_D4)
  loc_12BD507:                         Call global_52.Show
  loc_12BD510:                       Else
  loc_12BD516:                         If (var_C6 = &HE) Then
  loc_12BD523:                           global_52 = New FrmSerialiseVr
  loc_12BD537:                           Set var_CC = var_D0(Index)
  loc_12BD53D:                           Call 0.Method_fame_Click0 (var_D4)
  loc_12BD545:                            = FrmSerialiseVr.Menu.Caption
  loc_12BD557:                           global_52.CAPTION = CVar(var_D4)
  loc_12BD56D:                           Call global_52.Show
  loc_12BD573:                         End If
  loc_12BD573:                       End If
  loc_12BD573:                     End If
  loc_12BD573:                   End If
  loc_12BD573:                 End If
  loc_12BD573:               End If
  loc_12BD573:               ' Referenced from:             12BD269
  loc_12BD573:               ' Referenced from:             12BD25D
  loc_12BD573:             End If
  loc_12BD573:           End If
  loc_12BD573:         End If
  loc_12BD573:       End If
  loc_12BD573:     End If
  loc_12BD573:   End If
  loc_12BD573: End If
  loc_12BD578: global_52 = Nothing
  loc_12BD57C: Exit Sub
  loc_12BD57D: ' Referenced from: 12BCF99
  loc_12BD585: Set var_CC = Err()
  loc_12BD58B: Call 0.Method_arg_2C (var_D4)
  loc_12BD5AC: MsgBox(CVar(var_D4), &H40, "Information", var_B4, var_C4)
  loc_12BD5BF: Exit Sub
  loc_12BD5C0: Exit Sub
End Sub

Private Sub FDOMenu_Click(Index As Integer) '12AF69C
  'Data Table: 5C8390
  Dim var_BC As Variant
  Dim MemVar_1F95204 As String
  Dim var_CE As Integer
  Dim var_D4 As Variant
  loc_12AF073: var_BC = CVar("FDOMenu" & "+") 'String
  loc_12AF08E: MemVar_1F95204 = CStr(var_BC & Trim(CVar(CStr(Index))))
  loc_12AF0A0: var_CE = Index
  loc_12AF0A9: If (var_CE = 0) Then
  loc_12AF0B6:   global_52 = New fdWalkInEntry
  loc_12AF0CA:   Set var_D4 = var_D8(Index)
  loc_12AF0D0:   Call 0.Method_FDOMenu_Click0 (var_DC, var_CE)
  loc_12AF0D8:   MemVar_1F95204 = fdWalkInEntry.Menu.Caption
  loc_12AF0EA:   global_52.CAPTION = CVar(var_DC)
  loc_12AF100:   Call global_52.Show
  loc_12AF109: Else
  loc_12AF10F:   If (var_CE = 2) Then
  loc_12AF11C:     global_52 = New InHouseGuestFolio
  loc_12AF130:     Set var_D4 = var_D8(Index)
  loc_12AF136:     Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF13E:      = InHouseGuestFolio.Menu.Caption
  loc_12AF150:     global_52.CAPTION = CVar(var_DC)
  loc_12AF16B:     global_52.PGuestName = CVar(var_8C)
  loc_12AF17C:     global_52.PRoomNo = CVar(var_88)
  loc_12AF188:     Call global_52.Show
  loc_12AF191:   Else
  loc_12AF197:     If (var_CE = 8) Then
  loc_12AF1A4:       global_52 = New FrmExpense
  loc_12AF1B8:       Set var_D4 = var_D8(Index)
  loc_12AF1BE:       Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF1C6:        = FrmExpense.Menu.Caption
  loc_12AF1D8:       global_52.CAPTION = CVar(var_DC)
  loc_12AF1EE:       Call global_52.Show
  loc_12AF1F7:     Else
  loc_12AF1FD:       If (var_CE = &H10) Then
  loc_12AF20A:         global_52 = New FdLookUpRoomNo
  loc_12AF21E:         Set var_D4 = var_D8(Index)
  loc_12AF224:         Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF22C:          = FdLookUpRoomNo.Menu.Caption
  loc_12AF23E:         global_52.CAPTION = CVar(var_DC)
  loc_12AF254:         Call global_52.Show
  loc_12AF25D:       Else
  loc_12AF263:         If (var_CE = &H11) Then
  loc_12AF270:           global_52 = New HHouseKeeping
  loc_12AF284:           Set var_D4 = var_D8(Index)
  loc_12AF28A:           Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF292:            = HHouseKeeping.Menu.Caption
  loc_12AF2A4:           global_52.CAPTION = CVar(var_DC)
  loc_12AF2BA:           Call global_52.Show
  loc_12AF2C3:         Else
  loc_12AF2C9:           If (var_CE = &H12) Then
  loc_12AF2D6:             global_52 = New TravelAgencyPost
  loc_12AF2EA:             Set var_D4 = var_D8(Index)
  loc_12AF2F0:             Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF2F8:              = TravelAgencyPost.Menu.Caption
  loc_12AF30A:             global_52.CAPTION = CVar(var_DC)
  loc_12AF320:             Call global_52.Show
  loc_12AF329:           Else
  loc_12AF32F:             If (var_CE = &H13) Then
  loc_12AF33C:               global_52 = New frmFomB
  loc_12AF350:               Set var_D4 = var_D8(Index)
  loc_12AF356:               Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF35E:                = frmFomB.Menu.Caption
  loc_12AF370:               global_52.CAPTION = CVar(var_DC)
  loc_12AF386:               Call global_52.Show
  loc_12AF38F:             Else
  loc_12AF395:               If (var_CE = &H14) Then
  loc_12AF3A2:                 global_52 = New FdRevCheckOut
  loc_12AF3B6:                 Set var_D4 = var_D8(Index)
  loc_12AF3BC:                 Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF3C4:                  = FdRevCheckOut.Menu.Caption
  loc_12AF3D6:                 global_52.CAPTION = CVar(var_DC)
  loc_12AF3EC:                 Call global_52.Show
  loc_12AF3F5:               Else
  loc_12AF3FB:                 If (var_CE = &H15) Then
  loc_12AF408:                   global_52 = New FrmMergeCharge
  loc_12AF41C:                   Set var_D4 = var_D8(Index)
  loc_12AF422:                   Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF42A:                    = FrmMergeCharge.Menu.Caption
  loc_12AF43C:                   global_52.CAPTION = CVar(var_DC)
  loc_12AF452:                   Call global_52.Show
  loc_12AF45B:                 Else
  loc_12AF461:                   If (var_CE = &H16) Then
  loc_12AF46E:                     global_52 = New FdReSetlement
  loc_12AF481:                     global_52.ParentForm = "Check Out"
  loc_12AF492:                     Set var_D4 = var_D8(Index)
  loc_12AF498:                     Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF4A0:                      = global_52.Menu.Caption
  loc_12AF4B2:                     global_52.CAPTION = CVar(var_DC)
  loc_12AF4C8:                     Call global_52.Show
  loc_12AF4D1:                   Else
  loc_12AF4D7:                     If (var_CE = &H17) Then
  loc_12AF4E4:                       global_52 = New FrmRevMergeCharge
  loc_12AF4F8:                       Set var_D4 = var_D8(Index)
  loc_12AF4FE:                       Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF506:                        = FrmRevMergeCharge.Menu.Caption
  loc_12AF518:                       global_52.CAPTION = CVar(var_DC)
  loc_12AF52E:                       Call global_52.Show
  loc_12AF537:                     Else
  loc_12AF53D:                       If (var_CE = &H18) Then
  loc_12AF54A:                         global_52 = New rFomRepView
  loc_12AF55D:                         global_52.GRepFormName = "PlanMealTokens"
  loc_12AF56E:                         Set var_D4 = var_D8(Index)
  loc_12AF574:                         Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF57C:                          = global_52.Menu.Caption
  loc_12AF58E:                         global_52.CAPTION = CVar(var_DC)
  loc_12AF5AE:                         Me.Global.Unload global_52
  loc_12AF5B9:                       Else
  loc_12AF5BF:                         If (var_CE = &H19) Then
  loc_12AF5CC:                           global_52 = New rRepReserv
  loc_12AF5DF:                           global_52.GRepFormName = "GRC"
  loc_12AF5F0:                           Set var_D4 = var_D8(Index)
  loc_12AF5F6:                           Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF5FE:                            = global_52.Menu.Caption
  loc_12AF610:                           global_52.CAPTION = CVar(var_DC)
  loc_12AF626:                           Call global_52.Show
  loc_12AF62F:                         Else
  loc_12AF635:                           If (var_CE = &H1A) Then
  loc_12AF642:                             global_52 = New FrmGrcBlank
  loc_12AF656:                             Set var_D4 = var_D8(Index)
  loc_12AF65C:                             Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AF664:                              = FrmGrcBlank.Menu.Caption
  loc_12AF676:                             global_52.CAPTION = CVar(var_DC)
  loc_12AF68C:                             Call global_52.Show
  loc_12AF692:                           End If
  loc_12AF692:                         End If
  loc_12AF692:                       End If
  loc_12AF692:                     End If
  loc_12AF692:                   End If
  loc_12AF692:                 End If
  loc_12AF692:               End If
  loc_12AF692:             End If
  loc_12AF692:           End If
  loc_12AF692:         End If
  loc_12AF692:       End If
  loc_12AF692:     End If
  loc_12AF692:   End If
  loc_12AF692: End If
  loc_12AF697: global_52 = Nothing
  loc_12AF69B: Exit Sub
End Sub

Private Sub FDOMISRep_Click(Index As Integer) '128C224
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_128BC47: var_B4 = CVar("FDOMISRep" & "+") 'String
  loc_128BC62: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_128BC74: var_C6 = Index
  loc_128BC7D: If (var_C6 = 0) Then
  loc_128BC8A:   global_52 = New rFomRepView
  loc_128BC9D:   global_52.GRepFormName = "RoomOccDisp"
  loc_128BCAE:   Set var_CC = var_F0(Index)
  loc_128BCB4:   Call 0.Method_FDOMISRep_Click0 (var_F4, var_C6)
  loc_128BCBC:   MemVar_1F95204 = global_52.Menu.Caption
  loc_128BCCE:   global_52.CAPTION = CVar(var_F4)
  loc_128BCE4:   Call global_52.Show
  loc_128BCED: Else
  loc_128BCF3:   If (var_C6 = 1) Then
  loc_128BD00:     global_52 = New rFomRepView
  loc_128BD13:     global_52.GRepFormName = "GuestWiseAnalysis"
  loc_128BD24:     Set var_CC = var_F0(Index)
  loc_128BD2A:     Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128BD32:      = global_52.Menu.Caption
  loc_128BD44:     global_52.CAPTION = CVar(var_F4)
  loc_128BD5A:     Call global_52.Show
  loc_128BD63:   Else
  loc_128BD69:     If (var_C6 = 2) Then
  loc_128BD76:       global_52 = New rFomRepView
  loc_128BD89:       global_52.GRepFormName = "CompanySumm"
  loc_128BD9A:       Set var_CC = var_F0(Index)
  loc_128BDA0:       Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128BDA8:        = global_52.Menu.Caption
  loc_128BDBA:       global_52.CAPTION = CVar(var_F4)
  loc_128BDD0:       Call global_52.Show
  loc_128BDD9:     Else
  loc_128BDDF:       If (var_C6 = 3) Then
  loc_128BDEC:         global_52 = New rFomRepView
  loc_128BDFF:         global_52.GRepFormName = "GuestChargesMIS"
  loc_128BE10:         Set var_CC = var_F0(Index)
  loc_128BE16:         Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128BE1E:          = global_52.Menu.Caption
  loc_128BE30:         global_52.CAPTION = CVar(var_F4)
  loc_128BE46:         Call global_52.Show
  loc_128BE4F:       Else
  loc_128BE55:         If (var_C6 = 4) Then
  loc_128BE62:           global_52 = New rFomRepView
  loc_128BE75:           global_52.GRepFormName = "RoomOccupancyReportSummary"
  loc_128BE86:           Set var_CC = var_F0(Index)
  loc_128BE8C:           Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128BE94:            = global_52.Menu.Caption
  loc_128BEA6:           global_52.CAPTION = CVar(var_F4)
  loc_128BEC6:           Me.Global.Unload global_52
  loc_128BED1:         Else
  loc_128BED7:           If (var_C6 = 5) Then
  loc_128BEE4:             global_52 = New rFomRepView
  loc_128BEF7:             global_52.GRepFormName = "RoomTypeOccupancyReport"
  loc_128BF08:             Set var_CC = var_F0(Index)
  loc_128BF0E:             Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128BF16:              = global_52.Menu.Caption
  loc_128BF28:             global_52.CAPTION = CVar(var_F4)
  loc_128BF48:             Me.Global.Unload global_52
  loc_128BF53:           Else
  loc_128BF59:             If (var_C6 = 6) Then
  loc_128BF66:               global_52 = New rFomRepView
  loc_128BF79:               global_52.GRepFormName = "RoomWiseRoomRevenueReport"
  loc_128BF8A:               Set var_CC = var_F0(Index)
  loc_128BF90:               Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128BF98:                = global_52.Menu.Caption
  loc_128BFAA:               global_52.CAPTION = CVar(var_F4)
  loc_128BFC0:               Call global_52.Show
  loc_128BFC9:             Else
  loc_128BFCF:               If (var_C6 = 7) Then
  loc_128BFDC:                 global_52 = New rFomRepView
  loc_128BFEF:                 global_52.GRepFormName = "RoomOccupancyAnalysisReport"
  loc_128C000:                 Set var_CC = var_F0(Index)
  loc_128C006:                 Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128C00E:                  = global_52.Menu.Caption
  loc_128C020:                 global_52.CAPTION = CVar(var_F4)
  loc_128C040:                 Me.Global.Unload global_52
  loc_128C04B:               Else
  loc_128C051:                 If (var_C6 = 8) Then
  loc_128C05E:                   global_52 = New rFomRepView
  loc_128C071:                   global_52.GRepFormName = "RoomNights"
  loc_128C082:                   Set var_CC = var_F0(Index)
  loc_128C088:                   Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128C090:                    = global_52.Menu.Caption
  loc_128C0A2:                   global_52.CAPTION = CVar(var_F4)
  loc_128C0B8:                   Call global_52.Show
  loc_128C0C1:                 Else
  loc_128C0C7:                   If (var_C6 = 9) Then
  loc_128C0D4:                     global_52 = New rFomRepView
  loc_128C0E7:                     global_52.GRepFormName = "ExtraChargesDuringStay"
  loc_128C0F8:                     Set var_CC = var_F0(Index)
  loc_128C0FE:                     Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128C106:                      = global_52.Menu.Caption
  loc_128C118:                     global_52.CAPTION = CVar(var_F4)
  loc_128C12E:                     Call global_52.Show
  loc_128C137:                   Else
  loc_128C13D:                     If (var_C6 = &HA) Then
  loc_128C14A:                       global_52 = New rFomRepView
  loc_128C15D:                       global_52.GRepFormName = "RoomTypeOccupancyAnalysis"
  loc_128C16E:                       Set var_CC = var_F0(Index)
  loc_128C174:                       Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128C17C:                        = global_52.Menu.Caption
  loc_128C18E:                       global_52.CAPTION = CVar(var_F4)
  loc_128C1A4:                       Call global_52.Show
  loc_128C1AD:                     Else
  loc_128C1B3:                       If (var_C6 = &HA) Then
  loc_128C1C0:                         global_52 = New rFomRepView
  loc_128C1D3:                         global_52.GRepFormName = "PlanReport"
  loc_128C1E4:                         Set var_CC = var_F0(Index)
  loc_128C1EA:                         Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128C1F2:                          = global_52.Menu.Caption
  loc_128C204:                         global_52.CAPTION = CVar(var_F4)
  loc_128C21A:                         Call global_52.Show
  loc_128C220:                       End If
  loc_128C220:                     End If
  loc_128C220:                   End If
  loc_128C220:                 End If
  loc_128C220:               End If
  loc_128C220:             End If
  loc_128C220:           End If
  loc_128C220:         End If
  loc_128C220:       End If
  loc_128C220:     End If
  loc_128C220:   End If
  loc_128C220: End If
  loc_128C220: Exit Sub
  loc_128C221: If  Then Exit Sub
  loc_128C221: End If
End Sub

Private Sub FDORep_Click(Index As Integer) '147AD28
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_147A0F3: var_B4 = CVar("FDORep" & "+") 'String
  loc_147A10E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_147A120: var_C6 = Index
  loc_147A129: If (var_C6 = 2) Then
  loc_147A136:   global_52 = New rFomRepView
  loc_147A149:   global_52.GRepFormName = "InsHouseCount"
  loc_147A15A:   Set var_CC = var_F0(Index)
  loc_147A160:   Call 0.Method_FDORep_Click0 (var_F4, var_C6)
  loc_147A168:   MemVar_1F95204 = global_52.Menu.Caption
  loc_147A17A:   global_52.CAPTION = CVar(var_F4)
  loc_147A190:   Call global_52.Show
  loc_147A199: Else
  loc_147A19F:   If (var_C6 = 3) Then
  loc_147A1AC:     global_52 = New rFomRepView
  loc_147A1BF:     global_52.GRepFormName = "RoomInventory"
  loc_147A1D0:     Set var_CC = var_F0(Index)
  loc_147A1D6:     Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A1DE:      = global_52.Menu.Caption
  loc_147A1F0:     global_52.CAPTION = CVar(var_F4)
  loc_147A206:     Call global_52.Show
  loc_147A20F:   Else
  loc_147A215:     If (var_C6 = 4) Then
  loc_147A222:       global_52 = New rFomRepView
  loc_147A235:       global_52.GRepFormName = "GuestInHouse"
  loc_147A246:       Set var_CC = var_F0(Index)
  loc_147A24C:       Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A254:        = global_52.Menu.Caption
  loc_147A266:       global_52.CAPTION = CVar(var_F4)
  loc_147A27C:       Call global_52.Show
  loc_147A285:     Else
  loc_147A28B:       If (var_C6 = 5) Then
  loc_147A298:         global_52 = New rFomRepView
  loc_147A2AB:         global_52.GRepFormName = "HouseKeeping"
  loc_147A2BC:         Set var_CC = var_F0(Index)
  loc_147A2C2:         Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A2CA:          = global_52.Menu.Caption
  loc_147A2DC:         global_52.CAPTION = CVar(var_F4)
  loc_147A2F2:         Call global_52.Show
  loc_147A2FB:       Else
  loc_147A301:         If (var_C6 = 6) Then
  loc_147A30E:           global_52 = New rFomRepView
  loc_147A321:           global_52.GRepFormName = "ArrivalDepList"
  loc_147A332:           Set var_CC = var_F0(Index)
  loc_147A338:           Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A340:            = global_52.Menu.Caption
  loc_147A352:           global_52.CAPTION = CVar(var_F4)
  loc_147A368:           Call global_52.Show
  loc_147A371:         Else
  loc_147A377:           If (var_C6 = 7) Then
  loc_147A384:             global_52 = New rFomRepView
  loc_147A397:             global_52.GRepFormName = "GuestChgJournal"
  loc_147A3A8:             Set var_CC = var_F0(Index)
  loc_147A3AE:             Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A3B6:              = global_52.Menu.Caption
  loc_147A3C8:             global_52.CAPTION = CVar(var_F4)
  loc_147A3DE:             Call global_52.Show
  loc_147A3E7:           Else
  loc_147A3ED:             If (var_C6 = 8) Then
  loc_147A3FA:               global_52 = New rFomRepView
  loc_147A40D:               global_52.GRepFormName = "PmtByCashier"
  loc_147A41E:               Set var_CC = var_F0(Index)
  loc_147A424:               Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A42C:                = global_52.Menu.Caption
  loc_147A43E:               global_52.CAPTION = CVar(var_F4)
  loc_147A454:               Call global_52.Show
  loc_147A45D:             Else
  loc_147A463:               If (var_C6 = 9) Then
  loc_147A470:                 global_52 = New rFomRepView
  loc_147A483:                 global_52.GRepFormName = "HtCashierSumm"
  loc_147A494:                 Set var_CC = var_F0(Index)
  loc_147A49A:                 Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A4A2:                  = global_52.Menu.Caption
  loc_147A4B4:                 global_52.CAPTION = CVar(var_F4)
  loc_147A4CA:                 Call global_52.Show
  loc_147A4D3:               Else
  loc_147A4D9:                 If (var_C6 = &HA) Then
  loc_147A4E6:                   global_52 = New rFomRepView
  loc_147A4F9:                   global_52.GRepFormName = "SettleRep"
  loc_147A50A:                   Set var_CC = var_F0(Index)
  loc_147A510:                   Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A518:                    = global_52.Menu.Caption
  loc_147A52A:                   global_52.CAPTION = CVar(var_F4)
  loc_147A540:                   Call global_52.Show
  loc_147A549:                 Else
  loc_147A54F:                   If (var_C6 = &HB) Then
  loc_147A55C:                     global_52 = New rFomRepView
  loc_147A56F:                     global_52.GRepFormName = "CancelBillDetails"
  loc_147A580:                     Set var_CC = var_F0(Index)
  loc_147A586:                     Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A58E:                      = global_52.Menu.Caption
  loc_147A5A0:                     global_52.CAPTION = CVar(var_F4)
  loc_147A5B6:                     Call global_52.Show
  loc_147A5BF:                   Else
  loc_147A5C5:                     If (var_C6 = &HC) Then
  loc_147A5D2:                       global_52 = New rFomRepView
  loc_147A5E5:                       global_52.GRepFormName = "RoomChangeHistory"
  loc_147A5F6:                       Set var_CC = var_F0(Index)
  loc_147A5FC:                       Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A604:                        = global_52.Menu.Caption
  loc_147A616:                       global_52.CAPTION = CVar(var_F4)
  loc_147A62C:                       Call global_52.Show
  loc_147A635:                     Else
  loc_147A63B:                       If (var_C6 = &HD) Then
  loc_147A648:                         global_52 = New rFomRepView
  loc_147A65B:                         global_52.GRepFormName = "ArrDepReg"
  loc_147A66C:                         Set var_CC = var_F0(Index)
  loc_147A672:                         Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A67A:                          = global_52.Menu.Caption
  loc_147A68C:                         global_52.CAPTION = CVar(var_F4)
  loc_147A6A2:                         Call global_52.Show
  loc_147A6AB:                       Else
  loc_147A6B1:                         If (var_C6 = &HE) Then
  loc_147A6BE:                           global_52 = New rFomRepView
  loc_147A6D1:                           global_52.GRepFormName = "SaleRegister"
  loc_147A6E2:                           Set var_CC = var_F0(Index)
  loc_147A6E8:                           Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A6F0:                            = global_52.Menu.Caption
  loc_147A702:                           global_52.CAPTION = CVar(var_F4)
  loc_147A718:                           Call global_52.Show
  loc_147A721:                         Else
  loc_147A727:                           If (var_C6 = &HF) Then
  loc_147A734:                             global_52 = New rFomRepView
  loc_147A747:                             global_52.GRepFormName = "PlanPackSchedule"
  loc_147A758:                             Set var_CC = var_F0(Index)
  loc_147A75E:                             Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A766:                              = global_52.Menu.Caption
  loc_147A778:                             global_52.CAPTION = CVar(var_F4)
  loc_147A78E:                             Call global_52.Show
  loc_147A797:                           Else
  loc_147A79D:                             If (var_C6 = &H10) Then
  loc_147A7AA:                               global_52 = New rFomRepView
  loc_147A7BD:                               global_52.GRepFormName = "PlanPackService"
  loc_147A7CE:                               Set var_CC = var_F0(Index)
  loc_147A7D4:                               Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A7DC:                                = global_52.Menu.Caption
  loc_147A7EE:                               global_52.CAPTION = CVar(var_F4)
  loc_147A804:                               Call global_52.Show
  loc_147A80D:                             Else
  loc_147A813:                               If (var_C6 = &H11) Then
  loc_147A820:                                 global_52 = New rFomRepView
  loc_147A833:                                 global_52.GRepFormName = "OccupancyReport"
  loc_147A844:                                 Set var_CC = var_F0(Index)
  loc_147A84A:                                 Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A852:                                  = global_52.Menu.Caption
  loc_147A864:                                 global_52.CAPTION = CVar(var_F4)
  loc_147A87A:                                 Call global_52.Show
  loc_147A883:                               Else
  loc_147A889:                                 If (var_C6 = &H13) Then
  loc_147A896:                                   global_52 = New rFomRepView
  loc_147A8A9:                                   global_52.GRepFormName = "GuestwiseRevenue"
  loc_147A8BA:                                   Set var_CC = var_F0(Index)
  loc_147A8C0:                                   Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A8C8:                                    = global_52.Menu.Caption
  loc_147A8DA:                                   global_52.CAPTION = CVar(var_F4)
  loc_147A8F0:                                   Call global_52.Show
  loc_147A8F9:                                 Else
  loc_147A8FF:                                   If (var_C6 = &H14) Then
  loc_147A90C:                                     global_52 = New rFomRepView
  loc_147A91F:                                     global_52.GRepFormName = "FOMBillChangeReport"
  loc_147A930:                                     Set var_CC = var_F0(Index)
  loc_147A936:                                     Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A93E:                                      = global_52.Menu.Caption
  loc_147A950:                                     global_52.CAPTION = CVar(var_F4)
  loc_147A966:                                     Call global_52.Show
  loc_147A96F:                                   Else
  loc_147A975:                                     If (var_C6 = &H15) Then
  loc_147A982:                                       global_52 = New rFomRepView
  loc_147A995:                                       global_52.GRepFormName = "GuestBillDetails"
  loc_147A9A6:                                       Set var_CC = var_F0(Index)
  loc_147A9AC:                                       Call 0.Method_FDORep_Click0 (var_F4)
  loc_147A9B4:                                        = global_52.Menu.Caption
  loc_147A9C6:                                       global_52.CAPTION = CVar(var_F4)
  loc_147A9DC:                                       Call global_52.Show
  loc_147A9E5:                                     Else
  loc_147A9EB:                                       If (var_C6 = &H16) Then
  loc_147A9F8:                                         global_52 = New rFomRepView
  loc_147AA0B:                                         global_52.GRepFormName = "ChkInRegister"
  loc_147AA1C:                                         Set var_CC = var_F0(Index)
  loc_147AA22:                                         Call 0.Method_FDORep_Click0 (var_F4)
  loc_147AA2A:                                          = global_52.Menu.Caption
  loc_147AA3C:                                         global_52.CAPTION = CVar(var_F4)
  loc_147AA52:                                         Call global_52.Show
  loc_147AA5B:                                       Else
  loc_147AA61:                                         If (var_C6 = &H17) Then
  loc_147AA6E:                                           global_52 = New rFomRepView
  loc_147AA81:                                           global_52.GRepFormName = "ExpectedDeparture"
  loc_147AA92:                                           Set var_CC = var_F0(Index)
  loc_147AA98:                                           Call 0.Method_FDORep_Click0 (var_F4)
  loc_147AAA0:                                            = global_52.Menu.Caption
  loc_147AAB2:                                           global_52.CAPTION = CVar(var_F4)
  loc_147AAC8:                                           Call global_52.Show
  loc_147AAD1:                                         Else
  loc_147AAD7:                                           If (var_C6 = &H19) Then
  loc_147AAE4:                                             global_52 = New rFomRepView
  loc_147AAF7:                                             global_52.GRepFormName = "GuestBillDetails"
  loc_147AB08:                                             Set var_CC = var_F0(Index)
  loc_147AB0E:                                             Call 0.Method_FDORep_Click0 (var_F4)
  loc_147AB16:                                              = global_52.Menu.Caption
  loc_147AB28:                                             global_52.CAPTION = CVar(var_F4)
  loc_147AB3E:                                             Call global_52.Show
  loc_147AB47:                                           Else
  loc_147AB4D:                                             If (var_C6 = &H1D) Then
  loc_147AB5A:                                               global_52 = New rRepReserv
  loc_147AB6D:                                               global_52.GRepFormName = "CheckedInGuestDtl"
  loc_147AB7E:                                               Set var_CC = var_F0(Index)
  loc_147AB84:                                               Call 0.Method_FDORep_Click0 (var_F4)
  loc_147AB8C:                                                = global_52.Menu.Caption
  loc_147AB9E:                                               global_52.CAPTION = CVar(var_F4)
  loc_147ABB4:                                               Call global_52.Show
  loc_147ABBD:                                             Else
  loc_147ABC3:                                               If (var_C6 = &H1E) Then
  loc_147ABD0:                                                 global_52 = New rFomRepView
  loc_147ABE3:                                                 global_52.GRepFormName = "RoomRentAuditRpt"
  loc_147ABF4:                                                 Set var_CC = var_F0(Index)
  loc_147ABFA:                                                 Call 0.Method_FDORep_Click0 (var_F4)
  loc_147AC02:                                                  = global_52.Menu.Caption
  loc_147AC14:                                                 global_52.CAPTION = CVar(var_F4)
  loc_147AC2A:                                                 Call global_52.Show
  loc_147AC33:                                               Else
  loc_147AC39:                                                 If (var_C6 = &H1F) Then
  loc_147AC46:                                                   global_52 = New rFomRepView
  loc_147AC59:                                                   global_52.GRepFormName = "SaleRegisterI"
  loc_147AC6A:                                                   Set var_CC = var_F0(Index)
  loc_147AC70:                                                   Call 0.Method_FDORep_Click0 (var_F4)
  loc_147AC78:                                                    = global_52.Menu.Caption
  loc_147AC8A:                                                   global_52.CAPTION = CVar(var_F4)
  loc_147ACA0:                                                   Call global_52.Show
  loc_147ACA9:                                                 Else
  loc_147ACAF:                                                   If (var_C6 = &H20) Then
  loc_147ACBC:                                                     global_52 = New rFomRepView
  loc_147ACCF:                                                     global_52.GRepFormName = "GuestPayments"
  loc_147ACE0:                                                     Set var_CC = var_F0(Index)
  loc_147ACE6:                                                     Call 0.Method_FDORep_Click0 (var_F4)
  loc_147ACEE:                                                      = global_52.Menu.Caption
  loc_147AD00:                                                     global_52.CAPTION = CVar(var_F4)
  loc_147AD16:                                                     Call global_52.Show
  loc_147AD1C:                                                   End If
  loc_147AD1C:                                                 End If
  loc_147AD1C:                                               End If
  loc_147AD1C:                                             End If
  loc_147AD1C:                                           End If
  loc_147AD1C:                                         End If
  loc_147AD1C:                                       End If
  loc_147AD1C:                                     End If
  loc_147AD1C:                                   End If
  loc_147AD1C:                                 End If
  loc_147AD1C:                               End If
  loc_147AD1C:                             End If
  loc_147AD1C:                           End If
  loc_147AD1C:                         End If
  loc_147AD1C:                       End If
  loc_147AD1C:                     End If
  loc_147AD1C:                   End If
  loc_147AD1C:                 End If
  loc_147AD1C:               End If
  loc_147AD1C:             End If
  loc_147AD1C:           End If
  loc_147AD1C:         End If
  loc_147AD1C:       End If
  loc_147AD1C:     End If
  loc_147AD1C:   End If
  loc_147AD1C: End If
  loc_147AD21: global_52 = Nothing
  loc_147AD25: Exit Sub
End Sub

Private Sub EXTSMSOPR_Click(Index As Integer) 'F2CF20
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_F2CE23: var_B4 = CVar("EXTSMSOPR" & "+") 'String
  loc_F2CE3E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F2CE59: If (Index = 1) Then
  loc_F2CE65:   global_52 = MemVar_1F95440
  loc_F2CE76:   Set var_CC = Me.EXTSMSOPR
  loc_F2CE7C:   Call 0.Method_EXTSMSOPR_Click0 (Index, var_D0, var_D4)
  loc_F2CE84:   var_C6 = var_D0.Caption
  loc_F2CE96:   global_52.CAPTION = CVar(var_D4)
  loc_F2CEAC:   Call global_52.Show
  loc_F2CEB5: Else
  loc_F2CEBB:   If (var_C6 = 2) Then
  loc_F2CEC7:     global_52 = MemVar_1F95454
  loc_F2CED8:     Set var_CC = Me.EXTSMSOPR
  loc_F2CEDE:     Call 0.Method_EXTSMSOPR_Click0 (Index, var_D0)
  loc_F2CEF8:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_F2CF0E:     Call global_52.Show
  loc_F2CF14:   End If
  loc_F2CF14: End If
  loc_F2CF19: global_52 = Nothing
  loc_F2CF1D: Exit Sub
End Sub

Private Sub NightAuditGSTR_Click(Index As Integer) 'FEA2D4
  'Data Table: 5C8390
  Dim var_86 As Integer
  loc_FEA0F8: If (Index = 1) Then
  loc_FEA105:   global_52 = New rFomRepView
  loc_FEA118:   global_52.GRepFormName = "GSTR1"
  loc_FEA129:   Set var_8C = var_B0(Index)
  loc_FEA12F:   Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FEA137:   var_86 = global_52.Menu.Caption
  loc_FEA149:   global_52.CAPTION = CVar(var_B4)
  loc_FEA15F:   Call global_52.Show
  loc_FEA168: Else
  loc_FEA16E:   If (var_86 = 2) Then
  loc_FEA17B:     global_52 = New rFomRepView
  loc_FEA18E:     global_52.GRepFormName = "GSTR2(3)"
  loc_FEA19F:     Set var_8C = var_B0(Index)
  loc_FEA1A5:     Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FEA1AD:      = global_52.Menu.Caption
  loc_FEA1BF:     global_52.CAPTION = CVar(var_B4)
  loc_FEA1D5:     Call global_52.Show
  loc_FEA1DE:   Else
  loc_FEA1E4:     If (var_86 = 3) Then
  loc_FEA1F1:       global_52 = New rFomRepView
  loc_FEA204:       global_52.GRepFormName = "GSTR2(4A)"
  loc_FEA215:       Set var_8C = var_B0(Index)
  loc_FEA21B:       Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FEA223:        = global_52.Menu.Caption
  loc_FEA235:       global_52.CAPTION = CVar(var_B4)
  loc_FEA24B:       Call global_52.Show
  loc_FEA254:     Else
  loc_FEA25A:       If (var_86 = 4) Then
  loc_FEA267:         global_52 = New rFomRepView
  loc_FEA27A:         global_52.GRepFormName = "GSTR2(4B)"
  loc_FEA28B:         Set var_8C = var_B0(Index)
  loc_FEA291:         Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FEA299:          = global_52.Menu.Caption
  loc_FEA2AB:         global_52.CAPTION = CVar(var_B4)
  loc_FEA2C1:         Call global_52.Show
  loc_FEA2C7:       End If
  loc_FEA2C7:     End If
  loc_FEA2C7:   End If
  loc_FEA2C7: End If
  loc_FEA2CC: global_52 = Nothing
  loc_FEA2D0: Exit Sub
End Sub

Private Sub SCRD_Click() 'DFD96C
  'Data Table: 5C8390
  loc_DFD968: Exit Sub
End Sub

Private Sub GENMas_Click(Index As Integer) '112AB44
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_112A7DB: var_B4 = CVar("GENMas" & "+") 'String
  loc_112A7F6: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_112A808: var_C6 = Index
  loc_112A811: If (var_C6 = 0) Then
  loc_112A81E:   global_52 = New FrmTaxMast
  loc_112A832:   Set var_CC = var_D0(Index)
  loc_112A838:   Call 0.Method_GENMas_Click0 (var_D4, var_C6)
  loc_112A840:   MemVar_1F95204 = FrmTaxMast.Menu.Caption
  loc_112A852:   global_52.CAPTION = CVar(var_D4)
  loc_112A868:   Call global_52.Show
  loc_112A871: Else
  loc_112A877:   If (var_C6 = 1) Then
  loc_112A884:     global_52 = New FrmTaxStruMast
  loc_112A898:     Set var_CC = var_D0(Index)
  loc_112A89E:     Call 0.Method_GENMas_Click0 (var_D4)
  loc_112A8A6:      = FrmTaxStruMast.Menu.Caption
  loc_112A8B8:     global_52.CAPTION = CVar(var_D4)
  loc_112A8CE:     Call global_52.Show
  loc_112A8D7:   Else
  loc_112A8DD:     If (var_C6 = 2) Then
  loc_112A8EA:       global_52 = New FrmPayTypeMast
  loc_112A8FE:       Set var_CC = Me.TopCtrl1
  loc_112A904:       Call 0.Method_GENMas_Click0 (Index, var_D0)
  loc_112A91E:       global_52.CAPTION = CVar(FrmPayTypeMast.TopCtrl1.Caption)
  loc_112A934:       Call global_52.Show
  loc_112A93D:     Else
  loc_112A943:       If (var_C6 = 4) Then
  loc_112A950:         global_52 = New frmEnviro
  loc_112A964:         Set var_CC = Me.DGDepart
  loc_112A96A:         Call 0.Method_GENMas_Click0 (Index, var_D0)
  loc_112A972:         var_D4 = frmEnviro.DGDepart.Caption
  loc_112A984:         global_52.CAPTION = CVar(var_D4)
  loc_112A99A:         Call global_52.Show
  loc_112A9A3:       Else
  loc_112A9A9:         If (var_C6 = 5) Then
  loc_112A9B6:           global_52 = New frmRevGroup
  loc_112A9CA:           Set var_CC = var_D0(Index)
  loc_112A9D0:           Call 0.Method_GENMas_Click0 (var_D4)
  loc_112A9D8:            = frmRevGroup.Menu.Caption
  loc_112A9EA:           global_52.CAPTION = CVar(var_D4)
  loc_112AA00:           Call global_52.Show
  loc_112AA09:         Else
  loc_112AA0F:           If (var_C6 = 6) Then
  loc_112AA1C:             global_52 = New frmPrintModule
  loc_112AA30:             Set var_CC = var_D0(Index)
  loc_112AA36:             Call 0.Method_GENMas_Click0 (var_D4)
  loc_112AA3E:              = frmPrintModule.Menu.Caption
  loc_112AA50:             global_52.CAPTION = CVar(var_D4)
  loc_112AA66:             Call global_52.Show
  loc_112AA6F:           Else
  loc_112AA75:             If (var_C6 = 7) Then
  loc_112AA82:               global_52 = New frmMod_Print
  loc_112AA96:               Set var_CC = var_D0(Index)
  loc_112AA9C:               Call 0.Method_GENMas_Click0 (var_D4)
  loc_112AAA4:                = frmMod_Print.Menu.Caption
  loc_112AAB6:               global_52.CAPTION = CVar(var_D4)
  loc_112AACC:               Call global_52.Show
  loc_112AAD5:             Else
  loc_112AADB:               If (var_C6 = 8) Then
  loc_112AAE8:                 global_52 = New FrmRevenueWiseBudget
  loc_112AAFC:                 Set var_CC = var_D0(Index)
  loc_112AB02:                 Call 0.Method_GENMas_Click0 (var_D4)
  loc_112AB0A:                  = FrmRevenueWiseBudget.Menu.Caption
  loc_112AB1C:                 global_52.CAPTION = CVar(var_D4)
  loc_112AB32:                 Call global_52.Show
  loc_112AB38:               End If
  loc_112AB38:             End If
  loc_112AB38:           End If
  loc_112AB38:         End If
  loc_112AB38:       End If
  loc_112AB38:     End If
  loc_112AB38:   End If
  loc_112AB38: End If
  loc_112AB3D: global_52 = Nothing
  loc_112AB41: Exit Sub
  loc_112AB42:  = 
End Sub

Private Sub HouseSet_Click(Index As Integer) 'ECD114
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_ECD07F: var_B4 = CVar("HouseSet" & "+") 'String
  loc_ECD09A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ECD0AC: var_C6 = Index
  loc_ECD0B5: If (var_C6 = 0) Then
  loc_ECD0C2:   global_52 = New frmBlockMast
  loc_ECD0D6:   Set var_CC = var_D0(Index)
  loc_ECD0DC:   Call 0.Method_HouseSet_Click0 (var_D4, var_C6)
  loc_ECD0E4:   MemVar_1F95204 = frmBlockMast.Menu.Caption
  loc_ECD0F6:   global_52.CAPTION = CVar(var_D4)
  loc_ECD10C:   Call global_52.Show
  loc_ECD112: End If
  loc_ECD112: Exit Sub
End Sub

Private Sub Reload_UnknownEvent_9 'EB8C04
  'Data Table: 5C8390
  Dim var_B4 As String
  Dim var_94 As String
  Dim var_108 As Variant
  loc_EB8B7A: var_B4 = "Re-Start Application"
  loc_EB8B8A: var_94 = "Are you sure to Re Start Application ?"
  loc_EB8BAB: If (MsgBox(var_94, &H24, var_B4, var_E4, var_104) = 6) Then
  loc_EB8BBB:   Me.Global.Unload Me
  loc_EB8BD1:   Call 0.Method_arg_2B0 (var_94)
  loc_EB8BE7:   Set var_108 = MemVar_1F956CC.txt
  loc_EB8BED:   Call 0.Method_Reload_UnknownEvent_90 (0, var_10C)
  loc_EB8BF5:   frmCompany.txt.Text = MemVar_1F950C8
  loc_EB8C01: End If
  loc_EB8C01: Exit Sub
End Sub

Private Sub mnuWindowTileVertical_Click() 'E09A10
  'Data Table: 5C8390
  loc_E09A09: Call 0.Method_arg_2EC (CInt(2))
  loc_E09A0E: Exit Sub
End Sub

Private Sub Purch_Click(Index As Integer) '1244054
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_1243B1F: var_B4 = CVar("Purch" & "+") 'String
  loc_1243B3A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1243B4B: On Error Goto loc_124401D
  loc_1243B53: var_C6 = Index
  loc_1243B5E: If (var_C6 = 1) Then
  loc_1243B6D:   global_52 = New RsGravyItemEntry
  loc_1243B83:   Set var_CC = var_D0(Index)
  loc_1243B89:   Call 0.Method_Purch_Click0 (var_D4, var_C6)
  loc_1243B91:   MemVar_1F95204 = RsGravyItemEntry.Menu.Caption
  loc_1243BA3:   global_52.CAPTION = CVar(var_D4)
  loc_1243BBB:   Call global_52.Show
  loc_1243BC4: Else
  loc_1243BCC:   If (var_C6 = 2) Then
  loc_1243BDB:     global_52 = New PIndent
  loc_1243BF1:     Set var_CC = var_D0(Index)
  loc_1243BF7:     Call 0.Method_Purch_Click0 (var_D4)
  loc_1243BFF:      = PIndent.Menu.Caption
  loc_1243C11:     global_52.CAPTION = CVar(var_D4)
  loc_1243C29:     Call global_52.Show
  loc_1243C32:   Else
  loc_1243C3A:     If (var_C6 = 3) Then
  loc_1243C49:       global_52 = New pPOrder
  loc_1243C5F:       Set var_CC = var_D0(Index)
  loc_1243C65:       Call 0.Method_Purch_Click0 (var_D4)
  loc_1243C6D:        = pPOrder.Menu.Caption
  loc_1243C7F:       global_52.CAPTION = CVar(var_D4)
  loc_1243C97:       Call global_52.Show
  loc_1243CA0:     Else
  loc_1243CA8:       If (var_C6 = 4) Then
  loc_1243CB7:         global_52 = New pMREntry
  loc_1243CCD:         Set var_CC = var_D0(Index)
  loc_1243CD3:         Call 0.Method_Purch_Click0 (var_D4)
  loc_1243CDB:          = pMREntry.Menu.Caption
  loc_1243CED:         global_52.CAPTION = CVar(var_D4)
  loc_1243D05:         Call global_52.Show
  loc_1243D0E:       Else
  loc_1243D16:         If (var_C6 = 5) Then
  loc_1243D25:           global_52 = New pPBill
  loc_1243D3B:           Set var_CC = var_D0(Index)
  loc_1243D41:           Call 0.Method_Purch_Click0 (var_D4)
  loc_1243D49:            = pPBill.Menu.Caption
  loc_1243D5B:           global_52.CAPTION = CVar(var_D4)
  loc_1243D73:           Call global_52.Show
  loc_1243D7C:         Else
  loc_1243D84:           If (var_C6 = 6) Then
  loc_1243D93:             global_52 = New pReqSlip
  loc_1243DA9:             Set var_CC = var_D0(Index)
  loc_1243DAF:             Call 0.Method_Purch_Click0 (var_D4)
  loc_1243DB7:              = pReqSlip.Menu.Caption
  loc_1243DC9:             global_52.CAPTION = CVar(var_D4)
  loc_1243DE1:             Call global_52.Show
  loc_1243DEA:           Else
  loc_1243DF2:             If (var_C6 = 7) Then
  loc_1243E01:               global_52 = New pGIss
  loc_1243E17:               Set var_CC = var_D0(Index)
  loc_1243E1D:               Call 0.Method_Purch_Click0 (var_D4)
  loc_1243E25:                = pGIss.Menu.Caption
  loc_1243E37:               global_52.CAPTION = CVar(var_D4)
  loc_1243E4F:               Call global_52.Show
  loc_1243E58:             Else
  loc_1243E60:               If (var_C6 = 8) Then
  loc_1243E6F:                 global_52 = New kClStk
  loc_1243E85:                 Set var_CC = var_D0(Index)
  loc_1243E8B:                 Call 0.Method_Purch_Click0 (var_D4)
  loc_1243E93:                  = kClStk.Menu.Caption
  loc_1243EA5:                 global_52.CAPTION = CVar(var_D4)
  loc_1243EBD:                 Call global_52.Show
  loc_1243EC6:               Else
  loc_1243ECE:                 If (var_C6 = 9) Then
  loc_1243EDD:                   global_52 = New RsKitchenStk
  loc_1243EF3:                   Set var_CC = var_D0(Index)
  loc_1243EF9:                   Call 0.Method_Purch_Click0 (var_D4)
  loc_1243F01:                    = RsKitchenStk.Menu.Caption
  loc_1243F13:                   global_52.CAPTION = CVar(var_D4)
  loc_1243F2B:                   Call global_52.Show
  loc_1243F34:                 Else
  loc_1243F3C:                   If (var_C6 = &HA) Then
  loc_1243F4B:                     global_52 = New RsStoreRecEntry
  loc_1243F61:                     Set var_CC = var_D0(Index)
  loc_1243F67:                     Call 0.Method_Purch_Click0 (var_D4)
  loc_1243F6F:                      = RsStoreRecEntry.Menu.Caption
  loc_1243F81:                     global_52.CAPTION = CVar(var_D4)
  loc_1243F99:                     Call global_52.Show
  loc_1243FA2:                   Else
  loc_1243FAA:                     If (var_C6 = &HB) Then
  loc_1243FB9:                       global_52 = New RsKitchenMaterial
  loc_1243FCF:                       Set var_CC = var_D0(Index)
  loc_1243FD5:                       Call 0.Method_Purch_Click0 (var_D4)
  loc_1243FDD:                        = RsKitchenMaterial.Menu.Caption
  loc_1243FEF:                       global_52.CAPTION = CVar(var_D4)
  loc_1244007:                       Call global_52.Show
  loc_124400D:                     End If
  loc_124400D:                   End If
  loc_124400D:                 End If
  loc_124400D:               End If
  loc_124400D:             End If
  loc_124400D:           End If
  loc_124400D:         End If
  loc_124400D:       End If
  loc_124400D:     End If
  loc_124400D:   End If
  loc_124400D: End If
  loc_1244016: global_52 = Nothing
  loc_124401C: Exit Sub
  loc_124401D: ' Referenced from: 1243B4B
  loc_1244027: Set var_CC = Err()
  loc_124402D: Call 0.Method_arg_1C (var_E8)
  loc_124403E: If (var_E8 = &H16C) Then
  loc_1244043:   Resume Next
  loc_1244047: End If
  loc_1244049: Proc_6_60_E63754()
  loc_1244050: Exit Sub
End Sub

Private Sub smnuMdI_Click() '1A91C28
  'Data Table: 5C8390
  Dim var_1A4 As String
  Dim var_1A0 As String
  Dim var_A4 As Variant
  Dim MemVar_1F9E69C As Global
  Dim var_156 As Integer
  Dim var_15E As Integer
  Dim var_160 As Integer
  Dim unk_5C83CC As Connection15
  Dim var_146 As Integer
  Dim var_B4 As Variant
  Dim var_18E As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_272 As Integer
  Dim var_172 As Integer
  Dim var_196 As Integer
  Dim var_162 As Integer
  Dim var_278 As String
  Dim var_27C As String
  Dim var_2A8 As String
  Dim var_2B4 As String
  Dim var_104 As Variant
  Dim var_220 As Variant
  Dim var_2C8 As Variant
  Dim var_328 As Variant
  Dim var_174 As Integer
  Dim var_16E As Integer
  Dim var_170 As Integer
  Dim var_318 As Variant
  Dim var_368 As Variant
  Dim var_38C As Variant
  Dim var_124 As Recordset15
  Dim var_19C As Variant
  Dim var_1AC As Variant
  Dim var_390 As Variant
  Dim var_128 As Recordset15
  Dim var_3A0 As Double
  Dim var_120 As Recordset15
  Dim var_398 As Fields15
  Dim var_130 As Recordset15
  Dim var_134 As Recordset15
  Dim var_6A8 As Double
  Dim var_3AC As Fields15
  Dim var_6B0 As Double
  Dim var_6B8 As Double
  Dim var_3D0 As Variant
  Dim var_6C0 As Double
  Dim var_6C8 As Double
  Dim var_460 As Fields15
  Dim var_4C8 As Fields15
  Dim var_578 As Fields15
  Dim var_5D0 As Fields15
  Dim var_51C As Variant
  Dim var_624 As Variant
  Dim var_494 As Variant
  Dim var_4EC As Variant
  loc_1A8E0E3: If (MsgBox("Are you sure to update Menu Setting?", &H14, var_C4, var_E4, var_104) = 6) Then
  loc_1A8E0E6:   GoTo loc_1A8E0EA
  loc_1A8E0E9: End If
  loc_1A8E0E9: Exit Sub
  loc_1A8E0EA: ' Referenced from: 1A8E0E6
  loc_1A8E0F9: var_19C = Me.Global.App
  loc_1A8E116: Call 0.Method_smnuMdI_Click4 (App.Path & "\MDIForm1.frm")
  loc_1A8E12B: If (var_1A6 = 0) Then
  loc_1A8E14A:   var_A4 = CVar("MDI Form Missing." & vbCrLf & "Please paste MDI Form at Exe's location.") 'String
  loc_1A8E14D:   MsgBox(var_A4, &H10, var_C4, var_E4, var_104)
  loc_1A8E160:   End
  loc_1A8E162: End If
  loc_1A8E17D: var_19C = MemVar_1F9E69C.App
  loc_1A8E19A: Call 0.Method_arg_7C (App.Path & "\MDIForm1.frm", 1, 0)
  loc_1A8E1A5: Set var_13C = var_1AC
  loc_1A8E1B8: var_156 = &HA
  loc_1A8E1BF: var_15C = CStr(0)
  loc_1A8E1C4: var_15E = 0
  loc_1A8E1D5: Me.Connection15.BeginTrans var_1B0
  loc_1A8E1FE: unk_5C83CC.Execute "DELETE FROM menuHelp WHERE UserName='SA' and CompCode='" & MemVar_1F95128 & "'", var_A4, -1
  loc_1A8E224: var_1A0 = "DELETE FROM menuHelp1 WHERE UserName='SA' and CompCode='" & MemVar_1F95128
  loc_1A8E234: unk_5C83CC.Execute var_1A0 & "'", var_A4, -1
  loc_1A8E25C: unk_5C83CC.Execute "DELETE FROM User_Module WHERE 1<>2", var_A4, -1
  loc_1A8E27D: unk_5C83CC.Execute "DELETE FROM User1 WHERE 1<>2", var_A4, -1
  loc_1A8E28E: unk_5C83CC.CommitTrans
  loc_1A8E299: Call 0.Method_arg_30 (var_1A0, var_19C, var_19C, var_19C, var_19C, 0)
  loc_1A8E2A1: var_144 = var_1A0
  loc_1A8E2A4: ' Referenced from: 1A8F32D
  loc_1A8E2AA: Call 0.Method_arg_24 (var_1A6, var_15E, var_156)
  loc_1A8E2B3: If Not(var_1A6) Then
  loc_1A8E2B8:   var_146 = &HFF
  loc_1A8E2CB:   var_A4 = Left(var_144, &H10)
  loc_1A8E2F2:   If (Right(var_A4, &HD) = "Begin VB.Menu") Then
  loc_1A8E2F8:     var_150 = "N"
  loc_1A8E2FD:     var_146 = 0
  loc_1A8E306:     var_156 = (var_156 + 1)
  loc_1A8E30D:     var_15C = CStr(0)
  loc_1A8E312:     var_15E = 0
  loc_1A8E317:     var_160 = 0
  loc_1A8E340:     var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8E354:     var_188 = CStr(RTrim(Right(var_A4, &HD)))
  loc_1A8E362:     var_18E = 9
  loc_1A8E38B:     var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8E39F:     var_18C = CStr(RTrim(Right(var_A4, &HD)))
  loc_1A8E3AE:   Else
  loc_1A8E3E5:     If (Right(Left(var_144, &H13), &HD) = "Begin VB.Menu") Then
  loc_1A8E3F8:       var_A4 = Ucase(var_144)
  loc_1A8E47C:       var_270 = (InStr(1, var_A4, "REPORT", 0) > 0) Or (InStr(1, Ucase(var_144), "RPT", 0) > 0) Or (InStr(1, Ucase(var_144), "REP", 0) > 0)
  loc_1A8E491:       If CBool(var_270) Then
  loc_1A8E497:         var_150 = "R"
  loc_1A8E49D:       Else
  loc_1A8E4A0:         var_150 = "E"
  loc_1A8E4A3:       End If
  loc_1A8E4AC:       If (CDbl(var_15C) = CDbl(0)) Then
  loc_1A8E4B3:         var_15C = CStr(&HB)
  loc_1A8E4B9:       Else
  loc_1A8E4C4:         var_15C = CStr((CDbl(var_15C) + CDbl(1)))
  loc_1A8E4C9:         var_15E = 0
  loc_1A8E4CE:         var_160 = 0
  loc_1A8E4D1:       End If
  loc_1A8E4D3:       var_146 = 1
  loc_1A8E4FC:       var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8E510:       var_18C = CStr(RTrim(InStr(1, var_A4, "REPORT", 0)))
  loc_1A8E51F:     Else
  loc_1A8E556:       If (Right(Left(var_144, &H16), &HD) = "Begin VB.Menu") Then
  loc_1A8E569:         var_A4 = Ucase(var_144)
  loc_1A8E5ED:         var_270 = (InStr(1, var_A4, "REPORT", 0) > 0) Or (InStr(1, Ucase(var_144), "RPT", 0) > 0) Or (InStr(1, Ucase(var_144), "REP", 0) > 0)
  loc_1A8E602:         If CBool(var_270) Then
  loc_1A8E608:           var_150 = "R"
  loc_1A8E60E:         Else
  loc_1A8E611:           var_150 = "E"
  loc_1A8E614:         End If
  loc_1A8E61A:         If (var_15E = 0) Then
  loc_1A8E61F:           var_15E = &HB
  loc_1A8E625:         Else
  loc_1A8E62B:           var_15E = (var_15E + 1)
  loc_1A8E630:           var_160 = 0
  loc_1A8E633:         End If
  loc_1A8E635:         var_146 = 2
  loc_1A8E65E:         var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8E672:         var_18C = CStr(RTrim(InStr(1, var_A4, "REPORT", 0)))
  loc_1A8E681:       Else
  loc_1A8E6B8:         If (Right(Left(var_144, &H19), &HD) = "Begin VB.Menu") Then
  loc_1A8E6CB:           var_A4 = Ucase(var_144)
  loc_1A8E74F:           var_270 = (InStr(1, var_A4, "REPORT", 0) > 0) Or (InStr(1, Ucase(var_144), "RPT", 0) > 0) Or (InStr(1, Ucase(var_144), "REP", 0) > 0)
  loc_1A8E764:           If CBool(var_270) Then
  loc_1A8E76A:             var_150 = "R"
  loc_1A8E770:           Else
  loc_1A8E773:             var_150 = "E"
  loc_1A8E776:           End If
  loc_1A8E77C:           If (var_160 = 0) Then
  loc_1A8E781:             var_160 = &HB
  loc_1A8E787:           Else
  loc_1A8E78D:             var_160 = (var_160 + 1)
  loc_1A8E790:           End If
  loc_1A8E796:           If (var_15E = 0) Then
  loc_1A8E79B:             var_160 = 0
  loc_1A8E79E:           End If
  loc_1A8E7A0:           var_146 = 3
  loc_1A8E7C9:           var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8E7D4:           var_E4 = RTrim(InStr(1, var_A4, "REPORT", 0))
  loc_1A8E7DD:           var_18C = CStr(var_E4)
  loc_1A8E7E9:         End If
  loc_1A8E7E9:       End If
  loc_1A8E7E9:     End If
  loc_1A8E7E9:   End If
  loc_1A8E7E9:   DoEvents()
  loc_1A8E80F:   If ((var_144 = "End Sub") Or (InStr(1, var_144, "Private Sub ", 0) > 0)) Then
  loc_1A8E812:     GoTo loc_1A8F330
  loc_1A8E815:   End If
  loc_1A8E843:   If CBool((InStr(1, var_144, "Begin VB.Menu Hallop", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep", 0) > 0)))) Then
  loc_1A8E849:     var_154 = "BANQ"
  loc_1A8E84C:   End If
  loc_1A8E864:   If (InStr(1, var_144, "Begin VB.Menu HallTax", 0) > 0) Then
  loc_1A8E86A:     var_154 = "BANQ"
  loc_1A8E86D:   End If
  loc_1A8E885:   If (InStr(1, var_144, "Begin VB.Menu BanqRepMIS", 0) > 0) Then
  loc_1A8E88B:     var_154 = "BANQ"
  loc_1A8E88E:   End If
  loc_1A8E8A6:   If (InStr(1, var_144, "Begin VB.Menu HallM", 0) > 0) Then
  loc_1A8E8AC:     var_154 = "BANQ"
  loc_1A8E8AF:   End If
  loc_1A8E8DD:   If CBool((InStr(1, var_144, "Begin VB.Menu OdcEnt1", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep1", 0) > 0)))) Then
  loc_1A8E8E3:     var_154 = "ODC"
  loc_1A8E8E6:   End If
  loc_1A8E8FE:   If (InStr(1, var_144, "Begin VB.Menu OdcOP", 0) > 0) Then
  loc_1A8E904:     var_154 = "ODC"
  loc_1A8E907:   End If
  loc_1A8E91F:   If (InStr(1, var_144, "Begin VB.Menu OdcRep", 0) > 0) Then
  loc_1A8E925:     var_154 = "ODC"
  loc_1A8E928:   End If
  loc_1A8E940:   If (InStr(1, var_144, "Begin VB.Menu OdcTax", 0) > 0) Then
  loc_1A8E946:     var_154 = "ODC"
  loc_1A8E949:   End If
  loc_1A8E961:   If (InStr(1, var_144, "Begin VB.Menu OdcMis", 0) > 0) Then
  loc_1A8E967:     var_154 = "ODC"
  loc_1A8E96A:   End If
  loc_1A8E982:   If (InStr(1, var_144, "Begin VB.Menu", 0) > 0) Then
  loc_1A8E98B:     Call 0.Method_arg_30 (var_1A0, var_146, var_160, var_160, var_160, var_146)
  loc_1A8E993:     var_144 = var_1A0
  loc_1A8E996:   End If
  loc_1A8E999:   var_272 = var_146
  loc_1A8E9A2:   If (var_272 = 0) Then
  loc_1A8E9E1:     var_1F0 = (Len(Mid(var_144, &H1C, var_E4)) - 1)
  loc_1A8E9F6:     var_14C = CStr(Left(Mid(var_144, &H1C, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0))))
  loc_1A8EA08:     var_172 = &HFF
  loc_1A8EA3C:     If ((InStr(1, var_14C, "&", 0) > 0) And (InStr(1, var_14C, " & ", 0) <= 0)) Then
  loc_1A8EA5C:       var_194 = Replace(var_14C, "&", vbNullString, 1, -1, 0)
  loc_1A8EA62:     Else
  loc_1A8EA65:       var_194 = var_14C
  loc_1A8EA68:     End If
  loc_1A8EA8E:     var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8EA99:     var_E4 = RTrim(Mid(var_144, &H1C, var_A4))
  loc_1A8EAA2:     var_188 = CStr(var_E4)
  loc_1A8EAB1:   Else
  loc_1A8EAB7:     If (var_272 = 1) Then
  loc_1A8EAF6:       var_1F0 = (Len(Mid(var_144, &H1F, var_E4)) - 1)
  loc_1A8EB0B:       var_14C = CStr(Left(Mid(var_144, &H1F, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0))))
  loc_1A8EB1D:       var_172 = &HFF
  loc_1A8EB51:       If ((InStr(1, var_14C, "&", 0) > 0) And (InStr(1, var_14C, " & ", 0) <= 0)) Then
  loc_1A8EB71:         var_184 = Replace(var_14C, "&", vbNullString, 1, -1, 0)
  loc_1A8EB77:       Else
  loc_1A8EB7A:         var_184 = var_14C
  loc_1A8EB7D:       End If
  loc_1A8EB80:     Else
  loc_1A8EB86:       If (var_272 = 2) Then
  loc_1A8EBC5:         var_1F0 = (Len(Mid(var_144, &H22, var_E4)) - 1)
  loc_1A8EBDA:         var_14C = CStr(Left(Mid(var_144, &H22, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0))))
  loc_1A8EBEC:         var_172 = &HFF
  loc_1A8EBF2:       Else
  loc_1A8EBF8:         If (var_272 = 3) Then
  loc_1A8EC37:           var_1F0 = (Len(Mid(var_144, &H25, var_E4)) - 1)
  loc_1A8EC43:           var_200 = Left(Mid(var_144, &H25, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0)))
  loc_1A8EC4C:           var_14C = CStr(var_200)
  loc_1A8EC5E:           var_172 = &HFF
  loc_1A8EC64:         Else
  loc_1A8EC67:           var_14C = vbNullString
  loc_1A8EC6A:         End If
  loc_1A8EC6A:       End If
  loc_1A8EC6A:     End If
  loc_1A8EC6A:   End If
  loc_1A8EC70:   Call 0.Method_arg_30 (var_1A0, var_172, var_172, var_172, var_172, var_272)
  loc_1A8EC78:   var_144 = var_1A0
  loc_1A8ECA9:   If CBool((InStr(1, var_144, "Begin VB.Menu HallEnt", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep", 0) > 0)))) Then
  loc_1A8ECAF:     var_154 = "BANQ"
  loc_1A8ECB2:   End If
  loc_1A8ECE0:   If CBool((InStr(1, var_144, "Begin VB.Menu HallEnt1", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep1", 0) > 0)))) Then
  loc_1A8ECE6:     var_154 = "ODC"
  loc_1A8ECE9:   End If
  loc_1A8ED01:   If (InStr(1, var_144, "Begin VB.Menu BanqRepMIS", 0) > 0) Then
  loc_1A8ED07:     var_154 = "BANQ"
  loc_1A8ED0A:   End If
  loc_1A8ED22:   If (InStr(1, var_144, "Begin VB.Menu BanqRepMIS1", 0) > 0) Then
  loc_1A8ED28:     var_154 = "ODC"
  loc_1A8ED2B:   End If
  loc_1A8ED43:   If (InStr(1, var_144, "Begin VB.Menu HallM", 0) > 0) Then
  loc_1A8ED49:     var_154 = "BANQ"
  loc_1A8ED4C:   End If
  loc_1A8ED64:   If (InStr(1, var_144, "End", 0) <= 0) Then
  loc_1A8ED69:     var_172 = 0
  loc_1A8ED6C:   End If
  loc_1A8ED74:   If (var_14C <> vbNullString) Then
  loc_1A8ED8F:     If (InStr(1, var_144, "Begin VB.Menu ", 0) > 0) Then
  loc_1A8ED94:       var_172 = &HFF
  loc_1A8ED9A:       var_150 = "N"
  loc_1A8EDA0:     Else
  loc_1A8EDB8:       If (InStr(1, var_144, "Index           =   ", 0) > 0) Then
  loc_1A8EDE1:         var_C4 = Mid(var_144, (InStr(1, var_144, "Index           =   ", 0) + &H14), var_A4)
  loc_1A8EDEB:         var_196 = CInt(Mid(var_144, &H25, var_A4))
  loc_1A8EDFD:         Call 0.Method_arg_30 (var_1A0, var_196, var_172, var_172, var_160)
  loc_1A8EE05:         var_144 = var_1A0
  loc_1A8EE20:         If (InStr(1, var_144, "End", 0) <= 0) Then
  loc_1A8EE26:           var_150 = "N"
  loc_1A8EE2B:           var_172 = 0
  loc_1A8EE2E:         End If
  loc_1A8EE46:         If (InStr(1, var_144, "Visible         =   0   'False", 0) > 0) Then
  loc_1A8EE4C:           var_150 = "V"
  loc_1A8EE4F:         End If
  loc_1A8EE52:       Else
  loc_1A8EE6A:         If (InStr(1, var_144, "Visible         =   0   'False", 0) > 0) Then
  loc_1A8EE70:           var_150 = "V"
  loc_1A8EE73:         End If
  loc_1A8EE73:       End If
  loc_1A8EE73:     End If
  loc_1A8EE73:   End If
  loc_1A8EE79:   If (var_146 >= 0) Then
  loc_1A8EE85:     unk_5C83CC.BeginTrans var_1B0
  loc_1A8EE90:     var_162 = (var_162 + 1)
  loc_1A8EEEA:     If (((((var_16C = CStr(var_15E)) And (var_15E = 0)) Or ((((CDbl(var_15E) = CDbl("0")) And (var_160 = 0)) And (CDbl(var_15C) <> CDbl(0))) And (var_16C = var_15C))) Or ((CDbl(var_16E) <> CDbl("0")) And (var_15E = 0))) And (var_150 <> "V")) Then
  loc_1A8EEF0:       var_150 = "N"
  loc_1A8EEF3:     End If
  loc_1A8EF24:     If ((InStr(1, var_14C, "&", 0) > 0) And (InStr(1, var_14C, " & ", 0) <= 0)) Then
  loc_1A8EF44:       var_14C = Replace(var_14C, "&", vbNullString, 1, -1, 0)
  loc_1A8EF4A:       var_180 = var_14C
  loc_1A8EF50:     Else
  loc_1A8EF53:       var_180 = var_14C
  loc_1A8EF56:     End If
  loc_1A8EF69:     var_B4 = "-"
  loc_1A8EF74:     If (Trim(var_180) = "REPORT") Then
  loc_1A8EF79:       var_18E = 9
  loc_1A8EF7C:     End If
  loc_1A8EF87:     var_A4 = Trim(var_180)
  loc_1A8EF9A:     If (var_A4 = vbNullString) Then
  loc_1A8EFA0:       var_180 = "...."
  loc_1A8EFA3:     End If
  loc_1A8EFBC:     var_1A4 = "INSERT INTO menuHelp1 (UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Flag) VALUES('SA'," & CStr(var_156)
  loc_1A8F024:     var_2B4 = var_1A4 & "," & var_15C & "," & CStr(var_15E) & "," & CStr(var_160) & "," & CStr(var_162) & ",'" & var_18C & "'," & CStr(var_196)
  loc_1A8F039:     Proc_6_17_EAAE40(var_A4, var_14C, CVar(var_2B4 & ","), var_200, -1, var_19C, var_18E)
  loc_1A8F06B:     unk_5C83CC.Execute CStr(var_162 & var_A4 & ",'" & CVar(var_150) & "')"), var_172, var_15E
  loc_1A8F0C6:     var_1A4 = "INSERT INTO menuHelp (UserName,CompCode,Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Flag,OutletCode,Module_Name) VALUES('SA',''," & CStr(var_156)
  loc_1A8F127:     var_C4 = CVar(var_1A4 & "," & var_15C & "," & CStr(var_15E) & "," & CStr(var_160) & "," & CStr(var_162) & "," & CStr(var_196) & ",") 'String
  loc_1A8F135:     Proc_6_17_EAAE40(var_A4, var_14C, var_C4, var_2C8, -1)
  loc_1A8F146:     var_104 = var_19C & var_A4 & ",'" 
  loc_1A8F197:     unk_5C83CC.Execute CStr(var_146 & CVar(Proc_6_38_E69628(var_154, var_104 & CVar(var_150) & "','", var_15E)) & "','" & CVar(var_18C) & "')"), var_160, var_15E
  loc_1A8F1F7:     var_F4 = var_180
  loc_1A8F1FF:     Proc_6_17_EAAE40(var_104)
  loc_1A8F266:     var_200 = "INSERT INTO User_Module (Code,Name,Flag,SrNo,Module_Name,ID) VALUES('" & Left(var_18C, &HF) & "'," & var_104 & "," & CVar(var_18E) 
  loc_1A8F2B0:     unk_5C83CC.Execute CStr(var_200 & "," & CVar(var_162) & ",'" & Left(var_184, &H19) & "','" & Left(var_18C, 8) & "')"), var_368, -1
  loc_1A8F2E2:     var_174 = &HFF
  loc_1A8F2E8:     var_16C = var_15C
  loc_1A8F2EE:     var_16E = var_15E
  loc_1A8F2F4:     var_170 = var_160
  loc_1A8F2FA:     var_154 = vbNullString
  loc_1A8F305:     If (var_150 = "E") Then
  loc_1A8F30A:       var_18E = 0
  loc_1A8F310:     Else
  loc_1A8F312:       var_18E = 1
  loc_1A8F315:     End If
  loc_1A8F31B:     unk_5C83CC.CommitTrans
  loc_1A8F322:     var_196 = &HFF
  loc_1A8F328:   Else
  loc_1A8F32A:     var_174 = 0
  loc_1A8F32D:   End If
  loc_1A8F32D:   GoTo loc_1A8E2A4
  loc_1A8F330:   ' Referenced from: 1A8E812
  loc_1A8F330: End If
  loc_1A8F339: unk_5C83CC.BeginTrans var_1B0
  loc_1A8F347: For Each var_108 In MemVar_1F95248
  loc_1A8F354:   If TypeOf var_108 Is arg_E Then
  loc_1A8F383:     var_104 = (InStr(1, Ucase(var_108.Name), "REPORT", 0) > 0)
  loc_1A8F3C3:     var_260 = var_108.Name
  loc_1A8F3CB:     var_270 = Ucase(var_260)
  loc_1A8F41F:     var_38C = var_104 Or (InStr(1, Ucase(var_108.Name), "REP", 0) > 0) Or (InStr(1, var_270, "RPT", 0) > 0) Or (InStr(1, Ucase(var_108.Name), "RPT", 0) > 0)
  loc_1A8F440:     If CBool(var_38C) Then
  loc_1A8F474:       var_108.Connection15.Execute CStr("UPDATE menuHelp SET Flag='R' WHERE [Option]='" & var_108.CAPTION & "' AND Flag NOT IN ('N','V')"), var_104, -1
  loc_1A8F4BB:       var_108.Connection15.Execute CStr("UPDATE menuHelp1 SET Flag='R' WHERE MenuCaption='" & var_108.CAPTION & "' AND Flag NOT IN ('N','V')"), var_104, -1
  loc_1A8F4E6:       var_A4 = var_108.CAPTION
  loc_1A8F4EB:       var_C4 = "UPDATE User_Module SET Flag=1 WHERE Name='" & var_A4 
  loc_1A8F502:       var_108.Connection15.Execute CStr(var_C4 & "' AND Flag <>9"), var_104, -1
  loc_1A8F518:     End If
  loc_1A8F518:   End If
  loc_1A8F51B: Next
  loc_1A8F527: unk_5C83CC.CommitTrans
  loc_1A8F550: unk_5C83CC.Execute "SELECT Code,Name FROM Depart WHERE LogSite_Code='" & MemVar_1F95078 & "' and Resttype IN ('Outlet','Room Service') ", var_A4, -1
  loc_1A8F55B: Set var_124 = var_19C
  loc_1A8F571: var_1B0 = var_124.RecordCount
  loc_1A8F57F: If (var_1B0 > 0) Then
  loc_1A8F58B:   unk_5C83CC.BeginTrans var_1B0
  loc_1A8F592:   var_15E = 0
  loc_1A8F5A0:   var_15C = CStr((CDbl(var_16C) + CDbl(7)))
  loc_1A8F5A9:   var_B4 = 0
  loc_1A8F5C8:   unk_5C83CC.Execute "SELECT Max(Opt1) FROM menuHelp WHERE [Option]='POS Operations'", var_A4, -1
  loc_1A8F5D0:   var_19C = var_19C.Fields
  loc_1A8F5D8:   var_B4 = var_1AC.Item(var_1AC)
  loc_1A8F5E0:   var_390 = var_390.Value
  loc_1A8F5E9:   var_168 = CStr(var_C4)
  loc_1A8F602:   var_B4 = 0
  loc_1A8F621:   unk_5C83CC.Execute "SELECT max(Opt2) FROM menuHelp WHERE [Option]='POS Operations'", var_A4, -1
  loc_1A8F629:   var_19C = var_19C.Fields
  loc_1A8F631:   var_B4 = var_1AC.Item(var_1AC)
  loc_1A8F639:   var_390 = var_390.Value
  loc_1A8F642:   var_16C = CStr(var_C4)
  loc_1A8F680:   unk_5C83CC.Execute "UPDATE menuHelp set Flag='D' WHERE Opt1=" & var_168 & " AND Opt2=" & var_16C, var_A4, -1
  loc_1A8F694:   ' Referenced from: 1A8FA80
  loc_1A8F6A3:   If Not(var_124.EOF) Then
  loc_1A8F6CF:     var_27C = "SELECT Opt1,Opt2,[Option],Flag FROM menuHelp WHERE Opt1=" & var_168 & " AND Opt2=" & var_16C & " AND Opt3<>0 AND Opt4=0 AND Flag<>'N'"
  loc_1A8F6D8:     unk_5C83CC.Execute var_27C, var_A4, -1
  loc_1A8F6E3:     Set var_128 = var_19C
  loc_1A8F70B:     If (var_128.RecordCount > 0) Then
  loc_1A8F740:       var_C4 = InStr(1, CVar(var_124.Fields.Item("Name")), "'", 0)
  loc_1A8F756:       If (var_C4 > 0) Then
  loc_1A8F7A1:         var_178 = Replace(CStr(var_124.Fields.Item("Name").Value), "'", vbNullString, 1, -1, 0)
  loc_1A8F7B4:       Else
  loc_1A8F7C6:         var_19C = var_124.Fields
  loc_1A8F7DF:         var_178 = CStr(var_19C.Item("Name").Value)
  loc_1A8F7EC:       End If
  loc_1A8F7F2:       var_162 = (var_162 + 1)
  loc_1A8F817:       var_278 = "INSERT INTO menuHelp (Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Flag,OutletCode) VALUES(" & var_168 & "," & var_15C
  loc_1A8F831:       var_E4 = CVar(var_278 & ",0,0," & CStr(var_162) & ",-1,") 'String
  loc_1A8F841:       var_A4 = CVar(Proc_6_38_E69628(var_178, var_C4 & "' AND Flag <>9", var_260, -1, var_390, var_162)) 'String
  loc_1A8F847:       Proc_6_17_EAAE40(var_C4, var_19C.Item("Name").Value, var_19C, var_19C)
  loc_1A8F8A1:       unk_5C83CC.Execute CStr(var_C4 & var_C4 & ",'N','" & Trim(CVar(var_124.Fields.Item("Code"))) & "')"), var_C4, var_15E
  loc_1A8F8D7:       var_15E = &HB
  loc_1A8F8DA:       ' Referenced from: 1A8FA67
  loc_1A8F8E9:       If Not(var_128.EOF) Then
  loc_1A8F8F2:         var_162 = (var_162 + 1)
  loc_1A8F8FB:         var_1B0 = var_128.AbsolutePosition
  loc_1A8F90D:         var_3A0 = Val(CStr(var_1B0))
  loc_1A8F91F:         var_19C = var_128.Fields
  loc_1A8F92F:         var_A4 = CVar(var_19C.Item("Option")) 'Address
  loc_1A8F936:         Proc_6_17_EAAE40(var_C4, var_A4, var_3A0)
  loc_1A8F961:         var_200 = Trim(CVar(var_124.Fields.Item("Code")))
  loc_1A8F988:         var_278 = "INSERT INTO menuHelp (Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Flag,OutletCode) VALUES(" & var_168 & "," & var_15C
  loc_1A8F9D4:         var_2A8 = CStr((var_3A0 - CDbl(1)))
  loc_1A8F9E5:         var_104 = CVar(var_278 & "," & CStr(var_15E) & "," & CStr(var_160) & "," & CStr(var_162) & "," & CStr(var_196) & ",") & var_C4 
  loc_1A8FA0C:         unk_5C83CC.Execute CStr(var_104 & ",'E','" & var_200 & "')"), var_260, -1
  loc_1A8FA59:         var_128.MoveNext
  loc_1A8FA64:         var_15E = (var_15E + 1)
  loc_1A8FA67:         GoTo loc_1A8F8DA
  loc_1A8FA6A:       End If
  loc_1A8FA6A:     End If
  loc_1A8FA6D:     var_124.MoveNext
  loc_1A8FA7D:     var_15C = CStr((CDbl(var_15C) + CDbl(1)))
  loc_1A8FA80:     GoTo loc_1A8F694
  loc_1A8FA83:   End If
  loc_1A8FA99:   unk_5C83CC.Execute "DELETE FROM menuHelp WHERE flag='D'", var_A4, -1
  loc_1A8FAAA:   unk_5C83CC.CommitTrans
  loc_1A8FAAF: End If
  loc_1A8FAB8: unk_5C83CC.BeginTrans var_1B0
  loc_1A8FAD3: unk_5C83CC.Execute "SELECT Opt1,opt2,opt3,opt4,[option],flag FROM menuHelp WHERE [Option]='-' and  Flag='E'", var_A4, -1
  loc_1A8FADE: Set var_120 = var_19C
  loc_1A8FAED: var_1B0 = var_120.RecordCount
  loc_1A8FAFB: If (var_1B0 > 0) Then
  loc_1A8FAFE:   ' Referenced from: 1A8FD39
  loc_1A8FB0D:   If Not(var_120.EOF) Then
  loc_1A8FB8E:     var_398 = var_120.Fields
  loc_1A8FBCE:     If CBool((var_120.Fields.Item("Opt2").Value > 0) And (var_120.Fields.Item("Opt3").Value = 0) And (var_398.Item("Opt4").Value = 0)) Then
  loc_1A8FC44:       var_1D0 = "UPDATE menuHelp SET Flag='R' WHERE Opt1=" & var_120.Fields.Item("Opt1").Value & " AND Opt2>" & var_120.Fields.Item("Opt2").Value 
  loc_1A8FC5B:       unk_5C83CC.Execute CStr(var_1D0 & " AND Opt3=0 AND Opt4=0 AND Flag NOT IN ('N','V')"), var_200, -1
  loc_1A8FCA5:       var_19C = var_120.Fields
  loc_1A8FCB5:       var_A4 = var_19C.Item("Opt1").Value
  loc_1A8FCFD:       var_1F0 = "UPDATE menuHelp1 SET Flag='R' WHERE Opt1=" & var_A4 & " AND Opt2>" & var_120.Fields.Item("Opt2").Value & " AND Opt3=0 AND Opt4=0 AND Flag NOT IN ('N','V')" 
  loc_1A8FD0B:       unk_5C83CC.Execute CStr(var_1F0), var_200, -1
  loc_1A8FD31:     End If
  loc_1A8FD34:     var_120.MoveNext
  loc_1A8FD39:     GoTo loc_1A8FAFE
  loc_1A8FD3C:   End If
  loc_1A8FD3C: End If
  loc_1A8FD42: unk_5C83CC.CommitTrans
  loc_1A8FD50: unk_5C83CC.BeginTrans var_1B0
  loc_1A8FD6B: unk_5C83CC.Execute "UPDATE menuHelp SET Flag='E' WHERE UserName='SA' AND [Option] IN ('Gravy Item Entry','Room Inventory ','Room Inventory','Leave','Telephone Call Entry','InBox') AND Module_Name IN ('Purch','NightAuditMenu','Pay','mnuTelMast','mnuMSG')", var_A4, -1
  loc_1A8FD8C: unk_5C83CC.Execute "UPDATE menuHelp SET Flag='V' WHERE UserName='SA' AND [Option] IN ('Restaurant Change ','Restaurant Change') AND Module_Name IN ('Rest')", var_A4, -1
  loc_1A8FDA0: For Each var_108 In MemVar_1F95248
  loc_1A8FDAD:   If TypeOf var_108 Is arg_E Then
  loc_1A8FDDD:     var_104 = var_108.CAPTION
  loc_1A8FDEC:     var_1D0 = InStr(1, var_104, " & ", 0)
  loc_1A8FDF6:     var_1F0 = (var_1D0 <= 0)
  loc_1A8FE0B:     If CBool((InStr(1, var_108.CAPTION, "&", 0) > 0) And var_1F0) Then
  loc_1A8FE39:       var_14C = Replace(CStr(var_108.CAPTION), "&", vbNullString, 1, -1, 0)
  loc_1A8FE45:     Else
  loc_1A8FE4E:       var_14C = CStr(var_108.CAPTION)
  loc_1A8FE54:     End If
  loc_1A8FE57:     var_A4 = var_108.Visible
  loc_1A8FE65:     If (var_A4 = True) Then
  loc_1A8FE85:       Proc_6_17_EAAE40(var_A4, var_14C, "UPDATE menuHelp SET ShowInList='N' WHERE [Option]=", var_104, -1, var_19C, var_A4, var_19C)
  loc_1A8FEA4:       var_108.Connection15.Execute CStr(var_19C & var_A4 & vbNullString), var_398, var_398
  loc_1A8FEBD:     Else
  loc_1A8FEEC:       var_104 = CVar("UPDATE menuHelp SET Flag='V',ShowInList='N' WHERE [Option]='" & var_14C & "' AND Module_Name='") & var_108.Name & "'" 
  loc_1A8FEFA:       var_108.Connection15.Execute CStr(var_104), var_1D0, -1
  loc_1A8FF31:       var_A4 = CVar("UPDATE menuHelp1 SET Flag='V' WHERE MenuCaption='" & var_14C & "' AND MenuName='") 'String
  loc_1A8FF53:       var_108.Connection15.Execute CStr(var_A4 & var_108.Name & "'"), var_1D0, -1
  loc_1A8FF6F:     End If
  loc_1A8FF6F:   End If
  loc_1A8FF72: Next
  loc_1A8FF7E: unk_5C83CC.CommitTrans
  loc_1A8FF8C: unk_5C83CC.BeginTrans var_1B0
  loc_1A8FFA7: unk_5C83CC.Execute "SELECT Opt1,Opt2 FROM menuHelp WHERE Opt3=0 AND Opt4=0 AND Opt2<>0 AND Flag='V' AND UserName='SA'", var_A4, -1
  loc_1A8FFB2: Set var_120 = var_19C
  loc_1A8FFC1: var_1B0 = var_120.RecordCount
  loc_1A8FFCF: If (var_1B0 > 0) Then
  loc_1A8FFD2:   ' Referenced from: 1A90136
  loc_1A8FFE1:   If Not(var_120.EOF) Then
  loc_1A90057:     var_1D0 = "UPDATE menuHelp SET Flag='V' WHERE opt1=" & var_120.Fields.Item("Opt1").Value & " AND Opt2=" & var_120.Fields.Item("Opt2").Value 
  loc_1A90065:     unk_5C83CC.Execute CStr(var_1D0), var_1F0, -1
  loc_1A900AD:     var_19C = var_120.Fields
  loc_1A900BD:     var_A4 = var_19C.Item("Opt1").Value
  loc_1A900CE:     var_E4 = "UPDATE menuHelp1 SET Flag='V' WHERE opt1=" & var_A4 & " AND Opt2=" 
  loc_1A900FC:     var_1D0 = var_E4 & var_120.Fields.Item("Opt2").Value 
  loc_1A9010A:     unk_5C83CC.Execute CStr(var_1D0), var_1F0, -1
  loc_1A90131:     var_120.MoveNext
  loc_1A90136:     GoTo loc_1A8FFD2
  loc_1A90139:   End If
  loc_1A90139: End If
  loc_1A9013F: unk_5C83CC.CommitTrans
  loc_1A9014D: unk_5C83CC.BeginTrans var_1B0
  loc_1A90168: unk_5C83CC.Execute "SELECT Opt1 FROM menuHelp WHERE Opt2=0 AND Opt3=0 AND Flag='V' AND UserName='SA'", var_A4, -1
  loc_1A90173: Set var_120 = var_19C
  loc_1A90182: var_1B0 = var_120.RecordCount
  loc_1A90190: If (var_1B0 > 0) Then
  loc_1A90193:   ' Referenced from: 1A90275
  loc_1A901A2:   If Not(var_120.EOF) Then
  loc_1A901EF:     unk_5C83CC.Execute CStr("UPDATE menuHelp SET Flag='V' WHERE Opt1=" & var_120.Fields.Item("Opt1").Value), var_E4, -1
  loc_1A9022D:     var_19C = var_120.Fields
  loc_1A9023D:     var_A4 = var_19C.Item("Opt1").Value
  loc_1A90253:     unk_5C83CC.Execute CStr("UPDATE menuHelp1 SET Flag='V' WHERE Opt1=" & var_A4), var_E4, -1
  loc_1A90270:     var_120.MoveNext
  loc_1A90275:     GoTo loc_1A90193
  loc_1A90278:   End If
  loc_1A90278: End If
  loc_1A9027E: unk_5C83CC.CommitTrans
  loc_1A90299: unk_5C83CC.Execute "UPDATE menuHelp SET Flag='V' WHERE [Option]='' OR [Option] is Null", var_A4, -1
  loc_1A902BA: unk_5C83CC.Execute "UPDATE menuHelp1 SET Flag='V' WHERE MenuCaption='' OR MenuCaption is Null", var_A4, -1
  loc_1A902CE: unk_5C83CC.BeginTrans var_1B0
  loc_1A902E9: unk_5C83CC.Execute "SELECT Code,Name,SrNo FROM User_Module", var_A4, -1
  loc_1A902F4: Set var_120 = var_19C
  loc_1A90303: var_1B0 = var_120.RecordCount
  loc_1A90311: If (var_1B0 > 0) Then
  loc_1A90314:   ' Referenced from: 1A90423
  loc_1A90323:   If Not(var_120.EOF) Then
  loc_1A9034A:     var_19C = var_120.Fields
  loc_1A9035A:     var_A4 = var_19C.Item("Code").Value
  loc_1A9037E:     var_390 = var_120.Fields
  loc_1A90395:     Proc_6_17_EAAE40(var_1D0, CVar(var_390.Item("Name")), "INSERT INTO User1 (User_Name,Form_Code,Param_Str,Form_Name,SrNo) VALUES('SA','" & var_A4 & "',' ',", var_270, -1, var_3AC, var_19C)
  loc_1A9039D:     var_1F0 = var_19C & var_1D0 
  loc_1A903EB:     unk_5C83CC.Execute CStr(var_1F0 & "," & var_120.Fields.Item("SrNo").Value & ")"), var_19C, var_390
  loc_1A9041E:     var_120.MoveNext
  loc_1A90423:     GoTo loc_1A90314
  loc_1A90426:   End If
  loc_1A90426: End If
  loc_1A9042C: unk_5C83CC.CommitTrans
  loc_1A9043A: unk_5C83CC.BeginTrans var_1B0
  loc_1A90455: unk_5C83CC.Execute "UPDATE menuHelp1 SET Param_Str='AEDP' WHERE Flag IN ('E','N')AND MenuIndex >=0", var_A4, -1
  loc_1A90476: unk_5C83CC.Execute "UPDATE menuHelp1 SET Param_Str='***P' WHERE Flag = 'R'", var_A4, -1
  loc_1A90497: unk_5C83CC.Execute "UPDATE menuHelp SET Param_Str='AEDP' WHERE Flag IN ('E','N')AND Menu_Index >=0", var_A4, -1
  loc_1A904B8: unk_5C83CC.Execute "UPDATE menuHelp SET Param_Str='***P' WHERE Flag = 'R'", var_A4, -1
  loc_1A904C9: unk_5C83CC.CommitTrans
  loc_1A904F2: unk_5C83CC.Execute "SELECT Comp_Code FROM Company where SIteCode='" & MemVar_1F95078 & "'", var_A4, -1
  loc_1A904FD: Set var_130 = var_19C
  loc_1A90521: If (var_130.RecordCount > 0) Then
  loc_1A90524:   ' Referenced from: 1A90F49
  loc_1A90533:   If Not(var_130.EOF) Then
  loc_1A9053C:     var_1B0 = var_130.AbsolutePosition
  loc_1A9054A:     If (var_1B0 = 1) Then
  loc_1A90578:       var_3B0 = CStr(var_130.Fields.Item("Comp_Code").Value)
  loc_1A9058E:       unk_5C83CC.BeginTrans var_1B0
  loc_1A905D8:       var_E4 = "UPDATE menuHelp SET CompCode='" & var_130.Fields.Item("Comp_Code").Value & "', UserName='SA' WHERE (CompCode is NULL or CompCode='' or CompCode='" 
  loc_1A905F9:       unk_5C83CC.Execute CStr(var_E4 & CVar(MemVar_1F95070) & "') and UserName='SA' OR UserName Is Null"), var_1F0, -1
  loc_1A9063D:       var_19C = var_130.Fields
  loc_1A9064D:       var_A4 = var_19C.Item("Comp_Code").Value
  loc_1A90668:       var_104 = "UPDATE menuHelp1 SET CompCode='" & var_A4 & "', UserName='SA' WHERE (CompCode is NULL or CompCode='' or CompCode='" & CVar(MemVar_1F95070) 
  loc_1A9067F:       unk_5C83CC.Execute CStr(var_104 & "') and UserName='SA' OR UserName Is Null"), var_1F0, -1
  loc_1A906A5:       unk_5C83CC.CommitTrans
  loc_1A906AD:     Else
  loc_1A906C1:       var_1A0 = "SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,[Option],Menu_Index,Param_Str,Flag,ShowInList,OutLetCode,Module_Name FROM menuHelp WHERE CompCode='" & var_3B0
  loc_1A906D1:       unk_5C83CC.Execute var_1A0 & "' AND UserName='SA'", var_A4, -1
  loc_1A906DC:       Set var_134 = var_19C
  loc_1A906F2:       var_1B0 = var_134.RecordCount
  loc_1A90700:       If (var_1B0 > 0) Then
  loc_1A9070C:         unk_5C83CC.BeginTrans var_1B0
  loc_1A90711:         ' Referenced from:   1A90B2A
  loc_1A90720:         If Not(var_134.EOF) Then
  loc_1A90735:           var_19C = var_130.Fields
  loc_1A90745:           var_A4 = var_19C.Item("Comp_Code").Value
  loc_1A907B3:           var_6A8 = Val(CStr(var_134.Fields.Item("Opt2").Value))
  loc_1A907E9:           var_6B0 = Val(CStr(var_134.Fields.Item("Opt3").Value))
  loc_1A9081F:           var_6B8 = Val(CStr(var_134.Fields.Item("Opt4").Value))
  loc_1A90855:           var_6C0 = Val(CStr(var_134.Fields.Item("Code").Value))
  loc_1A9088B:           var_6C8 = Val(CStr(var_134.Fields.Item("Menu_Index").Value))
  loc_1A908B4:           Proc_6_17_EAAE40(var_494, CVar(var_134.Fields.Item("Option")), var_6C8, var_6C0, var_6B8, var_6B0, var_6A8)
  loc_1A908DB:           var_4EC = var_134.Fields.Item("param_str").Value
  loc_1A90940:           var_5D0 = var_134.Fields
  loc_1A90950:           var_5F4 = var_5D0.Item("OutletCode").Value
  loc_1A90989:           var_B4 = "INSERT INTO menuHelp (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Param_Str,ShowInList,Flag,OutletCode,Module_Name) VALUES('"
  loc_1A909CD:           var_270 = var_B4 & var_A4 & "','SA'," & CVar(Val(CStr(var_134.Fields.Item("Opt1").Value))) & "," & CVar(var_6A8) & "," & CVar(var_6B0) 
  loc_1A90A32:           var_51C = var_270 & "," & CVar(var_6B8) & "," & CVar(var_6C0) & "," & CVar(var_6C8) & "," & var_494 & ",'" & var_4EC & "','" 
  loc_1A90A62:           var_624 = var_51C & var_134.Fields.Item("ShowInList").Value & "','" & var_134.Fields.Item("Flag").Value & "','" & var_5F4 & "','" 
  loc_1A90A80:           unk_5C83CC.Execute CStr(var_624 & var_134.Fields.Item("Module_name").Value & "')"), var_69C, -1
  loc_1A90B25:           var_134.MoveNext
  loc_1A90B2A:           GoTo loc_1A90711
  loc_1A90B2D:         End If
  loc_1A90B33:         unk_5C83CC.CommitTrans
  loc_1A90B38:       End If
  loc_1A90B4C:       var_1A0 = "SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Param_Str,Flag FROM menuHelp1 WHERE CompCode='" & var_3B0
  loc_1A90B5C:       unk_5C83CC.Execute var_1A0 & "' AND UserName='SA'", var_A4, -1
  loc_1A90B67:       Set var_134 = var_19C
  loc_1A90B7D:       var_1B0 = var_134.RecordCount
  loc_1A90B8B:       If (var_1B0 > 0) Then
  loc_1A90B97:         unk_5C83CC.BeginTrans var_1B0
  loc_1A90B9C:         ' Referenced from:   1A90F33
  loc_1A90BAB:         If Not(var_134.EOF) Then
  loc_1A90BC0:           var_19C = var_130.Fields
  loc_1A90BD0:           var_A4 = var_19C.Item("Comp_Code").Value
  loc_1A90BE7:           var_390 = var_134.Fields
  loc_1A90BF7:           var_104 = var_390.Item("Opt1").Value
  loc_1A90C08:           var_3A0 = Val(CStr(var_104))
  loc_1A90C3E:           var_6A8 = Val(CStr(var_134.Fields.Item("Opt2").Value))
  loc_1A90C74:           var_6B0 = Val(CStr(var_134.Fields.Item("Opt3").Value))
  loc_1A90CAA:           var_6B8 = Val(CStr(var_134.Fields.Item("Opt4").Value))
  loc_1A90CE0:           var_6C0 = Val(CStr(var_134.Fields.Item("Code").Value))
  loc_1A90D3D:           var_6C8 = Val(CStr(var_134.Fields.Item("menuINDEX").Value))
  loc_1A90D66:           Proc_6_17_EAAE40(var_4EC, CVar(var_134.Fields.Item("MenuCaption")), var_6C8, var_6C0, var_6B8, var_6B0, var_6A8)
  loc_1A90D8D:           var_544 = var_134.Fields.Item("param_str").Value
  loc_1A90DA4:           var_578 = var_134.Fields
  loc_1A90DB4:           var_59C = var_578.Item("Flag").Value
  loc_1A90DC6:           var_B4 = "INSERT INTO menuHelp1 (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Param_Str,Flag) VALUES('"
  loc_1A90E27:           var_328 = var_B4 & var_A4 & "','SA'," & CVar(var_3A0) & "," & CVar(var_6A8) & "," & CVar(var_6B0) & "," & CVar(var_6B8) & "," 
  loc_1A90E6F:           var_51C = var_328 & CVar(var_6C0) & ",'" & var_134.Fields.Item("menuNAME").Value & "'," & CVar(var_6C8) & "," & var_4EC & ",'" 
  loc_1A90E9D:           unk_5C83CC.Execute CStr(var_51C & var_544 & "','" & var_59C & "')"), var_5F4, -1
  loc_1A90F2E:           var_134.MoveNext
  loc_1A90F33:           GoTo loc_1A90B9C
  loc_1A90F36:         End If
  loc_1A90F3C:         unk_5C83CC.CommitTrans
  loc_1A90F41:       End If
  loc_1A90F41:     End If
  loc_1A90F44:     var_130.MoveNext
  loc_1A90F49:     GoTo loc_1A90524
  loc_1A90F4C:   End If
  loc_1A90F4C: End If
  loc_1A90F62: unk_5C83CC.Execute "SELECT Distinct UserName,CompCode FROM menuHelp WHERE UserName<>'SA'", var_A4, -1
  loc_1A90F6D: Set var_130 = var_19C
  loc_1A90F8A: If (var_130.RecordCount > 0) Then
  loc_1A90F8D:   ' Referenced from: 1A91328
  loc_1A90F9C:   If Not(var_130.EOF) Then
  loc_1A90FAC:     var_B4 = "SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,[Option],Menu_Index,Param_Str,Flag,ShowInList,Module_Name,OutLetCode FROM menuHelp WHERE CompCode='"
  loc_1A90FF2:     unk_5C83CC.Execute CStr(var_B4 & var_130.Fields.Item("CompCode").Value & "' AND UserName='SA'"), var_104, -1
  loc_1A90FFD:     Set var_134 = var_390
  loc_1A9101D:     var_1B0 = var_134.RecordCount
  loc_1A9102B:     If (var_1B0 > 0) Then
  loc_1A91037:       unk_5C83CC.BeginTrans var_1B0
  loc_1A9103C:       ' Referenced from: 1A91312
  loc_1A9104B:       If Not(var_134.EOF) Then
  loc_1A91072:         var_19C = var_134.Fields
  loc_1A91082:         var_A4 = var_19C.Item("Opt1").Value
  loc_1A910A9:         var_390 = var_134.Fields
  loc_1A910F8:         var_220 = "UPDATE menuHelp SET Opt1=" & var_A4 & ",Opt2=" & var_390.Item("Opt2").Value & ",Opt3=" & var_134.Fields.Item("Opt3").Value 
  loc_1A9116F:         var_328 = var_220 & ",Opt4=" & var_134.Fields.Item("Opt4").Value & ",Code=" & var_134.Fields.Item("Code").Value & ",Module_Name='" 
  loc_1A9119D:         var_368 = var_328 & var_134.Fields.Item("Module_name").Value 
  loc_1A9120B:         var_494 = var_368 & "' WHERE CompCode='" & var_130.Fields.Item("CompCode").Value & "' AND UserName='" & var_130.Fields.Item("userName").Value 
  loc_1A9122A:         var_4C8 = var_134.Fields
  loc_1A91242:         var_4EC = var_494 & "' AND Module_Name='" & var_4C8.Item("Module_name").Value 
  loc_1A91275:         Proc_6_17_EAAE40(var_544, CVar(var_134.Fields.Item("Option")), var_4EC & "' AND [Option]=", var_59C, -1, var_578, var_390)
  loc_1A91294:         unk_5C83CC.Execute CStr(var_19C & var_544 & vbNullString), var_5D0, var_3A0
  loc_1A9130D:         var_134.MoveNext
  loc_1A91312:         GoTo loc_1A9103C
  loc_1A91315:       End If
  loc_1A9131B:       unk_5C83CC.CommitTrans
  loc_1A91320:     End If
  loc_1A91323:     var_130.MoveNext
  loc_1A91328:     GoTo loc_1A90F8D
  loc_1A9132B:   End If
  loc_1A9132B: End If
  loc_1A91334: unk_5C83CC.BeginTrans var_1B0
  loc_1A91354: var_1A4 = "SELECT Opt1,Opt2,Opt3,Opt4,Code,[Option],Flag,OutLetCode FROM menuHelp WHERE UserName='SA' AND CompCode='" & MemVar_1F95128 & "'"
  loc_1A9135D: unk_5C83CC.Execute var_1A4, var_A4, -1
  loc_1A91368: Set var_120 = var_19C
  loc_1A9137E: var_1B0 = var_120.RecordCount
  loc_1A9138C: If (var_1B0 > 0) Then
  loc_1A9138F:   ' Referenced from: 1A91762
  loc_1A9139E:   If Not(var_120.EOF) Then
  loc_1A91417:     var_1D0 = "Select * from UserModule where Opt1=" & var_120.Fields.Item("Opt1").Value & " And Opt2=" & var_120.Fields.Item("Opt2").Value 
  loc_1A9148E:     var_2C8 = var_1D0 & " And Opt3=" & var_120.Fields.Item("Opt3").Value & " and Opt4=" & var_120.Fields.Item("Opt4").Value & " and Code=" 
  loc_1A914CA:     unk_5C83CC.Execute CStr(var_2C8 & var_120.Fields.Item("Code").Value), var_328, -1
  loc_1A914D2:     var_3D0 = var_3D0.RecordCount
  loc_1A9151D:     If (var_1B0 <= 0) Then
  loc_1A91544:       var_19C = var_120.Fields
  loc_1A91554:       var_A4 = var_19C.Item("Opt1").Value
  loc_1A91593:       var_1D0 = "INSERT INTO UserModule (Opt1,Opt2,Opt3,Opt4,Code,[Option],Flag,OutLetCode) VALUES(" & var_A4 & "," & var_120.Fields.Item("Opt2").Value 
  loc_1A91638:       var_318 = var_1D0 & "," & var_120.Fields.Item("Opt3").Value & "," & var_120.Fields.Item("Opt4").Value & "," & var_120.Fields.Item("Code").Value 
  loc_1A91641:       var_328 = var_318 & "," 
  loc_1A9166B:       Proc_6_17_EAAE40(var_368, CVar(var_120.Fields.Item("Option")), var_328, var_4EC, -1, var_4C8)
  loc_1A916C9:       var_460 = var_120.Fields
  loc_1A916D9:       var_494 = var_460.Item("OutletCode").Value
  loc_1A916F8:       unk_5C83CC.Execute CStr(var_1B0 & var_368 & ",'" & var_120.Fields.Item("Flag").Value & "','" & var_494 & "')"), var_19C, var_19C
  loc_1A9175A:     End If
  loc_1A9175D:     var_120.MoveNext
  loc_1A91762:     GoTo loc_1A9138F
  loc_1A91765:   End If
  loc_1A91765: End If
  loc_1A9176B: unk_5C83CC.CommitTrans
  loc_1A91779: unk_5C83CC.BeginTrans var_1B0
  loc_1A917A2: unk_5C83CC.Execute "SELECT Opt1,Opt2,Opt3,Opt4,Code,MenuCaption,Flag FROM menuHelp1 WHERE UserName='SA' AND CompCode='" & MemVar_1F95128 & "'", var_A4, -1
  loc_1A917AD: Set var_120 = var_19C
  loc_1A917C3: var_1B0 = var_120.RecordCount
  loc_1A917D1: If (var_1B0 > 0) Then
  loc_1A917D4:   ' Referenced from: 1A91B66
  loc_1A917E3:   If Not(var_120.EOF) Then
  loc_1A9185C:     var_1D0 = "Select * from UserModule1 where Opt1=" & var_120.Fields.Item("Opt1").Value & " And Opt2=" & var_120.Fields.Item("Opt2").Value 
  loc_1A918D3:     var_2C8 = var_1D0 & " And Opt3=" & var_120.Fields.Item("Opt3").Value & " and Opt4=" & var_120.Fields.Item("Opt4").Value & " and Code=" 
  loc_1A9190F:     unk_5C83CC.Execute CStr(var_2C8 & var_120.Fields.Item("Code").Value), var_328, -1
  loc_1A91917:     var_3D0 = var_3D0.RecordCount
  loc_1A91962:     If (var_1B0 <= 0) Then
  loc_1A91989:       var_19C = var_120.Fields
  loc_1A919A1:       var_C4 = "INSERT INTO UserModule1 (Opt1,Opt2,Opt3,Opt4,Code,[Option],Flag) VALUES(" & var_19C.Item("Opt1").Value 
  loc_1A919AA:       var_E4 = var_C4 & "," 
  loc_1A919D0:       var_104 = var_120.Fields.Item("Opt2").Value
  loc_1A91A7D:       var_318 = var_E4 & var_104 & "," & var_120.Fields.Item("Opt3").Value & "," & var_120.Fields.Item("Opt4").Value & "," & var_120.Fields.Item("Code").Value 
  loc_1A91AB0:       Proc_6_17_EAAE40(var_368, CVar(var_120.Fields.Item("MenuCaption")), var_318 & ",", var_494, -1)
  loc_1A91B06:       unk_5C83CC.Execute CStr(var_460 & var_368 & ",'" & var_120.Fields.Item("Flag").Value & "')"), var_1B0, var_19C
  loc_1A91B5E:     End If
  loc_1A91B61:     var_120.MoveNext
  loc_1A91B66:     GoTo loc_1A917D4
  loc_1A91B69:   End If
  loc_1A91B69: End If
  loc_1A91B6F: unk_5C83CC.CommitTrans
  loc_1A91B79: Set var_120 = Nothing
  loc_1A91B81: Set var_124 = Nothing
  loc_1A91B89: Set var_128 = Nothing
  loc_1A91B91: Set var_12C = Nothing
  loc_1A91B99: MemVar_1F95044 = Nothing
  loc_1A91BA2: Set var_130 = Nothing
  loc_1A91BAA: Set var_134 = Nothing
  loc_1A91BC2: var_1A0 = "Process completed!" & vbCrLf
  loc_1A91BE5: If (MsgBox(CVar(var_1A0 & "Please ReLoad Applicatrion."), &H44, var_C4, var_E4, var_104) = 6) Then
  loc_1A91BE8:   End
  loc_1A91BEA: End If
  loc_1A91BEA: Exit Sub
  loc_1A91C01: Set var_19C = Err()
  loc_1A91C07: Call 0.Method_arg_2C (var_1A0, 0, var_C4, var_E4)
  loc_1A91C12: MsgBox(CVar(var_1A0), var_104, var_6A0, var_3A0, )
  loc_1A91C25: Exit Sub
End Sub

Private Sub MatStat_Click(Index As Integer) '1008C14
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_1008A1B: var_B4 = CVar("MatStat" & "+") 'String
  loc_1008A36: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1008A47: On Error Goto loc_1008BDF
  loc_1008A4F: var_C6 = Index
  loc_1008A5A: If (var_C6 = 0) Then
  loc_1008A69:   global_52 = New rInventRepView
  loc_1008A7E:   global_52.GRepFormName = "IndentReg"
  loc_1008A91:   Set var_CC = var_F0(Index)
  loc_1008A97:   Call 0.Method_MatStat_Click0 (var_F4, var_C6)
  loc_1008A9F:   MemVar_1F95204 = global_52.Menu.Caption
  loc_1008AB1:   global_52.CAPTION = CVar(var_F4)
  loc_1008AC9:   Call global_52.Show
  loc_1008AD2: Else
  loc_1008ADA:   If (var_C6 = 1) Then
  loc_1008AE9:     global_52 = New rInventRepView
  loc_1008AFE:     global_52.GRepFormName = "PurchBill"
  loc_1008B11:     Set var_CC = var_F0(Index)
  loc_1008B17:     Call 0.Method_MatStat_Click0 (var_F4)
  loc_1008B1F:      = global_52.Menu.Caption
  loc_1008B31:     global_52.CAPTION = CVar(var_F4)
  loc_1008B49:     Call global_52.Show
  loc_1008B52:   Else
  loc_1008B5A:     If (var_C6 = 2) Then
  loc_1008B69:       global_52 = New rInventRepView
  loc_1008B7E:       global_52.GRepFormName = "PurchOrder"
  loc_1008B91:       Set var_CC = var_F0(Index)
  loc_1008B97:       Call 0.Method_MatStat_Click0 (var_F4)
  loc_1008B9F:        = global_52.Menu.Caption
  loc_1008BB1:       global_52.CAPTION = CVar(var_F4)
  loc_1008BC9:       Call global_52.Show
  loc_1008BCF:     End If
  loc_1008BCF:   End If
  loc_1008BCF: End If
  loc_1008BD8: global_52 = Nothing
  loc_1008BDE: Exit Sub
  loc_1008BDF: ' Referenced from: 1008A47
  loc_1008BE9: Set var_CC = Err()
  loc_1008BEF: Call 0.Method_arg_1C (var_F8)
  loc_1008C00: If (var_F8 = &H16C) Then
  loc_1008C05:   Resume Next
  loc_1008C09: End If
  loc_1008C0B: Proc_6_60_E63754()
  loc_1008C12: Exit Sub
End Sub

Private Sub Mas_Click(Index As Integer) '132ED80
  'Data Table: 5C8390
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CA As Integer
  Dim var_D8 As String
  Dim unk_5C83CC As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Fields15
  Dim var_D4 As Variant
  loc_132E5E3: var_B8 = CVar("Mas" & "+") 'String
  loc_132E5FE: MemVar_1F95204 = CStr(var_B8 & Trim(CVar(CStr(Index))))
  loc_132E610: var_CA = Index
  loc_132E619: If (var_CA = 4) Then
  loc_132E626:   global_52 = New FrmMarketSeg
  loc_132E63A:   Set var_D0 = var_D4(Index)
  loc_132E640:   Call 0.Method_Mas_Click0 (var_D8, var_CA)
  loc_132E648:   MemVar_1F95204 = FrmMarketSeg.Menu.Caption
  loc_132E65A:   global_52.CAPTION = CVar(var_D8)
  loc_132E670:   Call global_52.Show
  loc_132E679: Else
  loc_132E67F:   If (var_CA = 5) Then
  loc_132E68C:     global_52 = New FrmBusinessSrc
  loc_132E6A0:     Set var_D0 = var_D4(Index)
  loc_132E6A6:     Call 0.Method_Mas_Click0 (var_D8)
  loc_132E6AE:      = FrmBusinessSrc.Menu.Caption
  loc_132E6C0:     global_52.CAPTION = CVar(var_D8)
  loc_132E6D6:     Call global_52.Show
  loc_132E6DF:   Else
  loc_132E6E5:     If (var_CA = 6) Then
  loc_132E6F2:       global_52 = New FrmGuestStat
  loc_132E706:       Set var_D0 = var_D4(Index)
  loc_132E70C:       Call 0.Method_Mas_Click0 (var_D8)
  loc_132E714:        = FrmGuestStat.Menu.Caption
  loc_132E726:       global_52.CAPTION = CVar(var_D8)
  loc_132E73C:       Call global_52.Show
  loc_132E745:     Else
  loc_132E74B:       If (var_CA = 7) Then
  loc_132E758:         global_52 = New FrmChargeMast
  loc_132E76C:         Set var_D0 = var_D4(Index)
  loc_132E772:         Call 0.Method_Mas_Click0 (var_D8)
  loc_132E77A:          = FrmChargeMast.Menu.Caption
  loc_132E78C:         global_52.CAPTION = CVar(var_D8)
  loc_132E7A2:         Call global_52.Show
  loc_132E7AB:       Else
  loc_132E7B1:         If (var_CA = 8) Then
  loc_132E7BE:           global_52 = New frmFixedChargeMast
  loc_132E7D2:           Set var_D0 = var_D4(Index)
  loc_132E7D8:           Call 0.Method_Mas_Click0 (var_D8)
  loc_132E7E0:            = frmFixedChargeMast.Menu.Caption
  loc_132E7F2:           global_52.CAPTION = CVar(var_D8)
  loc_132E808:           Call global_52.Show
  loc_132E811:         Else
  loc_132E817:           If (var_CA = 9) Then
  loc_132E824:             global_52 = New FrmPackageMast
  loc_132E838:             Set var_D0 = var_D4(Index)
  loc_132E83E:             Call 0.Method_Mas_Click0 (var_D8)
  loc_132E846:              = FrmPackageMast.Menu.Caption
  loc_132E84E:             var_98 = CVar(var_D8) 'String
  loc_132E858:             global_52.CAPTION = var_98
  loc_132E872:             global_52.MyType = "Package"
  loc_132E87E:             Call global_52.Show
  loc_132E887:           Else
  loc_132E88D:             If (var_CA = &HC) Then
  loc_132E8A4:               var_D8 = "Select PlanMastType from Enviro where logsite_code='" & MemVar_1F95078
  loc_132E8B4:               unk_5C83CC.Execute var_D8 & "'", var_98, -1
  loc_132E8E9:               var_D4 = var_D0.Fields.Item("PlanMastType")
  loc_132E90B:               If (var_D4.Value = "Advanced") Then
  loc_132E918:                 global_52 = New FrmPackageMast
  loc_132E92B:                 global_52.MyType = "Plan"
  loc_132E93C:                 Set var_D0 = var_D4(Index)
  loc_132E942:                 Call 0.Method_Mas_Click0 (var_D8)
  loc_132E94A:                 var_D0 = global_52.Menu.Caption
  loc_132E95C:                 global_52.CAPTION = CVar(var_D8)
  loc_132E972:                 Call global_52.Show
  loc_132E97B:               Else
  loc_132E985:                 global_52 = New FrmPlanPackMast
  loc_132E999:                 Set var_D0 = Me.Mas
  loc_132E99F:                 Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132E9A7:                 var_D8 = var_D4.Caption
  loc_132E9B9:                 global_52.CAPTION = CVar(var_D8)
  loc_132E9CF:                 Call global_52.Show
  loc_132E9D5:               End If
  loc_132E9D8:             Else
  loc_132E9DE:               If (var_CA = &HD) Then
  loc_132E9EB:                 global_52 = New frmSeasonMast
  loc_132E9FF:                 Set var_D0 = var_D4(Index)
  loc_132EA05:                 Call 0.Method_Mas_Click0 (var_D8)
  loc_132EA0D:                  = frmSeasonMast.Menu.Caption
  loc_132EA1F:                 global_52.CAPTION = CVar(var_D8)
  loc_132EA35:                 Call global_52.Show
  loc_132EA3E:               Else
  loc_132EA44:                 If (var_CA = &HE) Then
  loc_132EA51:                   global_52 = New FrmRoomFeatureMast
  loc_132EA65:                   Set var_D0 = var_D4(Index)
  loc_132EA6B:                   Call 0.Method_Mas_Click0 (var_D8)
  loc_132EA73:                    = FrmRoomFeatureMast.Menu.Caption
  loc_132EA85:                   global_52.CAPTION = CVar(var_D8)
  loc_132EA9B:                   Call global_52.Show
  loc_132EAA4:                 Else
  loc_132EAAA:                   If (var_CA = &HF) Then
  loc_132EAB7:                     global_52 = New FrmRoomCatMast
  loc_132EACB:                     Set var_D0 = var_D4(Index)
  loc_132EAD1:                     Call 0.Method_Mas_Click0 (var_D8)
  loc_132EAD9:                      = FrmRoomCatMast.Menu.Caption
  loc_132EAEB:                     global_52.CAPTION = CVar(var_D8)
  loc_132EB01:                     Call global_52.Show
  loc_132EB0A:                   Else
  loc_132EB10:                     If (var_CA = &H10) Then
  loc_132EB1D:                       global_52 = New FrmRoomMast
  loc_132EB31:                       Set var_D0 = Me.DGCategory
  loc_132EB37:                       Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132EB51:                       global_52.CAPTION = CVar(FrmRoomMast.DGCategory.Caption)
  loc_132EB67:                       Call global_52.Show
  loc_132EB70:                     Else
  loc_132EB76:                       If (var_CA = &H11) Then
  loc_132EB83:                         global_52 = New CompMast
  loc_132EB97:                         Set var_D0 = Me.FGridIncl
  loc_132EB9D:                         Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132EBA5:                         var_D8 = CompMast.FGridIncl.Caption
  loc_132EBB7:                         global_52.CAPTION = CVar(var_D8)
  loc_132EBCD:                         Call global_52.Show
  loc_132EBD6:                       Else
  loc_132EBDC:                         If (var_CA = &H14) Then
  loc_132EBE9:                           global_52 = New FrmForeignExMast
  loc_132EBFD:                           Set var_D0 = var_D4(Index)
  loc_132EC03:                           Call 0.Method_Mas_Click0 (var_D8)
  loc_132EC0B:                            = FrmForeignExMast.Menu.Caption
  loc_132EC1D:                           global_52.CAPTION = CVar(var_D8)
  loc_132EC33:                           Call global_52.Show
  loc_132EC3C:                         Else
  loc_132EC42:                           If (var_CA = &H15) Then
  loc_132EC4F:                             global_52 = New GuestProfile
  loc_132EC63:                             Set var_D0 = Me.LblT1Field8
  loc_132EC69:                             Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132EC71:                             var_D8 = GuestProfile.LblT1Field8.Caption
  loc_132EC83:                             global_52.CAPTION = CVar(var_D8)
  loc_132EC99:                             Call global_52.Show
  loc_132ECA2:                           Else
  loc_132ECA8:                             If (var_CA = &H16) Then
  loc_132ECB5:                               global_52 = New GroupProfile
  loc_132ECC9:                               Set var_D0 = var_D4(Index)
  loc_132ECCF:                               Call 0.Method_Mas_Click0 (var_D8)
  loc_132ECD7:                                = GroupProfile.Menu.Caption
  loc_132ECE9:                               global_52.CAPTION = CVar(var_D8)
  loc_132ECFF:                               Call global_52.Show
  loc_132ED08:                             Else
  loc_132ED0E:                               If (var_CA = &H17) Then
  loc_132ED1B:                                 global_52 = New FdRoomDisplay
  loc_132ED2F:                                 Set var_D0 = var_D4(Index)
  loc_132ED35:                                 Call 0.Method_Mas_Click0 (var_D8)
  loc_132ED3D:                                  = FdRoomDisplay.Menu.Caption
  loc_132ED4F:                                 global_52.CAPTION = CVar(var_D8)
  loc_132ED65:                                 Call global_52.Show
  loc_132ED6B:                               End If
  loc_132ED6B:                             End If
  loc_132ED6B:                           End If
  loc_132ED6B:                         End If
  loc_132ED6B:                       End If
  loc_132ED6B:                     End If
  loc_132ED6B:                   End If
  loc_132ED6B:                 End If
  loc_132ED6B:               End If
  loc_132ED6B:             End If
  loc_132ED6B:           End If
  loc_132ED6B:         End If
  loc_132ED6B:       End If
  loc_132ED6B:     End If
  loc_132ED6B:   End If
  loc_132ED6B: End If
  loc_132ED70: global_52 = Nothing
  loc_132ED79: Set var_88 = Nothing
  loc_132ED7C: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_6 '105E3A0
  'Data Table: 5C8390
  Dim var_8C As TreeView
  Dim var_9C As Variant
  Dim var_C0 As String
  Dim var_128 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_198 As String
  Dim unk_5C83CC As Connection15
  loc_105E178: On Error Resume Next
  loc_105E1DD: var_128 = (Me.TreeView1.SelectedItem.Image = "Rep") Or (Me.TreeView1.SelectedItem.Image = "Frm")
  loc_105E1F9: If CBool(var_128) Then
  loc_105E201:   var_9C = Me.SelectedItem
  loc_105E206:   VarLateMemLdRfVar
  loc_105E229:   var_C0 = "-"
  loc_105E23C:   var_F8 = (InStr(1, Me.SelectedItem.key, "Rep", 0) + 1)
  loc_105E248:   var_148 = Mid(var_118, CLng(Me.TreeView1.SelectedItem.Image), var_128)
  loc_105E271:   VarLateMemLdRfVar
  loc_105E27C:   var_B0 = Me.SelectedItem
  loc_105E281:   VarLateMemLdRfVar
  loc_105E290:   Set var_8C = Me.TreeView1
  loc_105E30D:   Me.ListView1.ListItems.Add var_128, var_148, var_164, CVar(Me.ImageList1.ListImages.Item(Me.TreeView1.SelectedItem.Image).Key), var_184
  loc_105E369:   var_198 = "Update MenuHelp set ShowInList='Y' Where Code=" & CStr(var_148) & "  AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"
  loc_105E380:   unk_5C83CC.Execute var_198 & MemVar_1F95128 & "'", Me.SelectedItem, -1
  loc_105E39A: End If
  loc_105E39E: Exit Sub
End Sub

Public Sub TreeView1_UnknownEvent_B(Index As Integer) 'E238CC
  'Data Table: 5C8390
  Dim var_88 As Node
  loc_E238AF: Set var_88 = Index 
  loc_E238BC: var_88.Image = "Close"
  loc_E238C6: var_88.Selected = True
  loc_E238CB: Exit Sub
End Sub

Public Sub TreeView1_UnknownEvent_C(Index As Integer) 'E23824
  'Data Table: 5C8390
  Dim var_88 As Node
  loc_E23807: Set var_88 = Index 
  loc_E23814: var_88.Image = "Open"
  loc_E2381E: var_88.Selected = True
  loc_E23823: Exit Sub
End Sub

Public Sub TreeView1_UnknownEvent_10(Index As Integer) 'E0A5F8
  'Data Table: 5C8390
  loc_E0A5EE: If (CLng(Index) = &HD) Then
  loc_E0A5F1:   Call TreeView1_UnknownEvent_14()
  loc_E0A5F6: End If
  loc_E0A5F6: Exit Sub
End Sub

Public Sub TreeView1_UnknownEvent_12(Index As Integer) 'E6B984
  'Data Table: 5C8390
  Dim var_88 As PictureBox
  Dim var_98 As Long
  loc_E6B930: On Error Resume Next
  loc_E6B945: Me.PictShortCuts.MousePointer = CInt(0)
  loc_E6B959: If (CLng(Index) = 1) Then
  loc_E6B95E:   var_98 = 1
  loc_E6B96B:   Set var_88 = Me.TreeView1
  loc_E6B97C: End If
  loc_E6B980: Exit Sub
  loc_E6B981: Result TreeView1.DispID_18001 End Sub 'Currency
End Sub

Private Sub TreeView1_UnknownEvent_14 'F2F530
  'Data Table: 5C8390
  loc_F2F484: If (InStr(1, Me.TreeView1.SelectedItem.Key, "-", 0) <> 0) Then
  loc_F2F4F1:   var_FC = Mid(CVar(Me.TreeView1.SelectedItem.Key), (InStr(1, Me.TreeView1.SelectedItem.Key, "-", 0) + 1), var_EC)
  loc_F2F4FB:   var_104 = 0
  loc_F2F509:   Proc_165_2_1E4D9D4(CLng(var_FC))
  loc_F2F52D: End If
  loc_F2F52D: Exit Sub
End Sub

Private Sub MatRep_Click(Index As Integer) '13BD7C0
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_13BCE57: var_B4 = CVar("Matrep" & "+") 'String
  loc_13BCE72: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13BCE83: On Error Goto loc_13BD789
  loc_13BCE8B: var_C6 = Index
  loc_13BCE96: If (var_C6 = 0) Then
  loc_13BCEA5:   global_52 = New rInventRepView
  loc_13BCEBA:   global_52.GRepFormName = "PurchaseReg"
  loc_13BCECD:   Set var_CC = var_F0(Index)
  loc_13BCED3:   Call 0.Method_MatRep_Click0 (var_F4, var_C6)
  loc_13BCEDB:   MemVar_1F95204 = global_52.Menu.Caption
  loc_13BCEED:   global_52.CAPTION = CVar(var_F4)
  loc_13BCF05:   Call global_52.Show
  loc_13BCF0E: Else
  loc_13BCF16:   If (var_C6 = 1) Then
  loc_13BCF25:     global_52 = New rInventRepView
  loc_13BCF3A:     global_52.GRepFormName = "PurchaseSumm"
  loc_13BCF4D:     Set var_CC = var_F0(Index)
  loc_13BCF53:     Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BCF5B:      = global_52.Menu.Caption
  loc_13BCF6D:     global_52.CAPTION = CVar(var_F4)
  loc_13BCF85:     Call global_52.Show
  loc_13BCF8E:   Else
  loc_13BCF96:     If (var_C6 = 2) Then
  loc_13BCFA5:       global_52 = New rInventRepView
  loc_13BCFBA:       global_52.GRepFormName = "CashCreditPurch"
  loc_13BCFCD:       Set var_CC = var_F0(Index)
  loc_13BCFD3:       Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BCFDB:        = global_52.Menu.Caption
  loc_13BCFED:       global_52.CAPTION = CVar(var_F4)
  loc_13BD005:       Call global_52.Show
  loc_13BD00E:     Else
  loc_13BD016:       If (var_C6 = 3) Then
  loc_13BD025:         global_52 = New rInventRepView
  loc_13BD03A:         global_52.GRepFormName = "StockRegStore"
  loc_13BD04D:         Set var_CC = var_F0(Index)
  loc_13BD053:         Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD05B:          = global_52.Menu.Caption
  loc_13BD06D:         global_52.CAPTION = CVar(var_F4)
  loc_13BD085:         Call global_52.Show
  loc_13BD08E:       Else
  loc_13BD096:         If (var_C6 = 4) Then
  loc_13BD0A5:           global_52 = New rInventRepView
  loc_13BD0BA:           global_52.GRepFormName = "StockSummStore"
  loc_13BD0CD:           Set var_CC = var_F0(Index)
  loc_13BD0D3:           Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD0DB:            = global_52.Menu.Caption
  loc_13BD0ED:           global_52.CAPTION = CVar(var_F4)
  loc_13BD105:           Call global_52.Show
  loc_13BD10E:         Else
  loc_13BD116:           If (var_C6 = 5) Then
  loc_13BD125:             global_52 = New rInventRepView
  loc_13BD13A:             global_52.GRepFormName = "StockINHand"
  loc_13BD14D:             Set var_CC = var_F0(Index)
  loc_13BD153:             Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD15B:              = global_52.Menu.Caption
  loc_13BD16D:             global_52.CAPTION = CVar(var_F4)
  loc_13BD185:             Call global_52.Show
  loc_13BD18E:           Else
  loc_13BD196:             If (var_C6 = 6) Then
  loc_13BD1A5:               global_52 = New rInventRepView
  loc_13BD1BA:               global_52.GRepFormName = "KitchenStkRep"
  loc_13BD1CD:               Set var_CC = var_F0(Index)
  loc_13BD1D3:               Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD1DB:                = global_52.Menu.Caption
  loc_13BD1ED:               global_52.CAPTION = CVar(var_F4)
  loc_13BD205:               Call global_52.Show
  loc_13BD20E:             Else
  loc_13BD216:               If (var_C6 = 7) Then
  loc_13BD225:                 global_52 = New rInventRepView
  loc_13BD23A:                 global_52.GRepFormName = "ExcessConsumption"
  loc_13BD24D:                 Set var_CC = var_F0(Index)
  loc_13BD253:                 Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD25B:                  = global_52.Menu.Caption
  loc_13BD26D:                 global_52.CAPTION = CVar(var_F4)
  loc_13BD285:                 Call global_52.Show
  loc_13BD28E:               Else
  loc_13BD296:                 If (var_C6 = 8) Then
  loc_13BD2A5:                   global_52 = New rInventRepView
  loc_13BD2BA:                   global_52.GRepFormName = "RestIssue"
  loc_13BD2CD:                   Set var_CC = var_F0(Index)
  loc_13BD2D3:                   Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD2DB:                    = global_52.Menu.Caption
  loc_13BD2ED:                   global_52.CAPTION = CVar(var_F4)
  loc_13BD305:                   Call global_52.Show
  loc_13BD30E:                 Else
  loc_13BD316:                   If (var_C6 = 9) Then
  loc_13BD325:                     global_52 = New rInventRepView
  loc_13BD33A:                     global_52.GRepFormName = "StoreIssReg"
  loc_13BD34D:                     Set var_CC = var_F0(Index)
  loc_13BD353:                     Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD35B:                      = global_52.Menu.Caption
  loc_13BD36D:                     global_52.CAPTION = CVar(var_F4)
  loc_13BD385:                     Call global_52.Show
  loc_13BD38E:                   Else
  loc_13BD396:                     If (var_C6 = &HA) Then
  loc_13BD3A5:                       global_52 = New FrmChangeKitch
  loc_13BD3BB:                       Set var_CC = var_F0(Index)
  loc_13BD3C1:                       Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD3C9:                        = FrmChangeKitch.Menu.Caption
  loc_13BD3DB:                       global_52.CAPTION = CVar(var_F4)
  loc_13BD3F3:                       Call global_52.Show
  loc_13BD3FC:                     Else
  loc_13BD404:                       If (var_C6 = &HB) Then
  loc_13BD413:                         global_52 = New rInventRepView
  loc_13BD428:                         global_52.GRepFormName = "DailyStoreIssRpt"
  loc_13BD43B:                         Set var_CC = var_F0(Index)
  loc_13BD441:                         Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD449:                          = global_52.Menu.Caption
  loc_13BD45B:                         global_52.CAPTION = CVar(var_F4)
  loc_13BD473:                         Call global_52.Show
  loc_13BD47C:                       Else
  loc_13BD484:                         If (var_C6 = &HC) Then
  loc_13BD493:                           global_52 = New rInventRepView
  loc_13BD4A8:                           global_52.GRepFormName = "PurchaseLedger"
  loc_13BD4BB:                           Set var_CC = var_F0(Index)
  loc_13BD4C1:                           Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD4C9:                            = global_52.Menu.Caption
  loc_13BD4DB:                           global_52.CAPTION = CVar(var_F4)
  loc_13BD4F3:                           Call global_52.Show
  loc_13BD4FC:                         Else
  loc_13BD504:                           If (var_C6 = &HD) Then
  loc_13BD513:                             global_52 = New rInventRepView
  loc_13BD528:                             global_52.GRepFormName = "IssueReg"
  loc_13BD53B:                             Set var_CC = var_F0(Index)
  loc_13BD541:                             Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD549:                              = global_52.Menu.Caption
  loc_13BD55B:                             global_52.CAPTION = CVar(var_F4)
  loc_13BD573:                             Call global_52.Show
  loc_13BD57C:                           Else
  loc_13BD584:                             If (var_C6 = &HF) Then
  loc_13BD593:                               global_52 = New rInventRepView
  loc_13BD5A8:                               global_52.GRepFormName = "StockSummaryP/SBasis"
  loc_13BD5BB:                               Set var_CC = var_F0(Index)
  loc_13BD5C1:                               Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD5C9:                                = global_52.Menu.Caption
  loc_13BD5DB:                               global_52.CAPTION = CVar(var_F4)
  loc_13BD5F3:                               Call global_52.Show
  loc_13BD5FC:                             Else
  loc_13BD604:                               If (var_C6 = &H10) Then
  loc_13BD613:                                 global_52 = New rInventRepView
  loc_13BD628:                                 global_52.GRepFormName = "ABCAnalysis"
  loc_13BD63B:                                 Set var_CC = var_F0(Index)
  loc_13BD641:                                 Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD649:                                  = global_52.Menu.Caption
  loc_13BD65B:                                 global_52.CAPTION = CVar(var_F4)
  loc_13BD673:                                 Call global_52.Show
  loc_13BD67C:                               Else
  loc_13BD684:                                 If (var_C6 = &H11) Then
  loc_13BD693:                                   global_52 = New rInventRepView
  loc_13BD6A8:                                   global_52.GRepFormName = "PurchBill"
  loc_13BD6BB:                                   Set var_CC = var_F0(Index)
  loc_13BD6C1:                                   Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD6C9:                                    = global_52.Menu.Caption
  loc_13BD6DB:                                   global_52.CAPTION = CVar(var_F4)
  loc_13BD6F3:                                   Call global_52.Show
  loc_13BD6FC:                                 Else
  loc_13BD704:                                   If (var_C6 = &H12) Then
  loc_13BD713:                                     global_52 = New rInventRepView
  loc_13BD728:                                     global_52.GRepFormName = "StoreIssueReport"
  loc_13BD73B:                                     Set var_CC = var_F0(Index)
  loc_13BD741:                                     Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BD749:                                      = global_52.Menu.Caption
  loc_13BD75B:                                     global_52.CAPTION = CVar(var_F4)
  loc_13BD773:                                     Call global_52.Show
  loc_13BD779:                                   End If
  loc_13BD779:                                 End If
  loc_13BD779:                               End If
  loc_13BD779:                             End If
  loc_13BD779:                           End If
  loc_13BD779:                         End If
  loc_13BD779:                       End If
  loc_13BD779:                     End If
  loc_13BD779:                   End If
  loc_13BD779:                 End If
  loc_13BD779:               End If
  loc_13BD779:             End If
  loc_13BD779:           End If
  loc_13BD779:         End If
  loc_13BD779:       End If
  loc_13BD779:     End If
  loc_13BD779:   End If
  loc_13BD779: End If
  loc_13BD782: global_52 = Nothing
  loc_13BD788: Exit Sub
  loc_13BD789: ' Referenced from: 13BCE83
  loc_13BD793: Set var_CC = Err()
  loc_13BD799: Call 0.Method_arg_1C (var_F8)
  loc_13BD7AA: If (var_F8 = &H16C) Then
  loc_13BD7AF:   Resume Next
  loc_13BD7B3: End If
  loc_13BD7B5: Proc_6_60_E63754()
  loc_13BD7BC: Exit Sub
End Sub

Public Sub sbar_UnknownEvent_9(Index As Integer) '1206480
  'Data Table: 5C8390
  Dim var_94 As Integer
  Dim var_C8 As Integer
  Dim var_D0 As Variant
  loc_1205FCD: var_94 = Index.Index
  loc_1205FD6: If (var_94 = 6) Then
  loc_1205FF4:   If (Me.PictMainMenu.Visible = &HFF) Then
  loc_1206003:     Me.PictMainMenu.Visible = False
  loc_1206011:     var_C8 = 6
  loc_1206031:     var_C8 = Me.sbar.Panels.ControlDefault
  loc_1206039:     var_D0._ObjectDefault = var_D0
  loc_1206051:   Else
  loc_120605D:     Me.PictMainMenu.Visible = True
  loc_120606B:     var_C8 = 6
  loc_120608B:     var_C8 = Me.sbar.Panels.ControlDefault
  loc_1206093:     var_D0._ObjectDefault = var_D0
  loc_12060AE:     var_C8 = 8
  loc_12060CE:     var_C8 = Me.sbar.Panels.ControlDefault
  loc_12060D6:     var_D0._ObjectDefault = var_D0
  loc_12060EB:   End If
  loc_12060EE: Else
  loc_12060F4:   If (var_94 = 7) Then
  loc_1206112:     If (Me.PictTitleBar.Visible = &HFF) Then
  loc_1206121:       Me.PictTitleBar.Visible = False
  loc_120612F:       var_C8 = 7
  loc_120614F:       var_C8 = Me.sbar.Panels.ControlDefault
  loc_1206157:       var_D0._ObjectDefault = var_D0
  loc_120616F:     Else
  loc_120617B:       Me.PictTitleBar.Visible = True
  loc_1206189:       var_C8 = 7
  loc_12061A9:       var_C8 = Me.sbar.Panels.ControlDefault
  loc_12061B1:       var_D0._ObjectDefault = var_D0
  loc_12061CC:       var_C8 = 8
  loc_12061EC:       var_C8 = Me.sbar.Panels.ControlDefault
  loc_12061F4:       var_D0._ObjectDefault = var_D0
  loc_1206209:     End If
  loc_120620C:   Else
  loc_1206212:     If (var_94 = 8) Then
  loc_120624D:       Set var_D0 = Me.PictTitleBar
  loc_1206268:       If (((Me.PictMainMenu.Visible = &HFF) Or (Me.PictSubMenu.Visible = &HFF)) Or (var_D0.Visible = &HFF)) Then
  loc_1206277:         Me.PictMainMenu.Visible = False
  loc_120628B:         Me.PictSubMenu.Visible = False
  loc_120629F:         Me.PictTitleBar.Visible = False
  loc_12062AD:         var_C8 = 6
  loc_12062CD:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_12062D5:         var_D0._ObjectDefault = var_D0
  loc_12062F0:         var_C8 = 7
  loc_1206310:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1206318:         var_D0._ObjectDefault = var_D0
  loc_1206333:         var_C8 = 8
  loc_1206353:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_120635B:         var_D0._ObjectDefault = var_D0
  loc_1206373:       Else
  loc_120637F:         Me.PictMainMenu.Visible = True
  loc_1206393:         Me.PictSubMenu.Visible = True
  loc_12063A7:         Me.PictTitleBar.Visible = True
  loc_12063B5:         var_C8 = 6
  loc_12063D5:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_12063DD:         var_D0._ObjectDefault = var_D0
  loc_12063F8:         var_C8 = 7
  loc_1206418:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1206420:         var_D0._ObjectDefault = var_D0
  loc_120643B:         var_C8 = 8
  loc_120645B:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1206463:         var_D0._ObjectDefault = var_D0
  loc_1206478:       End If
  loc_1206478:     End If
  loc_1206478:   End If
  loc_1206478: End If
  loc_1206478: Call MDIForm_Resize()
  loc_120647D: Exit Sub
End Sub

Private Sub SMSJobTimer_Timer() 'E0BB38
  'Data Table: 5C8390
  loc_E0BB2C: If (Proc_233_9_13A013C() = &HFF) Then
  loc_E0BB2F:   Call SMSTimer_Timer()
  loc_E0BB34: End If
  loc_E0BB34: Exit Sub
End Sub

Private Sub SMSTimer_Timer() '111A89C
  'Data Table: 5C8390
  Dim unk_5C83CC As Connection15
  Dim var_8C As Recordset15
  Dim var_C8 As Variant
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_B0 As Fields15
  loc_111A598: Proc_233_10_117EF68()
  loc_111A5B3: unk_5C83CC.Execute "Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'", var_AC, -1
  loc_111A5BE: Set var_8C = var_B0
  loc_111A5DB: If (var_8C.RecordCount = 0) Then
  loc_111A5DE:   Exit Sub
  loc_111A5DF: End If
  loc_111A5E7: If (Proc_233_0_EDA0F8(var_B0) = 0) Then
  loc_111A5F0:   var_C8 = 9
  loc_111A5FE:   Set var_B0 = MemVar_1F95248.sbar
  loc_111A615:   var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_111A61D:   var_D0._ObjectDefault = var_D0
  loc_111A632:   Exit Sub
  loc_111A636: Else
  loc_111A63C:   var_C8 = 9
  loc_111A64A:   Set var_B0 = MemVar_1F95248.sbar
  loc_111A661:   var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_111A669:   var_D0._ObjectDefault = var_D0
  loc_111A689:   var_AC = CreateObject("INTERNETEXPLORER.APPLICATION", 0)
  loc_111A693:   ImpAdStAd
  loc_111A69A:   ' Referenced from:   111A84A
  loc_111A6A9:   If Not(var_8C.EOF) Then
  loc_111A6E6:     var_D0 = var_8C.Fields
  loc_111A755:     var_198 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")))
  loc_111A77E:     Proc_6_39_E7D3A0(var_170, CVar(var_8C.Fields.Item("SNo")))
  loc_111A794:     var_184 = vbNullString
  loc_111A7F6:     If (Proc_233_6_1344A7C("General", MemVar_1F950EC, Proc_6_38_E69628(CVar(var_8C.Fields.Item("Mobile1")), CVar(var_8C.Fields.Item("Mobile1"))), Proc_6_38_E69628(CVar(var_D0.Item("subcode")), "Internet Is OnLine"), Proc_6_38_E69628(CVar(var_8C.Fields.Item("TxtMsg")))) = 0) Then
  loc_111A7FF:       var_C8 = 9
  loc_111A80D:       Set var_B0 = MemVar_1F95248.sbar
  loc_111A824:       var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_111A82C:       var_D0._ObjectDefault = var_D0
  loc_111A841:       Exit Sub
  loc_111A842:     End If
  loc_111A845:     var_8C.MoveNext
  loc_111A84A:     GoTo loc_111A69A
  loc_111A84D:   End If
  loc_111A853:   var_C8 = 9
  loc_111A861:   Set var_B0 = MemVar_1F95248.sbar
  loc_111A878:   var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_111A880:   var_D0._ObjectDefault = var_D0
  loc_111A895: End If
  loc_111A897: ImpAdStAd
  loc_111A89B: Exit Sub
End Sub

Private Sub MatVatR_Click(Index As Integer) '114BB10
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_114B77F: var_B4 = CVar("MatvatR" & "+") 'String
  loc_114B79A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_114B7AB: On Error Goto loc_114BADB
  loc_114B7B3: var_C6 = Index
  loc_114B7BE: If (var_C6 = 0) Then
  loc_114B7CD:   global_52 = New rInventRepView
  loc_114B7E2:   global_52.GRepFormName = "VATRegister"
  loc_114B7F5:   Set var_CC = var_F0(Index)
  loc_114B7FB:   Call 0.Method_MatVatR_Click0 (var_F4, var_C6)
  loc_114B803:   MemVar_1F95204 = global_52.Menu.Caption
  loc_114B815:   global_52.CAPTION = CVar(var_F4)
  loc_114B82D:   Call global_52.Show
  loc_114B836: Else
  loc_114B83E:   If (var_C6 = &HA) Then
  loc_114B84D:     global_52 = New rInventRepView
  loc_114B862:     global_52.GRepFormName = "VATRegisterII"
  loc_114B875:     Set var_CC = var_F0(Index)
  loc_114B87B:     Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114B883:      = global_52.Menu.Caption
  loc_114B895:     global_52.CAPTION = CVar(var_F4)
  loc_114B8AD:     Call global_52.Show
  loc_114B8B6:   Else
  loc_114B8BE:     If (var_C6 = &HB) Then
  loc_114B8CD:       global_52 = New rInventRepView
  loc_114B8E2:       global_52.GRepFormName = "VATRegisterIII"
  loc_114B8F5:       Set var_CC = var_F0(Index)
  loc_114B8FB:       Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114B903:        = global_52.Menu.Caption
  loc_114B915:       global_52.CAPTION = CVar(var_F4)
  loc_114B92D:       Call global_52.Show
  loc_114B936:     Else
  loc_114B93E:       If (var_C6 = &HC) Then
  loc_114B94D:         global_52 = New rInventRepView
  loc_114B962:         global_52.GRepFormName = "Form24AnnexureA"
  loc_114B975:         Set var_CC = var_F0(Index)
  loc_114B97B:         Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114B983:          = global_52.Menu.Caption
  loc_114B995:         global_52.CAPTION = CVar(var_F4)
  loc_114B9AD:         Call global_52.Show
  loc_114B9B6:       Else
  loc_114B9BE:         If (var_C6 = &HF) Then
  loc_114B9CD:           global_52 = New rInventRepView
  loc_114B9E2:           global_52.GRepFormName = "FormIII"
  loc_114B9F5:           Set var_CC = var_F0(Index)
  loc_114B9FB:           Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114BA03:            = global_52.Menu.Caption
  loc_114BA15:           global_52.CAPTION = CVar(var_F4)
  loc_114BA37:           Me.Global.Unload global_52
  loc_114BA42:         Else
  loc_114BA4A:           If (var_C6 = &H10) Then
  loc_114BA59:             global_52 = New rInventRepView
  loc_114BA6E:             global_52.GRepFormName = "UPVATXXIV"
  loc_114BA81:             Set var_CC = var_F0(Index)
  loc_114BA87:             Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114BA8F:              = global_52.Menu.Caption
  loc_114BAA1:             global_52.CAPTION = CVar(var_F4)
  loc_114BAC3:             Me.Global.Unload global_52
  loc_114BACB:           End If
  loc_114BACB:         End If
  loc_114BACB:       End If
  loc_114BACB:     End If
  loc_114BACB:   End If
  loc_114BACB: End If
  loc_114BAD4: global_52 = Nothing
  loc_114BADA: Exit Sub
  loc_114BADB: ' Referenced from: 114B7AB
  loc_114BAE5: Set var_CC = Err()
  loc_114BAEB: Call 0.Method_arg_1C (var_F8)
  loc_114BAFC: If (var_F8 = &H16C) Then
  loc_114BB01:   Resume Next
  loc_114BB05: End If
  loc_114BB07: Proc_6_60_E63754()
  loc_114BB0E: Exit Sub
End Sub

Private Sub Print_KOT_Timer_Timer() 'EB8B30
  'Data Table: 5C8390
  Dim unk_5C83CC As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  loc_EB8AB2: unk_5C83CC.Execute "Select Top 1 DOCID from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' ORDER BY U_EntDt", var_A8, -1
  loc_EB8ADA: If (var_AC.RecordCount = 0) Then
  loc_EB8AE2:   Set var_88 = Nothing
  loc_EB8AE5:   Exit Sub
  loc_EB8AE6: End If
  loc_EB8B15: Proc_260_21_1E6CEB4(CStr(var_88.Fields.Item("DocID").Value))
  loc_EB8B2C: Set var_88 = Nothing
  loc_EB8B2F: Exit Sub
End Sub

Private Sub LblCalender_UnknownEvent_9 'E15B8C
  'Data Table: 5C8390
  loc_E15B83: Call 0.Method_arg_2B0 (1)
  loc_E15B88: Exit Sub
End Sub

Private Sub Timer1_Timer() '10DF280
  'Data Table: 5C8390
  Dim var_D0 As String
  Dim unk_5C83CC As Connection15
  Dim Me As Recordset15
  Dim var_94 As Variant
  loc_10DEF80: Set var_A8 = Me.LblTimeIndia
  loc_10DEF86: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Time)
  loc_10DEFAB: Proc_96_12_F0A130(CDate(Time))
  loc_10DEFB9: Set var_A8 = Me.LblTimeCanada
  loc_10DEFBF: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("09:30:00")))
  loc_10DEFE4: Proc_96_12_F0A130(CDate(Time))
  loc_10DEFF2: Set var_A8 = Me.LblTimeItaly
  loc_10DEFF8: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("03:30:00")))
  loc_10DF01D: Proc_96_12_F0A130(CDate(Time))
  loc_10DF02B: Set var_A8 = Me.LblTimeLondon
  loc_10DF031: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("04:30:00")))
  loc_10DF056: Proc_96_11_EFA968(CDate(Time))
  loc_10DF064: Set var_A8 = Me.LblTimeJapan
  loc_10DF06A: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("03:30:00")))
  loc_10DF078: var_94 = Time
  loc_10DF08F: Proc_96_11_EFA968(CDate(var_94))
  loc_10DF0A3: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("04:30:00")))
  loc_10DF0C9: var_D0 = "SELECT * FROM Messaging Where Receiver='" & MemVar_1F950C8 & "'  and(Cleared is Null Or Cleared='' Or Cleared='N')And ReadYN='N' Order By VDATE DESC,VType DESC,VNo DESC,Sender"
  loc_10DF0D2: unk_5C83CC.Execute var_D0, var_94, -1
  loc_10DF0E3: Set global_92 = Me.LblTimeAustralia
  loc_10DF10F: If (Me.RecordCount > 0) Then
  loc_10DF13F:   Set var_A8 = Me.LblMgs
  loc_10DF145:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010005(CVar(CDbl(735)))
  loc_10DF155:   Set var_A8 = Me.LblMgsInfo
  loc_10DF15B:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_10DF16D:   var_94 = CVar(CStr(Me.RecordCount) & " Unread Message  ") 'String
  loc_10DF175:   Set var_A8 = Me.LblMgsInfo
  loc_10DF17B:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_94)
  loc_10DF1D0:   Set var_A8 = Me.LblMgsInfo
  loc_10DF1D6:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_94))), CInt((CDbl(255) * Rnd(var_E8))), CInt((CDbl(255) * Rnd(var_108))))))
  loc_10DF231:   Set var_A8 = Me.LblMgs
  loc_10DF237:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_94))), CInt((CDbl(255) * Rnd(var_E8))), CInt((CDbl(255) * Rnd(var_108))))))
  loc_10DF24B: Else
  loc_10DF254:   Set var_A8 = Me.LblMgsInfo
  loc_10DF25A:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_10DF26F:   Set var_A8 = Me.LblMgs
  loc_10DF275:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010005(CVar(CDbl(1600)))
  loc_10DF27D: End If
  loc_10DF27D: Exit Sub
End Sub

Private Sub lblStatus_UnknownEvent_9 'F096C8
  'Data Table: 5C8390
  Dim var_A8 As Variant
  Dim var_8C As Variant
  loc_F095E8: Set var_8C = Me.CmdSubMenu
  loc_F095EE: Call 0.Method_lblStatus_UnknownEvent_9C (var_8E, var_86)
  loc_F095FC: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F09611:   Set var_8C = Me.CmdSubMenu
  loc_F09617:   Call 0.Method_lblStatus_UnknownEvent_90 (var_86, var_98)
  loc_F0961F:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_F0962E: Next var_92 'Integer
  loc_F0963F: Me.LblCompany.Visible = True
  loc_F0964B: Set var_8C = Me.LblStatus
  loc_F09651: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_F09666: If (CLng(CInt()) = 1) Then
  loc_F09669:   var_A8 = "Hide Status"
  loc_F09673:   Set var_8C = Me.LblStatus
  loc_F09679:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_A8)
  loc_F0968F:   Call 0.Method_arg_2B0 (var_A8)
  loc_F09697: Else
  loc_F096A1:   Set var_8C = Me.LblStatus
  loc_F096A7:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Property Status")
  loc_F096BF:   Me.LblStatus.Unload MemVar_1F95B14
  loc_F096C7: End If
  loc_F096C7: Exit Sub
End Sub

Private Sub MallMgmt_Click() 'DFC44C
  'Data Table: 5C8390
  loc_DFC448: Exit Sub
End Sub

Private Sub MemOpr_Click(Index As Integer) '1081414
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_1081177: var_B4 = CVar("MemOpr" & "+") 'String
  loc_1081192: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_10811A4: var_C6 = Index
  loc_10811AD: If (var_C6 = 0) Then
  loc_10811B0:   GoTo loc_1081412
  loc_10811B3: End If
  loc_10811B9: If (var_C6 = 1) Then
  loc_10811DA:   Set var_CC = var_D0(Index)
  loc_10811E0:   Call 0.Method_MemOpr_Click0 (var_D4, var_C6)
  loc_10811E8:   MemVar_1F95204 = memOutStationEntry.Menu.Caption
  loc_10811FA:   New memOutStationEntry.CAPTION = CVar(var_D4)
  loc_108120B: Else
  loc_1081211:   If (var_C6 = 2) Then
  loc_108121E:     global_52 = New memCatChngEntry
  loc_1081232:     Set var_CC = var_D0(Index)
  loc_1081238:     Call 0.Method_MemOpr_Click0 (var_D4)
  loc_1081240:      = memCatChngEntry.Menu.Caption
  loc_1081252:     global_52.CAPTION = CVar(var_D4)
  loc_1081268:     Call global_52.Show
  loc_1081271:   Else
  loc_1081277:     If (var_C6 = 3) Then
  loc_1081284:       global_52 = New MemPaymentReceive
  loc_1081298:       Set var_CC = var_D0(Index)
  loc_108129E:       Call 0.Method_MemOpr_Click0 (var_D4)
  loc_10812A6:        = MemPaymentReceive.Menu.Caption
  loc_10812B8:       global_52.CAPTION = CVar(var_D4)
  loc_10812CE:       Call global_52.Show
  loc_10812D7:     Else
  loc_10812DD:       If (var_C6 = 4) Then
  loc_10812E0:         GoTo loc_1081412
  loc_10812E3:       End If
  loc_10812E9:       If (var_C6 = 5) Then
  loc_10812F6:         global_52 = New MemTagadaLetter
  loc_108130A:         Set var_CC = var_D0(Index)
  loc_1081310:         Call 0.Method_MemOpr_Click0 (var_D4)
  loc_1081318:          = MemTagadaLetter.Menu.Caption
  loc_108132A:         global_52.CAPTION = CVar(var_D4)
  loc_1081340:         Call global_52.Show
  loc_1081349:       Else
  loc_108134F:         If (var_C6 = 6) Then
  loc_108135C:           global_52 = New memCatChngCond
  loc_1081370:           Set var_CC = var_D0(Index)
  loc_1081376:           Call 0.Method_MemOpr_Click0 (var_D4)
  loc_108137E:            = memCatChngCond.Menu.Caption
  loc_1081390:           global_52.CAPTION = CVar(var_D4)
  loc_10813A6:           Call global_52.Show
  loc_10813AF:         Else
  loc_10813B5:           If (var_C6 = &HB) Then
  loc_10813C2:             global_52 = New MemAutoSettleCardBalance
  loc_10813D6:             Set var_CC = var_D0(Index)
  loc_10813DC:             Call 0.Method_MemOpr_Click0 (var_D4)
  loc_10813E4:              = MemAutoSettleCardBalance.Menu.Caption
  loc_10813F6:             global_52.CAPTION = CVar(var_D4)
  loc_108140C:             Call global_52.Show
  loc_1081412:           End If
  loc_1081412:         End If
  loc_1081412:         ' Referenced from:       10812E0
  loc_1081412:       End If
  loc_1081412:     End If
  loc_1081412:   End If
  loc_1081412:   ' Referenced from: 10811B0
  loc_1081412: End If
  loc_1081412: Exit Sub
End Sub

Private Sub MemRpt_Click(Index As Integer) '11A15EC
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_DC As Variant
  Dim var_CC As Variant
  loc_11A11D7: var_B4 = CVar("MemRpt" & "+") 'String
  loc_11A11F2: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11A1204: var_C6 = Index
  loc_11A120D: If (var_C6 = 0) Then
  loc_11A121A:   global_52 = New rMemberRepView
  loc_11A122D:   global_52.GRepFormName = "MemVisitDetail"
  loc_11A123E:   Set var_CC = var_F0(Index)
  loc_11A1244:   Call 0.Method_MemRpt_Click0 (var_F4, var_C6)
  loc_11A124C:   MemVar_1F95204 = global_52.Menu.Caption
  loc_11A125E:   global_52.CAPTION = CVar(var_F4)
  loc_11A1274:   Call global_52.Show
  loc_11A127D: Else
  loc_11A1283:   If (var_C6 = 1) Then
  loc_11A1290:     global_52 = New rMemberRepView
  loc_11A12A3:     global_52.GRepFormName = "MemMalingLabels"
  loc_11A12B4:     Set var_CC = var_F0(Index)
  loc_11A12BA:     Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A12C2:      = global_52.Menu.Caption
  loc_11A12D4:     global_52.CAPTION = CVar(var_F4)
  loc_11A12F4:     Me.Global.Unload global_52
  loc_11A12FF:   Else
  loc_11A1305:     If (var_C6 = 2) Then
  loc_11A1312:       global_52 = New rMemberRepView
  loc_11A1325:       global_52.GRepFormName = "MemBillMissingReport"
  loc_11A1336:       Set var_CC = var_F0(Index)
  loc_11A133C:       Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A1344:        = global_52.Menu.Caption
  loc_11A1356:       global_52.CAPTION = CVar(var_F4)
  loc_11A1364:       var_DC = 1
  loc_11A1372:       Call global_52.Show
  loc_11A137B:     Else
  loc_11A1381:       If (var_C6 = 3) Then
  loc_11A138E:         global_52 = New rMemberRepView
  loc_11A13A1:         global_52.GRepFormName = "MemSalesRegister"
  loc_11A13B2:         Set var_CC = var_F0(Index)
  loc_11A13B8:         Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A13C0:         var_DC = global_52.Menu.Caption
  loc_11A13D2:         global_52.CAPTION = CVar(var_F4)
  loc_11A13E8:         Call global_52.Show
  loc_11A13F1:       Else
  loc_11A13F7:         If (var_C6 = 4) Then
  loc_11A1404:           global_52 = New FaReports
  loc_11A1417:           global_52.GRepFormName = "MemLed"
  loc_11A1425:           VarLateMemLdRfVar
  loc_11A142B:           global_52.Visible = True
  loc_11A143F:           Set var_CC = var_F0(Index)
  loc_11A1445:           Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A144D:            = global_52.Menu.Caption
  loc_11A145F:           global_52.CAPTION = CVar(var_F4)
  loc_11A1475:           Call global_52.Show
  loc_11A147E:         Else
  loc_11A1484:           If (var_C6 = 5) Then
  loc_11A1491:             global_52 = New rMemberRepView
  loc_11A14A4:             global_52.GRepFormName = "MemTaxReport"
  loc_11A14B5:             Set var_CC = var_F0(Index)
  loc_11A14BB:             Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A14C3:              = global_52.Menu.Caption
  loc_11A14D5:             global_52.CAPTION = CVar(var_F4)
  loc_11A14EB:             Call global_52.Show
  loc_11A14F4:           Else
  loc_11A14FA:             If (var_C6 = 6) Then
  loc_11A1507:               global_52 = New rMemberRepView
  loc_11A151A:               global_52.GRepFormName = "PaymentDueLetterReport"
  loc_11A152B:               Set var_CC = var_F0(Index)
  loc_11A1531:               Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A1539:                = global_52.Menu.Caption
  loc_11A154B:               global_52.CAPTION = CVar(var_F4)
  loc_11A156B:               Me.Global.Unload global_52
  loc_11A1576:             Else
  loc_11A157C:               If (var_C6 = 7) Then
  loc_11A1589:                 global_52 = New rMemberRepView
  loc_11A159C:                 global_52.GRepFormName = "MemBirthAnnvDtls"
  loc_11A15AD:                 Set var_CC = var_F0(Index)
  loc_11A15B3:                 Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A15BB:                  = global_52.Menu.Caption
  loc_11A15CD:                 global_52.CAPTION = CVar(var_F4)
  loc_11A15E3:                 Call global_52.Show
  loc_11A15E9:               End If
  loc_11A15E9:             End If
  loc_11A15E9:           End If
  loc_11A15E9:         End If
  loc_11A15E9:       End If
  loc_11A15E9:     End If
  loc_11A15E9:   End If
  loc_11A15E9: End If
  loc_11A15E9: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E72728
  'Data Table: 5C8390
  loc_E7270F: If (MsgBox("Are you sure you want to quit?", &H24, "Quit", var_E4, var_104) = 6) Then
  loc_E7271F:   Me.Global.Unload Me
  loc_E72727: End If
  loc_E72727: Exit Sub
End Sub

Private Sub FAREPORTD_Click(Index As Integer) 'F7E478
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CA As Integer
  loc_F7E33F: var_B4 = CVar("FAREPORTD" & "+") 'String
  loc_F7E35A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F7E36C: var_CA = Index
  loc_F7E375: If (var_CA = 0) Then
  loc_F7E37B:   var_C8 = "BALSHEET"
  loc_F7E381: Else
  loc_F7E387:   If (var_CA = 1) Then
  loc_F7E38D:     var_C8 = "PROFLOSS"
  loc_F7E393:   Else
  loc_F7E399:     If (var_CA = 2) Then
  loc_F7E39F:       var_C8 = "GROUPTRIAL"
  loc_F7E3A5:     Else
  loc_F7E3AB:       If (var_CA = 3) Then
  loc_F7E3B1:         var_C8 = "LEDTRIAL"
  loc_F7E3B7:       Else
  loc_F7E3BD:         If (var_CA = 4) Then
  loc_F7E3C3:           var_C8 = "CASHFLOW"
  loc_F7E3C9:         Else
  loc_F7E3CF:           If (var_CA = 5) Then
  loc_F7E3D5:             var_C8 = "FUNDFLOW"
  loc_F7E3DB:           Else
  loc_F7E3E1:             If (var_CA = 6) Then
  loc_F7E3E7:               var_C8 = "CASHBANKSUM"
  loc_F7E3EA:             End If
  loc_F7E3EA:           End If
  loc_F7E3EA:         End If
  loc_F7E3EA:       End If
  loc_F7E3EA:     End If
  loc_F7E3EA:   End If
  loc_F7E3EA: End If
  loc_F7E3F2: If (var_C8 <> vbNullString) Then
  loc_F7E3FF:   global_52 = New FaMagic
  loc_F7E410:   global_52.ShowSiteWise = True
  loc_F7E421:   global_52.OpenType = CVar(var_C8)
  loc_F7E432:   Set var_D0 = var_F4(Index)
  loc_F7E438:   Call 0.Method_FAREPORTD_Click0 (var_F8, var_CA)
  loc_F7E440:   MemVar_1F95204 = global_52.Menu.Caption
  loc_F7E452:   global_52.CAPTION = CVar(var_F8)
  loc_F7E468:   Call global_52.Show
  loc_F7E46E: End If
  loc_F7E473: global_52 = Nothing
  loc_F7E477: Exit Sub
End Sub

Private Sub mnuMSG_Click(Index As Integer) 'F2DD90
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_F2DC93: var_B4 = CVar("mnuMSG" & "+") 'String
  loc_F2DCAE: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F2DCC0: var_C6 = Index
  loc_F2DCC9: If (var_C6 = 0) Then
  loc_F2DCD6:   global_52 = New Inbox
  loc_F2DCEA:   Set var_CC = var_D0(Index)
  loc_F2DCF0:   Call 0.Method_mnuMSG_Click0 (var_D4, var_C6)
  loc_F2DCF8:   MemVar_1F95204 = Inbox.Menu.Caption
  loc_F2DD0A:   global_52.CAPTION = CVar(var_D4)
  loc_F2DD20:   Call global_52.Show
  loc_F2DD29: Else
  loc_F2DD2F:   If (var_C6 = 1) Then
  loc_F2DD3C:     global_52 = New Outbox
  loc_F2DD50:     Set var_CC = var_D0(Index)
  loc_F2DD56:     Call 0.Method_mnuMSG_Click0 (var_D4)
  loc_F2DD5E:      = Outbox.Menu.Caption
  loc_F2DD70:     global_52.CAPTION = CVar(var_D4)
  loc_F2DD86:     Call global_52.Show
  loc_F2DD8C:   End If
  loc_F2DD8C: End If
  loc_F2DD8C: Exit Sub
End Sub

Private Sub CHANGEHK_Click() 'E23974
  'Data Table: 5C8390
  loc_E2396D: Call New FrmChangeDepart.Show
  loc_E23973: Exit Sub
End Sub

Private Sub mnuTelMast_Click(Index As Integer) 'ED02DC
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_ED0243: var_B4 = CVar("mnuTelMast" & "+") 'String
  loc_ED025E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ED0279: If (Index = 0) Then
  loc_ED0285:   global_52 = MemVar_1F95E48
  loc_ED0296:   Set var_CC = Me.mnuTelMast
  loc_ED029C:   Call 0.Method_mnuTelMast_Click0 (Index, var_D0, var_D4)
  loc_ED02A4:   var_C6 = var_D0.Caption
  loc_ED02B6:   global_52.CAPTION = CVar(var_D4)
  loc_ED02CC:   Call global_52.Show
  loc_ED02D2: End If
  loc_ED02D7: global_52 = Nothing
  loc_ED02DB: Exit Sub
End Sub

Private Sub EXTSMSSETUP_Click(Index As Integer) 'ED03C8
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_ED032F: var_B4 = CVar("EXTSMSSETUP" & "+") 'String
  loc_ED034A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ED0365: If (Index = 1) Then
  loc_ED0371:   global_52 = MemVar_1F95468
  loc_ED0382:   Set var_CC = Me.EXTSMSSETUP
  loc_ED0388:   Call 0.Method_EXTSMSSETUP_Click0 (Index, var_D0, var_D4)
  loc_ED0390:   var_C6 = var_D0.Caption
  loc_ED03A2:   global_52.CAPTION = CVar(var_D4)
  loc_ED03B8:   Call global_52.Show
  loc_ED03BE: End If
  loc_ED03C3: global_52 = Nothing
  loc_ED03C7: Exit Sub
End Sub

Private Sub mnuTelRep_Click(Index As Integer) 'EDF094
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_EDEFEF: var_B4 = CVar("mnuTelRep" & "+") 'String
  loc_EDF00A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_EDF01C: var_C6 = Index
  loc_EDF025: If (var_C6 = 0) Then
  loc_EDF032:   global_52 = New rRepTelPreview
  loc_EDF045:   global_52.GRepFormName = "EpabxCallRep"
  loc_EDF056:   Set var_CC = var_F0(Index)
  loc_EDF05C:   Call 0.Method_mnuTelRep_Click0 (var_F4, var_C6)
  loc_EDF064:   MemVar_1F95204 = global_52.Menu.Caption
  loc_EDF076:   global_52.CAPTION = CVar(var_F4)
  loc_EDF08C:   Call global_52.Show
  loc_EDF092: End If
  loc_EDF092: Exit Sub
  loc_EDF093:  = 
End Sub

Private Sub MISREP_Click(Index As Integer) '1214A68
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_1214593: var_B4 = CVar("MISREP" & "+") 'String
  loc_12145AE: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_12145C0: var_C6 = Index
  loc_12145C9: If (var_C6 = 0) Then
  loc_12145D6:   global_52 = New rPOSRepView
  loc_12145E9:   global_52.GRepFormName = "CashierCollection"
  loc_12145FA:   Set var_CC = var_F0(Index)
  loc_1214600:   Call 0.Method_MISREP_Click0 (var_F4, var_C6)
  loc_1214608:   MemVar_1F95204 = global_52.Menu.Caption
  loc_121461A:   global_52.CAPTION = CVar(var_F4)
  loc_1214630:   Call global_52.Show
  loc_1214639: Else
  loc_121463F:   If (var_C6 = 1) Then
  loc_121464C:     global_52 = New rPOSRepView
  loc_121465F:     global_52.GRepFormName = "OpenItemSale"
  loc_1214670:     Set var_CC = var_F0(Index)
  loc_1214676:     Call 0.Method_MISREP_Click0 (var_F4)
  loc_121467E:      = global_52.Menu.Caption
  loc_1214690:     global_52.CAPTION = CVar(var_F4)
  loc_12146A6:     Call global_52.Show
  loc_12146AF:   Else
  loc_12146B5:     If (var_C6 = 2) Then
  loc_12146C2:       global_52 = New rPOSRepView
  loc_12146D5:       global_52.GRepFormName = "VoidBills"
  loc_12146E6:       Set var_CC = var_F0(Index)
  loc_12146EC:       Call 0.Method_MISREP_Click0 (var_F4)
  loc_12146F4:        = global_52.Menu.Caption
  loc_1214706:       global_52.CAPTION = CVar(var_F4)
  loc_121471C:       Call global_52.Show
  loc_1214725:     Else
  loc_121472B:       If (var_C6 = 3) Then
  loc_1214738:         global_52 = New rPOSRepView
  loc_121474B:         global_52.GRepFormName = "KOTRateChange"
  loc_121475C:         Set var_CC = var_F0(Index)
  loc_1214762:         Call 0.Method_MISREP_Click0 (var_F4)
  loc_121476A:          = global_52.Menu.Caption
  loc_121477C:         global_52.CAPTION = CVar(var_F4)
  loc_1214792:         Call global_52.Show
  loc_121479B:       Else
  loc_12147A1:         If (var_C6 = 5) Then
  loc_12147AE:           global_52 = New rPOSRepView
  loc_12147C1:           global_52.GRepFormName = "DiscountSumm"
  loc_12147D2:           Set var_CC = var_F0(Index)
  loc_12147D8:           Call 0.Method_MISREP_Click0 (var_F4)
  loc_12147E0:            = global_52.Menu.Caption
  loc_12147F2:           global_52.CAPTION = CVar(var_F4)
  loc_1214808:           Call global_52.Show
  loc_1214811:         Else
  loc_1214817:           If (var_C6 = 6) Then
  loc_1214824:             global_52 = New rPOSRepView
  loc_1214837:             global_52.GRepFormName = "MonthOutletWiseSale"
  loc_1214848:             Set var_CC = var_F0(Index)
  loc_121484E:             Call 0.Method_MISREP_Click0 (var_F4)
  loc_1214856:              = global_52.Menu.Caption
  loc_1214868:             global_52.CAPTION = CVar(var_F4)
  loc_121487E:             Call global_52.Show
  loc_1214887:           Else
  loc_121488D:             If (var_C6 = 7) Then
  loc_121489A:               global_52 = New rPOSRepView
  loc_12148AD:               global_52.GRepFormName = "ABCAnalysisSale"
  loc_12148BE:               Set var_CC = var_F0(Index)
  loc_12148C4:               Call 0.Method_MISREP_Click0 (var_F4)
  loc_12148CC:                = global_52.Menu.Caption
  loc_12148DE:               global_52.CAPTION = CVar(var_F4)
  loc_12148F4:               Call global_52.Show
  loc_12148FD:             Else
  loc_1214903:               If (var_C6 = 8) Then
  loc_1214910:                 global_52 = New rPOSRepView
  loc_1214923:                 global_52.GRepFormName = "SaleSumm"
  loc_1214934:                 Set var_CC = var_F0(Index)
  loc_121493A:                 Call 0.Method_MISREP_Click0 (var_F4)
  loc_1214942:                  = global_52.Menu.Caption
  loc_1214954:                 global_52.CAPTION = CVar(var_F4)
  loc_121496A:                 Call global_52.Show
  loc_1214973:               Else
  loc_1214979:                 If (var_C6 = 9) Then
  loc_1214986:                   global_52 = New rPOSRepView
  loc_1214999:                   global_52.GRepFormName = "TaxInvoiceDetail"
  loc_12149AA:                   Set var_CC = var_F0(Index)
  loc_12149B0:                   Call 0.Method_MISREP_Click0 (var_F4)
  loc_12149B8:                    = global_52.Menu.Caption
  loc_12149CA:                   global_52.CAPTION = CVar(var_F4)
  loc_12149E0:                   Call global_52.Show
  loc_12149E9:                 Else
  loc_12149EF:                   If (var_C6 = &HA) Then
  loc_12149FC:                     global_52 = New rPOSRepView
  loc_1214A0F:                     global_52.GRepFormName = "EditedBills"
  loc_1214A20:                     Set var_CC = var_F0(Index)
  loc_1214A26:                     Call 0.Method_MISREP_Click0 (var_F4)
  loc_1214A2E:                      = global_52.Menu.Caption
  loc_1214A40:                     global_52.CAPTION = CVar(var_F4)
  loc_1214A56:                     Call global_52.Show
  loc_1214A5C:                   End If
  loc_1214A5C:                 End If
  loc_1214A5C:               End If
  loc_1214A5C:             End If
  loc_1214A5C:           End If
  loc_1214A5C:         End If
  loc_1214A5C:       End If
  loc_1214A5C:     End If
  loc_1214A5C:   End If
  loc_1214A5C: End If
  loc_1214A61: global_52 = Nothing
  loc_1214A65: Exit Sub
End Sub

Private Sub mnuWindowTileHorizontal_Click() 'E09310
  'Data Table: 5C8390
  loc_E09309: Call 0.Method_arg_2EC (CInt(1))
  loc_E0930E: Exit Sub
End Sub

Private Sub MemMas_Click(Index As Integer) '113F578
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_113F1F3: var_B4 = CVar("MemMas" & "+") 'String
  loc_113F20E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_113F220: var_C6 = Index
  loc_113F229: If (var_C6 = 0) Then
  loc_113F236:   global_52 = New MemCatMast
  loc_113F24A:   Set var_CC = var_D0(Index)
  loc_113F250:   Call 0.Method_MemMas_Click0 (var_D4, var_C6)
  loc_113F258:   MemVar_1F95204 = MemCatMast.Menu.Caption
  loc_113F26A:   global_52.CAPTION = CVar(var_D4)
  loc_113F280:   Call global_52.Show
  loc_113F289: Else
  loc_113F28F:   If (var_C6 = 1) Then
  loc_113F29C:     global_52 = New MembershipMast
  loc_113F2B0:     Set var_CC = Me.CmdVarifyCard
  loc_113F2B6:     Call 0.Method_MemMas_Click0 (Index, var_D0)
  loc_113F2BE:     var_D4 = MembershipMast.CmdVarifyCard.Caption
  loc_113F2D0:     global_52.CAPTION = CVar(var_D4)
  loc_113F2E6:     Call global_52.Show
  loc_113F2EF:   Else
  loc_113F2F5:     If (var_C6 = 2) Then
  loc_113F2F8:       GoTo loc_113F574
  loc_113F2FB:     End If
  loc_113F301:     If (var_C6 = 3) Then
  loc_113F30E:       global_52 = New MemberShipRevenueMast
  loc_113F322:       Set var_CC = var_D0(Index)
  loc_113F328:       Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F330:        = MemberShipRevenueMast.Menu.Caption
  loc_113F342:       global_52.CAPTION = CVar(var_D4)
  loc_113F358:       Call global_52.Show
  loc_113F361:     Else
  loc_113F367:       If (var_C6 = 4) Then
  loc_113F374:         global_52 = New memFacilityMast
  loc_113F388:         Set var_CC = var_D0(Index)
  loc_113F38E:         Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F396:          = memFacilityMast.Menu.Caption
  loc_113F3A8:         global_52.CAPTION = CVar(var_D4)
  loc_113F3BE:         Call global_52.Show
  loc_113F3C7:       Else
  loc_113F3CD:         If (var_C6 = 5) Then
  loc_113F3DA:           global_52 = New memCatRevMast
  loc_113F3EE:           Set var_CC = var_D0(Index)
  loc_113F3F4:           Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F3FC:            = memCatRevMast.Menu.Caption
  loc_113F40E:           global_52.CAPTION = CVar(var_D4)
  loc_113F424:           Call global_52.Show
  loc_113F42D:         Else
  loc_113F433:           If (var_C6 = 6) Then
  loc_113F440:             global_52 = New memCategoryFacilities
  loc_113F454:             Set var_CC = var_D0(Index)
  loc_113F45A:             Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F462:              = memCategoryFacilities.Menu.Caption
  loc_113F474:             global_52.CAPTION = CVar(var_D4)
  loc_113F48A:             Call global_52.Show
  loc_113F493:           Else
  loc_113F499:             If (var_C6 = 7) Then
  loc_113F49C:               GoTo loc_113F574
  loc_113F49F:             End If
  loc_113F4A5:             If (var_C6 = 8) Then
  loc_113F4B2:               global_52 = New MemberEnviro
  loc_113F4C6:               Set var_CC = var_D0(Index)
  loc_113F4CC:               Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F4D4:                = MemberEnviro.Menu.Caption
  loc_113F4E6:               global_52.CAPTION = CVar(var_D4)
  loc_113F4FC:               Call global_52.Show
  loc_113F505:             Else
  loc_113F50B:               If (var_C6 = 9) Then
  loc_113F50E:                 GoTo loc_113F574
  loc_113F511:               End If
  loc_113F517:               If (var_C6 = &HA) Then
  loc_113F524:                 global_52 = New MemSelectCategory
  loc_113F538:                 Set var_CC = var_D0(Index)
  loc_113F53E:                 Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F546:                  = MemSelectCategory.Menu.Caption
  loc_113F558:                 global_52.CAPTION = CVar(var_D4)
  loc_113F56E:                 Call global_52.Show
  loc_113F574:                 ' Referenced from:               113F50E
  loc_113F574:               End If
  loc_113F574:               ' Referenced from:             113F49C
  loc_113F574:             End If
  loc_113F574:           End If
  loc_113F574:         End If
  loc_113F574:       End If
  loc_113F574:       ' Referenced from:     113F2F8
  loc_113F574:     End If
  loc_113F574:   End If
  loc_113F574: End If
  loc_113F574: Exit Sub
End Sub

Private Sub OdcRep_Click(Index As Integer) '11C56B8
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  Dim arg_186C As Variant
  loc_11C5263: var_B4 = CVar("OdcRep" & "+") 'String
  loc_11C527E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11C529A: var_CC = Proc_6_45_EADFB8(MemVar_1F95078, 2)
  loc_11C52AA: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_11C52B9: var_D2 = Index
  loc_11C52C2: If (var_D2 = 0) Then
  loc_11C52CF:   global_52 = New rHallRepView
  loc_11C52E2:   global_52.GRepFormName = "SalesRegister"
  loc_11C52F3:   Set var_D8 = var_FC(Index)
  loc_11C52F9:   Call 0.Method_OdcRep_Click0 (var_CC, var_D2)
  loc_11C5301:   MemVar_1F95204 = global_52.Menu.Caption
  loc_11C5313:   global_52.CAPTION = CVar(var_CC)
  loc_11C5329:   Call global_52.Show
  loc_11C5332: Else
  loc_11C5338:   If (var_D2 = 1) Then
  loc_11C5345:     global_52 = New rHallRepView
  loc_11C5358:     global_52.GRepFormName = "PartyOutStanding"
  loc_11C5369:     Set var_D8 = var_FC(Index)
  loc_11C536F:     Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C5377:      = global_52.Menu.Caption
  loc_11C5389:     global_52.CAPTION = CVar(var_CC)
  loc_11C539F:     Call global_52.Show
  loc_11C53A8:   Else
  loc_11C53AE:     If (var_D2 = 2) Then
  loc_11C53BB:       global_52 = New rHallRepView
  loc_11C53CE:       global_52.GRepFormName = "PartyWiseOutStanding"
  loc_11C53DF:       Set var_D8 = var_FC(Index)
  loc_11C53E5:       Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C53ED:        = global_52.Menu.Caption
  loc_11C53FF:       global_52.CAPTION = CVar(var_CC)
  loc_11C5415:       Call global_52.Show
  loc_11C541E:     Else
  loc_11C5424:       If (var_D2 = 3) Then
  loc_11C5431:         global_52 = New rHallRepView
  loc_11C5444:         global_52.GRepFormName = "CashierCollection"
  loc_11C5454:         global_52.CAPTION = "Cashier Report"
  loc_11C5460:         Call global_52.Show
  loc_11C5469:       Else
  loc_11C546F:         If (var_D2 = 4) Then
  loc_11C547C:           global_52 = New rHallRepView
  loc_11C548F:           global_52.GRepFormName = "BookingDetail"
  loc_11C54A0:           Set var_D8 = var_FC(Index)
  loc_11C54A6:           Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C54AE:            = global_52.Menu.Caption
  loc_11C54C0:           global_52.CAPTION = CVar(var_CC)
  loc_11C54D6:           Call global_52.Show
  loc_11C54DF:         Else
  loc_11C54E5:           If (var_D2 = 5) Then
  loc_11C54F2:             global_52 = New rHallRepView
  loc_11C5505:             global_52.GRepFormName = "SettleRepHall"
  loc_11C5516:             Set var_D8 = var_FC(Index)
  loc_11C551C:             Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C5524:              = global_52.Menu.Caption
  loc_11C5536:             global_52.CAPTION = CVar(var_CC)
  loc_11C554C:             Call global_52.Show
  loc_11C5555:           Else
  loc_11C555B:             If (var_D2 = 6) Then
  loc_11C5568:               global_52 = New rHallRepView
  loc_11C557B:               global_52.GRepFormName = "TaxReportHall"
  loc_11C558C:               Set var_D8 = var_FC(Index)
  loc_11C5592:               Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C559A:                = global_52.Menu.Caption
  loc_11C55AC:               global_52.CAPTION = CVar(var_CC)
  loc_11C55C2:               Call global_52.Show
  loc_11C55CB:             Else
  loc_11C55D1:               If (var_D2 = 7) Then
  loc_11C55DE:                 global_52 = New rHallRepView
  loc_11C55F1:                 global_52.GRepFormName = "DailyFuncSheet"
  loc_11C5602:                 Set var_D8 = var_FC(Index)
  loc_11C5608:                 Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C5610:                  = global_52.Menu.Caption
  loc_11C5622:                 global_52.CAPTION = CVar(var_CC)
  loc_11C5638:                 Call global_52.Show
  loc_11C5641:               Else
  loc_11C5647:                 If (var_D2 = 8) Then
  loc_11C5654:                   global_52 = New rHallRepView
  loc_11C5667:                   global_52.GRepFormName = "CoverAnalysis"
  loc_11C5678:                   Set var_D8 = var_FC(Index)
  loc_11C567E:                   Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C5686:                    = global_52.Menu.Caption
  loc_11C5698:                   global_52.CAPTION = CVar(var_CC)
  loc_11C56AE:                   Call global_52.Show
  loc_11C56B4:                 End If
  loc_11C56B4:               End If
  loc_11C56B4:             End If
  loc_11C56B4:           End If
  loc_11C56B4:         End If
  loc_11C56B4:       End If
  loc_11C56B4:     End If
  loc_11C56B4:   End If
  loc_11C56B4: End If
  loc_11C56B4: Exit Sub
  loc_11C56B6: arg_186C = CVar( & ) 'String
End Sub

Private Sub NightAuditLR_Click(Index As Integer) 'F1D9C8
  'Data Table: 5C8390
  Dim var_8C As Integer
  loc_F1D8D8: If (Index = 0) Then
  loc_F1D8E5:   global_52 = New rFomRepView
  loc_F1D8F8:   global_52.GRepFormName = "NightAuditReport"
  loc_F1D909:   Set var_90 = var_B4(Index)
  loc_F1D90F:   Call 0.Method_NightAuditLR_Click0 (var_B8)
  loc_F1D917:   var_8C = global_52.Menu.Caption
  loc_F1D929:   global_52.CAPTION = CVar(var_B8)
  loc_F1D93F:   Call global_52.Show
  loc_F1D948: Else
  loc_F1D94E:   If (var_8C = 1) Then
  loc_F1D95B:     global_52 = New rFomRepView
  loc_F1D96E:     global_52.GRepFormName = "GuestChgJournalLog"
  loc_F1D97F:     Set var_90 = var_B4(Index)
  loc_F1D985:     Call 0.Method_NightAuditLR_Click0 (var_B8)
  loc_F1D98D:      = global_52.Menu.Caption
  loc_F1D99F:     global_52.CAPTION = CVar(var_B8)
  loc_F1D9B5:     Call global_52.Show
  loc_F1D9BB:   End If
  loc_F1D9BB: End If
  loc_F1D9C0: global_52 = Nothing
  loc_F1D9C4: Exit Sub
  loc_F1D9C5: DOC
End Sub

Private Sub HallM_Click(Index As Integer) 'E59500
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  loc_E594D3: var_B4 = CVar("HallM" & "+") 'String
  loc_E594EE: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_E594FD: Exit Sub
End Sub

Private Sub NightAuditoR_Click(Index As Integer) '1134D80
  'Data Table: 5C8390
  Dim var_8C As Integer
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim unk_5C83CC As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_8A As Integer
  Dim var_B4 As Menu
  loc_1134A08: If (Index = 0) Then
  loc_1134A15:   global_52 = New rFomRepView
  loc_1134A28:   global_52.GRepFormName = "GuestLedger"
  loc_1134A39:   Set var_90 = var_B4(Index)
  loc_1134A3F:   Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_1134A47:   var_8C = global_52.Menu.Caption
  loc_1134A59:   global_52.CAPTION = CVar(var_B8)
  loc_1134A6F:   Call global_52.Show
  loc_1134A78: Else
  loc_1134A7E:   If (var_8C = 1) Then
  loc_1134A8B:     global_52 = New fdPostChrg
  loc_1134A9F:     Set var_90 = var_B4(Index)
  loc_1134AA5:     Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_1134AAD:      = fdPostChrg.Menu.Caption
  loc_1134AB5:     var_C8 = CVar(var_B8) 'String
  loc_1134ABF:     global_52.CAPTION = var_C8
  loc_1134AD5:     Call global_52.Show
  loc_1134ADE:   Else
  loc_1134AE4:     If (var_8C = 2) Then
  loc_1134B0B:       unk_5C83CC.Execute "Select KOTAtNightAudit,POSBillAtNightAudit from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_C8, -1
  loc_1134B16:       Set var_88 = var_90
  loc_1134B3A:       If (var_88.RecordCount > 0) Then
  loc_1134B4C:         var_90 = var_88.Fields
  loc_1134B76:         If (Proc_6_38_E69628(CVar(var_90.Item("KOTAtNightAudit"))) = "Yes") Then
  loc_1134B81:           If (Proc_96_47_10207DC(var_90) = 0) Then
  loc_1134B86:             var_8A = &HFF
  loc_1134B89:           End If
  loc_1134B89:         End If
  loc_1134BA0:         var_B4 = var_88.Fields.Item("POSBillAtNightAudit")
  loc_1134BC2:         If (Proc_6_38_E69628(CVar(var_B4)) = "Yes") Then
  loc_1134BCD:           If (Proc_96_46_110C538(var_8A) = 0) Then
  loc_1134BD2:             var_8A = &HFF
  loc_1134BD5:           End If
  loc_1134BD5:         End If
  loc_1134BD5:       End If
  loc_1134BDB:       If (var_8A = &HFF) Then
  loc_1134BE3:         Set var_88 = Nothing
  loc_1134BE6:         Exit Sub
  loc_1134BE7:       End If
  loc_1134BF1:       global_52 = New fdAcPostChrg
  loc_1134C05:       Set var_90 = Me.NightAuditoR
  loc_1134C0B:       Call 0.Method_NightAuditoR_Click0 (Index, var_B4)
  loc_1134C13:       var_B8 = var_B4.Caption
  loc_1134C25:       global_52.CAPTION = CVar(var_B8)
  loc_1134C3B:       Call global_52.Show
  loc_1134C44:     Else
  loc_1134C4A:       If (var_8C = 3) Then
  loc_1134C57:         global_52 = New fdNDAcPostChrg
  loc_1134C6B:         Set var_90 = var_B4(Index)
  loc_1134C71:         Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_1134C79:         var_8A = fdNDAcPostChrg.Menu.Caption
  loc_1134C8B:         global_52.CAPTION = CVar(var_B8)
  loc_1134CA1:         Call global_52.Show
  loc_1134CAA:       Else
  loc_1134CB0:         If (var_8C = 4) Then
  loc_1134CBD:           global_52 = New FrmControlPanel
  loc_1134CD1:           Set var_90 = var_B4(Index)
  loc_1134CD7:           Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_1134CDF:            = FrmControlPanel.Menu.Caption
  loc_1134CF1:           global_52.CAPTION = CVar(var_B8)
  loc_1134D07:           Call global_52.Show
  loc_1134D10:         Else
  loc_1134D16:           If (var_8C = 5) Then
  loc_1134D23:             global_52 = New frmReNightAudit
  loc_1134D37:             Set var_90 = var_B4(Index)
  loc_1134D3D:             Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_1134D45:              = frmReNightAudit.Menu.Caption
  loc_1134D57:             global_52.CAPTION = CVar(var_B8)
  loc_1134D6D:             Call global_52.Show
  loc_1134D73:           End If
  loc_1134D73:         End If
  loc_1134D73:       End If
  loc_1134D73:     End If
  loc_1134D73:   End If
  loc_1134D73: End If
  loc_1134D78: global_52 = Nothing
  loc_1134D7C: Exit Sub
End Sub

Private Sub NightAuditRR_Click(Index As Integer) '130A5A0
  'Data Table: 5C8390
  Dim var_8C As Integer
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_D8 As Boolean
  loc_1309E68: If (Index = 0) Then
  loc_1309E75:   global_52 = New rFomRepView
  loc_1309E88:   global_52.GRepFormName = "DailyReport"
  loc_1309E99:   Set var_90 = var_B4(Index)
  loc_1309E9F:   Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309EA7:   var_8C = global_52.Menu.Caption
  loc_1309EB9:   global_52.CAPTION = CVar(var_B8)
  loc_1309ECF:   Call global_52.Show
  loc_1309ED8: Else
  loc_1309EDE:   If (var_8C = 1) Then
  loc_1309EEB:     global_52 = New rFomRepView
  loc_1309EF2:     var_A0 = "Daily Report-II"
  loc_1309EFE:     global_52.GRepFormName = "DailyReport"
  loc_1309F0F:     Set var_90 = var_B4(Index)
  loc_1309F15:     Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309F1D:      = global_52.Menu.Caption
  loc_1309F2F:     global_52.CAPTION = CVar(var_B8)
  loc_1309F45:     Call global_52.Show
  loc_1309F4E:   Else
  loc_1309F54:     If (var_8C = 2) Then
  loc_1309F61:       global_52 = New rFomRepView
  loc_1309F74:       global_52.GRepFormName = "RevAnalysis"
  loc_1309F85:       Set var_90 = var_B4(Index)
  loc_1309F8B:       Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309F93:        = global_52.Menu.Caption
  loc_1309FA5:       global_52.CAPTION = CVar(var_B8)
  loc_1309FBB:       Call global_52.Show
  loc_1309FC4:     Else
  loc_1309FCA:       If (var_8C = 3) Then
  loc_1309FD7:         global_52 = New rFomRepView
  loc_1309FEA:         global_52.GRepFormName = "GuestTrialBalance"
  loc_1309FFB:         Set var_90 = var_B4(Index)
  loc_130A001:         Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A009:          = global_52.Menu.Caption
  loc_130A01B:         global_52.CAPTION = CVar(var_B8)
  loc_130A031:         Call global_52.Show
  loc_130A03A:       Else
  loc_130A040:         If (var_8C = 4) Then
  loc_130A04D:           global_52 = New rFomRepView
  loc_130A060:           global_52.GRepFormName = "NightAuditReportI"
  loc_130A071:           Set var_90 = var_B4(Index)
  loc_130A077:           Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A07F:            = global_52.Menu.Caption
  loc_130A091:           global_52.CAPTION = CVar(var_B8)
  loc_130A0B1:           Me.Global.Unload global_52
  loc_130A0BC:         Else
  loc_130A0C2:           If (var_8C = 5) Then
  loc_130A0CF:             global_52 = New rFomRepView
  loc_130A0E2:             global_52.GRepFormName = "OccAnalysis"
  loc_130A0F3:             Set var_90 = var_B4(Index)
  loc_130A0F9:             Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A101:              = global_52.Menu.Caption
  loc_130A113:             global_52.CAPTION = CVar(var_B8)
  loc_130A129:             Call global_52.Show
  loc_130A132:           Else
  loc_130A138:             If (var_8C = 6) Then
  loc_130A145:               global_52 = New rFomRepView
  loc_130A158:               global_52.GRepFormName = "MarketSegAnalysis"
  loc_130A169:               Set var_90 = var_B4(Index)
  loc_130A16F:               Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A177:                = global_52.Menu.Caption
  loc_130A189:               global_52.CAPTION = CVar(var_B8)
  loc_130A19F:               Call global_52.Show
  loc_130A1A8:             Else
  loc_130A1AE:               If (var_8C = 7) Then
  loc_130A1BB:                 global_52 = New rFomRepView
  loc_130A1CE:                 global_52.GRepFormName = "BusinessAnalysis"
  loc_130A1DF:                 Set var_90 = var_B4(Index)
  loc_130A1E5:                 Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A1ED:                  = global_52.Menu.Caption
  loc_130A1FF:                 global_52.CAPTION = CVar(var_B8)
  loc_130A215:                 Call global_52.Show
  loc_130A21E:               Else
  loc_130A224:                 If (var_8C = 8) Then
  loc_130A231:                   global_52 = New rFomRepView
  loc_130A244:                   global_52.GRepFormName = "CompanyAnalysis"
  loc_130A255:                   Set var_90 = var_B4(Index)
  loc_130A25B:                   Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A263:                    = global_52.Menu.Caption
  loc_130A275:                   global_52.CAPTION = CVar(var_B8)
  loc_130A28B:                   Call global_52.Show
  loc_130A294:                 Else
  loc_130A29A:                   If (var_8C = 9) Then
  loc_130A2A7:                     global_52 = New rFomRepView
  loc_130A2BA:                     global_52.GRepFormName = "TravelAgentAnalysis"
  loc_130A2CB:                     Set var_90 = var_B4(Index)
  loc_130A2D1:                     Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A2D9:                      = global_52.Menu.Caption
  loc_130A2EB:                     global_52.CAPTION = CVar(var_B8)
  loc_130A301:                     Call global_52.Show
  loc_130A30A:                   Else
  loc_130A310:                     If (var_8C = &HA) Then
  loc_130A31D:                       global_52 = New rFomRepView
  loc_130A330:                       global_52.GRepFormName = "FOCC Report"
  loc_130A341:                       Set var_90 = var_B4(Index)
  loc_130A347:                       Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A34F:                        = global_52.Menu.Caption
  loc_130A361:                       global_52.CAPTION = CVar(var_B8)
  loc_130A377:                       Call global_52.Show
  loc_130A380:                     Else
  loc_130A386:                       If (var_8C = &HB) Then
  loc_130A393:                         global_52 = New rFomRepView
  loc_130A3A6:                         global_52.GRepFormName = "FoodCost"
  loc_130A3B7:                         Set var_90 = var_B4(Index)
  loc_130A3BD:                         Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A3C5:                          = global_52.Menu.Caption
  loc_130A3D7:                         global_52.CAPTION = CVar(var_B8)
  loc_130A3ED:                         Call global_52.Show
  loc_130A3F6:                       Else
  loc_130A3FC:                         If (var_8C = &HC) Then
  loc_130A409:                           global_52 = New rFomRepView
  loc_130A41C:                           global_52.GRepFormName = "FBCostStatement"
  loc_130A42D:                           Set var_90 = var_B4(Index)
  loc_130A433:                           Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A43B:                            = global_52.Menu.Caption
  loc_130A44D:                           global_52.CAPTION = CVar(var_B8)
  loc_130A463:                           Call global_52.Show
  loc_130A46C:                         Else
  loc_130A472:                           If (var_8C = &HE) Then
  loc_130A47F:                             global_52 = New FaReports
  loc_130A492:                             global_52.GRepFormName = "AgingRepDr"
  loc_130A4A3:                             Set var_90 = var_B4(Index)
  loc_130A4A9:                             Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A4B1:                              = global_52.Menu.Caption
  loc_130A4C3:                             global_52.CAPTION = CVar(var_B8)
  loc_130A4D1:                             var_D8 = False
  loc_130A4E2:                             VarLateMemCallLdRfVar
  loc_130A4EA:                             global_52.Visible = 1
  loc_130A4F9:                             Call global_52.Show
  loc_130A502:                           Else
  loc_130A508:                             If (var_8C = &HF) Then
  loc_130A515:                               global_52 = New FaReports
  loc_130A528:                               global_52.GRepFormName = "AgingRepCr"
  loc_130A539:                               Set var_90 = var_B4(Index)
  loc_130A53F:                               Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130A547:                               var_D8 = global_52.Menu.Caption
  loc_130A559:                               global_52.CAPTION = CVar(var_B8)
  loc_130A567:                               var_D8 = False
  loc_130A578:                               VarLateMemCallLdRfVar
  loc_130A580:                               global_52.Visible = 1
  loc_130A58F:                               Call global_52.Show
  loc_130A595:                             End If
  loc_130A595:                           End If
  loc_130A595:                         End If
  loc_130A595:                       End If
  loc_130A595:                     End If
  loc_130A595:                   End If
  loc_130A595:                 End If
  loc_130A595:               End If
  loc_130A595:             End If
  loc_130A595:           End If
  loc_130A595:         End If
  loc_130A595:       End If
  loc_130A595:     End If
  loc_130A595:   End If
  loc_130A595: End If
  loc_130A59A: global_52 = Nothing
  loc_130A59E: Exit Sub
  loc_130A59F: Exit Sub
End Sub

Private Sub POSEnt_Click(Index As Integer) '1435AE4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F95204 As String
  Dim unk_5C8418 As Connection15
  Dim var_C8 As Recordset15
  Dim var_E0 As Variant
  Dim var_E4 As Variant
  Dim MemVar_1F95210 As String
  Dim var_EE As Integer
  Dim var_106 As Integer
  Dim var_F4 As String
  Dim var_10C As String
  Dim var_CC As Recordset15
  Dim var_104 As Integer
  Dim unk_5C83CC As Connection15
  Dim var_EC As Variant
  Dim var_130 As Field20
  Dim var_D0 As Recordset15
  Dim var_A4 As Variant
  loc_143500B: var_B4 = CVar("POSEnt" & "+") 'String
  loc_1435013: var_94 = CVar(CStr(Index)) 'String
  loc_1435019: var_A4 = Trim(var_94)
  loc_1435021: var_C4 = var_B4 & var_A4 
  loc_1435026: MemVar_1F95204 = CStr(var_C4)
  loc_143504B: unk_5C8418.Execute "Select * from Enviro", var_94, -1
  loc_1435056: Set var_C8 = var_E4
  loc_1435073: If (var_C8.RecordCount > 0) Then
  loc_1435079:   var_C8.MoveFirst
  loc_143508D:   var_E4 = var_C8.Fields
  loc_1435095:   var_EC = var_E4.Item("TouchScreen")
  loc_14350A6:   MemVar_1F95210 = Proc_6_38_E69628(CVar(var_EC), var_E4)
  loc_14350B0: End If
  loc_14350B5: Set var_C8 = Nothing
  loc_14350BB: var_EE = Index
  loc_14350C4: If Not (var_EE = 0) Then
  loc_14350CD:   If Not (var_EE = 1) Then
  loc_14350D6:     If Not (var_EE = 2) Then
  loc_14350DF:       If Not (var_EE = 3) Then
  loc_14350E8:         If Not (var_EE = 4) Then
  loc_14350F1:           If Not (var_EE = 5) Then
  loc_14350FA:             If Not (var_EE = 6) Then
  loc_1435103:               If Not (var_EE = 7) Then
  loc_143510C:                 If Not (var_EE = 8) Then
  loc_1435115:                   If Not (var_EE = 9) Then
  loc_143511E:                     If Not (var_EE = &HA) Then
  loc_1435127:                       If Not (var_EE = &HB) Then
  loc_1435130:                         If Not (var_EE = &HC) Then
  loc_1435139:                           If (var_EE = &HD) Then
  loc_143513C:                           End If
  loc_143513C:                         End If
  loc_143513C:                       End If
  loc_143513C:                     End If
  loc_143513C:                   End If
  loc_143513C:                 End If
  loc_143513C:               End If
  loc_143513C:             End If
  loc_143513C:           End If
  loc_143513C:         End If
  loc_143513C:       End If
  loc_143513C:     End If
  loc_143513C:   End If
  loc_1435144:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1435151:     global_52 = New FrmChangeRest
  loc_1435165:     Set var_E4 = var_EC(Index)
  loc_143516B:     Call 0.Method_POSEnt_Click0 (var_F4, var_EE)
  loc_1435173:     MemVar_1F95210 = FrmChangeRest.Menu.Caption
  loc_1435185:     global_52.CAPTION = CVar(var_F4)
  loc_1435193:     var_E0 = 1
  loc_14351A1:     Call global_52.Show
  loc_14351A7:     var_E0 = 0
  loc_14351B5:     Call global_52.ZOrder
  loc_14351BB:   End If
  loc_14351BE:   var_106 = Index
  loc_14351C7:   If (var_106 = 0) Then
  loc_14351D4:     global_52 = New RsKOTEntry
  loc_14351DE:     var_E0 = CVar(MemVar_1F951A8) 'String
  loc_14351E8:     global_52.LocalRestCode = var_E0
  loc_14351F9:     Set var_E4 = var_EC(Index)
  loc_14351FF:     Call 0.Method_POSEnt_Click0 (var_F4, var_106, var_E0)
  loc_1435207:     var_E0 = global_52.Menu.Caption
  loc_1435219:     global_52.CAPTION = CVar(var_F4)
  loc_143522F:     Call global_52.Show
  loc_1435238:   Else
  loc_143523E:     If (var_106 = 1) Then
  loc_143524B:       global_52 = New RsTbChange
  loc_143525F:       global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_1435270:       Set var_E4 = var_EC(Index)
  loc_1435276:       Call 0.Method_POSEnt_Click0 (var_F4)
  loc_143527E:       MemVar_1F95204 = global_52.Menu.Caption
  loc_1435290:       global_52.CAPTION = CVar(var_F4)
  loc_14352A6:       Call global_52.Show
  loc_14352AF:     Else
  loc_14352B5:       If (var_106 = 2) Then
  loc_14352C2:         global_52 = New RSSaleBill
  loc_14352D6:         global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_14352E7:         Set var_E4 = var_EC(Index)
  loc_14352ED:         Call 0.Method_POSEnt_Click0 (var_F4)
  loc_14352F5:          = global_52.Menu.Caption
  loc_14352FD:         var_94 = CVar(var_F4) 'String
  loc_1435307:         global_52.CAPTION = var_94
  loc_143531D:         Call global_52.Show
  loc_1435326:       Else
  loc_143532C:         If (var_106 = 3) Then
  loc_1435338:           global_52 = MemVar_1F95F68
  loc_1435349:           global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_1435359:           global_52.OpenType = 5
  loc_143536C:           global_52.OpenMode = 2
  loc_1435384:           var_F4 = "Select 'B'+ShortName as Adv_Type From Depart Where Code='" & MemVar_1F951A8
  loc_1435394:           global_52.Connection15.Execute var_F4 & "'", var_94, -1
  loc_143539F:           Set var_CC = var_E4
  loc_14353C3:           If (var_CC.RecordCount > 0) Then
  loc_14353DD:             var_EC = var_CC.Fields.Item("Adv_type")
  loc_14353F0:             global_52.AdvType = CVar(var_EC)
  loc_14353FD:           Else
  loc_1435410:             var_94 = "Voucher Type for this Department not Found"
  loc_1435416:             MsgBox(var_94, &H10, var_A4, var_B4, var_C4)
  loc_1435426:             Exit Sub
  loc_1435427:           End If
  loc_143542D:           var_104 = 0
  loc_143544A:           var_F4 = "Select Count(*) From Depart Where Code='" & MemVar_1F951A8
  loc_143545A:           unk_5C83CC.Execute var_F4 & "' And RestType='Production'", var_94, -1
  loc_1435462:           var_E4 = var_E4.Fields
  loc_143546A:           var_104 = var_EC.Item(var_EC)
  loc_1435472:           var_130 = var_130.Value
  loc_1435499:           If (var_A4 > 0) Then
  loc_14354B5:             MsgBox("Operation is not allowed for Perticular Department", &H10, var_A4, var_B4, var_C4)
  loc_14354C5:             Exit Sub
  loc_14354C6:           End If
  loc_14354D3:           Set var_E4 = Me.POSEnt
  loc_14354D9:           Call 0.Method_POSEnt_Click0 (Index, var_EC, var_F4)
  loc_14354E1:           var_A4 = var_EC.Caption
  loc_14354F3:           global_52.CAPTION = CVar(var_F4)
  loc_1435509:           Call global_52.Show
  loc_1435512:         Else
  loc_1435518:           If (var_106 = 4) Then
  loc_1435525:             global_52 = New POSBillReprint
  loc_1435539:             global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_143554A:             Set var_E4 = var_EC(Index)
  loc_1435550:             Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1435558:             var_E4 = global_52.Menu.Caption
  loc_143556A:             global_52.CAPTION = CVar(var_F4)
  loc_1435580:             Call global_52.Show
  loc_1435589:           Else
  loc_143558F:             If (var_106 = 5) Then
  loc_143559C:               global_52 = New RsSaleBillSplit
  loc_14355B0:               global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_14355BC:               Call global_52.Show
  loc_14355C5:             Else
  loc_14355CB:               If (var_106 = 6) Then
  loc_14355D8:                 global_52 = New RsPOSDisplay
  loc_14355EC:                 global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_14355FF:                 global_52.OpenMode = 2
  loc_143560B:                 Call global_52.Show
  loc_1435622:                 If CBool(global_52.ptabpos) Then
  loc_1435638:                   var_94 = "No Records in Table Master"
  loc_143563E:                   MsgBox(var_94, &H40, var_A4, var_B4, var_C4)
  loc_1435656:                   var_E4 = global_52
  loc_1435660:                   Me.Global.Unload var_E4
  loc_1435668:                   Exit Sub
  loc_1435669:                 End If
  loc_143566C:               Else
  loc_1435672:                 If (var_106 = 7) Then
  loc_143567F:                   global_52 = New RsBookingEntry
  loc_1435693:                   global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_14356A6:                   global_52.OpenMode = 2
  loc_14356CE:                   global_52.Connection15.Execute "Select * from Voucher_Type Where Ncat='ORDER' and  RestCode='" & MemVar_1F951A8 & "'", var_94, -1
  loc_14356D9:                   Set var_D0 = var_E4
  loc_14356FD:                   If (var_D0.RecordCount > 0) Then
  loc_143570F:                     var_E4 = var_D0.Fields
  loc_143572A:                     global_52.oVType = CVar(var_E4.Item("V_Type"))
  loc_1435737:                   Else
  loc_143574A:                     var_94 = "Contact to your S/w vendor"
  loc_1435750:                     MsgBox(var_94, &H40, var_A4, var_B4, var_C4)
  loc_1435760:                     Exit Sub
  loc_1435761:                   End If
  loc_1435769:                   Call global_52.Show
  loc_1435772:                 Else
  loc_1435778:                   If (var_106 = 8) Then
  loc_1435785:                     global_52 = New RSSaleBillDisplay
  loc_1435799:                     global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_14357AC:                     global_52.OpenMode = 2
  loc_14357B8:                     Call global_52.Show
  loc_14357C1:                   Else
  loc_14357C7:                     If (var_106 = 9) Then
  loc_14357D4:                       global_52 = New POSAdvanceDepDialog
  loc_14357E8:                       global_52.MDIRestCode = CVar(MemVar_1F951A8)
  loc_14357FB:                       global_52.OpenMode = 2
  loc_143580B:                       global_52.OpenType = 5
  loc_143582A:                       var_10C = "Select V_Type from Voucher_Type Where Ncat='PADV' and  RestCode='" & MemVar_1F951A8 & "'"
  loc_1435833:                       global_52.Connection15.Execute var_10C, var_94, -1
  loc_143583E:                       Set var_D0 = var_E4
  loc_1435862:                       If (var_D0.RecordCount > 0) Then
  loc_1435874:                         var_E4 = var_D0.Fields
  loc_143587C:                         var_EC = var_E4.Item("V_Type")
  loc_143588F:                         global_52.AdvType = CVar(var_EC)
  loc_143589C:                       Else
  loc_14358A2:                         Call 0.Method_arg_50 (var_10C, var_E4)
  loc_14358BF:                         var_F4 = "Advance Voucher Type Not Exists." & vbCrLf
  loc_14358C9:                         MsgBox(CVar(var_F4 & "Plz. Contact to your S/w vendor"), &H40, CVar(var_10C), var_B4, var_C4)
  loc_14358DC:                         Exit Sub
  loc_14358DD:                       End If
  loc_14358E5:                       Call global_52.Show
  loc_14358EE:                     Else
  loc_14358F4:                       If (var_106 = &HA) Then
  loc_1435901:                         global_52 = New RsKOTTransfer
  loc_1435915:                         global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_1435926:                         Set var_E4 = var_EC(Index)
  loc_143592C:                         Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1435934:                         var_E4 = global_52.Menu.Caption
  loc_1435946:                         global_52.CAPTION = CVar(var_F4)
  loc_143595C:                         Call global_52.Show
  loc_1435965:                       Else
  loc_143596B:                         If (var_106 = &HB) Then
  loc_1435978:                           global_52 = New RsTokenEntry
  loc_143598C:                           global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_143599D:                           Set var_E4 = var_EC(Index)
  loc_14359A3:                           Call 0.Method_POSEnt_Click0 (var_F4)
  loc_14359AB:                            = global_52.Menu.Caption
  loc_14359BD:                           global_52.CAPTION = CVar(var_F4)
  loc_14359D3:                           Call global_52.Show
  loc_14359DC:                         Else
  loc_14359E2:                           If (var_106 = &HC) Then
  loc_14359EF:                             global_52 = New RsAssignDelivery
  loc_1435A03:                             global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_1435A14:                             Set var_E4 = var_EC(Index)
  loc_1435A1A:                             Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1435A22:                              = global_52.Menu.Caption
  loc_1435A34:                             global_52.CAPTION = CVar(var_F4)
  loc_1435A4A:                             Call global_52.Show
  loc_1435A53:                           Else
  loc_1435A59:                             If (var_106 = &HD) Then
  loc_1435A66:                               global_52 = New RsPaymentReceice
  loc_1435A7A:                               global_52.LocalRestCode = CVar(MemVar_1F951A8)
  loc_1435A8B:                               Set var_E4 = var_EC(Index)
  loc_1435A91:                               Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1435A99:                                = global_52.Menu.Caption
  loc_1435AAB:                               global_52.CAPTION = CVar(var_F4)
  loc_1435AC1:                               Call global_52.Show
  loc_1435AC7:                             End If
  loc_1435AC7:                           End If
  loc_1435AC7:                         End If
  loc_1435AC7:                       End If
  loc_1435AC7:                     End If
  loc_1435AC7:                   End If
  loc_1435AC7:                 End If
  loc_1435AC7:               End If
  loc_1435AC7:             End If
  loc_1435AC7:           End If
  loc_1435AC7:         End If
  loc_1435AC7:       End If
  loc_1435AC7:     End If
  loc_1435AC7:   End If
  loc_1435AC7: End If
  loc_1435ACC: global_52 = Nothing
  loc_1435AD5: Set var_CC = Nothing
  loc_1435ADD: Set var_D0 = Nothing
  loc_1435AE0: Exit Sub
End Sub

Private Sub POSMas_Click(Index As Integer) '1345B64
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_104 As Boolean
  loc_1345373: var_B4 = CVar("POSMas" & "+") 'String
  loc_134538E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13453A0: var_C6 = Index
  loc_13453A9: If (var_C6 = 0) Then
  loc_13453B6:   global_52 = New OutLetMast
  loc_13453CA:   Set var_CC = var_D0(Index)
  loc_13453D0:   Call 0.Method_POSMas_Click0 (var_D4, var_C6)
  loc_13453D8:   MemVar_1F95204 = OutLetMast.Menu.Caption
  loc_13453EA:   global_52.CAPTION = CVar(var_D4)
  loc_1345400:   Call global_52.Show
  loc_1345409: Else
  loc_134540F:   If (var_C6 = 1) Then
  loc_134541C:     global_52 = New OutLetSundry
  loc_1345430:     Set var_CC = var_D0(Index)
  loc_1345436:     Call 0.Method_POSMas_Click0 (var_D4)
  loc_134543E:      = OutLetSundry.Menu.Caption
  loc_1345450:     global_52.CAPTION = CVar(var_D4)
  loc_1345466:     Call global_52.Show
  loc_134546F:   Else
  loc_1345475:     If (var_C6 = 2) Then
  loc_1345482:       global_52 = New FrmWaiterMast
  loc_1345496:       Set var_CC = var_D0(Index)
  loc_134549C:       Call 0.Method_POSMas_Click0 (var_D4)
  loc_13454A4:        = FrmWaiterMast.Menu.Caption
  loc_13454B6:       global_52.CAPTION = CVar(var_D4)
  loc_13454CC:       Call global_52.Show
  loc_13454D5:     Else
  loc_13454DB:       If (var_C6 = 3) Then
  loc_13454E8:         global_52 = New RsTableMast
  loc_13454FC:         Set var_CC = var_D0(Index)
  loc_1345502:         Call 0.Method_POSMas_Click0 (var_D4)
  loc_134550A:          = RsTableMast.Menu.Caption
  loc_134551C:         global_52.CAPTION = CVar(var_D4)
  loc_1345532:         Call global_52.Show
  loc_134553B:       Else
  loc_1345541:         If (var_C6 = 4) Then
  loc_134554E:           global_52 = New FrmItemMast
  loc_1345562:           Set var_CC = var_D0(Index)
  loc_1345568:           Call 0.Method_POSMas_Click0 (var_D4)
  loc_1345570:            = FrmItemMast.Menu.Caption
  loc_1345582:           global_52.CAPTION = CVar(var_D4)
  loc_1345598:           Call global_52.Show
  loc_13455A1:         Else
  loc_13455A7:           If (var_C6 = 5) Then
  loc_13455B4:             global_52 = New FrmItemGroupMast
  loc_13455C7:             global_52.RestType = "='Finish'"
  loc_13455CB:             var_104 = False
  loc_13455DC:             VarLateMemCallLdRfVar
  loc_13455E4:             global_52.Visible = 3
  loc_13455EB:             var_104 = False
  loc_13455FC:             VarLateMemCallLdRfVar
  loc_1345604:             global_52.Visible = 1
  loc_134560B:             var_104 = True
  loc_134561B:             VarLateMemCallLdRfVar
  loc_1345623:             global_52.Visible = 1
  loc_134563A:             VarLateMemCallLdRfVar
  loc_1345642:             global_52.Visible = 1
  loc_1345656:             Set var_CC = var_D0(Index)
  loc_134565C:             Call 0.Method_POSMas_Click0 (var_D4, True, True)
  loc_1345664:             var_104 = global_52.Menu.Caption
  loc_1345676:             global_52.CAPTION = CVar(var_D4)
  loc_134568C:             Call global_52.Show
  loc_1345695:           Else
  loc_134569B:             If (var_C6 = 6) Then
  loc_13456A8:               global_52 = New FrmItemCatMast
  loc_13456BC:               Set var_CC = var_D0(Index)
  loc_13456C2:               Call 0.Method_POSMas_Click0 (var_D4)
  loc_13456CA:               var_104 = FrmItemCatMast.Menu.Caption
  loc_13456DC:               global_52.CAPTION = CVar(var_D4)
  loc_13456F2:               Call global_52.Show
  loc_13456FB:             Else
  loc_1345701:               If (var_C6 = 7) Then
  loc_134570E:                 global_52 = New RsMenuItemEntry
  loc_1345722:                 Set var_CC = Me.DGHelp
  loc_1345728:                 Call 0.Method_POSMas_Click0 (Index, var_D0)
  loc_1345730:                 var_D4 = RsMenuItemEntry.DGHelp.Caption
  loc_1345742:                 global_52.CAPTION = CVar(var_D4)
  loc_1345758:                 Call global_52.Show
  loc_1345761:               Else
  loc_1345767:                 If (var_C6 = 8) Then
  loc_1345774:                   global_52 = New FrmMenuRate
  loc_1345788:                   Set var_CC = var_D0(Index)
  loc_134578E:                   Call 0.Method_POSMas_Click0 (var_D4)
  loc_1345796:                    = FrmMenuRate.Menu.Caption
  loc_13457A8:                   global_52.CAPTION = CVar(var_D4)
  loc_13457BE:                   Call global_52.Show
  loc_13457C7:                 Else
  loc_13457CD:                   If (var_C6 = &HA) Then
  loc_13457DA:                     global_52 = New frmSessionMast
  loc_13457EE:                     Set var_CC = var_D0(Index)
  loc_13457F4:                     Call 0.Method_POSMas_Click0 (var_D4)
  loc_13457FC:                      = frmSessionMast.Menu.Caption
  loc_134580E:                     global_52.CAPTION = CVar(var_D4)
  loc_1345824:                     Call global_52.Show
  loc_134582D:                   Else
  loc_1345833:                     If (var_C6 = &HB) Then
  loc_1345840:                       global_52 = New FrmConsumMast9999
  loc_1345854:                       Set var_CC = var_D0(Index)
  loc_134585A:                       Call 0.Method_POSMas_Click0 (var_D4)
  loc_1345862:                        = FrmConsumMast9999.Menu.Caption
  loc_1345874:                       global_52.CAPTION = CVar(var_D4)
  loc_134588A:                       Call global_52.Show
  loc_1345893:                     Else
  loc_1345899:                       If (var_C6 = &HC) Then
  loc_13458A6:                         global_52 = New SchemeMast
  loc_13458BA:                         Set var_CC = var_D0(Index)
  loc_13458C0:                         Call 0.Method_POSMas_Click0 (var_D4)
  loc_13458C8:                          = SchemeMast.Menu.Caption
  loc_13458DA:                         global_52.CAPTION = CVar(var_D4)
  loc_13458F0:                         Call global_52.Show
  loc_13458F9:                       Else
  loc_13458FF:                         If (var_C6 = &HF) Then
  loc_134590C:                           global_52 = New pHappyHours
  loc_1345920:                           Set var_CC = var_D0(Index)
  loc_1345926:                           Call 0.Method_POSMas_Click0 (var_D4)
  loc_134592E:                            = pHappyHours.Menu.Caption
  loc_1345940:                           global_52.CAPTION = CVar(var_D4)
  loc_1345956:                           Call global_52.Show
  loc_134595F:                         Else
  loc_1345965:                           If (var_C6 = &H10) Then
  loc_1345972:                             global_52 = New NewHappyHours
  loc_1345986:                             Set var_CC = var_D0(Index)
  loc_134598C:                             Call 0.Method_POSMas_Click0 (var_D4)
  loc_1345994:                              = NewHappyHours.Menu.Caption
  loc_13459A6:                             global_52.CAPTION = CVar(var_D4)
  loc_13459BC:                             Call global_52.Show
  loc_13459C5:                           Else
  loc_13459CB:                             If (var_C6 = &H11) Then
  loc_13459D8:                               global_52 = New frmComboMast
  loc_13459EC:                               Set var_CC = var_D0(Index)
  loc_13459F2:                               Call 0.Method_POSMas_Click0 (var_D4)
  loc_13459FA:                                = frmComboMast.Menu.Caption
  loc_1345A0C:                               global_52.CAPTION = CVar(var_D4)
  loc_1345A22:                               Call global_52.Show
  loc_1345A2B:                             Else
  loc_1345A31:                               If (var_C6 = &H12) Then
  loc_1345A3E:                                 global_52 = New FrmNCType
  loc_1345A52:                                 Set var_CC = var_D0(Index)
  loc_1345A58:                                 Call 0.Method_POSMas_Click0 (var_D4)
  loc_1345A60:                                  = FrmNCType.Menu.Caption
  loc_1345A72:                                 global_52.CAPTION = CVar(var_D4)
  loc_1345A88:                                 Call global_52.Show
  loc_1345A91:                               Else
  loc_1345A97:                                 If (var_C6 = &H13) Then
  loc_1345AA4:                                   global_52 = New frmGuestInfo
  loc_1345AB8:                                   Set var_CC = var_D0(Index)
  loc_1345ABE:                                   Call 0.Method_POSMas_Click0 (var_D4)
  loc_1345AC6:                                    = frmGuestInfo.Menu.Caption
  loc_1345AD8:                                   global_52.CAPTION = CVar(var_D4)
  loc_1345AEE:                                   Call global_52.Show
  loc_1345AF7:                                 Else
  loc_1345AFD:                                   If (var_C6 = &H14) Then
  loc_1345B0A:                                     global_52 = New FrmDeliveryBoyMast
  loc_1345B1E:                                     Set var_CC = var_D0(Index)
  loc_1345B24:                                     Call 0.Method_POSMas_Click0 (var_D4)
  loc_1345B2C:                                      = FrmDeliveryBoyMast.Menu.Caption
  loc_1345B3E:                                     global_52.CAPTION = CVar(var_D4)
  loc_1345B54:                                     Call global_52.Show
  loc_1345B5A:                                   End If
  loc_1345B5A:                                 End If
  loc_1345B5A:                               End If
  loc_1345B5A:                             End If
  loc_1345B5A:                           End If
  loc_1345B5A:                         End If
  loc_1345B5A:                       End If
  loc_1345B5A:                     End If
  loc_1345B5A:                   End If
  loc_1345B5A:                 End If
  loc_1345B5A:               End If
  loc_1345B5A:             End If
  loc_1345B5A:           End If
  loc_1345B5A:         End If
  loc_1345B5A:       End If
  loc_1345B5A:     End If
  loc_1345B5A:   End If
  loc_1345B5A: End If
  loc_1345B5F: global_52 = Nothing
  loc_1345B63: Exit Sub
End Sub

Private Sub LblMgs_UnknownEvent_9 'EAD89C
  'Data Table: 5C8390
  Dim var_AC As String
  loc_EAD810: Set var_88 = Me.LblMgs
  loc_EAD816: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA()
  loc_EAD82F: If (CStr() = "In Box") Then
  loc_EAD832:   var_AC = "Out Box"
  loc_EAD83C:   Set var_88 = Me.LblMgs
  loc_EAD842:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_AC)
  loc_EAD858:   Call 0.Method_arg_2B0 (var_AC)
  loc_EAD860: Else
  loc_EAD860:   var_AC = "In Box"
  loc_EAD86A:   Set var_88 = Me.LblMgs
  loc_EAD870:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_AC)
  loc_EAD881:   Call 0.Method_arg_54 ("Out Box")
  loc_EAD894:   Call 0.Method_arg_2B0 (var_AC, var_BC)
  loc_EAD899: End If
  loc_EAD899: Exit Sub
End Sub

Private Sub PosTaxRep_Click(Index As Integer) '100D94C
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_100D743: var_B4 = CVar("POSTaxRep" & "+") 'String
  loc_100D75E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_100D770: var_C6 = Index
  loc_100D779: If (var_C6 = 0) Then
  loc_100D786:   global_52 = New rPOSRepView
  loc_100D799:   global_52.GRepFormName = "TaxReport"
  loc_100D7AA:   Set var_CC = var_F0(Index)
  loc_100D7B0:   Call 0.Method_PosTaxRep_Click0 (var_F4, var_C6)
  loc_100D7B8:   MemVar_1F95204 = global_52.Menu.Caption
  loc_100D7CA:   global_52.CAPTION = CVar(var_F4)
  loc_100D7E0:   Call global_52.Show
  loc_100D7E9: Else
  loc_100D7EF:   If (var_C6 = 1) Then
  loc_100D7FC:     global_52 = New rPOSRepView
  loc_100D80F:     global_52.GRepFormName = "TaxRegister"
  loc_100D820:     Set var_CC = var_F0(Index)
  loc_100D826:     Call 0.Method_PosTaxRep_Click0 (var_F4)
  loc_100D82E:      = global_52.Menu.Caption
  loc_100D840:     global_52.CAPTION = CVar(var_F4)
  loc_100D856:     Call global_52.Show
  loc_100D85F:   Else
  loc_100D865:     If (var_C6 = 2) Then
  loc_100D872:       global_52 = New rPOSRepView
  loc_100D885:       global_52.GRepFormName = "TaxDetails"
  loc_100D896:       Set var_CC = var_F0(Index)
  loc_100D89C:       Call 0.Method_PosTaxRep_Click0 (var_F4)
  loc_100D8A4:        = global_52.Menu.Caption
  loc_100D8B6:       global_52.CAPTION = CVar(var_F4)
  loc_100D8CC:       Call global_52.Show
  loc_100D8D5:     Else
  loc_100D8DB:       If (var_C6 = 3) Then
  loc_100D8E8:         global_52 = New rPOSRepView
  loc_100D8FB:         global_52.GRepFormName = "TaxSumm"
  loc_100D90C:         Set var_CC = var_F0(Index)
  loc_100D912:         Call 0.Method_PosTaxRep_Click0 (var_F4)
  loc_100D91A:          = global_52.Menu.Caption
  loc_100D92C:         global_52.CAPTION = CVar(var_F4)
  loc_100D942:         Call global_52.Show
  loc_100D948:       End If
  loc_100D948:     End If
  loc_100D948:   End If
  loc_100D948: End If
  loc_100D948: Exit Sub
End Sub

Private Sub PRM_Click(Index As Integer) 'FDCD54
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_FDCB8B: var_B4 = CVar("PRM" & "+") 'String
  loc_FDCBA6: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FDCBB8: var_C6 = Index
  loc_FDCBC1: If (var_C6 = 0) Then
  loc_FDCBCE:   global_52 = New PrDesigMast
  loc_FDCBE2:   Set var_CC = var_D0(Index)
  loc_FDCBE8:   Call 0.Method_PRM_Click0 (var_D4, var_C6)
  loc_FDCBF0:   MemVar_1F95204 = PrDesigMast.Menu.Caption
  loc_FDCC02:   global_52.CAPTION = CVar(var_D4)
  loc_FDCC18:   Call global_52.Show
  loc_FDCC21: Else
  loc_FDCC27:   If (var_C6 = 1) Then
  loc_FDCC34:     global_52 = New PrCategoryMast
  loc_FDCC48:     Set var_CC = var_D0(Index)
  loc_FDCC4E:     Call 0.Method_PRM_Click0 (var_D4)
  loc_FDCC56:      = PrCategoryMast.Menu.Caption
  loc_FDCC68:     global_52.CAPTION = CVar(var_D4)
  loc_FDCC7E:     Call global_52.Show
  loc_FDCC87:   Else
  loc_FDCC8D:     If (var_C6 = 2) Then
  loc_FDCC9A:       global_52 = New prHoliday
  loc_FDCCAE:       Set var_CC = var_D0(Index)
  loc_FDCCB4:       Call 0.Method_PRM_Click0 (var_D4)
  loc_FDCCBC:        = prHoliday.Menu.Caption
  loc_FDCCCE:       global_52.CAPTION = CVar(var_D4)
  loc_FDCCE4:       Call global_52.Show
  loc_FDCCED:     Else
  loc_FDCCF3:       If (var_C6 = 3) Then
  loc_FDCD00:         global_52 = New PrEmployee
  loc_FDCD14:         Set var_CC = var_D0(Index)
  loc_FDCD1A:         Call 0.Method_PRM_Click0 (var_D4)
  loc_FDCD22:          = PrEmployee.Menu.Caption
  loc_FDCD34:         global_52.CAPTION = CVar(var_D4)
  loc_FDCD4A:         Call global_52.Show
  loc_FDCD50:       End If
  loc_FDCD50:     End If
  loc_FDCD50:   End If
  loc_FDCD50: End If
  loc_FDCD50: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_6 '105CD80
  'Data Table: 5C8390
  Dim var_8C As TreeView
  Dim var_9C As Variant
  Dim var_C0 As String
  Dim var_128 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_198 As String
  Dim unk_5C83CC As Connection15
  loc_105CB58: On Error Resume Next
  loc_105CBBD: var_128 = (Me.TreeView1.SelectedItem.Image = "Rep") Or (Me.TreeView1.SelectedItem.Image = "Frm")
  loc_105CBD9: If CBool(var_128) Then
  loc_105CBE1:   var_9C = Me.SelectedItem
  loc_105CBE6:   VarLateMemLdRfVar
  loc_105CC09:   var_C0 = "-"
  loc_105CC1C:   var_F8 = (InStr(1, Me.SelectedItem.key, "Rep", 0) + 1)
  loc_105CC28:   var_148 = Mid(var_118, CLng(Me.TreeView1.SelectedItem.Image), var_128)
  loc_105CC51:   VarLateMemLdRfVar
  loc_105CC5C:   var_B0 = Me.SelectedItem
  loc_105CC61:   VarLateMemLdRfVar
  loc_105CC70:   Set var_8C = Me.TreeView1
  loc_105CCED:   Me.ListView1.ListItems.Add var_128, var_148, var_164, CVar(Me.ImageList1.ListImages.Item(Me.TreeView1.SelectedItem.Image).Key), var_184
  loc_105CD49:   var_198 = "Update MenuHelp set ShowInList='Y' Where Code=" & CStr(var_148) & "  AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"
  loc_105CD60:   unk_5C83CC.Execute var_198 & MemVar_1F95128 & "'", Me.SelectedItem, -1
  loc_105CD7A: End If
  loc_105CD7E: Exit Sub
End Sub

Public Sub ListView1_UnknownEvent_D(Index As Integer) '100FC98
  'Data Table: 5C8390
  Dim var_8C As ListView
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_12C As String
  Dim unk_5C83CC As Connection15
  Dim arg_186C As String
  loc_100FAAC: On Error Resume Next
  loc_100FB15: var_D0 = CVar(Me.ListView1.SelectedItem.Key) 'String
  loc_100FB1B: var_100 = Mid(var_D0, (InStr(1, Me.ListView1.SelectedItem.Key, "-", 0) + 1), var_F0)
  loc_100FB4F: If (CLng(Index) = &H2E) Then
  loc_100FB61:   var_9C = Me.ListView1.SelectedItem
  loc_100FBB1:   If (MsgBox(CVar("Are you sure to delete ShortCut " & var_9C.Text), &H114, var_D0, var_F0, var_100) = 6) Then
  loc_100FBE4:     var_12C = "Update MenuHelp set ShowInList='' Where Code=" & CStr(CLng(var_100)) & " AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"
  loc_100FBFB:     unk_5C83CC.Execute var_12C & MemVar_1F95128 & "'", var_9C, -1
  loc_100FC5E:     Me.ListView1.ListItems.Remove CVar(Me.ListView1.SelectedItem.Index)
  loc_100FC81:     Set var_8C = Me.ListView1
  loc_100FC87:     var_8C.Sorted = True
  loc_100FC8F:   End If
  loc_100FC91: End If
  loc_100FC95: Exit Sub
  loc_100FC96: arg_186C = var_8C
End Sub

Public Sub ListView1_UnknownEvent_F(Index As Integer) 'E0A4A4
  'Data Table: 5C8390
  loc_E0A49A: If (CLng(Index) = &HD) Then
  loc_E0A49D:   Call ListView1_UnknownEvent_13()
  loc_E0A4A2: End If
  loc_E0A4A2: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_11 'E20350
  'Data Table: 5C8390
  loc_E20344: Me.PictShortCuts.MousePointer = CInt(0)
  loc_E2034C: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'EF9B20
  'Data Table: 5C8390
  loc_EF9A70: On Error Resume Next
  loc_EF9ADF: var_FC = Mid(CVar(Me.ListView1.SelectedItem.Key), (InStr(1, Me.ListView1.SelectedItem.Key, "-", 0) + 1), var_EC)
  loc_EF9AE9: var_104 = 0
  loc_EF9AF7: Proc_165_2_1E4D9D4(CLng(var_FC))
  loc_EF9B1D: Exit Sub
End Sub

Private Sub RWP_Click(Index As Integer) 'F529D4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_F528C3: var_B4 = CVar("RWP" & "+") 'String
  loc_F528DE: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F528F0: var_C6 = Index
  loc_F528F9: If (var_C6 = 1) Then
  loc_F52905:   global_52 = MemVar_1F95348
  loc_F52915:   global_52.SmartCardApplicable = "No"
  loc_F52926:   Set var_EC = var_F0(Index)
  loc_F5292C:   Call 0.Method_RWP_Click0 (var_F4, var_C6)
  loc_F52934:   MemVar_1F95204 = global_52.Menu.Caption
  loc_F52946:   global_52.CAPTION = CVar(var_F4)
  loc_F5295C:   Call global_52.Show
  loc_F52965: Else
  loc_F5296B:   If (var_C6 = 2) Then
  loc_F52978:     global_52 = New RewardPointParam1
  loc_F5298C:     Set var_EC = var_F0(Index)
  loc_F52992:     Call 0.Method_RWP_Click0 (var_F4)
  loc_F5299A:      = RewardPointParam1.Menu.Caption
  loc_F529AC:     global_52.CAPTION = CVar(var_F4)
  loc_F529C2:     Call global_52.Show
  loc_F529C8:   End If
  loc_F529C8: End If
  loc_F529CD: global_52 = Nothing
  loc_F529D1: Exit Sub
End Sub

Private Sub SMSGEN_Click(Index As Integer) 'F2ED50
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_F2EC53: var_B4 = CVar("SMSGEN" & "+") 'String
  loc_F2EC6E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F2EC89: If (Index = 1) Then
  loc_F2EC95:   global_52 = MemVar_1F95468
  loc_F2ECA6:   Set var_CC = Me.SMSGEN
  loc_F2ECAC:   Call 0.Method_SMSGEN_Click0 (Index, var_D0, var_D4)
  loc_F2ECB4:   var_C6 = var_D0.Caption
  loc_F2ECC6:   global_52.CAPTION = CVar(var_D4)
  loc_F2ECDC:   Call global_52.Show
  loc_F2ECE5: Else
  loc_F2ECEB:   If (var_C6 = 2) Then
  loc_F2ECF7:     global_52 = MemVar_1F95440
  loc_F2ED08:     Set var_CC = Me.SMSGEN
  loc_F2ED0E:     Call 0.Method_SMSGEN_Click0 (Index, var_D0)
  loc_F2ED28:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_F2ED3E:     Call global_52.Show
  loc_F2ED44:   End If
  loc_F2ED44: End If
  loc_F2ED49: global_52 = Nothing
  loc_F2ED4D: Exit Sub
  loc_F2ED4E: MemVar_1F95204 = arg_1800
End Sub

Private Sub SMSSEND_Click(Index As Integer) 'ED0ED8
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_ED0E3F: var_B4 = CVar("SMSSEND" & "+") 'String
  loc_ED0E5A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ED0E75: If (Index = 1) Then
  loc_ED0E81:   global_52 = MemVar_1F95454
  loc_ED0E92:   Set var_CC = Me.SMSSEND
  loc_ED0E98:   Call 0.Method_SMSSEND_Click0 (Index, var_D0, var_D4)
  loc_ED0EA0:   var_C6 = var_D0.Caption
  loc_ED0EB2:   global_52.CAPTION = CVar(var_D4)
  loc_ED0EC8:   Call global_52.Show
  loc_ED0ECE: End If
  loc_ED0ED3: global_52 = Nothing
  loc_ED0ED7: Exit Sub
End Sub

Private Sub MDIForm_Load() '1426504
  'Data Table: 5C8390
  Dim var_B4 As Long
  Dim var_A4 As Long
  Dim var_B0 As Long
  Dim var_A8 As Long
  Dim MemVar_1F9E69C As Global
  Dim var_D4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_BC As String
  Dim var_118 As Variant
  Dim var_12C As Variant
  Dim var_11C As Variant
  Dim unk_5C83CC As Connection15
  Dim unk_5C8418 As Connection15
  Dim var_9C As Recordset15
  Dim MemVar_1F9516C As String
  Dim var_90 As Recordset15
  Dim var_150 As Integer
  Dim var_13C As Variant
  Dim var_158 As Panel
  Dim MemVar_1F95210 As String
  Dim var_104 As Boolean
  loc_1425A98: On Error Resume Next
  loc_1425AA3: Call 0.Method_arg_58 (var_B0)
  loc_1425AB3: var_B4 = GetSystemMenu(var_B0, CLng(0))
  loc_1425ABA: var_A4 = var_B4
  loc_1425AC4: If CBool(var_A4) Then
  loc_1425AD1:   var_B0 = GetMenuItemCount(var_A4)
  loc_1425AD8:   var_A8 = var_B0
  loc_1425AEE:   RemoveMenu(var_A4, (var_A8 - 1), &H1400)
  loc_1425B07:   RemoveMenu(var_A4, (var_A8 - 2), &H1400)
  loc_1425B15:   Call 0.Method_arg_58 (var_B0, var_A8, var_B0)
  loc_1425B1D:   DrawMenuBar(var_B0)
  loc_1425B23: End If
  loc_1425B36: var_B8 = MemVar_1F9E69C.App
  loc_1425B53: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\Hotel.bmp", var_C2)
  loc_1425B68: If (var_C2 = &HFF) Then
  loc_1425B8C:   var_B8 = Me.Global.App
  loc_1425BAA:   Me.Global.LoadPicture CVar(App.Path & "\Pic\Hotel.bmp"), var_E4, var_F4, var_104, var_114
  loc_1425BBB:   Call 0.Method_arg_154 (var_118, var_118)
  loc_1425BCD: End If
  loc_1425BE0: Me.PictMainMenu.BackColor = &HFFFFFF
  loc_1425BEF: var_94 = &H20
  loc_1425C0E: var_98 = CStr(String(var_94, "X"))
  loc_1425C27: GetComputerName(var_98, var_94)
  loc_1425C51: var_98 = CStr(Left(var_98, var_94))
  loc_1425C8B: If (Ucase(Left(MemVar_1F95130, 8)) = "ANALYSIS") Then
  loc_1425C9D:   Me.LblCompany.Caption = MemVar_1F95130
  loc_1425CA8: Else
  loc_1425CB3:   var_BC = MemVar_1F95130 & " { "
  loc_1425CCE:   Me.LblCompany.Caption = var_BC & MemVar_1F95014 & " }"
  loc_1425CDF: End If
  loc_1425CF6: Me.sbar.Height = CVar(CDbl(400))
  loc_1425D06: Call 0.Method_arg_78 (var_B4, StrConv(var_98, vbUnicode), var_BC)
  loc_1425D15: var_D4 = Me.sbar.Height
  loc_1425D24: Call 0.Method_Me8 (var_B0, var_D4, var_94)
  loc_1425D36: var_E4 = CVar(((var_B0 - var_B4) + CDbl(var_D4))) 'Single
  loc_1425D45: Me.sbar.Top = CVar(CDbl(400))
  loc_1425D5C: var_12C = 1
  loc_1425D65: Set var_B8 = Me.sbar
  loc_1425D6B: var_D4 = var_B8.Panels
  loc_1425D7C: var_12C = var_D4.ControlDefault
  loc_1425D84: var_11C.Text = var_11C
  loc_1425DB8: Proc_6_17_EAAE40(var_D4, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_13C, -1)
  loc_1425DCE: unk_5C83CC.Execute CStr(var_B8 & var_D4), MemVar_1F950C8, var_A4
  loc_1425DD9: Set var_90 = var_B8
  loc_1425E03: unk_5C8418.Execute "Select * from Enviro", var_D4, -1
  loc_1425E0E: Set var_9C = var_B8
  loc_1425E28: var_B8 = var_9C.Fields
  loc_1425E41: MemVar_1F9516C = Proc_6_38_E69628(CVar(var_B8.Item("ChannelManagerYN")), var_B8)
  loc_1425E61: If (var_90.RecordCount > 0) Then
  loc_1425E99:   var_BC = CStr("S/w Dt.:" & var_90.Fields.Item("Ncur").Value)
  loc_1425EA0:   var_150 = 3
  loc_1425EC0:   var_150 = Me.sbar.Panels.ControlDefault
  loc_1425EC8:   var_158.Text = var_158
  loc_1425F23:   If (Proc_6_38_E69628(CVar(var_90.Fields.Item("SMSFeatureYN")), var_BC) = "Yes") Then
  loc_1425F68:     If (Ucase(CVar(var_9C.Fields.Item("SMSFeatureYN"))) = "YES") Then
  loc_1425F79:       Me.SMSJobTimer.Enabled = True
  loc_1425F8F:       Me.SMSTimer.Enabled = True
  loc_1425F97:     End If
  loc_1425F97:   End If
  loc_1425FA3:   If (MemVar_1F9516C = "Yes") Then
  loc_1425FB4:     Me.Timer2.Enabled = True
  loc_1425FBC:   End If
  loc_1425FF9:   If (Proc_6_38_E69628(CVar(var_90.Fields.Item("AutoPrintKOTYN")), MemVar_1F9516C) = "Yes") Then
  loc_142603E:     If (Ucase(CVar(var_9C.Fields.Item("AutoPrintKOTYN"))) = "YES") Then
  loc_142604F:       Me.Print_KOT_Timer.Enabled = True
  loc_1426057:     End If
  loc_1426057:   End If
  loc_1426059: End If
  loc_142608B: var_F4 = "YES"
  loc_142609D: If (Ucase(CVar(var_9C.Fields.Item("TouchScreen"))) = var_F4) Then
  loc_14260AE:   Me.PictTitleBar.Visible = True
  loc_14260BB:   var_E4 = "TouchScreen"
  loc_14260CF:   var_118 = var_9C.Fields.Item(var_E4)
  loc_14260E0:   MemVar_1F95210 = Proc_6_38_E69628(CVar(var_118))
  loc_14260EA: End If
  loc_14260FD: var_B8 = MemVar_1F9E69C.App
  loc_142611A: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\Hotellogo.bmp", var_C2)
  loc_142612F: If (var_C2 = &HFF) Then
  loc_1426153:   var_B8 = Me.Global.App
  loc_1426171:   Me.Global.LoadPicture CVar(App.Path & "\Pic\Hotellogo.bmp"), var_E4, var_F4, var_104, var_114
  loc_1426186:   Me.ImgLogo.Picture = var_118
  loc_142619A: End If
  loc_14261AA: var_B8 = MemVar_1F9E69C.App
  loc_14261C3: var_118 = Me.Global.App
  loc_14261DC: var_11C = Me.Global.App
  loc_14261FC: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\DelarLogo.bmp", var_C2, var_118)
  loc_1426207: var_104 = (var_C2 = &HFF)
  loc_142622C: var_E4 = "PROHMS"
  loc_1426257: var_F4 = "SWAGAT"
  loc_142628C: If CBool(var_104 And (Ucase(Left(CVar(App.EXEName), 6)) = var_E4) Or (Ucase(Left(CVar(App.EXEName), 6)) = var_F4)) Then
  loc_14262B0:   var_B8 = Me.Global.App
  loc_14262CE:   Me.Global.LoadPicture CVar(App.Path & "\Pic\DelarLogo.bmp"), var_E4, var_F4, var_104, var_114
  loc_14262E3:   Me.DealerLogo.Picture = var_118
  loc_14262F7: End If
  loc_1426307: var_B8 = MemVar_1F9E69C.App
  loc_1426320: var_118 = Me.Global.App
  loc_1426339: var_11C = Me.Global.App
  loc_1426359: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\DealerLogo.bmp", var_C2, var_118)
  loc_1426364: var_104 = (var_C2 = &HFF)
  loc_1426389: var_E4 = "PROHMS"
  loc_14263B4: var_F4 = "SWAGAT"
  loc_14263E9: If CBool(var_104 And (Ucase(Left(CVar(App.EXEName), 6)) = var_E4) Or (Ucase(Left(CVar(App.EXEName), 6)) = var_F4)) Then
  loc_142640D:   var_B8 = Me.Global.App
  loc_142642B:   Me.Global.LoadPicture CVar(App.Path & "\Pic\DealerLogo.bmp"), var_E4, var_F4, var_104, var_114
  loc_1426440:   Me.DealerLogo.Picture = var_118
  loc_1426454: End If
  loc_1426468: Set var_B8 = Me.LblCalender
  loc_142646E: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Date)
  loc_142647B: Call Timer1_Timer()
  loc_14264A0: If (Ucase(MemVar_1F950C8) = "SA") Then
  loc_14264B1:   Me.Timer1.Enabled = False
  loc_14264B9: End If
  loc_14264BB: Call Proc_1_118_118576C(var_118, MemVar_1F95210)
  loc_14264C2: Call Proc_1_120_1209720(var_B4)
  loc_14264CE: global_100 = 0
  loc_14264D6: MemVar_1F95220 = "Analysis Software"
  loc_14264DF: MemVar_1F95224 = "Analysis Software"
  loc_14264EA: Set var_A0 = Nothing
  loc_14264F4: Set var_A0 = Nothing
  loc_14264FE: Set var_90 = Nothing
  loc_1426503: Exit Sub
End Sub

Private Sub MDIForm_Resize() '11558FC
  'Data Table: 5C8390
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  loc_1155556: Me.LblCompany.Left = CDbl(0)
  loc_115556B: var_8C = Me.PictSubMenu.ScaleWidth
  loc_115557D: Me.LblCompany.Width = var_8C
  loc_1155589: Call Proc_1_116_12B6C28()
  loc_11555A9: If (Me.PictShortCuts.Visible = &HFF) Then
  loc_11555BE:   Me.TreeView1.Left = CVar(CDbl(0))
  loc_11555D8:   Me.TreeView1.Top = CVar(CDbl(0))
  loc_11555F2:   Me.ListView1.Left = CVar(CDbl(0))
  loc_115560C:   Me.ListView1.Top = CVar(CDbl(0))
  loc_1155626:   Me.mnuGrid.Left = CVar(CDbl(0))
  loc_1155634:   Call 0.Method_arg_108 (var_8C)
  loc_1155640:   If (var_8C > CDbl(0)) Then
  loc_115564C:     Call 0.Method_arg_108 (var_8C)
  loc_1155663:     If (CDbl((global_108 * &H64)) > CDbl(var_8C)) Then
  loc_115566F:       Call 0.Method_arg_108 (var_8C)
  loc_1155689:       global_114 = CInt((CDbl((global_108 * &H64)) / var_8C))
  loc_115568C:     End If
  loc_1155699:     var_A4 = CVar(CDbl((global_108 - &H32))) 'Single
  loc_11556A8:     Me.TreeView1.Height = CVar(CDbl(0))
  loc_11556BD:     var_A4 = CVar(CDbl((global_108 - &H32))) 'Single
  loc_11556CC:     Me.ListView1.Height = CVar(CDbl(0))
  loc_1155704:     var_A4 = CVar(((CDbl(Me.ListView1.Top) + CDbl(Me.ListView1.Height)) + CDbl(&H32))) 'Single
  loc_1155713:     Me.mnuGrid.Top = CVar(CDbl(0))
  loc_1155732:     var_C4 = Me.ListView1.Height
  loc_1155744:     Call 0.Method_arg_108 (var_8C, var_C4)
  loc_1155761:     If (CSng(((var_8C - CDbl(var_C4)) - CDbl(&H32))) <= CDbl(0)) Then
  loc_1155764:       GoTo loc_11557B3
  loc_1155767:     End If
  loc_1155771:     var_C4 = Me.ListView1.Height
  loc_1155783:     Call 0.Method_arg_108 (var_8C, var_C4)
  loc_1155795:     var_A4 = CVar(((var_8C - CDbl(var_C4)) - CDbl(&H32))) 'Single
  loc_11557A4:     Me.mnuGrid.Height = CVar(CDbl(0))
  loc_11557B3:     ' Referenced from: 1155764
  loc_11557BA:     Set var_88 = Me.PictShortCuts
  loc_11557CC:     var_A4 = CVar((MDIForm1.PictShortCuts.Width - CDbl(&H32))) 'Single
  loc_11557DB:     Me.ListView1.Width = CVar(CDbl(0))
  loc_1155800:     var_A4 = CVar((Me.PictShortCuts.Width - CDbl(&H32))) 'Single
  loc_115580F:     Me.TreeView1.Width = CVar(CDbl(0))
  loc_1155834:     var_A4 = CVar((Me.PictShortCuts.Width - CDbl(&H32))) 'Single
  loc_1155843:     Me.mnuGrid.Width = CVar(CDbl(0))
  loc_115584F:     var_A4 = 1
  loc_1155871:     var_E8 = CVar(CLng((CDbl(Me.mnuGrid.Width) - CDbl(325)))) 'Long
  loc_115587A:     Set var_90 = Me.mnuGrid
  loc_1155880:     LateIdCallSt
  loc_1155892:   End If
  loc_11558AE:   If (CBool(Me.mnuGrid.Visible) = &HFF) Then
  loc_11558D3:     Me.Picture3.Left = (CDbl(Me.mnuGrid.Width) + CDbl(&H50))
  loc_11558E5:   Else
  loc_11558F3:     Me.Picture3.Left = CDbl(0)
  loc_11558FB:   End If
  loc_11558FB: End If
  loc_11558FB: Exit Sub
End Sub

Private Sub MDIForm_Unload(Cancel As Integer) 'E55204
  'Data Table: 5C8390
  Dim MemVar_1F95030(CLng(var_86)) As Connection15
  Dim unk_5C83CC As Connection15
  Dim unk_5C8418 As Connection15
  loc_E551CC: For var_8A = 1 To MemVar_1F95040: var_86 = var_8A 'Integer
  loc_E551DD:   MemVar_1F95030(CLng(var_86)).Close
  loc_E551E5: Next var_8A 'Integer
  loc_E551F0: unk_5C83CC.Close
  loc_E551FB: unk_5C8418.Close
  loc_E55200: Exit Sub
  loc_E55201: If  Then Exit Sub
  loc_E55201: End If
End Sub

Private Sub MDIForm_UnknownEvent_13 'EF0880
  'Data Table: 5C8390
  loc_EF07CA: If (((CLng(Cancel) = 2) And (CLng(arg_10) = 2)) And (MemVar_1F950C8 = "SA")) Then
  loc_EF07E5:   Call 0.Method_arg_2BC (Me.mnuMdI, var_9C, var_AC)
  loc_EF07ED: End If
  loc_EF080B: If (((CLng(Cancel) = 1) And (CLng(arg_10) = 2)) And (MemVar_1F950C8 = "SA")) Then
  loc_EF081C:   Call 0.Method_arg_2B0 (var_9C, var_AC)
  loc_EF0821: End If
  loc_EF083F: If (((CLng(Cancel) = 2) And (CLng(arg_10) = 4)) And (MemVar_1F950C8 = "SA")) Then
  loc_EF084A:   Call 0.Method_arg_1BC (&HFF, var_BC)
  loc_EF0872:   Call 0.Method_Me4 ((CDbl(MemVar_1F96668.FGrid1.Width) + CDbl(&HA)))
  loc_EF087D: End If
  loc_EF087D: Exit Sub
End Sub

Private Sub TelMaast_Click(Index As Integer) 'FD6F24
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_FD6D63: var_B4 = CVar("TelMaast" & "+") 'String
  loc_FD6D7E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FD6D99: If (Index = 1) Then
  loc_FD6DA5:   global_52 = MemVar_1F96370
  loc_FD6DB6:   Set var_CC = Me.TelMaast
  loc_FD6DBC:   Call 0.Method_TelMaast_Click0 (Index, var_D0, var_D4)
  loc_FD6DC4:   var_C6 = var_D0.Caption
  loc_FD6DD6:   global_52.CAPTION = CVar(var_D4)
  loc_FD6DEC:   Call global_52.Show
  loc_FD6DF5: Else
  loc_FD6DFB:   If (var_C6 = 2) Then
  loc_FD6E07:     global_52 = MemVar_1F96384
  loc_FD6E18:     Set var_CC = Me.TelMaast
  loc_FD6E1E:     Call 0.Method_TelMaast_Click0 (Index, var_D0)
  loc_FD6E38:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_FD6E4E:     Call global_52.Show
  loc_FD6E57:   Else
  loc_FD6E5D:     If (var_C6 = 3) Then
  loc_FD6E69:       global_52 = MemVar_1F96398
  loc_FD6E7A:       Set var_CC = Me.TelMaast
  loc_FD6E80:       Call 0.Method_TelMaast_Click0 (Index, var_D0)
  loc_FD6E9A:       global_52.CAPTION = CVar(var_D0.Caption)
  loc_FD6EB0:       Call global_52.Show
  loc_FD6EB9:     Else
  loc_FD6EBF:       If (var_C6 = 4) Then
  loc_FD6ECB:         global_52 = MemVar_1F963AC
  loc_FD6EDC:         Set var_CC = Me.TelMaast
  loc_FD6EE2:         Call 0.Method_TelMaast_Click0 (Index, var_D0)
  loc_FD6EFC:         global_52.CAPTION = CVar(var_D0.Caption)
  loc_FD6F12:         Call global_52.Show
  loc_FD6F18:       End If
  loc_FD6F18:     End If
  loc_FD6F18:   End If
  loc_FD6F18: End If
  loc_FD6F1D: global_52 = Nothing
  loc_FD6F21: Exit Sub
End Sub

Private Sub UTL_Click(Index As Integer) '160DF5C
  'Data Table: 5C8390
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim MemVar_1F95204 As String
  Dim var_D6 As Integer
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_A8 As Variant
  Dim var_FC As Variant
  Dim unk_5C83CC As Connection15
  Dim var_104 As String
  Dim var_114 As Variant
  Dim var_100 As Fields15
  Dim var_14C As Field20
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1D8 As Variant
  Dim var_238 As Variant
  Dim var_144 As Variant
  loc_160CAF3: var_B8 = CVar("utl" & "+") 'String
  loc_160CB09: var_C8 = var_B8 & Trim(CVar(CStr(Index))) 
  loc_160CB0E: MemVar_1F95204 = CStr(var_C8)
  loc_160CB20: var_D6 = Index
  loc_160CB29: If (var_D6 = 0) Then
  loc_160CB3A:   Call 0.Method_arg_2B0 (var_E8, var_F8)
  loc_160CB4C:   Set var_FC = var_100(Index)
  loc_160CB52:   Call 0.Method_UTL_Click0 (var_104, var_D6)
  loc_160CB5A:   MemVar_1F95204 = UserMast.Menu.Caption
  loc_160CB68:   Call 0.Method_arg_54 (var_104)
  loc_160CB7C:   MemVar_1F963C0 = Nothing
  loc_160CB83: Else
  loc_160CB89:   If (var_D6 = 1) Then
  loc_160CB9A:     Call 0.Method_arg_2B0 (var_E8)
  loc_160CBAC:     Set var_FC = var_100(Index)
  loc_160CBB2:     Call 0.Method_UTL_Click0 (var_104)
  loc_160CBBA:     var_F8 = UserPermission.Menu.Caption
  loc_160CBC8:     Call 0.Method_arg_54 (var_104)
  loc_160CBDC:     MemVar_1F963D4 = Nothing
  loc_160CBE3:   Else
  loc_160CBE9:     If (var_D6 = 6) Then
  loc_160CBEC:       GoTo loc_160DF50
  loc_160CBEF:     End If
  loc_160CBF5:     If (var_D6 = 8) Then
  loc_160CC0E:       var_98 = "Creating the ZIP at '" & MemVar_1F9509C 
  loc_160CC33:       If (MsgBox(var_98 & " '", 4, var_B8, var_C8, var_144) = 6) Then
  loc_160CC43:         Set var_FC = (&HFF)
  loc_160CC49:         CGZipFiles.PictureBox.Visible = 
  loc_160CC5E:         Me.Label1.Caption = vbNullString
  loc_160CC70:         Me.Label1.Refresh
  loc_160CC83:         unk_5C83CC.CommandTimeout = &H118
  loc_160CC8F:         var_104 = "Backing Up Database [DATA] From Sql-Server " & vbCrLf
  loc_160CC9C:         Me.Label1.Caption = var_104
  loc_160CCBB:         Me.Label1.Caption = "Please Wait..............." & vbCrLf
  loc_160CCD0:         Me.Label1.Refresh
  loc_160CCEE:         unk_5C83CC.Execute "sp_dropdevice 'HOTELBKUP'", var_98, -1
  loc_160CD13:         var_98 = (MemVar_1F9509C + "\HOTELBKUP")
  loc_160CD17:         var_A8 = "sp_addumpdevice  'Disk' , 'HOTELBKUP' ,'" & var_98 
  loc_160CD2E:         unk_5C83CC.Execute CStr(var_A8 & "',2"), var_C8, -1
  loc_160CD5C:         var_F8 = 0
  loc_160CD89:         unk_5C83CC.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128 & "'", var_98, -1
  loc_160CD91:         var_FC = var_FC.Fields
  loc_160CD99:         var_F8 = var_100.Item(var_100)
  loc_160CDA1:         var_14C = var_14C.Value
  loc_160CDC0:         unk_5C83CC.Execute CStr(var_A8 & var_A8 & " to HOTELBKUP"), "Backup Database ", var_144
  loc_160CDF1:         unk_5C83CC.CommandTimeout = &H78
  loc_160CDF9:         Set var_158 = New CGZipFiles 
  loc_160CE1E:         var_188 = Date
  loc_160CE5E:         var_168 = CVar("DATA-" & MemVar_1F95128) 'String
  loc_160CE84:         var_178 = (1 + Format(Str(Year(Date)), "0000"))
  loc_160CEAB:         var_1D8 = (1 + Format(Str(Month(var_188)), "00"))
  loc_160CED2:         var_238 = (1 + Format(Str(Day(Date)), "00"))
  loc_160CED7:         var_D4 = CStr(var_238)
  loc_160CF3C:         var_158.ZipFileName = CStr(MemVar_1F9509C & "\" & CVar(MemVar_1F95130) & "(" & CVar(var_D4) & ").ZIP")
  loc_160CF56:         var_158.UpdatingZip = 0
  loc_160CF75:         var_B8 = "Creating " & MemVar_1F9509C & "\" & "(" 
  loc_160CF7F:         var_C8 = var_B8 & CVar(var_D4) 
  loc_160CF8D:         var_168 = var_C8 & CVar(").ZIP" & vbCrLf) 
  loc_160CF9F:         Me.Label1.Caption = CStr(var_168)
  loc_160CFC3:         Me.Label1.Refresh
  loc_160D004:         If (var_158.MakeZipFile() <> 0) Then
  loc_160D026:           MsgBox(CVar(var_158.GetLastMessage()), 0, var_158.AddFile(CStr(MemVar_1F9509C & "\HOTELBKUP")), var_B8, var_C8)
  loc_160D039:         Else
  loc_160D043:           var_98 = (MemVar_1F9509C + "\HOTELBKUP")
  loc_160D051:           Call 0.Method_arg_5C (CStr(CVar(var_158.GetLastMessage())), 0, 1, var_1D8, 1, var_178)
  loc_160D072:           var_98 = MemVar_1F9509C & "\" 
  loc_160D08F:           var_C8 = var_98 & CVar(MemVar_1F95130) & "(" & CVar(var_D4) 
  loc_160D09C:           MsgBox(var_C8 & ").ZIP Created Successfully", 0, var_168, var_178, var_188)
  loc_160D0B4:         End If
  loc_160D0B6:         Set var_158 = Nothing 
  loc_160D0BF:         Set var_CC = Nothing
  loc_160D0D0:         Set var_FC = 1(vbNullString)
  loc_160D0D6:         CGZipFiles.Label.Caption = var_168
  loc_160D0E8:         Me.Label1.Refresh
  loc_160D0FB:         unk_5C83CC.CommandTimeout = &H118
  loc_160D107:         var_104 = "Backing Up Database [MAIN] From Sql-Server " & vbCrLf
  loc_160D114:         Me.Label1.Caption = CStr(CVar(var_158.GetLastMessage()))
  loc_160D133:         Me.Label1.Caption = "Please Wait..............." & vbCrLf
  loc_160D148:         Me.Label1.Refresh
  loc_160D166:         unk_5C83CC.Execute "sp_dropdevice  'MAINBKUP'", var_98, -1
  loc_160D18B:         var_98 = (MemVar_1F9509C + "\MAINBKUP")
  loc_160D1A6:         unk_5C83CC.Execute CStr("sp_addumpdevice  'Disk' , 'MAINBKUP' ,'" & var_98 & "',2"), var_C8, -1
  loc_160D1E0:         unk_5C83CC.Execute "Backup Database " & MemVar_1F95010 & " to MAINBKUP", var_98, -1
  loc_160D1FD:         unk_5C83CC.CommandTimeout = &H78
  loc_160D205:         Set var_270 = New CGZipFiles 
  loc_160D22A:         var_188 = Date
  loc_160D26A:         var_168 = CVar("MAIN-" & MemVar_1F95128) 'String
  loc_160D290:         var_178 = (1 + Format(Str(Year(Date)), "0000"))
  loc_160D2B7:         var_1D8 = (1 + Format(Str(Month(var_188)), "00"))
  loc_160D2DE:         var_238 = (1 + Format(Str(Day(Date)), "00"))
  loc_160D2E3:         var_D4 = CStr(var_238)
  loc_160D348:         var_270.ZipFileName = CStr(MemVar_1F9509C & "\" & CVar(MemVar_1F95130) & "(" & CVar(var_D4) & ").ZIP")
  loc_160D362:         var_270.UpdatingZip = 0
  loc_160D381:         var_B8 = "Creating " & MemVar_1F9509C & "\" & "(" 
  loc_160D38B:         var_C8 = var_B8 & CVar(var_D4) 
  loc_160D399:         var_168 = var_C8 & CVar(").ZIP" & vbCrLf) 
  loc_160D3AB:         Me.Label1.Caption = CStr(var_168)
  loc_160D3CF:         Me.Label1.Refresh
  loc_160D410:         If (var_270.MakeZipFile() <> 0) Then
  loc_160D432:           MsgBox(CVar(var_270.GetLastMessage()), 0, var_270.AddFile(CStr(MemVar_1F9509C & "\MAINBKUP")), var_B8, var_C8)
  loc_160D445:         Else
  loc_160D44F:           var_98 = (MemVar_1F9509C + "\MAINBKUP")
  loc_160D45D:           Call 0.Method_arg_5C (CStr(CVar(var_270.GetLastMessage())), 0, 1, var_1D8, 1, var_178)
  loc_160D47E:           var_98 = MemVar_1F9509C & "\" 
  loc_160D488:           var_A8 = var_98 & CVar(MemVar_1F95130) 
  loc_160D4A4:           var_144 = var_A8 & "(" & CVar(var_D4) & ").ZIP Created Successfully" 
  loc_160D4A8:           MsgBox(var_144, 0, var_168, var_178, var_188)
  loc_160D4C0:         End If
  loc_160D4C2:         Set var_270 = Nothing 
  loc_160D4CB:         Set var_CC = Nothing
  loc_160D4CE:         GoTo loc_160D4D1
  loc_160D4D1:         ' Referenced from:     160D4CE
  loc_160D4D1:       End If
  loc_160D4E9:       var_F8 = 0
  loc_160D516:       unk_5C83CC.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128 & "'", var_98, -1
  loc_160D51E:       var_FC = var_FC.Fields
  loc_160D526:       var_F8 = var_100.Item(var_100)
  loc_160D52E:       var_14C = var_14C.Value
  loc_160D54D:       unk_5C83CC.Execute CStr(var_A8 & var_A8 & " WITH TRUNCATE_ONLY"), "BACKUP LOG ", var_144
  loc_160D58B:       var_F8 = 0
  loc_160D5B8:       unk_5C83CC.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128 & "'", var_98, -1
  loc_160D5C0:       var_FC = var_FC.Fields
  loc_160D5C8:       var_F8 = var_100.Item(var_100)
  loc_160D5D0:       var_14C = var_14C.Value
  loc_160D5EF:       unk_5C83CC.Execute CStr(var_A8 & var_A8 & " WITH NO_LOG"), "BACKUP LOG ", var_144
  loc_160D62D:       var_F8 = 0
  loc_160D64A:       var_104 = "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128
  loc_160D65A:       unk_5C83CC.Execute var_104 & "'", var_98, -1
  loc_160D662:       var_FC = var_FC.Fields
  loc_160D66A:       var_F8 = var_100.Item(var_100)
  loc_160D672:       var_14C = var_14C.Value
  loc_160D691:       unk_5C83CC.Execute CStr(var_A8 & var_A8 & " , 0, TRUNCATEONLY)"), "DBCC SHRINKDATABASE( ", var_144
  loc_160D6C3:       Me.Picture3.Visible = False
  loc_160D6CB:       Exit Sub
  loc_160D6CF:     Else
  loc_160D6D5:       If (var_D6 = 9) Then
  loc_160D6D8:         GoTo loc_160DF50
  loc_160D6DB:       End If
  loc_160D6E1:       If (var_D6 = &HB) Then
  loc_160D6EE:         global_52 = New frmGuestParamMast
  loc_160D701:         global_52.Tag = "11"
  loc_160D712:         Set var_FC = var_100(Index)
  loc_160D718:         Call 0.Method_UTL_Click0 (var_104, -1, var_154)
  loc_160D720:         -1 = global_52.Menu.Caption
  loc_160D732:         global_52.CAPTION = CVar(var_104)
  loc_160D748:         Call global_52.Show
  loc_160D751:       Else
  loc_160D757:         If (var_D6 = &HC) Then
  loc_160D764:           global_52 = New SundryMast
  loc_160D778:           Set var_FC = var_100(Index)
  loc_160D77E:           Call 0.Method_UTL_Click0 (var_104, var_154)
  loc_160D786:           -1 = SundryMast.Menu.Caption
  loc_160D798:           global_52.CAPTION = CVar(var_104)
  loc_160D7AE:           Call global_52.Show
  loc_160D7B7:         Else
  loc_160D7BD:           If (var_D6 = &HD) Then
  loc_160D7C0:             GoTo loc_160DF50
  loc_160D7C3:           End If
  loc_160D7C9:           If (var_D6 = &HE) Then
  loc_160D7CC:             GoTo loc_160DF50
  loc_160D7CF:           End If
  loc_160D7D5:           If (var_D6 = &HF) Then
  loc_160D7E2:             global_52 = New frmWelcome
  loc_160D7F6:             Set var_FC = var_100(Index)
  loc_160D7FC:             Call 0.Method_UTL_Click0 (var_104)
  loc_160D804:              = frmWelcome.Menu.Caption
  loc_160D816:             global_52.CAPTION = CVar(var_104)
  loc_160D82C:             Call global_52.Show
  loc_160D835:           Else
  loc_160D83B:             If (var_D6 = &H10) Then
  loc_160D848:               global_52 = New FrmInc
  loc_160D85C:               Set var_FC = var_100(Index)
  loc_160D862:               Call 0.Method_UTL_Click0 (var_104)
  loc_160D86A:                = FrmInc.Menu.Caption
  loc_160D87C:               global_52.CAPTION = CVar(var_104)
  loc_160D892:               Call global_52.Show
  loc_160D89B:             Else
  loc_160D8A1:               If (var_D6 = &H11) Then
  loc_160D8AA:                 If (MemVar_1F950B8 = 1) Then
  loc_160D8B7:                   global_52 = New frmYearEnd
  loc_160D8CB:                   Set var_FC = var_100(Index)
  loc_160D8D1:                   Call 0.Method_UTL_Click0 (var_104)
  loc_160D8D9:                    = frmYearEnd.Menu.Caption
  loc_160D8EB:                   global_52.CAPTION = CVar(var_104)
  loc_160D901:                   Call global_52.Show
  loc_160D907:                 End If
  loc_160D90A:               Else
  loc_160D910:                 If (var_D6 = &H12) Then
  loc_160D919:                   If (MemVar_1F950B8 = 1) Then
  loc_160D926:                     global_52 = New Transfer
  loc_160D93A:                     Set var_FC = var_100(Index)
  loc_160D940:                     Call 0.Method_UTL_Click0 (var_104)
  loc_160D948:                      = Transfer.Menu.Caption
  loc_160D95A:                     global_52.CAPTION = CVar(var_104)
  loc_160D970:                     Call global_52.Show
  loc_160D976:                   End If
  loc_160D979:                 Else
  loc_160D97F:                   If (var_D6 = &H13) Then
  loc_160D988:                     If (MemVar_1F950B8 = 1) Then
  loc_160D995:                       global_52 = New FrmDataRecieving
  loc_160D9A9:                       Set var_FC = var_100(Index)
  loc_160D9AF:                       Call 0.Method_UTL_Click0 (var_104)
  loc_160D9B7:                        = FrmDataRecieving.Menu.Caption
  loc_160D9C9:                       global_52.CAPTION = CVar(var_104)
  loc_160D9DF:                       Call global_52.Show
  loc_160D9E5:                     End If
  loc_160D9E8:                   Else
  loc_160D9EE:                     If (var_D6 = &H14) Then
  loc_160D9FB:                       global_52 = New frmMenuItemCopy
  loc_160DA0F:                       Set var_FC = var_100(Index)
  loc_160DA15:                       Call 0.Method_UTL_Click0 (var_104)
  loc_160DA1D:                        = frmMenuItemCopy.Menu.Caption
  loc_160DA2F:                       global_52.CAPTION = CVar(var_104)
  loc_160DA45:                       Call global_52.Show
  loc_160DA4E:                     Else
  loc_160DA54:                       If (var_D6 = &H15) Then
  loc_160DA61:                         global_52 = New FrmPOSBillDeletion
  loc_160DA75:                         Set var_FC = var_100(Index)
  loc_160DA7B:                         Call 0.Method_UTL_Click0 (var_104)
  loc_160DA83:                          = FrmPOSBillDeletion.Menu.Caption
  loc_160DA95:                         global_52.CAPTION = CVar(var_104)
  loc_160DAAB:                         Call global_52.Show
  loc_160DAB4:                       Else
  loc_160DABA:                         If (var_D6 = &H16) Then
  loc_160DAC7:                           global_52 = New FrmBdayLookup
  loc_160DADB:                           Set var_FC = var_100(Index)
  loc_160DAE1:                           Call 0.Method_UTL_Click0 (var_104)
  loc_160DAE9:                            = FrmBdayLookup.Menu.Caption
  loc_160DAFB:                           global_52.CAPTION = CVar(var_104)
  loc_160DB09:                           var_E8 = 1
  loc_160DB15:                           var_114 = CVar(Me) 'Address
  loc_160DB22:                           Call global_52.Show
  loc_160DB2B:                         Else
  loc_160DB31:                           If (var_D6 = &H17) Then
  loc_160DB3E:                             global_52 = New FaCountryMast
  loc_160DB52:                             Set var_FC = var_100(Index)
  loc_160DB58:                             Call 0.Method_UTL_Click0 (var_104, var_114)
  loc_160DB60:                             var_E8 = FaCountryMast.Menu.Caption
  loc_160DB72:                             global_52.CAPTION = CVar(var_104)
  loc_160DB88:                             Call global_52.Show
  loc_160DB91:                           Else
  loc_160DB97:                             If (var_D6 = &H18) Then
  loc_160DBA4:                               global_52 = New FaStateMast
  loc_160DBB8:                               Set var_FC = var_100(Index)
  loc_160DBBE:                               Call 0.Method_UTL_Click0 (var_104)
  loc_160DBC6:                                = FaStateMast.Menu.Caption
  loc_160DBD8:                               global_52.CAPTION = CVar(var_104)
  loc_160DBEE:                               Call global_52.Show
  loc_160DBF7:                             Else
  loc_160DBFD:                               If (var_D6 = &H19) Then
  loc_160DC0A:                                 global_52 = New FaCityMast
  loc_160DC1E:                                 Set var_FC = var_100(Index)
  loc_160DC24:                                 Call 0.Method_UTL_Click0 (var_104)
  loc_160DC2C:                                  = FaCityMast.Menu.Caption
  loc_160DC3E:                                 global_52.CAPTION = CVar(var_104)
  loc_160DC54:                                 Call global_52.Show
  loc_160DC5D:                               Else
  loc_160DC63:                                 If (var_D6 = &H1A) Then
  loc_160DC70:                                   global_52 = New CompMast
  loc_160DC84:                                   Set var_FC = var_100(Index)
  loc_160DC8A:                                   Call 0.Method_UTL_Click0 (var_104)
  loc_160DC92:                                    = CompMast.Menu.Caption
  loc_160DCA4:                                   global_52.CAPTION = CVar(var_104)
  loc_160DCBA:                                   Call global_52.Show
  loc_160DCC3:                                 Else
  loc_160DCC9:                                   If (var_D6 = &H1B) Then
  loc_160DCD6:                                     global_52 = New DepartMast
  loc_160DCEA:                                     Set var_FC = var_100(Index)
  loc_160DCF0:                                     Call 0.Method_UTL_Click0 (var_104)
  loc_160DCF8:                                      = DepartMast.Menu.Caption
  loc_160DD0A:                                     global_52.CAPTION = CVar(var_104)
  loc_160DD20:                                     Call global_52.Show
  loc_160DD29:                                   Else
  loc_160DD2F:                                     If (var_D6 = &H1C) Then
  loc_160DD3C:                                       global_52 = New FaSubGroup
  loc_160DD50:                                       Set var_FC = var_100(Index)
  loc_160DD56:                                       Call 0.Method_UTL_Click0 (var_104)
  loc_160DD5E:                                        = FaSubGroup.Menu.Caption
  loc_160DD70:                                       global_52.CAPTION = CVar(var_104)
  loc_160DD86:                                       Call global_52.Show
  loc_160DD98:                                       global_52.WindowState = 2
  loc_160DD9F:                                     Else
  loc_160DDA5:                                       If (var_D6 = &H1D) Then
  loc_160DDB2:                                         global_52 = New FrmPOSSaleDataTransfer
  loc_160DDC6:                                         Set var_FC = var_100(Index)
  loc_160DDCC:                                         Call 0.Method_UTL_Click0 (var_104)
  loc_160DDD4:                                          = FrmPOSSaleDataTransfer.Menu.Caption
  loc_160DDE6:                                         global_52.CAPTION = CVar(var_104)
  loc_160DDFC:                                         Call global_52.Show
  loc_160DE05:                                       Else
  loc_160DE0B:                                         If (var_D6 = &H1E) Then
  loc_160DE18:                                           global_52 = New rPOSRepView
  loc_160DE2B:                                           global_52.GRepFormName = "PLUFile"
  loc_160DE3C:                                           Set var_FC = var_100(Index)
  loc_160DE42:                                           Call 0.Method_UTL_Click0 (var_104)
  loc_160DE4A:                                            = global_52.Menu.Caption
  loc_160DE5C:                                           global_52.CAPTION = CVar(var_104)
  loc_160DE7C:                                           Me.Global.Unload global_52
  loc_160DE87:                                         Else
  loc_160DE8D:                                           If (var_D6 = &H20) Then
  loc_160DE9A:                                             global_52 = New FrmPOSRecycleData
  loc_160DEAE:                                             Set var_FC = var_100(Index)
  loc_160DEB4:                                             Call 0.Method_UTL_Click0 (var_104)
  loc_160DEBC:                                              = FrmPOSRecycleData.Menu.Caption
  loc_160DECE:                                             global_52.CAPTION = CVar(var_104)
  loc_160DEE4:                                             Call global_52.Show
  loc_160DEED:                                           Else
  loc_160DEF3:                                             If (var_D6 = &H22) Then
  loc_160DF00:                                               global_52 = New FrmJobScheduler
  loc_160DF14:                                               Set var_FC = var_100(Index)
  loc_160DF1A:                                               Call 0.Method_UTL_Click0 (var_104)
  loc_160DF22:                                                = FrmJobScheduler.Menu.Caption
  loc_160DF34:                                               global_52.CAPTION = CVar(var_104)
  loc_160DF4A:                                               Call global_52.Show
  loc_160DF50:                                             End If
  loc_160DF50:                                           End If
  loc_160DF50:                                         End If
  loc_160DF50:                                       End If
  loc_160DF50:                                     End If
  loc_160DF50:                                   End If
  loc_160DF50:                                 End If
  loc_160DF50:                               End If
  loc_160DF50:                             End If
  loc_160DF50:                           End If
  loc_160DF50:                         End If
  loc_160DF50:                       End If
  loc_160DF50:                     End If
  loc_160DF50:                   End If
  loc_160DF50:                 End If
  loc_160DF50:               End If
  loc_160DF50:             End If
  loc_160DF50:             ' Referenced from:           160D7CC
  loc_160DF50:             ' Referenced from:           160D7C0
  loc_160DF50:           End If
  loc_160DF50:         End If
  loc_160DF50:         ' Referenced from:       160D6D8
  loc_160DF50:       End If
  loc_160DF50:       ' Referenced from:     160CBEC
  loc_160DF50:     End If
  loc_160DF50:   End If
  loc_160DF50: End If
  loc_160DF55: global_52 = Nothing
  loc_160DF59: Exit Sub
End Sub

Private Sub FAREPORT_Click(Index As Integer) '12A4838
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_DA As Integer
  Dim var_E2 As Integer
  Dim var_114 As Variant
  Dim var_128 As Menu
  loc_12A4227: var_B4 = CVar("FAREPORT" & "+") 'String
  loc_12A423D: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_12A4242: MemVar_1F95204 = CStr(var_C4)
  loc_12A4251: On Error Goto loc_12A47F1
  loc_12A4257: var_DA = Index
  loc_12A4260: If Not (var_DA = 0) Then
  loc_12A4269:   If Not (var_DA = 3) Then
  loc_12A4272:     If Not (var_DA = 4) Then
  loc_12A427B:       If Not (var_DA = 5) Then
  loc_12A4284:         If Not (var_DA = 6) Then
  loc_12A428D:           If Not (var_DA = 7) Then
  loc_12A4296:             If Not (var_DA = &HA) Then
  loc_12A429F:               If Not (var_DA = &HD) Then
  loc_12A42A8:                 If Not (var_DA = &HE) Then
  loc_12A42B1:                   If Not (var_DA = &HF) Then
  loc_12A42BA:                     If Not (var_DA = &H16) Then
  loc_12A42C3:                       If Not (var_DA = &H17) Then
  loc_12A42CC:                         If Not (var_DA = &H18) Then
  loc_12A42D5:                           If Not (var_DA = &H19) Then
  loc_12A42DE:                             If Not (var_DA = &H1B) Then
  loc_12A42E7:                               If Not (var_DA = &H1D) Then
  loc_12A42F0:                                 If Not (var_DA = &H1E) Then
  loc_12A42F9:                                   If Not (var_DA = &H1F) Then
  loc_12A4302:                                     If Not (var_DA = &H20) Then
  loc_12A430B:                                       If Not (var_DA = &H21) Then
  loc_12A4314:                                         If Not (var_DA = &H22) Then
  loc_12A431D:                                           If (var_DA = &H23) Then
  loc_12A4320:                                           End If
  loc_12A4320:                                         End If
  loc_12A4320:                                       End If
  loc_12A4320:                                     End If
  loc_12A4320:                                   End If
  loc_12A4320:                                 End If
  loc_12A4320:                               End If
  loc_12A4320:                             End If
  loc_12A4320:                           End If
  loc_12A4320:                         End If
  loc_12A4320:                       End If
  loc_12A4320:                     End If
  loc_12A4320:                   End If
  loc_12A4320:                 End If
  loc_12A4320:               End If
  loc_12A4320:             End If
  loc_12A4320:           End If
  loc_12A4320:         End If
  loc_12A4320:       End If
  loc_12A4320:     End If
  loc_12A4320:   End If
  loc_12A432A:   global_52 = New FaReports
  loc_12A4334:   var_E2 = Index
  loc_12A433D:   If (var_E2 = 0) Then
  loc_12A434C:     global_52.GRepFormName = "DayBook"
  loc_12A4353:   Else
  loc_12A4359:     If (var_E2 = 3) Then
  loc_12A4368:       global_52.GRepFormName = "Led"
  loc_12A4376:       VarLateMemLdRfVar
  loc_12A437C:       global_52.Visible = True
  loc_12A4386:     Else
  loc_12A438C:       If (var_E2 = 4) Then
  loc_12A439B:         global_52.GRepFormName = "LedInt"
  loc_12A439F:         var_114 = False
  loc_12A43B0:         VarLateMemCallLdRfVar
  loc_12A43B8:         global_52.Visible = 1
  loc_12A43C9:         VarLateMemLdRfVar
  loc_12A43CF:         global_52.Visible = True
  loc_12A43D9:       Else
  loc_12A43DF:         If (var_E2 = 5) Then
  loc_12A43EE:           global_52.GRepFormName = "CashBook"
  loc_12A43F5:         Else
  loc_12A43FB:           If (var_E2 = 6) Then
  loc_12A440A:             global_52.GRepFormName = "BankBook"
  loc_12A4411:           Else
  loc_12A4417:             If (var_E2 = 7) Then
  loc_12A4426:               global_52.GRepFormName = "JournalBook"
  loc_12A442D:             Else
  loc_12A4433:               If (var_E2 = &HA) Then
  loc_12A4442:                 global_52.GRepFormName = "Annexure"
  loc_12A4449:               Else
  loc_12A444F:                 If (var_E2 = &HD) Then
  loc_12A445E:                   global_52.GRepFormName = "BankReg"
  loc_12A4462:                   var_114 = False
  loc_12A4473:                   VarLateMemCallLdRfVar
  loc_12A447B:                   global_52.Visible = 1
  loc_12A4485:                 Else
  loc_12A448B:                   If (var_E2 = &HE) Then
  loc_12A449A:                     global_52.GRepFormName = "AgingDr"
  loc_12A449E:                     var_114 = False
  loc_12A44AF:                     VarLateMemCallLdRfVar
  loc_12A44B7:                     global_52.Visible = 1
  loc_12A44C1:                   Else
  loc_12A44C7:                     If (var_E2 = &HF) Then
  loc_12A44D6:                       global_52.GRepFormName = "AgingCr"
  loc_12A44DA:                       var_114 = False
  loc_12A44EB:                       VarLateMemCallLdRfVar
  loc_12A44F3:                       global_52.Visible = 1
  loc_12A44FD:                     Else
  loc_12A4503:                       If (var_E2 = &H16) Then
  loc_12A4512:                         global_52.GRepFormName = "Clg"
  loc_12A4516:                         var_114 = False
  loc_12A4527:                         VarLateMemCallLdRfVar
  loc_12A452F:                         global_52.Visible = 1
  loc_12A4539:                       Else
  loc_12A453F:                         If (var_E2 = &H17) Then
  loc_12A454E:                           global_52.GRepFormName = "ClgNot"
  loc_12A4552:                           var_114 = False
  loc_12A4563:                           VarLateMemCallLdRfVar
  loc_12A456B:                           global_52.Visible = 1
  loc_12A4575:                         Else
  loc_12A457B:                           If (var_E2 = &H18) Then
  loc_12A458A:                             global_52.GRepFormName = "LedDeb"
  loc_12A458E:                             var_114 = "Letter"
  loc_12A45A0:                             VarLateMemCallLdRfVar
  loc_12A45A8:                             global_52.CAPTION = 1
  loc_12A45B9:                             VarLateMemLdRfVar
  loc_12A45BF:                             global_52.Visible = True
  loc_12A45C9:                           Else
  loc_12A45CF:                             If (var_E2 = &H19) Then
  loc_12A45DE:                               global_52.GRepFormName = "LedCred"
  loc_12A45E2:                               var_114 = False
  loc_12A45F3:                               VarLateMemCallLdRfVar
  loc_12A45FB:                               global_52.Visible = 1
  loc_12A460C:                               VarLateMemLdRfVar
  loc_12A4612:                               global_52.Visible = True
  loc_12A461C:                             Else
  loc_12A4622:                               If (var_E2 = &H1B) Then
  loc_12A4631:                                 global_52.GRepFormName = "DailySumm"
  loc_12A4638:                               Else
  loc_12A463E:                                 If (var_E2 = &H1D) Then
  loc_12A464D:                                   global_52.GRepFormName = "NonTrans"
  loc_12A4651:                                   var_114 = False
  loc_12A4662:                                   VarLateMemCallLdRfVar
  loc_12A466A:                                   global_52.Visible = 1
  loc_12A4674:                                 Else
  loc_12A467A:                                   If (var_E2 = &H1E) Then
  loc_12A4689:                                     global_52.GRepFormName = "RefReport"
  loc_12A468D:                                     var_114 = False
  loc_12A469E:                                     VarLateMemCallLdRfVar
  loc_12A46A6:                                     global_52.Visible = 1
  loc_12A46B0:                                   Else
  loc_12A46B6:                                     If (var_E2 = &H1F) Then
  loc_12A46C5:                                       global_52.GRepFormName = "DetailedTrial"
  loc_12A46C9:                                       var_114 = False
  loc_12A46DA:                                       VarLateMemCallLdRfVar
  loc_12A46E2:                                       global_52.Visible = 1
  loc_12A46EC:                                     Else
  loc_12A46F2:                                       If (var_E2 = &H20) Then
  loc_12A4701:                                         global_52.GRepFormName = "AcCheckList"
  loc_12A470F:                                         VarLateMemLdRfVar
  loc_12A4715:                                         global_52.Visible = True
  loc_12A471F:                                       Else
  loc_12A4725:                                         If (var_E2 = &H21) Then
  loc_12A4734:                                           global_52.GRepFormName = "DUELIST"
  loc_12A4738:                                           var_114 = True
  loc_12A4748:                                           VarLateMemCallLdRfVar
  loc_12A4750:                                           global_52.Visible = 1
  loc_12A475A:                                         Else
  loc_12A4760:                                           If (var_E2 = &H22) Then
  loc_12A476F:                                             global_52.GRepFormName = "CONTROLLED"
  loc_12A4776:                                           Else
  loc_12A477C:                                             If (var_E2 = &H23) Then
  loc_12A478B:                                               global_52.GRepFormName = "RozNamcha"
  loc_12A478F:                                             End If
  loc_12A478F:                                           End If
  loc_12A478F:                                         End If
  loc_12A478F:                                       End If
  loc_12A478F:                                     End If
  loc_12A478F:                                   End If
  loc_12A478F:                                 End If
  loc_12A478F:                               End If
  loc_12A478F:                             End If
  loc_12A478F:                           End If
  loc_12A478F:                         End If
  loc_12A478F:                       End If
  loc_12A478F:                     End If
  loc_12A478F:                   End If
  loc_12A478F:                 End If
  loc_12A478F:               End If
  loc_12A478F:             End If
  loc_12A478F:           End If
  loc_12A478F:         End If
  loc_12A478F:       End If
  loc_12A478F:     End If
  loc_12A478F:   End If
  loc_12A479C:   Set var_E0 = Me.FAREPORT
  loc_12A47A2:   Call 0.Method_FAREPORT_Click0 (Index, var_128, var_12C, var_114, var_114, var_114, var_114)
  loc_12A47AA:   var_114 = var_128.Caption
  loc_12A47CC:   var_94 = CVar(Replace(var_12C, "&", vbNullString, 1, -1, 0)) 'String
  loc_12A47D6:   global_52.CAPTION = CVar(CStr(Index))
  loc_12A47E7: End If
  loc_12A47EC: global_52 = Nothing
  loc_12A47F0: Exit Sub
  loc_12A47F1: ' Referenced from: 12A4251
  loc_12A47F9: Set var_E0 = Err()
  loc_12A47FF: Call 0.Method_arg_2C (var_12C, var_114, var_114, var_114)
  loc_12A4820: MsgBox(CVar(var_12C), &H40, "Information", var_B4, var_C4)
  loc_12A4833: Exit Sub
  loc_12A4834: Exit Sub
End Sub

Private Sub ResOpEnt_Click(Index As Integer) '11F1204
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  Dim var_E4 As Variant
  loc_11F0D73: var_B4 = CVar("ResOpEnt" & "+") 'String
  loc_11F0D8E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11F0DA9: If (Index = 0) Then
  loc_11F0DB5:   global_52 = MemVar_1F964EC
  loc_11F0DC6:   Set var_CC = Me.ResOpEnt
  loc_11F0DCC:   Call 0.Method_ResOpEnt_Click0 (Index, var_D0, var_D4)
  loc_11F0DD4:   var_C6 = var_D0.Caption
  loc_11F0DE6:   global_52.CAPTION = CVar(var_D4)
  loc_11F0DFC:   Call global_52.Show
  loc_11F0E05: Else
  loc_11F0E0B:   If (var_C6 = 1) Then
  loc_11F0E17:     global_52 = MemVar_1F96500
  loc_11F0E28:     Set var_CC = Me.ResOpEnt
  loc_11F0E2E:     Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11F0E48:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_11F0E5E:     Call global_52.Show
  loc_11F0E67:   Else
  loc_11F0E6D:     If (var_C6 = 2) Then
  loc_11F0E79:       global_52 = MemVar_1F96514
  loc_11F0E8A:       Set var_CC = Me.ResOpEnt
  loc_11F0E90:       Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11F0EAA:       global_52.CAPTION = CVar(var_D0.Caption)
  loc_11F0EC0:       Call global_52.Show
  loc_11F0EC9:     Else
  loc_11F0ECF:       If (var_C6 = 3) Then
  loc_11F0EDB:         global_52 = MemVar_1F96528
  loc_11F0EEC:         Set var_CC = Me.ResOpEnt
  loc_11F0EF2:         Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11F0F0C:         global_52.CAPTION = CVar(var_D0.Caption)
  loc_11F0F22:         Call global_52.Show
  loc_11F0F2B:       Else
  loc_11F0F31:         If (var_C6 = 4) Then
  loc_11F0F3D:           global_52 = MemVar_1F9653C
  loc_11F0F4E:           Set var_CC = Me.ResOpEnt
  loc_11F0F54:           Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11F0F5C:           var_D4 = var_D0.Caption
  loc_11F0F6E:           global_52.CAPTION = CVar(var_D4)
  loc_11F0F84:           Call global_52.Show
  loc_11F0F8D:         Else
  loc_11F0F93:           If (var_C6 = 5) Then
  loc_11F0F9F:             global_52 = MemVar_1F96550
  loc_11F0FB2:             global_52.OpenType = 1
  loc_11F0FC5:             global_52.OpenMode = 2
  loc_11F0FD5:             global_52.AdvType = "ADRES"
  loc_11F0FE6:             Set var_CC = var_D0(Index)
  loc_11F0FEC:             Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11F0FF4:             MemVar_1F95204 = global_52.Menu.Caption
  loc_11F1006:             global_52.CAPTION = CVar(var_D4)
  loc_11F101C:             Call global_52.Show
  loc_11F1025:           Else
  loc_11F102B:             If (var_C6 = 6) Then
  loc_11F1038:               global_52 = New rRepReserv
  loc_11F104B:               global_52.GRepFormName = "ConfirmLetter"
  loc_11F105C:               Set var_CC = var_D0(Index)
  loc_11F1062:               Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11F106A:                = global_52.Menu.Caption
  loc_11F107C:               global_52.CAPTION = CVar(var_D4)
  loc_11F108A:               var_E4 = 1
  loc_11F109B:               Call global_52.Show
  loc_11F10A4:             Else
  loc_11F10AA:               If (var_C6 = 7) Then
  loc_11F10B7:                 global_52 = New rRepReserv
  loc_11F10CA:                 global_52.GRepFormName = "CancellLetter"
  loc_11F10DB:                 Set var_CC = var_D0(Index)
  loc_11F10E1:                 Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11F10E9:                 var_E4 = global_52.Menu.Caption
  loc_11F10FB:                 global_52.CAPTION = CVar(var_D4)
  loc_11F1109:                 var_E4 = 1
  loc_11F111A:                 Call global_52.Show
  loc_11F1123:               Else
  loc_11F1129:                 If (var_C6 = 8) Then
  loc_11F1136:                   global_52 = New rRepReserv
  loc_11F1149:                   global_52.GRepFormName = "RegistrationCard"
  loc_11F115A:                   Set var_CC = var_D0(Index)
  loc_11F1160:                   Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11F1168:                   var_E4 = global_52.Menu.Caption
  loc_11F117A:                   global_52.CAPTION = CVar(var_D4)
  loc_11F1188:                   var_E4 = 1
  loc_11F1199:                   Call global_52.Show
  loc_11F11A2:                 Else
  loc_11F11A8:                   If (var_C6 = 9) Then
  loc_11F11B4:                     global_52 = MemVar_1F96564
  loc_11F11C5:                     Set var_CC = Me.ResOpEnt
  loc_11F11CB:                     Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11F11E5:                     global_52.CAPTION = CVar(var_D0.Caption)
  loc_11F11FB:                     Call global_52.Show
  loc_11F1201:                   End If
  loc_11F1201:                 End If
  loc_11F1201:               End If
  loc_11F1201:             End If
  loc_11F1201:           End If
  loc_11F1201:         End If
  loc_11F1201:       End If
  loc_11F1201:     End If
  loc_11F1201:   End If
  loc_11F1201: End If
  loc_11F1201: Exit Sub
End Sub

Private Sub ResStatusRpt_Click(Index As Integer) '10271F4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_1026FCB: var_B4 = CVar("ResStatusRpt" & "+") 'String
  loc_1026FE6: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1026FF8: var_C6 = Index
  loc_1027001: If (var_C6 = 0) Then
  loc_102700E:   global_52 = New rFomRepView
  loc_1027021:   global_52.GRepFormName = "ReservationStatus"
  loc_1027032:   Set var_CC = var_F0(Index)
  loc_1027038:   Call 0.Method_ResStatusRpt_Click0 (var_F4, var_C6)
  loc_1027040:   MemVar_1F95204 = global_52.Menu.Caption
  loc_1027052:   global_52.CAPTION = CVar(var_F4)
  loc_1027068:   Call global_52.Show
  loc_1027071: Else
  loc_1027077:   If (var_C6 = 1) Then
  loc_1027084:     global_52 = New rFomRepView
  loc_1027097:     global_52.GRepFormName = "ReservStatusArrival"
  loc_10270A8:     Set var_CC = var_F0(Index)
  loc_10270AE:     Call 0.Method_ResStatusRpt_Click0 (var_F4)
  loc_10270B6:      = global_52.Menu.Caption
  loc_10270C8:     global_52.CAPTION = CVar(var_F4)
  loc_10270DE:     Call global_52.Show
  loc_10270E7:   Else
  loc_10270ED:     If (var_C6 = 2) Then
  loc_10270FA:       global_52 = New rFomRepView
  loc_102710D:       global_52.GRepFormName = "ReservStatusInHouse"
  loc_102711E:       Set var_CC = var_F0(Index)
  loc_1027124:       Call 0.Method_ResStatusRpt_Click0 (var_F4)
  loc_102712C:        = global_52.Menu.Caption
  loc_102713E:       global_52.CAPTION = CVar(var_F4)
  loc_1027154:       Call global_52.Show
  loc_102715D:     Else
  loc_1027163:       If (var_C6 = 3) Then
  loc_1027166:         GoTo loc_10271E8
  loc_1027169:       End If
  loc_102716F:       If (var_C6 = 4) Then
  loc_1027172:         GoTo loc_10271E8
  loc_1027175:       End If
  loc_102717B:       If (var_C6 = 5) Then
  loc_1027188:         global_52 = New rFomRepView
  loc_102719B:         global_52.GRepFormName = "MovementList"
  loc_10271AC:         Set var_CC = var_F0(Index)
  loc_10271B2:         Call 0.Method_ResStatusRpt_Click0 (var_F4)
  loc_10271BA:          = global_52.Menu.Caption
  loc_10271CC:         global_52.CAPTION = CVar(var_F4)
  loc_10271E2:         Call global_52.Show
  loc_10271E8:         ' Referenced from:       1027172
  loc_10271E8:         ' Referenced from:       1027166
  loc_10271E8:       End If
  loc_10271E8:     End If
  loc_10271E8:   End If
  loc_10271E8: End If
  loc_10271ED: global_52 = Nothing
  loc_10271F1: Exit Sub
  loc_10271F2:  = arg_1800
End Sub

Private Sub ReservationMIS_Click(Index As Integer) 'FF90A0
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_FF8EB3: var_B4 = CVar("ReservationMIS" & "+") 'String
  loc_FF8ECE: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FF8EE0: var_C6 = Index
  loc_FF8EE9: If (var_C6 = 0) Then
  loc_FF8EF6:   global_52 = New rFomRepView
  loc_FF8F09:   global_52.GRepFormName = "DaysForecastRep"
  loc_FF8F1A:   Set var_CC = var_F0(Index)
  loc_FF8F20:   Call 0.Method_ReservationMIS_Click0 (var_F4, var_C6)
  loc_FF8F28:   MemVar_1F95204 = global_52.Menu.Caption
  loc_FF8F3A:   global_52.CAPTION = CVar(var_F4)
  loc_FF8F50:   Call global_52.Show
  loc_FF8F59: Else
  loc_FF8F5F:   If (var_C6 = 1) Then
  loc_FF8F80:     Set var_CC = var_F0(Index)
  loc_FF8F86:     Call 0.Method_ReservationMIS_Click0 (var_F4)
  loc_FF8F8E:      = resRoomNo.Menu.Caption
  loc_FF8FA0:     New resRoomNo.CAPTION = CVar(var_F4)
  loc_FF8FB1:   Else
  loc_FF8FB7:     If (var_C6 = 2) Then
  loc_FF8FD8:       Set var_CC = var_F0(Index)
  loc_FF8FDE:       Call 0.Method_ReservationMIS_Click0 (var_F4)
  loc_FF8FE6:        = resRoomType.Menu.Caption
  loc_FF8FF8:       New resRoomType.CAPTION = CVar(var_F4)
  loc_FF9011:       Set var_CC = MemVar_1F96514.Frame2
  loc_FF9017:       resRoomType.Frame2.Visible = True
  loc_FF9022:     Else
  loc_FF9028:       If (var_C6 = 3) Then
  loc_FF9035:         global_52 = New rFomRepView
  loc_FF9048:         global_52.GRepFormName = "PackageForecast"
  loc_FF9059:         Set var_CC = var_F0(Index)
  loc_FF905F:         Call 0.Method_ReservationMIS_Click0 (var_F4)
  loc_FF9067:          = global_52.Menu.Caption
  loc_FF9079:         global_52.CAPTION = CVar(var_F4)
  loc_FF908F:         Call global_52.Show
  loc_FF9095:       End If
  loc_FF9095:     End If
  loc_FF9095:   End If
  loc_FF9095: End If
  loc_FF909A: global_52 = Nothing
  loc_FF909E: Exit Sub
End Sub

Private Sub AdvRecdRpt_Click(Index As Integer) 'FB8268
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_FB80CF: var_B4 = CVar("AdvRecdRpt" & "+") 'String
  loc_FB80EA: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FB80FC: var_C6 = Index
  loc_FB8105: If (var_C6 = 0) Then
  loc_FB8112:   global_52 = New rFomRepView
  loc_FB8125:   global_52.GRepFormName = "ResvAdvRecd"
  loc_FB8136:   Set var_CC = var_F0(Index)
  loc_FB813C:   Call 0.Method_AdvRecdRpt_Click0 (var_F4, var_C6)
  loc_FB8144:   MemVar_1F95204 = global_52.Menu.Caption
  loc_FB8156:   global_52.CAPTION = CVar(var_F4)
  loc_FB816C:   Call global_52.Show
  loc_FB8175: Else
  loc_FB817B:   If (var_C6 = 1) Then
  loc_FB8188:     global_52 = New rFomRepView
  loc_FB819B:     global_52.GRepFormName = "ResvAdvRecdArr"
  loc_FB81AC:     Set var_CC = var_F0(Index)
  loc_FB81B2:     Call 0.Method_AdvRecdRpt_Click0 (var_F4)
  loc_FB81BA:      = global_52.Menu.Caption
  loc_FB81CC:     global_52.CAPTION = CVar(var_F4)
  loc_FB81E2:     Call global_52.Show
  loc_FB81EB:   Else
  loc_FB81F1:     If (var_C6 = 2) Then
  loc_FB81FE:       global_52 = New rFomRepView
  loc_FB8211:       global_52.GRepFormName = "ResvAdvRecdInHouse"
  loc_FB8222:       Set var_CC = var_F0(Index)
  loc_FB8228:       Call 0.Method_AdvRecdRpt_Click0 (var_F4)
  loc_FB8230:        = global_52.Menu.Caption
  loc_FB8242:       global_52.CAPTION = CVar(var_F4)
  loc_FB8258:       Call global_52.Show
  loc_FB825E:     End If
  loc_FB825E:   End If
  loc_FB825E: End If
  loc_FB8263: global_52 = Nothing
  loc_FB8267: Exit Sub
End Sub

Private Sub HouseREP_Click(Index As Integer) '10E4D68
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_10E4A5B: var_B4 = CVar("HouseREP" & "+") 'String
  loc_10E4A76: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_10E4A88: var_C6 = Index
  loc_10E4A91: If (var_C6 = 0) Then
  loc_10E4A9E:   global_52 = New rRepHousePreview
  loc_10E4AB1:   global_52.GRepFormName = "IssueRegister"
  loc_10E4AC2:   Set var_CC = var_F0(Index)
  loc_10E4AC8:   Call 0.Method_HouseREP_Click0 (var_F4, var_C6)
  loc_10E4AD0:   MemVar_1F95204 = global_52.Menu.Caption
  loc_10E4AE2:   global_52.CAPTION = CVar(var_F4)
  loc_10E4AF8:   Call global_52.Show
  loc_10E4B01: Else
  loc_10E4B07:   If (var_C6 = 1) Then
  loc_10E4B14:     global_52 = New rRepHousePreview
  loc_10E4B27:     global_52.GRepFormName = "StockRegister"
  loc_10E4B38:     Set var_CC = var_F0(Index)
  loc_10E4B3E:     Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E4B46:      = global_52.Menu.Caption
  loc_10E4B58:     global_52.CAPTION = CVar(var_F4)
  loc_10E4B6E:     Call global_52.Show
  loc_10E4B77:   Else
  loc_10E4B7D:     If (var_C6 = 2) Then
  loc_10E4B8A:       global_52 = New rRepHousePreview
  loc_10E4B9D:       global_52.GRepFormName = "StockSumm"
  loc_10E4BAE:       Set var_CC = var_F0(Index)
  loc_10E4BB4:       Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E4BBC:        = global_52.Menu.Caption
  loc_10E4BCE:       global_52.CAPTION = CVar(var_F4)
  loc_10E4BE4:       Call global_52.Show
  loc_10E4BEF:       global_52 = Nothing
  loc_10E4BF6:     Else
  loc_10E4BFC:       If (var_C6 = 3) Then
  loc_10E4C09:         global_52 = New rRepHousePreview
  loc_10E4C1C:         global_52.GRepFormName = "RoomStatus"
  loc_10E4C2D:         Set var_CC = var_F0(Index)
  loc_10E4C33:         Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E4C3B:          = global_52.Menu.Caption
  loc_10E4C4D:         global_52.CAPTION = CVar(var_F4)
  loc_10E4C63:         Call global_52.Show
  loc_10E4C6E:         global_52 = Nothing
  loc_10E4C75:       Else
  loc_10E4C7B:         If (var_C6 = 4) Then
  loc_10E4C88:           global_52 = New rRepHousePreview
  loc_10E4C9B:           global_52.GRepFormName = "ComplaintList"
  loc_10E4CAC:           Set var_CC = var_F0(Index)
  loc_10E4CB2:           Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E4CBA:            = global_52.Menu.Caption
  loc_10E4CCC:           global_52.CAPTION = CVar(var_F4)
  loc_10E4CE2:           Call global_52.Show
  loc_10E4CED:           global_52 = Nothing
  loc_10E4CF4:         Else
  loc_10E4CFA:           If (var_C6 = 5) Then
  loc_10E4D07:             global_52 = New rFomRepView
  loc_10E4D1A:             global_52.GRepFormName = "HouseKeeping"
  loc_10E4D2B:             Set var_CC = var_F0(Index)
  loc_10E4D31:             Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E4D39:              = global_52.Menu.Caption
  loc_10E4D4B:             global_52.CAPTION = CVar(var_F4)
  loc_10E4D61:             Call global_52.Show
  loc_10E4D67:           End If
  loc_10E4D67:         End If
  loc_10E4D67:       End If
  loc_10E4D67:     End If
  loc_10E4D67:   End If
  loc_10E4D67: End If
  loc_10E4D67: Exit Sub
End Sub

Private Sub UTLL_Click(Index As Integer) 'EB9620
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  loc_EB959B: var_B4 = CVar("UTLL" & "+") 'String
  loc_EB95B6: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_EB95CF: global_52 = New RSSaleBill1
  loc_EB95E3: Set var_C8 = var_CC(Index)
  loc_EB95E9: Call 0.Method_UTLL_Click0 (var_D0)
  loc_EB95F1: MemVar_1F95204 = RSSaleBill1.Menu.Caption
  loc_EB9603: global_52.CAPTION = CVar(var_D0)
  loc_EB9619: Call global_52.Show
  loc_EB961F: Exit Sub
End Sub

Private Sub Rest_Click(Index As Integer) '1119E00
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CA As Integer
  Dim var_E0 As Variant
  Dim var_FA As Integer
  loc_1119AB3: var_B4 = CVar("Rest" & "+") 'String
  loc_1119ACE: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1119AE0: var_CA = Index
  loc_1119AE9: If Not (var_CA = &HA) Then
  loc_1119AF2:   If Not (var_CA = &HD) Then
  loc_1119AFB:     If Not (var_CA = &HF) Then
  loc_1119B04:       If Not (var_CA = &H12) Then
  loc_1119B0D:         If Not (var_CA = &H13) Then
  loc_1119B16:           If Not (var_CA = &H14) Then
  loc_1119B1F:             If Not (var_CA = &H16) Then
  loc_1119B28:               If Not (var_CA = &H17) Then
  loc_1119B31:                 If Not (var_CA = &H19) Then
  loc_1119B3A:                   If Not (var_CA = &H1A) Then
  loc_1119B43:                     If (var_CA = &H1C) Then
  loc_1119B46:                     End If
  loc_1119B46:                   End If
  loc_1119B46:                 End If
  loc_1119B46:               End If
  loc_1119B46:             End If
  loc_1119B46:           End If
  loc_1119B46:         End If
  loc_1119B46:       End If
  loc_1119B46:     End If
  loc_1119B46:   End If
  loc_1119B4E:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1119B5B:     global_52 = New FrmChangeRest
  loc_1119B6E:     global_52.PSalePoint = "PointOfSale"
  loc_1119B7F:     Set var_D0 = var_F4(Index)
  loc_1119B85:     Call 0.Method_Rest_Click0 (var_F8, var_CA)
  loc_1119B8D:     MemVar_1F95204 = global_52.Menu.Caption
  loc_1119B9F:     global_52.CAPTION = CVar(var_F8)
  loc_1119BAD:     var_E0 = 1
  loc_1119BBB:     Call global_52.Show
  loc_1119BC1:     var_E0 = 0
  loc_1119BCF:     Call global_52.ZOrder
  loc_1119BD5:   End If
  loc_1119BD8:   var_FA = Index
  loc_1119BE1:   If (var_FA = &H19) Then
  loc_1119BEE:     global_52 = New rPOSRepView
  loc_1119C01:     global_52.GRepFormName = "RStockRegister"
  loc_1119C12:     Set var_D0 = var_F4(Index)
  loc_1119C18:     Call 0.Method_Rest_Click0 (var_F8, var_FA)
  loc_1119C20:     var_E0 = global_52.Menu.Caption
  loc_1119C32:     global_52.CAPTION = CVar(var_F8)
  loc_1119C48:     Call global_52.Show
  loc_1119C51:   Else
  loc_1119C57:     If (var_FA = &H1A) Then
  loc_1119C64:       global_52 = New rPOSRepView
  loc_1119C77:       global_52.GRepFormName = "RStockSummary"
  loc_1119C88:       Set var_D0 = var_F4(Index)
  loc_1119C8E:       Call 0.Method_Rest_Click0 (var_F8)
  loc_1119C96:       var_E0 = global_52.Menu.Caption
  loc_1119CA8:       global_52.CAPTION = CVar(var_F8)
  loc_1119CBE:       Call global_52.Show
  loc_1119CC7:     Else
  loc_1119CCD:       If (var_FA = &H1C) Then
  loc_1119CDA:         global_52 = New rPOSRepView
  loc_1119CED:         global_52.GRepFormName = "KitchenStkSumm"
  loc_1119CFE:         Set var_D0 = var_F4(Index)
  loc_1119D04:         Call 0.Method_Rest_Click0 (var_F8)
  loc_1119D0C:          = global_52.Menu.Caption
  loc_1119D1E:         global_52.CAPTION = CVar(var_F8)
  loc_1119D34:         Call global_52.Show
  loc_1119D3A:       End If
  loc_1119D3A:     End If
  loc_1119D3A:   End If
  loc_1119D3D: Else
  loc_1119D43:   If (var_CA = &H1E) Then
  loc_1119D50:     global_52 = New FrmChangeRest
  loc_1119D63:     global_52.PSalePoint = "PointOfSale"
  loc_1119D74:     Set var_D0 = var_F4(Index)
  loc_1119D7A:     Call 0.Method_Rest_Click0 (var_F8)
  loc_1119D82:      = global_52.Menu.Caption
  loc_1119D94:     global_52.CAPTION = CVar(var_F8)
  loc_1119DA2:     var_E0 = 1
  loc_1119DB0:     Call global_52.Show
  loc_1119DB6:     var_E0 = 0
  loc_1119DC4:     Call global_52.ZOrder
  loc_1119DCD:   Else
  loc_1119DD3:     If (var_CA = &H1F) Then
  loc_1119DEF:       Call New RsStatusScreen.Show
  loc_1119DF5:     End If
  loc_1119DF5:   End If
  loc_1119DF5: End If
  loc_1119DFA: global_52 = Nothing
  loc_1119DFE: Exit Sub
End Sub

Private Sub PP_Click(Index As Integer) '13B927C
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C8 As Integer
  Dim var_100 As Integer
  Dim var_A4 As Variant
  Dim var_14C As Integer
  Dim var_188 As Variant
  Dim var_1A8 As Integer
  Dim var_1E0 As Variant
  Dim var_200 As Integer
  Dim var_238 As Variant
  Dim var_258 As Integer
  Dim var_290 As Variant
  Dim var_2B0 As Integer
  Dim var_2E8 As Variant
  Dim var_308 As Integer
  Dim var_340 As Variant
  Dim var_360 As Integer
  Dim var_3EC As Variant
  loc_13B8A17: var_B4 = CVar("PP" & "+") 'String
  loc_13B8A32: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13B8A48: Call 0.Method_arg_A4 (CInt(&HB))
  loc_13B8A50: var_C8 = Index
  loc_13B8A59: If (var_C8 = 0) Then
  loc_13B8A6B:   var_CC = Me.Global.Screen
  loc_13B8A73:   var_D0 = Screen.ActiveForm
  loc_13B8A83:   var_94 = Form.ActiveControl.Row
  loc_13B8A89:   var_100 = 15
  loc_13B8A9E:   var_D8 = Me.Global.Screen
  loc_13B8AA6:   var_DC = Screen.ActiveForm
  loc_13B8AD9:   var_118 = Me.Global.Screen
  loc_13B8AE1:   var_11C = Screen.ActiveForm
  loc_13B8AF1:   var_B4 = Form.ActiveControl.Row
  loc_13B8AF7:   var_14C = 13
  loc_13B8B0C:   var_124 = Me.Global.Screen
  loc_13B8B14:   var_128 = Screen.ActiveForm
  loc_13B8B47:   var_164 = Me.Global.Screen
  loc_13B8B4F:   var_168 = Screen.ActiveForm
  loc_13B8B5F:   var_188 = Form.ActiveControl.Row
  loc_13B8B65:   var_1A8 = 16
  loc_13B8B7A:   var_170 = Me.Global.Screen
  loc_13B8B82:   var_174 = Screen.ActiveForm
  loc_13B8BAB:   var_1BC = Me.Global.Screen
  loc_13B8BB3:   var_1C0 = Screen.ActiveForm
  loc_13B8BC3:   var_1E0 = Form.ActiveControl.Row
  loc_13B8BC9:   var_200 = 17
  loc_13B8BDE:   var_1C8 = Me.Global.Screen
  loc_13B8BE6:   var_1CC = Screen.ActiveForm
  loc_13B8C0F:   var_214 = Me.Global.Screen
  loc_13B8C17:   var_218 = Screen.ActiveForm
  loc_13B8C27:   var_238 = Form.ActiveControl.Row
  loc_13B8C2D:   var_258 = 1
  loc_13B8C42:   var_220 = Me.Global.Screen
  loc_13B8C4A:   var_224 = Screen.ActiveForm
  loc_13B8C73:   var_26C = Me.Global.Screen
  loc_13B8C7B:   var_270 = Screen.ActiveForm
  loc_13B8C8B:   var_290 = Form.ActiveControl.Row
  loc_13B8C91:   var_2B0 = 14
  loc_13B8CA6:   var_278 = Me.Global.Screen
  loc_13B8CAE:   var_27C = Screen.ActiveForm
  loc_13B8CD7:   var_2C4 = Me.Global.Screen
  loc_13B8CDF:   var_2C8 = Screen.ActiveForm
  loc_13B8CEF:   var_2E8 = Form.ActiveControl.Row
  loc_13B8CF5:   var_308 = 18
  loc_13B8D0A:   var_2D0 = Me.Global.Screen
  loc_13B8D12:   var_2D4 = Screen.ActiveForm
  loc_13B8D3B:   var_31C = Me.Global.Screen
  loc_13B8D43:   var_320 = Screen.ActiveForm
  loc_13B8D53:   var_340 = Form.ActiveControl.Row
  loc_13B8D59:   var_360 = 19
  loc_13B8D6E:   var_328 = Me.Global.Screen
  loc_13B8D76:   var_32C = Screen.ActiveForm
  loc_13B8D86:   var_3EC = Form.ActiveControl.TextMatrix
  loc_13B8DCC:   Proc_96_23_1C36494(MemVar_1F950EC, CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix))
  loc_13B8E6D: Else
  loc_13B8E73:   If (var_C8 = 1) Then
  loc_13B8E85:     var_CC = Me.Global.Screen
  loc_13B8E8D:     var_D0 = Screen.ActiveForm
  loc_13B8EB6:     If (Form.ActiveControl.rows > 1) Then
  loc_13B8ECF:       var_CC = Me.Global.Screen
  loc_13B8ED7:       var_D0 = Screen.ActiveForm
  loc_13B8EF1:       var_A4 = (Form.ActiveControl.rows - 1)
  loc_13B8F03:       For var_404 = CByte(1) To CByte(Form.ActiveControl.TextMatrix):   var_C6 = var_404 'Byte
  loc_13B8F10:         var_100 = 17
  loc_13B8F25:         var_CC = Me.Global.Screen
  loc_13B8F2D:         var_D0 = Screen.ActiveForm
  loc_13B8F68:         If CBool(Trim(Form.ActiveControl.TextMatrix) <> vbNullString) Then
  loc_13B8F72:           var_100 = 15
  loc_13B8F87:           var_CC = Me.Global.Screen
  loc_13B8F8F:           var_D0 = Screen.ActiveForm
  loc_13B8FBA:           var_14C = 13
  loc_13B8FCF:           var_D8 = Me.Global.Screen
  loc_13B8FD7:           var_DC = Screen.ActiveForm
  loc_13B9002:           var_1A8 = 16
  loc_13B9017:           var_118 = Me.Global.Screen
  loc_13B901F:           var_11C = Screen.ActiveForm
  loc_13B9040:           var_200 = 17
  loc_13B9055:           var_124 = Me.Global.Screen
  loc_13B905D:           var_128 = Screen.ActiveForm
  loc_13B907E:           var_258 = 1
  loc_13B9093:           var_164 = Me.Global.Screen
  loc_13B909B:           var_168 = Screen.ActiveForm
  loc_13B90BC:           var_2B0 = 14
  loc_13B90D1:           var_170 = Me.Global.Screen
  loc_13B90D9:           var_174 = Screen.ActiveForm
  loc_13B9102:           var_1BC = Me.Global.Screen
  loc_13B910A:           var_1C0 = Screen.ActiveForm
  loc_13B911A:           var_B4 = Form.ActiveControl.Row
  loc_13B9120:           var_308 = 18
  loc_13B9135:           var_1C8 = Me.Global.Screen
  loc_13B913D:           var_1CC = Screen.ActiveForm
  loc_13B9166:           var_214 = Me.Global.Screen
  loc_13B916E:           var_218 = Screen.ActiveForm
  loc_13B917E:           var_C4 = Form.ActiveControl.Row
  loc_13B9184:           var_360 = 19
  loc_13B9199:           var_220 = Me.Global.Screen
  loc_13B91A1:           var_224 = Screen.ActiveForm
  loc_13B91B1:           var_340 = Form.ActiveControl.TextMatrix
  loc_13B91F7:           Proc_96_23_1C36494(MemVar_1F950EC, CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix))
  loc_13B9265:         End If
  loc_13B9268:       Next var_404 'Byte
  loc_13B926E:     End If
  loc_13B926E:   End If
  loc_13B926E: End If
  loc_13B9275: Call 0.Method_arg_A4 (CInt(0))
  loc_13B927A: Exit Sub
End Sub

Private Sub sckControlPanel_UnknownEvent_A '10A1B64
  'Data Table: 5C8390
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim var_A0 As Variant
  Dim var_D4 As Integer
  Dim var_B4 As Variant
  Dim var_E8 As Panel
  Dim var_A4 As Variant
  Dim MemVar_1F950EC As Double
  loc_10A18B6: var_8E = 0
  loc_10A18BB: On Error Resume Next
  loc_10A18CB: Set var_A4 = Me.sckControlPanel
  loc_10A18F1: var_90 = CInt(InStr(1, var_8C, "#", 0))
  loc_10A1908: var_B4 = Left(var_8C, CLng((var_90 - 1)))
  loc_10A1926: var_A0 = var_8C
  loc_10A192E: var_D4 = Mid(var_A0, CLng((var_90 + 1)), var_B4)
  loc_10A1937: var_8C = CStr(var_D4)
  loc_10A1946: var_D8 = CStr(var_B4)
  loc_10A1953: If (var_D8 = "LockMessage") Then
  loc_10A1966:   Call 0.Method_arg_2B0 (var_A0, var_C4, var_90)
  loc_10A1976:   For var_DC = &H3C To 0 Step &HFF: var_8E = var_DC 'Integer
  loc_10A1990:     var_D4 = 6
  loc_10A199E:     Set var_A4 = MemVar_1F95248.sbar
  loc_10A19B5:     var_D4 = MDIForm1.sbar.Panels.ControlDefault
  loc_10A19BD:     var_E8._ObjectDefault = var_E8
  loc_10A19E2:     Proc_96_21_E587E0(CDbl(1), "Night Audit Counter: " & CStr(var_8E), &H3C)
  loc_10A19EC:   Next var_DC 'Integer
  loc_10A19F4: Else
  loc_10A19FE:   If (var_D8 = "LockSystem") Then
  loc_10A1A16:     SystemParametersInfo(&H61, 1, Null, 1)
  loc_10A1A34:     Call 0.Method_arg_2B0 (1)
  loc_10A1A3C:   Else
  loc_10A1A46:     If (var_D8 = "UnLockSystem") Then
  loc_10A1A5E:       SystemParametersInfo(&H61, 0, Null, 1)
  loc_10A1A6F:       var_D4 = 6
  loc_10A1A7D:       Set var_A4 = MemVar_1F95248.sbar
  loc_10A1A94:       var_D4 = MDIForm1.sbar.Panels.ControlDefault
  loc_10A1A9C:       var_E8._ObjectDefault = var_E8
  loc_10A1AC3:       Me.Global.Unload MemVar_1F966C4
  loc_10A1AE1:       Proc_156_8_EA8CC4("FrmNAMessageA", 0)
  loc_10A1AF2:       var_A0 = MemVar_1F950EC
  loc_10A1B21:       Call 0.Method_arg_2B0 (var_A0, var_C4, CDate(DateAdd("D", CDbl(1), var_A0)))
  loc_10A1B29:     Else
  loc_10A1B33:       If (var_D8 = "LockClose") Then
  loc_10A1B3E:         Call 0.Method_arg_2B4 (vbNullString)
  loc_10A1B58:         Call 0.Method_arg_2B0 (1, var_C4)
  loc_10A1B5D:       End If
  loc_10A1B5D:     End If
  loc_10A1B5D:   End If
  loc_10A1B5D: End If
  loc_10A1B61: Exit Sub
End Sub

Private Sub sckControlPanel_UnknownEvent_C 'E6B264
  'Data Table: 5C8390
  Dim var_88 As Winsock
  Dim sckControlPanel_UnknownEvent_C6 As Variant
  loc_E6B22F: If (CLng(CInt(Me.sckControlPanel.State)) <> 0) Then
  loc_E6B23C:   sckControlPanel_UnknownEvent_C6 = Me.sckControlPanel._RemoteHost
  loc_E6B252:   Set var_88 = Me.sckControlPanel
  loc_E6B263: End If
  loc_E6B263: Exit Sub
End Sub

Private Sub sckControlPanel_UnknownEvent_D 'E68750
  'Data Table: 5C8390
  Dim sckControlPanel_UnknownEvent_D6 As Variant
  Dim sckControlPanel_UnknownEvent_D1 As Variant
  loc_E6871F: If (CLng(CInt(Me.sckControlPanel.State)) <> &H2749) Then
  loc_E6872C:   sckControlPanel_UnknownEvent_D6 = Me.sckControlPanel._RemoteHost
  loc_E68741:   sckControlPanel_UnknownEvent_D1 = Me.sckControlPanel._RemoteHost
  loc_E6874C: End If
  loc_E6874C: Exit Sub
End Sub

Private Sub Timer2_Timer() '11053A8
  'Data Table: 5C8390
  Dim unk_5C83CC As Connection15
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_120 As Variant
  Dim var_160 As Variant
  Dim var_98 As Recordset15
  Dim var_BC As Fields15
  loc_11050B6: unk_5C83CC.Execute "Delete From tbl_EventExc", var_B8, -1
  loc_11050D7: unk_5C83CC.Execute "Delete From tbl_EventPrameter", var_B8, -1
  loc_11050F9: var_B8 = CVar(Proc_6_14_EF402C("Insert into tbl_EventExc (EventName,EventCode,CreatedDate) Values ('GetBooking',1,", var_120, -1)) 'String
  loc_11050FF: Proc_6_8_EB1974(var_CC, var_B8, var_BC)
  loc_110511E: unk_5C83CC.Execute CStr(var_BC & var_CC & ")"), var_BC, 
  loc_1105181: Proc_6_8_EB1974(var_1A0)
  loc_110519B: var_120 = "Insert into tbl_EventPrameter (Para_month,Para_year,EventCode,CreatedDate) Values (" & Format(Month(CVar(Proc_6_15_EF37AC())), "00") 
  loc_11051AB: var_160 = var_120 & "," & Year(CVar(Proc_6_15_EF37AC(1))) 
  loc_11051D2: unk_5C83CC.Execute CStr(var_160 & ",1," & var_1A0 & ")"), var_1F0, -1
  loc_1105205: Proc_96_21_E587E0(CDbl(2), var_BC)
  loc_1105216: var_BC = Me.Global.App
  loc_110523B: var_94 = CVar(Shell(CVar(App.Path & "\ChannelManager\Debug\Hotel_ConsoleApp"), 0)) 'Variant
  loc_110524F: Proc_96_21_E587E0(CDbl(5))
  loc_1105261: var_A8 = "Select Distinct GB.DateBooked,GB.BookingCode From tbl_GetBooking GB Left Join Booking B On GB.BookingCode=B.RefCode Where IsNull(GB.BookingStatus,'')<>IsNull(B.BookStatus,'') And Month(DateBooked)="
  loc_110526B: var_B8 = CVar(Proc_6_15_EF37AC(var_A8, var_1A0, -1)) 'String
  loc_110528B: var_120 = CVar(Proc_6_15_EF37AC(var_BC & Month(CVar(App.Path & "\ChannelManager\Debug\Hotel_ConsoleApp")) & " And Year(DateBooked)=")) 'String
  loc_11052B1: Proc_6_7_F26918(var_160, MemVar_1F950EC)
  loc_11052D0: unk_5C83CC.Execute CStr(CVar(Proc_6_14_EF402C(1)) & Year(var_120) & " And Gb.DateBooked>=" & var_160 & " Order By DateBooked,BookingCode"), , 
  loc_11052DB: Set var_98 = var_BC
  loc_11052FF: ' Referenced from: 1105362
  loc_110530E: If Not(var_98.EOF) Then
  loc_1105333:   var_B8 = var_98.Fields.Item("BookingCode").Value
  loc_1105349:   var_94 = Proc_96_101_15E3594(CStr(var_B8)) 'Variant
  loc_110535D:   var_98.MoveNext
  loc_1105362:   GoTo loc_11052FF
  loc_1105365: End If
  loc_110537B: unk_5C83CC.Execute "Update Booking Set CancelDate=Q.DateBooked,BookStatus=Q.BookingStatus,Cancel='Y' From (Select Distinct BookingCode,DateBooked,BookingStatus From tbl_GetBooking Where BookingStatus='CANCELLED')Q Where Booking.RefCode=Q.BookingCode", var_B8, -1
  loc_110539C: unk_5C83CC.Execute "Update GrpBookingDetails Set CancelDate=Q.CancelDate,Cancel='Y' From (Select Distinct DocId,CancelDate From Booking Where BookStatus='CANCELLED' And Cancel='Y')Q Where GrpBookingDetails.BookingDocId=Q.DocId", var_B8, -1
  loc_11053A7: Exit Sub
End Sub

Private Sub BanqRep_Click(Index As Integer) '12BF714
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_12BF0BF: var_B4 = CVar("BanqRep" & "+") 'String
  loc_12BF0DA: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_12BF0F6: var_CC = Proc_6_45_EADFB8(MemVar_1F95078, 2)
  loc_12BF106: Call 0.Method_arg_1C4 (var_CC & "BANQ")
  loc_12BF115: var_D2 = Index
  loc_12BF11E: If (var_D2 = 0) Then
  loc_12BF12B:   global_52 = New rHallRepView
  loc_12BF13E:   global_52.GRepFormName = "SalesRegister"
  loc_12BF14F:   Set var_D8 = var_FC(Index)
  loc_12BF155:   Call 0.Method_BanqRep_Click0 (var_CC, var_D2)
  loc_12BF15D:   MemVar_1F95204 = global_52.Menu.Caption
  loc_12BF16F:   global_52.CAPTION = CVar(var_CC)
  loc_12BF185:   Call global_52.Show
  loc_12BF18E: Else
  loc_12BF194:   If (var_D2 = 1) Then
  loc_12BF1A1:     global_52 = New rHallRepView
  loc_12BF1B4:     global_52.GRepFormName = "PartyOutStanding"
  loc_12BF1C5:     Set var_D8 = var_FC(Index)
  loc_12BF1CB:     Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF1D3:      = global_52.Menu.Caption
  loc_12BF1E5:     global_52.CAPTION = CVar(var_CC)
  loc_12BF1FB:     Call global_52.Show
  loc_12BF204:   Else
  loc_12BF20A:     If (var_D2 = 2) Then
  loc_12BF217:       global_52 = New rHallRepView
  loc_12BF22A:       global_52.GRepFormName = "PartyWiseOutStanding"
  loc_12BF23B:       Set var_D8 = var_FC(Index)
  loc_12BF241:       Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF249:        = global_52.Menu.Caption
  loc_12BF25B:       global_52.CAPTION = CVar(var_CC)
  loc_12BF271:       Call global_52.Show
  loc_12BF27A:     Else
  loc_12BF280:       If (var_D2 = 3) Then
  loc_12BF28D:         global_52 = New rHallRepView
  loc_12BF2A0:         global_52.GRepFormName = "CashierCollection"
  loc_12BF2B1:         Set var_D8 = var_FC(Index)
  loc_12BF2B7:         Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF2BF:          = global_52.Menu.Caption
  loc_12BF2D1:         global_52.CAPTION = CVar(var_CC)
  loc_12BF2E7:         Call global_52.Show
  loc_12BF2F0:       Else
  loc_12BF2F6:         If (var_D2 = 4) Then
  loc_12BF303:           global_52 = New rHallRepView
  loc_12BF316:           global_52.GRepFormName = "BookingDetail"
  loc_12BF327:           Set var_D8 = var_FC(Index)
  loc_12BF32D:           Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF335:            = global_52.Menu.Caption
  loc_12BF347:           global_52.CAPTION = CVar(var_CC)
  loc_12BF35D:           Call global_52.Show
  loc_12BF366:         Else
  loc_12BF36C:           If (var_D2 = 5) Then
  loc_12BF379:             global_52 = New rHallRepView
  loc_12BF38C:             global_52.GRepFormName = "SettleRepHall"
  loc_12BF39D:             Set var_D8 = var_FC(Index)
  loc_12BF3A3:             Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF3AB:              = global_52.Menu.Caption
  loc_12BF3BD:             global_52.CAPTION = CVar(var_CC)
  loc_12BF3D3:             Call global_52.Show
  loc_12BF3DC:           Else
  loc_12BF3E2:             If (var_D2 = 6) Then
  loc_12BF3EF:               global_52 = New rHallRepView
  loc_12BF402:               global_52.GRepFormName = "TaxReportHall"
  loc_12BF413:               Set var_D8 = var_FC(Index)
  loc_12BF419:               Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF421:                = global_52.Menu.Caption
  loc_12BF433:               global_52.CAPTION = CVar(var_CC)
  loc_12BF449:               Call global_52.Show
  loc_12BF452:             Else
  loc_12BF458:               If (var_D2 = 7) Then
  loc_12BF465:                 global_52 = New rHallRepView
  loc_12BF478:                 global_52.GRepFormName = "DailyFuncSheet"
  loc_12BF489:                 Set var_D8 = var_FC(Index)
  loc_12BF48F:                 Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF497:                  = global_52.Menu.Caption
  loc_12BF4A9:                 global_52.CAPTION = CVar(var_CC)
  loc_12BF4BF:                 Call global_52.Show
  loc_12BF4C8:               Else
  loc_12BF4CE:                 If (var_D2 = 8) Then
  loc_12BF4DB:                   global_52 = New rHallRepView
  loc_12BF4EE:                   global_52.GRepFormName = "CoverAnalysis"
  loc_12BF4FF:                   Set var_D8 = var_FC(Index)
  loc_12BF505:                   Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF50D:                    = global_52.Menu.Caption
  loc_12BF51F:                   global_52.CAPTION = CVar(var_CC)
  loc_12BF535:                   Call global_52.Show
  loc_12BF53E:                 Else
  loc_12BF544:                   If (var_D2 = 9) Then
  loc_12BF551:                     global_52 = New rHallRepView
  loc_12BF564:                     global_52.GRepFormName = "ItemWiseSaleHall"
  loc_12BF575:                     Set var_D8 = var_FC(Index)
  loc_12BF57B:                     Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF583:                      = global_52.Menu.Caption
  loc_12BF595:                     global_52.CAPTION = CVar(var_CC)
  loc_12BF5AB:                     Call global_52.Show
  loc_12BF5B4:                   Else
  loc_12BF5BA:                     If (var_D2 = &HA) Then
  loc_12BF5C7:                       global_52 = New rHallRepView
  loc_12BF5DA:                       global_52.GRepFormName = "CompanyWiseSaleHall"
  loc_12BF5EB:                       Set var_D8 = var_FC(Index)
  loc_12BF5F1:                       Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF5F9:                        = global_52.Menu.Caption
  loc_12BF60B:                       global_52.CAPTION = CVar(var_CC)
  loc_12BF621:                       Call global_52.Show
  loc_12BF62A:                     Else
  loc_12BF630:                       If (var_D2 = &HB) Then
  loc_12BF63D:                         global_52 = New rHallRepView
  loc_12BF650:                         global_52.GRepFormName = "FunctionWiseItemDetail"
  loc_12BF661:                         Set var_D8 = var_FC(Index)
  loc_12BF667:                         Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF66F:                          = global_52.Menu.Caption
  loc_12BF681:                         global_52.CAPTION = CVar(var_CC)
  loc_12BF697:                         Call global_52.Show
  loc_12BF6A0:                       Else
  loc_12BF6A6:                         If (var_D2 = &HC) Then
  loc_12BF6B3:                           global_52 = New rHallRepView
  loc_12BF6C6:                           global_52.GRepFormName = "TaxwiseDetailReportHall"
  loc_12BF6D7:                           Set var_D8 = var_FC(Index)
  loc_12BF6DD:                           Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BF6E5:                            = global_52.Menu.Caption
  loc_12BF6F7:                           global_52.CAPTION = CVar(var_CC)
  loc_12BF70D:                           Call global_52.Show
  loc_12BF713:                         End If
  loc_12BF713:                       End If
  loc_12BF713:                     End If
  loc_12BF713:                   End If
  loc_12BF713:                 End If
  loc_12BF713:               End If
  loc_12BF713:             End If
  loc_12BF713:           End If
  loc_12BF713:         End If
  loc_12BF713:       End If
  loc_12BF713:     End If
  loc_12BF713:   End If
  loc_12BF713: End If
  loc_12BF713: Exit Sub
End Sub

Private Sub BanqRepMIS_Click(Index As Integer) 'F870A8
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_F86F63: var_B4 = CVar("BanqRepMIS" & "+") 'String
  loc_F86F7E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F86F9A: var_CC = Proc_6_45_EADFB8(MemVar_1F95078, 2)
  loc_F86FAA: Call 0.Method_arg_1C4 (var_CC & "BANQ")
  loc_F86FB9: var_D2 = Index
  loc_F86FC2: If (var_D2 = 0) Then
  loc_F86FCF:   global_52 = New rHallRepView
  loc_F86FE2:   global_52.GRepFormName = "CashierCollectionMIS"
  loc_F86FF3:   Set var_D8 = var_FC(Index)
  loc_F86FF9:   Call 0.Method_BanqRepMIS_Click0 (var_CC, var_D2)
  loc_F87001:   MemVar_1F95204 = global_52.Menu.Caption
  loc_F87013:   global_52.CAPTION = CVar(var_CC)
  loc_F87029:   Call global_52.Show
  loc_F87032: Else
  loc_F87038:   If (var_D2 = 1) Then
  loc_F87045:     global_52 = New rHallRepView
  loc_F87058:     global_52.GRepFormName = "TaxSummaryHall"
  loc_F87069:     Set var_D8 = var_FC(Index)
  loc_F8706F:     Call 0.Method_BanqRepMIS_Click0 (var_CC)
  loc_F87077:      = global_52.Menu.Caption
  loc_F87089:     global_52.CAPTION = CVar(var_CC)
  loc_F8709F:     Call global_52.Show
  loc_F870A5:   End If
  loc_F870A5: End If
  loc_F870A5: Exit Sub
End Sub

Private Sub DTRO_Click(Index As Integer) 'F7B72C
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_F7B5EF: var_B4 = CVar("DTRO" & "+") 'String
  loc_F7B60A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F7B61C: var_C6 = Index
  loc_F7B625: If (var_C6 = 1) Then
  loc_F7B62E:   If (MemVar_1F950B8 >= 1) Then
  loc_F7B63B:     global_52 = New Transfer
  loc_F7B651:     global_52.OpenMode = 2
  loc_F7B662:     Set var_CC = var_F0(Index)
  loc_F7B668:     Call 0.Method_DTRO_Click0 (var_F4, var_C6)
  loc_F7B670:     MemVar_1F95204 = global_52.Menu.Caption
  loc_F7B682:     global_52.CAPTION = CVar(var_F4)
  loc_F7B698:     Call global_52.Show
  loc_F7B69E:   End If
  loc_F7B6A1: Else
  loc_F7B6A7:   If (var_C6 = 2) Then
  loc_F7B6B0:     If (MemVar_1F950B8 >= 1) Then
  loc_F7B6BD:       global_52 = New Transfer
  loc_F7B6D3:       global_52.OpenMode = 1
  loc_F7B6E4:       Set var_CC = var_F0(Index)
  loc_F7B6EA:       Call 0.Method_DTRO_Click0 (var_F4)
  loc_F7B6F2:        = global_52.Menu.Caption
  loc_F7B704:       global_52.CAPTION = CVar(var_F4)
  loc_F7B71A:       Call global_52.Show
  loc_F7B720:     End If
  loc_F7B720:   End If
  loc_F7B720: End If
  loc_F7B725: global_52 = Nothing
  loc_F7B729: Exit Sub
  loc_F7B72A:  = arg_1803
End Sub

Private Sub POSRep_Click(Index As Integer) '142EABC
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_142DFDF: var_B4 = CVar("POSRep" & "+") 'String
  loc_142DFFA: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_142E00C: var_C6 = Index
  loc_142E015: If (var_C6 = 0) Then
  loc_142E022:   global_52 = New rPOSRepView
  loc_142E035:   global_52.GRepFormName = "SalesRegister"
  loc_142E046:   Set var_CC = var_F0(Index)
  loc_142E04C:   Call 0.Method_POSRep_Click0 (var_F4, var_C6)
  loc_142E054:   MemVar_1F95204 = global_52.Menu.Caption
  loc_142E066:   global_52.CAPTION = CVar(var_F4)
  loc_142E07C:   Call global_52.Show
  loc_142E085: Else
  loc_142E08B:   If (var_C6 = 1) Then
  loc_142E098:     global_52 = New rPOSRepView
  loc_142E0AB:     global_52.GRepFormName = "WaiterWiseSale"
  loc_142E0BC:     Set var_CC = var_F0(Index)
  loc_142E0C2:     Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E0CA:      = global_52.Menu.Caption
  loc_142E0DC:     global_52.CAPTION = CVar(var_F4)
  loc_142E0F2:     Call global_52.Show
  loc_142E0FB:   Else
  loc_142E101:     If (var_C6 = 2) Then
  loc_142E10E:       global_52 = New rPOSRepView
  loc_142E121:       global_52.GRepFormName = "TableWiseSale"
  loc_142E132:       Set var_CC = var_F0(Index)
  loc_142E138:       Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E140:        = global_52.Menu.Caption
  loc_142E152:       global_52.CAPTION = CVar(var_F4)
  loc_142E168:       Call global_52.Show
  loc_142E171:     Else
  loc_142E177:       If (var_C6 = 3) Then
  loc_142E184:         global_52 = New rPOSRepView
  loc_142E197:         global_52.GRepFormName = "CashierSettlement"
  loc_142E1A8:         Set var_CC = var_F0(Index)
  loc_142E1AE:         Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E1B6:          = global_52.Menu.Caption
  loc_142E1C8:         global_52.CAPTION = CVar(var_F4)
  loc_142E1DE:         Call global_52.Show
  loc_142E1E7:       Else
  loc_142E1ED:         If (var_C6 = 5) Then
  loc_142E1FA:           global_52 = New rPOSRepView
  loc_142E20D:           global_52.GRepFormName = "KOTWiseDetails"
  loc_142E21E:           Set var_CC = var_F0(Index)
  loc_142E224:           Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E22C:            = global_52.Menu.Caption
  loc_142E23E:           global_52.CAPTION = CVar(var_F4)
  loc_142E254:           Call global_52.Show
  loc_142E25D:         Else
  loc_142E263:           If (var_C6 = 6) Then
  loc_142E270:             global_52 = New rPOSRepView
  loc_142E283:             global_52.GRepFormName = "DiscountReg"
  loc_142E294:             Set var_CC = var_F0(Index)
  loc_142E29A:             Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E2A2:              = global_52.Menu.Caption
  loc_142E2B4:             global_52.CAPTION = CVar(var_F4)
  loc_142E2CA:             Call global_52.Show
  loc_142E2D3:           Else
  loc_142E2D9:             If (var_C6 = 7) Then
  loc_142E2E6:               global_52 = New rPOSRepView
  loc_142E2F9:               global_52.GRepFormName = "CoverAnalysis"
  loc_142E30A:               Set var_CC = var_F0(Index)
  loc_142E310:               Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E318:                = global_52.Menu.Caption
  loc_142E32A:               global_52.CAPTION = CVar(var_F4)
  loc_142E340:               Call global_52.Show
  loc_142E349:             Else
  loc_142E34F:               If (var_C6 = 8) Then
  loc_142E35C:                 global_52 = New rPOSRepView
  loc_142E36F:                 global_52.GRepFormName = "PendingKot"
  loc_142E380:                 Set var_CC = var_F0(Index)
  loc_142E386:                 Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E38E:                  = global_52.Menu.Caption
  loc_142E3A0:                 global_52.CAPTION = CVar(var_F4)
  loc_142E3B6:                 Call global_52.Show
  loc_142E3BF:               Else
  loc_142E3C5:                 If (var_C6 = 9) Then
  loc_142E3D2:                   global_52 = New rPOSRepView
  loc_142E3E5:                   global_52.GRepFormName = "ItemWiseSale"
  loc_142E3F6:                   Set var_CC = var_F0(Index)
  loc_142E3FC:                   Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E404:                    = global_52.Menu.Caption
  loc_142E416:                   global_52.CAPTION = CVar(var_F4)
  loc_142E42C:                   Call global_52.Show
  loc_142E435:                 Else
  loc_142E43B:                   If (var_C6 = &HA) Then
  loc_142E448:                     global_52 = New rPOSRepView
  loc_142E45B:                     global_52.GRepFormName = "DelBillUnsetBill"
  loc_142E46C:                     Set var_CC = var_F0(Index)
  loc_142E472:                     Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E47A:                      = global_52.Menu.Caption
  loc_142E48C:                     global_52.CAPTION = CVar(var_F4)
  loc_142E4A2:                     Call global_52.Show
  loc_142E4AB:                   Else
  loc_142E4B1:                     If (var_C6 = &HB) Then
  loc_142E4BE:                       global_52 = New rPOSRepView
  loc_142E4D1:                       global_52.GRepFormName = "NCKOTWiseDetails"
  loc_142E4E2:                       Set var_CC = var_F0(Index)
  loc_142E4E8:                       Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E4F0:                        = global_52.Menu.Caption
  loc_142E502:                       global_52.CAPTION = CVar(var_F4)
  loc_142E518:                       Call global_52.Show
  loc_142E521:                     Else
  loc_142E527:                       If (var_C6 = &HC) Then
  loc_142E534:                         global_52 = New rPOSRepView
  loc_142E547:                         global_52.GRepFormName = "SalesDayBook"
  loc_142E558:                         Set var_CC = var_F0(Index)
  loc_142E55E:                         Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E566:                          = global_52.Menu.Caption
  loc_142E578:                         global_52.CAPTION = CVar(var_F4)
  loc_142E58E:                         Call global_52.Show
  loc_142E597:                       Else
  loc_142E59D:                         If (var_C6 = &HE) Then
  loc_142E5AA:                           global_52 = New rPOSRepView
  loc_142E5BD:                           global_52.GRepFormName = "OrderDetailReport"
  loc_142E5CE:                           Set var_CC = var_F0(Index)
  loc_142E5D4:                           Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E5DC:                            = global_52.Menu.Caption
  loc_142E5EE:                           global_52.CAPTION = CVar(var_F4)
  loc_142E604:                           Call global_52.Show
  loc_142E60D:                         Else
  loc_142E613:                           If (var_C6 = &H10) Then
  loc_142E620:                             global_52 = New rPOSRepView
  loc_142E633:                             global_52.GRepFormName = "NCKOTSummary"
  loc_142E644:                             Set var_CC = var_F0(Index)
  loc_142E64A:                             Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E652:                              = global_52.Menu.Caption
  loc_142E664:                             global_52.CAPTION = CVar(var_F4)
  loc_142E67A:                             Call global_52.Show
  loc_142E683:                           Else
  loc_142E689:                             If (var_C6 = &H11) Then
  loc_142E696:                               global_52 = New rPOSRepView
  loc_142E6A9:                               global_52.GRepFormName = "DailyDiet"
  loc_142E6BA:                               Set var_CC = var_F0(Index)
  loc_142E6C0:                               Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E6C8:                                = global_52.Menu.Caption
  loc_142E6DA:                               global_52.CAPTION = CVar(var_F4)
  loc_142E6F0:                               Call global_52.Show
  loc_142E6F9:                             Else
  loc_142E6FF:                               If (var_C6 = &H12) Then
  loc_142E70C:                                 global_52 = New rPOSRepView
  loc_142E71F:                                 global_52.GRepFormName = "DiscountPartyWiseReg"
  loc_142E730:                                 Set var_CC = var_F0(Index)
  loc_142E736:                                 Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E73E:                                  = global_52.Menu.Caption
  loc_142E750:                                 global_52.CAPTION = CVar(var_F4)
  loc_142E766:                                 Call global_52.Show
  loc_142E76F:                               Else
  loc_142E775:                                 If (var_C6 = &H13) Then
  loc_142E782:                                   global_52 = New FrmDeliveredItemDetail
  loc_142E795:                                   global_52.CAPTION = "Not Delivered Order"
  loc_142E7A6:                                   Set var_CC = var_F0(Index)
  loc_142E7AC:                                   Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E7B4:                                    = global_52.Menu.Caption
  loc_142E7C6:                                   global_52.CAPTION = CVar(var_F4)
  loc_142E7DC:                                   Call global_52.Show
  loc_142E7E5:                                 Else
  loc_142E7EB:                                   If (var_C6 = &H14) Then
  loc_142E7F8:                                     global_52 = New rPOSRepView
  loc_142E80B:                                     global_52.GRepFormName = "ItemWiseGroupWiseSaleReport"
  loc_142E81C:                                     Set var_CC = var_F0(Index)
  loc_142E822:                                     Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E82A:                                      = global_52.Menu.Caption
  loc_142E83C:                                     global_52.CAPTION = CVar(var_F4)
  loc_142E852:                                     Call global_52.Show
  loc_142E85B:                                   Else
  loc_142E861:                                     If (var_C6 = &H15) Then
  loc_142E86E:                                       global_52 = New rPOSRepView
  loc_142E881:                                       global_52.GRepFormName = "CustomerDetail"
  loc_142E892:                                       Set var_CC = var_F0(Index)
  loc_142E898:                                       Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E8A0:                                        = global_52.Menu.Caption
  loc_142E8B2:                                       global_52.CAPTION = CVar(var_F4)
  loc_142E8D2:                                       Me.Global.Unload global_52
  loc_142E8DD:                                     Else
  loc_142E8E3:                                       If (var_C6 = &H16) Then
  loc_142E8F0:                                         global_52 = New rPOSRepView
  loc_142E903:                                         global_52.GRepFormName = "DeliveryStatus"
  loc_142E914:                                         Set var_CC = var_F0(Index)
  loc_142E91A:                                         Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E922:                                          = global_52.Menu.Caption
  loc_142E934:                                         global_52.CAPTION = CVar(var_F4)
  loc_142E954:                                         Me.Global.Unload global_52
  loc_142E95F:                                       Else
  loc_142E965:                                         If (var_C6 = &H29) Then
  loc_142E972:                                           global_52 = New FrmDenomination
  loc_142E985:                                           global_52.CAPTION = "DenominationDetail"
  loc_142E996:                                           Set var_CC = var_F0(Index)
  loc_142E99C:                                           Call 0.Method_POSRep_Click0 (var_F4)
  loc_142E9A4:                                            = global_52.Menu.Caption
  loc_142E9B6:                                           global_52.CAPTION = CVar(var_F4)
  loc_142E9CC:                                           Call global_52.Show
  loc_142E9D5:                                         Else
  loc_142E9DB:                                           If (var_C6 = &H2A) Then
  loc_142E9E8:                                             global_52 = New RsPaymentReceice
  loc_142E9FC:                                             Set var_CC = var_F0(Index)
  loc_142EA02:                                             Call 0.Method_POSRep_Click0 (var_F4)
  loc_142EA0A:                                              = RsPaymentReceice.Menu.Caption
  loc_142EA1C:                                             global_52.CAPTION = CVar(var_F4)
  loc_142EA32:                                             Call global_52.Show
  loc_142EA3B:                                           Else
  loc_142EA41:                                             If (var_C6 = &H2B) Then
  loc_142EA4E:                                               global_52 = New rPOSRepView
  loc_142EA61:                                               global_52.GRepFormName = "BillWiseAdjustmentReport"
  loc_142EA72:                                               Set var_CC = var_F0(Index)
  loc_142EA78:                                               Call 0.Method_POSRep_Click0 (var_F4)
  loc_142EA80:                                                = global_52.Menu.Caption
  loc_142EA92:                                               global_52.CAPTION = CVar(var_F4)
  loc_142EAB2:                                               Me.Global.Unload global_52
  loc_142EABA:                                             End If
  loc_142EABA:                                           End If
  loc_142EABA:                                         End If
  loc_142EABA:                                       End If
  loc_142EABA:                                     End If
  loc_142EABA:                                   End If
  loc_142EABA:                                 End If
  loc_142EABA:                               End If
  loc_142EABA:                             End If
  loc_142EABA:                           End If
  loc_142EABA:                         End If
  loc_142EABA:                       End If
  loc_142EABA:                     End If
  loc_142EABA:                   End If
  loc_142EABA:                 End If
  loc_142EABA:               End If
  loc_142EABA:             End If
  loc_142EABA:           End If
  loc_142EABA:         End If
  loc_142EABA:       End If
  loc_142EABA:     End If
  loc_142EABA:   End If
  loc_142EABA: End If
  loc_142EABA: Exit Sub
End Sub

Private Sub EXTSCOP_Click(Index As Integer) '117F380
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_A4 As Variant
  Dim unk_5C83CC As Connection15
  Dim var_102 As Integer
  Dim var_108 As Menu
  Dim var_C8 As Recordset15
  Dim var_100 As Fields15
  loc_117EFC7: var_B4 = CVar("EXTSCOP" & "+") 'String
  loc_117EFCF: var_94 = CVar(CStr(Index)) 'String
  loc_117EFDD: var_C4 = var_B4 & Trim(var_94) 
  loc_117F00E: Proc_6_17_EAAE40(var_94, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_B4)
  loc_117F016: var_A4 = -1 & var_94 
  loc_117F024: unk_5C83CC.Execute CStr(Trim(var_94)), var_100, CStr(var_C4)
  loc_117F02F: Set var_C8 = var_100
  loc_117F044: var_102 = Index
  loc_117F04D: If (var_102 = 1) Then
  loc_117F059:   global_52 = MemVar_1F95334
  loc_117F06A:   Set var_100 = Me.EXTSCOP
  loc_117F070:   Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117F08A:   global_52.CAPTION = CVar(var_108.Caption)
  loc_117F0A0:   Call global_52.Show
  loc_117F0A9: Else
  loc_117F0AF:   If (var_102 = 2) Then
  loc_117F0C9:     var_108 = var_C8.Fields.Item("CashCardDebitAc")
  loc_117F101:     var_A4 = CVar(var_C8.Fields.Item("CashCardCreditAc")) 'Address
  loc_117F132:     var_B4 = CVar(var_C8.Fields.Item("CashCardSecurityAc")) 'Address
  loc_117F15F:     If ((var_102 Or (Proc_6_38_E69628(var_A4, (Proc_6_38_E69628(CVar(var_108)) = vbNullString)) = vbNullString)) Or (Proc_6_38_E69628(var_B4) = vbNullString)) Then
  loc_117F17B:       MsgBox("Parameter Settings are not set.", &H40, var_A4, var_B4, var_C4)
  loc_117F18E:     Else
  loc_117F197:       global_52 = MemVar_1F95348
  loc_117F1A8:       Set var_100 = Me.EXTSCOP
  loc_117F1AE:       Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117F1C8:       global_52.CAPTION = CVar(var_108.Caption)
  loc_117F1DE:       Call global_52.Show
  loc_117F1E4:     End If
  loc_117F1E7:   Else
  loc_117F1ED:     If (var_102 = 3) Then
  loc_117F1F9:       global_52 = MemVar_1F9535C
  loc_117F20A:       Set var_100 = Me.EXTSCOP
  loc_117F210:       Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117F22A:       global_52.CAPTION = CVar(var_108.Caption)
  loc_117F240:       Call global_52.Show
  loc_117F249:     Else
  loc_117F24F:       If (var_102 = 4) Then
  loc_117F25B:         global_52 = MemVar_1F95370
  loc_117F26C:         Set var_100 = Me.EXTSCOP
  loc_117F272:         Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117F28C:         global_52.CAPTION = CVar(var_108.Caption)
  loc_117F2A2:         Call global_52.Show
  loc_117F2AB:       Else
  loc_117F2B1:         If (var_102 = 5) Then
  loc_117F2BD:           global_52 = MemVar_1F95384
  loc_117F2CE:           Set var_100 = Me.EXTSCOP
  loc_117F2D4:           Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117F2EE:           global_52.CAPTION = CVar(var_108.Caption)
  loc_117F304:           Call global_52.Show
  loc_117F30D:         Else
  loc_117F313:           If (var_102 = 6) Then
  loc_117F31F:             global_52 = MemVar_1F95398
  loc_117F330:             Set var_100 = Me.EXTSCOP
  loc_117F336:             Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117F350:             global_52.CAPTION = CVar(var_108.Caption)
  loc_117F366:             Call global_52.Show
  loc_117F36C:           End If
  loc_117F36C:         End If
  loc_117F36C:       End If
  loc_117F36C:     End If
  loc_117F36C:   End If
  loc_117F36C: End If
  loc_117F371: Set var_C8 = Nothing
  loc_117F379: global_52 = Nothing
  loc_117F37D: Exit Sub
End Sub

Private Sub dsale_Click(Index As Integer) 'EBE0E0
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_EBE053: var_B4 = CVar("dsale" & "+") 'String
  loc_EBE069: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_EBE06E: MemVar_1F95204 = CStr(var_C4)
  loc_EBE07D: On Error Goto loc_EBE099
  loc_EBE083: var_C6 = Index
  loc_EBE08C: If (var_C6 = 0) Then
  loc_EBE08F: End If
  loc_EBE094: global_52 = Nothing
  loc_EBE098: Exit Sub
  loc_EBE099: ' Referenced from: EBE07D
  loc_EBE0A1: Set var_CC = Err()
  loc_EBE0A7: Call 0.Method_arg_2C (var_D0, var_C6)
  loc_EBE0C8: MsgBox(CVar(var_D0), &H40, "Information", var_B4, var_C4)
  loc_EBE0DB: Exit Sub
  loc_EBE0DC: Exit Sub
End Sub

Private Sub EXTRWREP_Click(Index As Integer) 'EF1714
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_EF165B: var_B4 = CVar("EXTRWREP" & "+") 'String
  loc_EF1676: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_EF1688: var_C6 = Index
  loc_EF1691: If (var_C6 = 1) Then
  loc_EF169E:   global_52 = New rPOSRepView
  loc_EF16B1:   global_52.GRepFormName = "RegisteredGuestDetail"
  loc_EF16C2:   Set var_CC = var_F0(Index)
  loc_EF16C8:   Call 0.Method_EXTRWREP_Click0 (var_F4, var_C6)
  loc_EF16D0:   MemVar_1F95204 = global_52.Menu.Caption
  loc_EF16E2:   global_52.CAPTION = CVar(var_F4)
  loc_EF1702:   Me.Global.Unload global_52
  loc_EF170A: End If
  loc_EF170F: global_52 = Nothing
  loc_EF1713: Exit Sub
End Sub

Private Sub EXTSCRP_Click(Index As Integer) 'F86568
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_F8641F: var_B4 = CVar("EXTSCRP" & "+") 'String
  loc_F8643A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F8644C: var_C6 = Index
  loc_F86455: If (var_C6 = 1) Then
  loc_F8645B:   Proc_275_18_150214C(MemVar_1F953B8, var_C6)
  loc_F86463: Else
  loc_F86469:   If (var_C6 = 2) Then
  loc_F8646C:     Proc_275_22_10E6198(MemVar_1F95204)
  loc_F86474:   Else
  loc_F8647A:     If (var_C6 = 3) Then
  loc_F86487:       global_52 = New rPOSRepView
  loc_F8649A:       global_52.GRepFormName = "CashCardTransRep"
  loc_F864AB:       Set var_CC = var_F0(Index)
  loc_F864B1:       Call 0.Method_EXTSCRP_Click0 (var_F4)
  loc_F864B9:        = global_52.Menu.Caption
  loc_F864CB:       global_52.CAPTION = CVar(var_F4)
  loc_F864E1:       Call global_52.Show
  loc_F864EA:     Else
  loc_F864F0:       If (var_C6 = 4) Then
  loc_F864FD:         global_52 = New rPOSRepView
  loc_F86510:         global_52.GRepFormName = "CashCardCollectSumm"
  loc_F86521:         Set var_CC = var_F0(Index)
  loc_F86527:         Call 0.Method_EXTSCRP_Click0 (var_F4)
  loc_F8652F:          = global_52.Menu.Caption
  loc_F86541:         global_52.CAPTION = CVar(var_F4)
  loc_F86557:         Call global_52.Show
  loc_F8655D:       End If
  loc_F8655D:     End If
  loc_F8655D:   End If
  loc_F8655D: End If
  loc_F86562: global_52 = Nothing
  loc_F86566: Exit Sub
End Sub

Private Sub HouseEnt_Click(Index As Integer) '11A84C0
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_E4 As Variant
  Dim var_D0 As Menu
  loc_11A809F: var_B4 = CVar("HouseEnt" & "+") 'String
  loc_11A80BA: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11A80CC: var_C6 = Index
  loc_11A80D5: If (var_C6 = 0) Then
  loc_11A80E2:   global_52 = New FrmComplaintMast
  loc_11A80F6:   Set var_CC = var_D0(Index)
  loc_11A80FC:   Call 0.Method_HouseEnt_Click0 (var_D4, var_C6)
  loc_11A8104:   MemVar_1F95204 = FrmComplaintMast.Menu.Caption
  loc_11A8116:   global_52.CAPTION = CVar(var_D4)
  loc_11A812C:   Call global_52.Show
  loc_11A8135: Else
  loc_11A813B:   If (var_C6 = 1) Then
  loc_11A8148:     global_52 = New FrmComplaintClearing
  loc_11A815C:     Set var_CC = var_D0(Index)
  loc_11A8162:     Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A816A:      = FrmComplaintClearing.Menu.Caption
  loc_11A817C:     global_52.CAPTION = CVar(var_D4)
  loc_11A8192:     Call global_52.Show
  loc_11A819B:   Else
  loc_11A81A1:     If (var_C6 = 2) Then
  loc_11A81AE:       global_52 = New FrmLostFound
  loc_11A81C2:       Set var_CC = var_D0(Index)
  loc_11A81C8:       Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A81D0:        = FrmLostFound.Menu.Caption
  loc_11A81E2:       global_52.CAPTION = CVar(var_D4)
  loc_11A81F8:       Call global_52.Show
  loc_11A8201:     Else
  loc_11A8207:       If (var_C6 = 3) Then
  loc_11A8214:         global_52 = New FrmClaimEntry
  loc_11A8228:         Set var_CC = var_D0(Index)
  loc_11A822E:         Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A8236:          = FrmClaimEntry.Menu.Caption
  loc_11A8248:         global_52.CAPTION = CVar(var_D4)
  loc_11A825E:         Call global_52.Show
  loc_11A8267:       Else
  loc_11A826D:         If (var_C6 = 4) Then
  loc_11A828E:           If (Trim(MemVar_1F951BC) = vbNullString) Then
  loc_11A829B:             global_52 = New FrmChangeDepart
  loc_11A82A2:             var_E4 = 1
  loc_11A82B0:             Call global_52.Show
  loc_11A82B6:             var_E4 = 0
  loc_11A82C4:             Call global_52.ZOrder
  loc_11A82CA:           End If
  loc_11A82D4:           global_52 = New HKHouseOpStk
  loc_11A82E8:           Set var_CC = Me.HouseEnt
  loc_11A82EE:           Call 0.Method_HouseEnt_Click0 (Index, var_D0, var_D4)
  loc_11A82F6:           var_E4 = var_D0.Caption
  loc_11A8308:           global_52.CAPTION = CVar(var_D4)
  loc_11A831E:           Call global_52.Show
  loc_11A8327:         Else
  loc_11A832D:           If (var_C6 = 5) Then
  loc_11A833A:             global_52 = New FrmStockTransfer
  loc_11A834E:             Set var_CC = var_D0(Index)
  loc_11A8354:             Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A835C:             var_E4 = FrmStockTransfer.Menu.Caption
  loc_11A836E:             global_52.CAPTION = CVar(var_D4)
  loc_11A8384:             Call global_52.Show
  loc_11A838D:           Else
  loc_11A8393:             If (var_C6 = 6) Then
  loc_11A83A0:               global_52 = New HHouseKeeping
  loc_11A83B4:               Set var_CC = var_D0(Index)
  loc_11A83BA:               Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A83C2:                = HHouseKeeping.Menu.Caption
  loc_11A83D4:               global_52.CAPTION = CVar(var_D4)
  loc_11A83EA:               Call global_52.Show
  loc_11A83F3:             Else
  loc_11A83F9:               If (var_C6 = 7) Then
  loc_11A8406:                 global_52 = New FrmItemIssuedOnCleaning
  loc_11A841A:                 Set var_CC = var_D0(Index)
  loc_11A8420:                 Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A8428:                  = FrmItemIssuedOnCleaning.Menu.Caption
  loc_11A843A:                 global_52.CAPTION = CVar(var_D4)
  loc_11A8450:                 Call global_52.Show
  loc_11A8459:               Else
  loc_11A845F:                 If (var_C6 = 8) Then
  loc_11A846C:                   global_52 = New HRoomCheckOutClearance
  loc_11A8480:                   Set var_CC = var_D0(Index)
  loc_11A8486:                   Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A848E:                    = HRoomCheckOutClearance.Menu.Caption
  loc_11A84A0:                   global_52.CAPTION = CVar(var_D4)
  loc_11A84B6:                   Call global_52.Show
  loc_11A84BC:                 End If
  loc_11A84BC:               End If
  loc_11A84BC:             End If
  loc_11A84BC:           End If
  loc_11A84BC:         End If
  loc_11A84BC:       End If
  loc_11A84BC:     End If
  loc_11A84BC:   End If
  loc_11A84BC: End If
  loc_11A84BC: Exit Sub
End Sub

Private Sub HallEnt_Click(Index As Integer) '13ECC58
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D4 As String
  Dim var_E4 As Variant
  loc_13EC243: var_B4 = CVar("HallEnt" & "+") 'String
  loc_13EC25E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13EC270: var_C6 = Index
  loc_13EC279: If (var_C6 = 0) Then
  loc_13EC286:   global_52 = New FrmEventMast
  loc_13EC29A:   Set var_CC = var_D0(Index)
  loc_13EC2A0:   Call 0.Method_HallEnt_Click0 (var_D4, var_C6)
  loc_13EC2A8:   MemVar_1F95204 = FrmEventMast.Menu.Caption
  loc_13EC2BA:   global_52.CAPTION = CVar(var_D4)
  loc_13EC2D0:   Call global_52.Show
  loc_13EC2D9: Else
  loc_13EC2DF:   If (var_C6 = 1) Then
  loc_13EC2EC:     global_52 = New FrmVenueFeat
  loc_13EC300:     Set var_CC = var_D0(Index)
  loc_13EC306:     Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC30E:      = FrmVenueFeat.Menu.Caption
  loc_13EC320:     global_52.CAPTION = CVar(var_D4)
  loc_13EC336:     Call global_52.Show
  loc_13EC33F:   Else
  loc_13EC345:     If (var_C6 = 2) Then
  loc_13EC352:       global_52 = New FrmVenueMast
  loc_13EC366:       var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC377:       global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC38E:       Set var_CC = var_D0(Index)
  loc_13EC394:       Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC39C:       2 = global_52.Menu.Caption
  loc_13EC3AE:       global_52.CAPTION = CVar(var_D4)
  loc_13EC3C4:       Call global_52.Show
  loc_13EC3CD:     Else
  loc_13EC3D3:       If (var_C6 = 3) Then
  loc_13EC3E0:         global_52 = New FrmHallItemCatMast
  loc_13EC3F4:         var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC405:         global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC41C:         Set var_CC = var_D0(Index)
  loc_13EC422:         Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC42A:         2 = global_52.Menu.Caption
  loc_13EC43C:         global_52.CAPTION = CVar(var_D4)
  loc_13EC452:         Call global_52.Show
  loc_13EC45B:       Else
  loc_13EC461:         If (var_C6 = 4) Then
  loc_13EC46E:           global_52 = New HallItemGroupMast
  loc_13EC482:           var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC493:           global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC4AA:           Set var_CC = var_D0(Index)
  loc_13EC4B0:           Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC4B8:           2 = global_52.Menu.Caption
  loc_13EC4CA:           global_52.CAPTION = CVar(var_D4)
  loc_13EC4E0:           Call global_52.Show
  loc_13EC4E9:         Else
  loc_13EC4EF:           If (var_C6 = 5) Then
  loc_13EC4FC:             global_52 = New HallMenuItemEntry
  loc_13EC510:             var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC521:             global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC538:             Set var_CC = var_D0(Index)
  loc_13EC53E:             Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC546:             2 = global_52.Menu.Caption
  loc_13EC558:             global_52.CAPTION = CVar(var_D4)
  loc_13EC56E:             Call global_52.Show
  loc_13EC577:           Else
  loc_13EC57D:             If (var_C6 = 6) Then
  loc_13EC58A:               global_52 = New HallMenuCatalog
  loc_13EC59E:               var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC5AF:               global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC5C6:               Set var_CC = var_D0(Index)
  loc_13EC5CC:               Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC5D4:               2 = global_52.Menu.Caption
  loc_13EC5E6:               global_52.CAPTION = CVar(var_D4)
  loc_13EC5FC:               Call global_52.Show
  loc_13EC605:             Else
  loc_13EC60B:               If (var_C6 = 7) Then
  loc_13EC618:                 global_52 = New HallSundry
  loc_13EC62C:                 var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC63D:                 global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC654:                 Set var_CC = var_D0(Index)
  loc_13EC65A:                 Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC662:                 2 = global_52.Menu.Caption
  loc_13EC674:                 global_52.CAPTION = CVar(var_D4)
  loc_13EC68A:                 Call global_52.Show
  loc_13EC693:               Else
  loc_13EC699:                 If (var_C6 = 9) Then
  loc_13EC6A6:                   global_52 = New FrmBookingInquiry
  loc_13EC6BA:                   var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC6CB:                   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC6E2:                   Set var_CC = var_D0(Index)
  loc_13EC6E8:                   Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC6F0:                   2 = global_52.Menu.Caption
  loc_13EC702:                   global_52.CAPTION = CVar(var_D4)
  loc_13EC718:                   Call global_52.Show
  loc_13EC721:                 Else
  loc_13EC727:                   If (var_C6 = &HA) Then
  loc_13EC734:                     global_52 = New HallBooking
  loc_13EC748:                     var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC759:                     global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC772:                     global_52.OpenMode = 2
  loc_13EC783:                     Set var_CC = var_D0(Index)
  loc_13EC789:                     Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC791:                     2 = global_52.Menu.Caption
  loc_13EC7A3:                     global_52.CAPTION = CVar(var_D4)
  loc_13EC7B9:                     Call global_52.Show
  loc_13EC7C2:                   Else
  loc_13EC7C8:                     If (var_C6 = &HB) Then
  loc_13EC7D5:                       global_52 = New CateringBooking
  loc_13EC7E9:                       var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC7FA:                       global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC811:                       Set var_CC = var_D0(Index)
  loc_13EC817:                       Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC81F:                       2 = global_52.Menu.Caption
  loc_13EC831:                       global_52.CAPTION = CVar(var_D4)
  loc_13EC847:                       Call global_52.Show
  loc_13EC850:                     Else
  loc_13EC856:                       If (var_C6 = &HC) Then
  loc_13EC863:                         global_52 = New HallChefPreCosting
  loc_13EC877:                         var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC888:                         global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC89F:                         Set var_CC = var_D0(Index)
  loc_13EC8A5:                         Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC8AD:                         2 = global_52.Menu.Caption
  loc_13EC8BF:                         global_52.CAPTION = CVar(var_D4)
  loc_13EC8D5:                         Call global_52.Show
  loc_13EC8DE:                       Else
  loc_13EC8E4:                         If (var_C6 = &HD) Then
  loc_13EC8F1:                           global_52 = New HallBill
  loc_13EC905:                           var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC916:                           global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC92D:                           Set var_CC = var_D0(Index)
  loc_13EC933:                           Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC93B:                           2 = global_52.Menu.Caption
  loc_13EC94D:                           global_52.CAPTION = CVar(var_D4)
  loc_13EC963:                           Call global_52.Show
  loc_13EC96C:                         Else
  loc_13EC972:                           If (var_C6 = &HE) Then
  loc_13EC97F:                             global_52 = New HallAdvanceDepDialog
  loc_13EC993:                             var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13EC9A4:                             global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EC9BB:                             Set var_CC = var_D0(Index)
  loc_13EC9C1:                             Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EC9C9:                             2 = global_52.Menu.Caption
  loc_13EC9DB:                             global_52.CAPTION = CVar(var_D4)
  loc_13EC9F1:                             Call global_52.Show
  loc_13EC9FA:                           Else
  loc_13ECA00:                             If (var_C6 = &HF) Then
  loc_13ECA03:                               GoTo loc_13ECC4B
  loc_13ECA06:                             End If
  loc_13ECA0C:                             If (var_C6 = &H10) Then
  loc_13ECA19:                               global_52 = New BanqAvailability
  loc_13ECA2D:                               var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13ECA3E:                               global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13ECA55:                               Set var_CC = var_D0(Index)
  loc_13ECA5B:                               Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13ECA63:                               2 = global_52.Menu.Caption
  loc_13ECA75:                               global_52.CAPTION = CVar(var_D4)
  loc_13ECA8B:                               Call global_52.Show
  loc_13ECA94:                             Else
  loc_13ECA9A:                               If (var_C6 = &H11) Then
  loc_13ECAA7:                                 global_52 = New frmGuestComments
  loc_13ECABB:                                 var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13ECACC:                                 global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13ECAE3:                                 Set var_CC = var_D0(Index)
  loc_13ECAE9:                                 Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13ECAF1:                                 2 = global_52.Menu.Caption
  loc_13ECB03:                                 global_52.CAPTION = CVar(var_D4)
  loc_13ECB19:                                 Call global_52.Show
  loc_13ECB22:                               Else
  loc_13ECB28:                                 If (var_C6 = &H12) Then
  loc_13ECB2B:                                   GoTo loc_13ECC4B
  loc_13ECB2E:                                 End If
  loc_13ECB34:                                 If (var_C6 = &H13) Then
  loc_13ECB41:                                   global_52 = New HallBillEstimate
  loc_13ECB55:                                   var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_13ECB66:                                   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13ECB7D:                                   Set var_CC = var_D0(Index)
  loc_13ECB83:                                   Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13ECB8B:                                   2 = global_52.Menu.Caption
  loc_13ECB9D:                                   global_52.CAPTION = CVar(var_D4)
  loc_13ECBB3:                                   Call global_52.Show
  loc_13ECBBC:                                 Else
  loc_13ECBC2:                                   If (var_C6 = &H14) Then
  loc_13ECBCF:                                     global_52 = New HallAdvanceDepDialog
  loc_13ECBE2:                                     global_52.AdvType = "AD"
  loc_13ECBF5:                                     global_52.OpenMode = 2
  loc_13ECC08:                                     global_52.OpenType = 6
  loc_13ECC2A:                                     global_52.MDIRestCode = CVar(Proc_6_45_EADFB8(MemVar_1F95078) & "BANQ")
  loc_13ECC34:                                     var_E4 = 1
  loc_13ECC45:                                     Call global_52.Show
  loc_13ECC4B:                                   End If
  loc_13ECC4B:                                   ' Referenced from:                                 13ECB2B
  loc_13ECC4B:                                 End If
  loc_13ECC4B:                               End If
  loc_13ECC4B:                               ' Referenced from:                             13ECA03
  loc_13ECC4B:                             End If
  loc_13ECC4B:                           End If
  loc_13ECC4B:                         End If
  loc_13ECC4B:                       End If
  loc_13ECC4B:                     End If
  loc_13ECC4B:                   End If
  loc_13ECC4B:                 End If
  loc_13ECC4B:               End If
  loc_13ECC4B:             End If
  loc_13ECC4B:           End If
  loc_13ECC4B:         End If
  loc_13ECC4B:       End If
  loc_13ECC4B:     End If
  loc_13ECC4B:   End If
  loc_13ECC4B: End If
  loc_13ECC50: global_52 = Nothing
  loc_13ECC54: Exit Sub
End Sub

Private Sub mnuWindowCascade_Click() 'E09090
  'Data Table: 5C8390
  loc_E09089: Call 0.Method_arg_2EC (CInt(0))
  loc_E0908E: Exit Sub
End Sub

Private Sub PictShortCuts_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E0AB8C
  'Data Table: 5C8390
  loc_E0AB84: Call PictShortCuts_MouseMove(Button, Shift, X, Y)
  loc_E0AB89: Exit Sub
End Sub

Private Sub PictShortCuts_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F7CD20
  'Data Table: 5C8390
  Dim X As Single
  loc_F7CBEA: If (X >= CDbl(Me.ListView1.Width)) Then
  loc_F7CBFD:   Me.PictShortCuts.MousePointer = CInt(9)
  loc_F7CC16:   If ((X > CDbl(1400)) And (X <= CDbl(10000))) Then
  loc_F7CC1F:     If (Button = 1) Then
  loc_F7CC29:       global_112 = CInt(X)
  loc_F7CC48:       If (Me.PictShortCuts.Width > X) Then
  loc_F7CC52:         X = (X - CDbl(5))
  loc_F7CC62:         Me.PictShortCuts.Width = X
  loc_F7CC6D:       Else
  loc_F7CC74:         X = (X + CDbl(5))
  loc_F7CC84:         Me.PictShortCuts.Width = X
  loc_F7CC8C:       End If
  loc_F7CC8C:       Call MDIForm_Resize()
  loc_F7CC91:     End If
  loc_F7CC91:   End If
  loc_F7CC94: Else
  loc_F7CCA4:   Me.PictShortCuts.MousePointer = CInt(7)
  loc_F7CCE0:   If (((Y > CDbl(1400)) And (Y > CDbl(Me.ListView1.Height))) And (Y <= CDbl(9000))) Then
  loc_F7CCE9:     If (Button = 1) Then
  loc_F7CCF8:       If (CDbl(global_108) > CDbl(Y)) Then
  loc_F7CD06:         global_108 = CLng((Y - CDbl(5)))
  loc_F7CD0C:       Else
  loc_F7CD17:         global_108 = CLng((Y + CDbl(5)))
  loc_F7CD1A:       End If
  loc_F7CD1A:       Call MDIForm_Resize()
  loc_F7CD1F:     End If
  loc_F7CD1F:   End If
  loc_F7CD1F: End If
  loc_F7CD1F: Exit Sub
End Sub

Private Sub PictShortCuts_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E0A8A0
  'Data Table: 5C8390
  loc_E0A898: Call PictShortCuts_MouseMove(Button, Shift, X, Y)
  loc_E0A89D: Exit Sub
  loc_E0A89E: CExtInstUnk
End Sub

Private Sub MallRep_Click() 'DFC550
  'Data Table: 5C8390
  loc_DFC54C: Exit Sub
  loc_DFC54D: () = 
End Sub

Private Sub Hallop_Click(Index As Integer) '128BBF4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_D4 As String
  Dim var_E4 As Variant
  loc_128B617: var_B4 = CVar("Hallop" & "+") 'String
  loc_128B632: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_128B644: var_C6 = Index
  loc_128B64D: If (var_C6 = 0) Then
  loc_128B65A:   global_52 = New FrmBookingInquiry
  loc_128B66E:   var_D4 = Proc_6_45_EADFB8(MemVar_1F95078, 2)
  loc_128B67F:   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B696:   Set var_CC = var_E8(Index)
  loc_128B69C:   Call 0.Method_Hallop_Click0 (var_D4, var_C6)
  loc_128B6A4:   MemVar_1F95204 = global_52.Menu.Caption
  loc_128B6B6:   global_52.CAPTION = CVar(var_D4)
  loc_128B6CC:   Call global_52.Show
  loc_128B6D5: Else
  loc_128B6DB:   If (var_C6 = 1) Then
  loc_128B6E8:     global_52 = New HallBooking
  loc_128B6FC:     var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128B70D:     global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B726:     global_52.OpenMode = 2
  loc_128B737:     Set var_CC = var_E8(Index)
  loc_128B73D:     Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B745:     2 = global_52.Menu.Caption
  loc_128B757:     global_52.CAPTION = CVar(var_D4)
  loc_128B76D:     Call global_52.Show
  loc_128B776:   Else
  loc_128B77C:     If (var_C6 = 2) Then
  loc_128B789:       global_52 = New CateringBooking
  loc_128B79D:       var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128B7AE:       global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B7C5:       Set var_CC = var_E8(Index)
  loc_128B7CB:       Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B7D3:       2 = global_52.Menu.Caption
  loc_128B7E5:       global_52.CAPTION = CVar(var_D4)
  loc_128B7FB:       Call global_52.Show
  loc_128B804:     Else
  loc_128B80A:       If (var_C6 = 3) Then
  loc_128B817:         global_52 = New HallChefPreCosting
  loc_128B82B:         var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128B83C:         global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B853:         Set var_CC = var_E8(Index)
  loc_128B859:         Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B861:         2 = global_52.Menu.Caption
  loc_128B873:         global_52.CAPTION = CVar(var_D4)
  loc_128B889:         Call global_52.Show
  loc_128B892:       Else
  loc_128B898:         If (var_C6 = 4) Then
  loc_128B8A5:           global_52 = New HallBill
  loc_128B8B9:           var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128B8CA:           global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B8E1:           Set var_CC = var_E8(Index)
  loc_128B8E7:           Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B8EF:           2 = global_52.Menu.Caption
  loc_128B901:           global_52.CAPTION = CVar(var_D4)
  loc_128B917:           Call global_52.Show
  loc_128B920:         Else
  loc_128B926:           If (var_C6 = 5) Then
  loc_128B933:             global_52 = New HallAdvanceDepDialog
  loc_128B947:             var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128B958:             global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B96F:             Set var_CC = var_E8(Index)
  loc_128B975:             Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B97D:             2 = global_52.Menu.Caption
  loc_128B98F:             global_52.CAPTION = CVar(var_D4)
  loc_128B9A5:             Call global_52.Show
  loc_128B9AE:           Else
  loc_128B9B4:             If (var_C6 = 6) Then
  loc_128B9C1:               global_52 = New BanqAvailability
  loc_128B9D5:               var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128B9E6:               global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B9FD:               Set var_CC = var_E8(Index)
  loc_128BA03:               Call 0.Method_Hallop_Click0 (var_D4)
  loc_128BA0B:               2 = global_52.Menu.Caption
  loc_128BA1D:               global_52.CAPTION = CVar(var_D4)
  loc_128BA33:               Call global_52.Show
  loc_128BA3C:             Else
  loc_128BA42:               If (var_C6 = 7) Then
  loc_128BA4F:                 global_52 = New frmGuestComments
  loc_128BA63:                 var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128BA74:                 global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128BA8B:                 Set var_CC = var_E8(Index)
  loc_128BA91:                 Call 0.Method_Hallop_Click0 (var_D4)
  loc_128BA99:                 2 = global_52.Menu.Caption
  loc_128BAAB:                 global_52.CAPTION = CVar(var_D4)
  loc_128BAC1:                 Call global_52.Show
  loc_128BACA:               Else
  loc_128BAD0:                 If (var_C6 = 8) Then
  loc_128BADD:                   global_52 = New HallBillEstimate
  loc_128BAF1:                   var_D4 = Proc_6_45_EADFB8(MemVar_1F95078)
  loc_128BB02:                   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128BB19:                   Set var_CC = var_E8(Index)
  loc_128BB1F:                   Call 0.Method_Hallop_Click0 (var_D4)
  loc_128BB27:                   2 = global_52.Menu.Caption
  loc_128BB39:                   global_52.CAPTION = CVar(var_D4)
  loc_128BB4F:                   Call global_52.Show
  loc_128BB58:                 Else
  loc_128BB5E:                   If (var_C6 = 9) Then
  loc_128BB6B:                     global_52 = New HallAdvanceDepDialog
  loc_128BB7E:                     global_52.AdvType = "AD"
  loc_128BB91:                     global_52.OpenMode = 2
  loc_128BBA4:                     global_52.OpenType = 6
  loc_128BBC6:                     global_52.MDIRestCode = CVar(Proc_6_45_EADFB8(MemVar_1F95078) & "BANQ")
  loc_128BBD0:                     var_E4 = 1
  loc_128BBE1:                     Call global_52.Show
  loc_128BBE7:                   End If
  loc_128BBE7:                 End If
  loc_128BBE7:               End If
  loc_128BBE7:             End If
  loc_128BBE7:           End If
  loc_128BBE7:         End If
  loc_128BBE7:       End If
  loc_128BBE7:     End If
  loc_128BBE7:   End If
  loc_128BBE7: End If
  loc_128BBEC: global_52 = Nothing
  loc_128BBF0: Exit Sub
  loc_128BBF1: var_E4 = arg_1903
End Sub

Private Sub DRLK_Click(Index As Integer) 'ECACD8
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_ECAC3F: var_B4 = CVar("DRLK" & "+") 'String
  loc_ECAC55: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_ECAC5A: MemVar_1F95204 = CStr(var_C4)
  loc_ECAC69: On Error Goto loc_ECAC94
  loc_ECAC6F: var_C6 = Index
  loc_ECAC78: If (var_C6 = 1) Then
  loc_ECAC8E:   Call 0.Method_arg_2B0 (1, var_E8)
  loc_ECAC93: End If
  loc_ECAC93: Exit Sub
  loc_ECAC94: ' Referenced from: ECAC69
  loc_ECAC9C: Set var_EC = Err()
  loc_ECACA2: Call 0.Method_arg_2C (var_F0, var_C6)
  loc_ECACC3: MsgBox(CVar(var_F0), &H40, "Information", var_B4, var_C4)
  loc_ECACD6: Exit Sub
  loc_ECACD7: Exit Sub
End Sub

Private Sub mnuGrid_UnknownEvent_9 '168F8C8
  'Data Table: 5C8390
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_B0 As String
  Dim unk_5C83CC As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_118 As Variant
  Dim var_108 As Variant
  Dim var_160 As Fields15
  Dim var_184 As Variant
  Dim var_334 As String
  Dim var_2E4 As String
  Dim var_3D8 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_15C As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As String
  Dim var_1D4 As Variant
  Dim var_22C As Variant
  Dim var_404 As TreeView
  Dim var_408 As Nodes
  Dim var_41C As String
  Dim var_42C As TreeView
  Dim var_14C As Variant
  Dim var_430 As Nodes
  Dim var_434 As Node
  Dim var_2AC As Variant
  Dim var_3B8 As String
  Dim var_324 As Variant
  Dim var_510 As Node
  Dim var_50C As Fields15
  Dim var_3F8 As Variant
  Dim var_4A8 As Variant
  Dim var_540 As Fields15
  Dim var_21C As Variant
  Dim var_28C As Variant
  Dim var_304 As Variant
  Dim var_364 As Variant
  Dim var_508 As Variant
  Dim var_674 As Node
  Dim var_384 As Variant
  Dim var_678 As Node
  loc_168E1F4: On Error Resume Next
  loc_168E1FD: Set var_8C = Me.ListView1
  loc_168E203: var_9C = var_8C.ListItems
  loc_168E214: var_9C.Clear
  loc_168E24E: var_B0 = "SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128 & "' AND [Option]<>'-' AND ShowInList='Y' ORDER BY OPT1,OPT2,OPT3,OPT4 "
  loc_168E257: unk_5C83CC.Execute var_B0, var_9C, -1
  loc_168E262: Set var_88 = var_8C
  loc_168E276: ' Referenced from: 168E52A
  loc_168E287: If Not(var_88.EOF) Then
  loc_168E2BD:   var_E4 = Trim(Str(CVar(var_88.Fields.Item("Opt1"))))
  loc_168E317:   var_184 = CVar(var_88.Fields.Item("Opt3")) 'Address
  loc_168E31E:   var_194 = Str(var_184)
  loc_168E3B0:   var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168E474:   var_104 = ("C" + var_E4)
  loc_168E47B:   var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168E482:   var_1B4 = (var_15C + Trim(var_194))
  loc_168E486:   var_1C4 = "-"
  loc_168E48B:   var_1D4 = (var_1B4 + var_1C4)
  loc_168E492:   var_22C = (var_1D4 + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168E4B4:   Me.ListView1.ListItems.Add var_3C8, var_22C, CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"), IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Open")), var_3F8
  loc_168E523:   var_88.MoveNext
  loc_168E52A:   GoTo loc_168E276
  loc_168E52D: End If
  loc_168E551: Me.TreeView1.Nodes.Clear
  loc_168E55A: Set var_408 = Nothing 
  loc_168E562: Set var_404 = Nothing 
  loc_168E57B: var_C0 = CVar(CLng(Me.mnuGrid.Row)) 'Long
  loc_168E580: var_118 = 1
  loc_168E58D: Set var_A0 = Me.mnuGrid
  loc_168E5B7: If (CStr(var_A0.TextMatrix)) = "Short Cut(s)") Then
  loc_168E5BC:   var_C0 = 0
  loc_168E5C6:   Set var_8C = Me.ListView1
  loc_168E5D9:   Exit Sub
  loc_168E5DD: Else
  loc_168E5E1:   var_C0 = 1
  loc_168E5EB:   Set var_8C = Me.ListView1
  loc_168E619:   If (Me.PictSubMenu.Visible = &HFF) Then
  loc_168E61E:     var_C0 = True
  loc_168E62B:     Set var_8C = Me.CmdSubMenu
  loc_168E631:     Call 0.Method_mnuGrid_UnknownEvent_90 (0, var_A0, var_C0, ListView1.DispID_18001, var_C0, ListView1.DispID_18001)
  loc_168E639:     Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_C0)
  loc_168E65A:     var_C0 = CVar(CLng(Me.mnuGrid.RowSel)) 'Long
  loc_168E69E:     Call Proc_1_121_1332554(CInt(Val(CStr(Me.mnuGrid.TextMatrix)))), 0, 0, 0, Val(CStr(Me.mnuGrid.TextMatrix))), 0)
  loc_168E6C9:     var_C0 = CVar(CLng(Me.mnuGrid.RowSel)) 'Long
  loc_168E6CE:     var_118 = 0
  loc_168E6FD:     Set var_108 = Me.PictMainMenu
  loc_168E703:     var_108.Tag = CStr(Val(CStr(Me.mnuGrid.TextMatrix))))
  loc_168E75D:     global_72 = CStr(Me.mnuGrid.TextMatrix))
  loc_168E77A:     global_76 = vbNullString
  loc_168E786:     global_80 = vbNullString
  loc_168E792:     global_84 = vbNullString
  loc_168E79E:     global_88 = vbNullString
  loc_168E7BF:     Call 0.Method_arg_54 (MemVar_1F95130 & " { " & MemVar_1F95014 & " }", 1, CVar(CLng(Me.mnuGrid.RowSel)), 1, CVar(CLng(Me.mnuGrid.RowSel)))
  loc_168E7DB:     Me.LblCompany.Visible = False
  loc_168E7E3:   End If
  loc_168E7E5: End If
  loc_168E7FC: var_C0 = CVar(CLng(Me.mnuGrid.RowSel)) 'Long
  loc_168E801: var_118 = 0
  loc_168E853: var_41C = "SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128 & "' AND Opt1="
  loc_168E86F: unk_5C83CC.Execute var_41C & CStr(Val(CStr(Me.mnuGrid.TextMatrix)))) & " ORDER BY OPT1,OPT2,OPT3,OPT4 ", var_E4, -1
  loc_168E87A: Set var_88 = var_108
  loc_168E8A2: ' Referenced from: 168F8B5
  loc_168E8B3: If Not(var_88.EOF) Then
  loc_168E8E6:   var_F4 = "-"
  loc_168E8F8:   If CBool(Trim(CVar(var_88.Fields.Item("Option"))) <> "C") Then
  loc_168E914:     Set var_430 = Me.TreeView1.Nodes
  loc_168E99A:     var_160 = var_88.Fields
  loc_168E9DA:     If CBool((var_88.Fields.Item("Opt2").Value = 0) And (var_88.Fields.Item("Opt3").Value = 0) And (var_160.Item("Opt4").Value = 0)) Then
  loc_168EA61:       var_14C = CVar(Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)) 'String
  loc_168EA88:       var_104 = ("A" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168EA95:       var_430.Add var_184, var_194, var_104, Ucase(Trim(Str(CVar(var_88.Fields.Item("Opt2"))))), "Open", var_1B4
  loc_168EA9D:       Set var_434 = var_160
  loc_168EACC:       var_434.Bold = True
  loc_168EAD8:       var_434.Expanded = True
  loc_168EAE1:       Set var_434 = Nothing 
  loc_168EAE8:     Else
  loc_168EB8A:       var_15C = (var_88.Fields.Item("Opt2").Value <> 0) And (var_88.Fields.Item("Opt3").Value = 0) And (var_88.Fields.Item("Opt4").Value = 0)
  loc_168EBA8:       If CBool(var_15C) Then
  loc_168ECDE:         var_2E4 = "-"
  loc_168ECE6:         var_2AC = ("R" + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168ED63:         var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168EE27:         var_15C = ("C" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168EE2E:         var_1B4 = (var_15C + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168EE35:         var_324 = (var_1B4 + IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), var_2AC, vbNullString))
  loc_168EE46:         var_104 = ("A" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168EE4D:         var_430.Add var_104, 4, "Rep", CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"), IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Close")), var_508
  loc_168EE55:         Set var_510 = var_50C
  loc_168EECE:         var_510.Bold = True
  loc_168EEDA:         var_510.Expanded = False
  loc_168EEE3:         Set var_510 = Nothing 
  loc_168EEEA:       Else
  loc_168EF8C:         var_15C = (var_88.Fields.Item("Opt2").Value <> 0) And (var_88.Fields.Item("Opt3").Value <> 0) And (var_88.Fields.Item("Opt4").Value <> 0)
  loc_168EFAA:         If CBool(var_15C) Then
  loc_168F1B8:           var_3B8 = "-"
  loc_168F1C0:           var_4A8 = ("E" + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168F23D:           var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168F252:           var_540 = var_88.Fields
  loc_168F29E:           var_5AC = "Rep"
  loc_168F301:           var_21C = ("E" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168F308:           var_28C = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168F30F:           var_304 = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_168F316:           var_364 = (IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), CVar(var_88.Fields.Item("Opt3")), vbNullString) + Trim(Str(CVar(var_88.Fields.Item("Opt4")))))
  loc_168F31D:           var_508 = (var_88.Fields.Item("Flag").Value + IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), "Frm", vbNullString))
  loc_168F32E:           var_104 = ("B" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168F335:           var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168F33C:           var_1B4 = (var_15C + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_168F343:           var_430.Add var_1B4, 4, var_508, CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"), IIf((var_540.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), var_5AC, "Close")), var_66C
  loc_168F34B:           Set var_674 = var_670
  loc_168F3EC:           var_674.Bold = False
  loc_168F3F8:           var_674.Expanded = False
  loc_168F401:           Set var_674 = Nothing 
  loc_168F408:         Else
  loc_168F4AA:           var_15C = (var_88.Fields.Item("Opt2").Value <> 0) And (var_88.Fields.Item("Opt3").Value <> 0) And (var_88.Fields.Item("Opt4").Value = 0)
  loc_168F4C8:           If CBool(var_15C) Then
  loc_168F66A:             var_334 = "-"
  loc_168F672:             var_384 = ("R" + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168F69E:             var_3C8 = IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), var_88.Fields.Item("Flag").Value, vbNullString)
  loc_168F6EF:             var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168F797:             var_57C = IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Close"))
  loc_168F7B3:             var_1B4 = ("B" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168F7BA:             var_21C = (var_1B4 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168F7C1:             var_28C = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_168F7C8:             var_3D8 = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + var_3C8)
  loc_168F7D9:             var_104 = ("C" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168F7E0:             var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168F7E7:             var_430.Add var_15C, 4, (var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"), var_57C, var_5AC
  loc_168F7EF:             Set var_678 = var_540
  loc_168F87C:             var_678.Bold = False
  loc_168F888:             var_678.Expanded = False
  loc_168F891:             Set var_678 = Nothing 
  loc_168F895:           End If
  loc_168F895:         End If
  loc_168F895:       End If
  loc_168F895:     End If
  loc_168F89B:     Set var_430 = Nothing 
  loc_168F8A3:     Set var_42C = Nothing 
  loc_168F8A7:   End If
  loc_168F8AE:   var_88.MoveNext
  loc_168F8B5:   GoTo loc_168E8A2
  loc_168F8B8: End If
  loc_168F8BF: Set var_88 = Nothing
  loc_168F8C4: Exit Sub
End Sub

Public Sub mnuGrid_UnknownEvent_A(Index As Integer) 'E42C48
  'Data Table: 5C8390
  loc_E42C3F: If ((((CLng(Index) = &H21) Or (CLng(Index) = &H22)) Or (CLng(Index) = &H26)) Or (CLng(Index) = &H28)) Then
  loc_E42C42:   Call mnuGrid_UnknownEvent_9()
  loc_E42C47: End If
  loc_E42C47: Exit Sub
End Sub

Public Sub mnuGrid_UnknownEvent_C(Index As Integer) 'E0AA7C
  'Data Table: 5C8390
  loc_E0AA72: If (CLng(Index) = 0) Then
  loc_E0AA75:   Call mnuGrid_UnknownEvent_9()
  loc_E0AA7A: End If
  loc_E0AA7A: Exit Sub
End Sub

Private Sub mnuGrid_UnknownEvent_F 'E206C0
  'Data Table: 5C8390
  loc_E206B4: Me.PictShortCuts.MousePointer = CInt(0)
  loc_E206BC: Exit Sub
End Sub

Private Sub OdcEnt1_Click(Index As Integer) '1195678
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_119527F: var_B4 = CVar("ODCEnt1" & "+") 'String
  loc_119529A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11952AC: var_C6 = Index
  loc_11952B5: If (var_C6 = 0) Then
  loc_11952C2:   global_52 = New FrmEventMast
  loc_11952D6:   Set var_CC = var_D0(Index)
  loc_11952DC:   Call 0.Method_OdcEnt1_Click0 (var_D4, var_C6)
  loc_11952E4:   MemVar_1F95204 = FrmEventMast.Menu.Caption
  loc_11952F6:   global_52.CAPTION = CVar(var_D4)
  loc_119530C:   Call global_52.Show
  loc_1195315: Else
  loc_119531B:   If (var_C6 = 1) Then
  loc_1195328:     global_52 = New FrmVenueFeat
  loc_119533C:     Set var_CC = var_D0(Index)
  loc_1195342:     Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_119534A:      = FrmVenueFeat.Menu.Caption
  loc_119535C:     global_52.CAPTION = CVar(var_D4)
  loc_1195372:     Call global_52.Show
  loc_119537B:   Else
  loc_1195381:     If (var_C6 = 2) Then
  loc_119538E:       global_52 = New FrmVenueMast
  loc_11953A6:       global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_11953BA:       Set var_CC = var_D0(Index)
  loc_11953C0:       Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_11953C8:        = global_52.Menu.Caption
  loc_11953DA:       global_52.CAPTION = CVar(var_D4)
  loc_11953F0:       Call global_52.Show
  loc_11953F9:     Else
  loc_11953FF:       If (var_C6 = 3) Then
  loc_119540C:         global_52 = New FrmHallItemCatMast
  loc_1195424:         global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_1195438:         Set var_CC = var_D0(Index)
  loc_119543E:         Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_1195446:          = global_52.Menu.Caption
  loc_1195458:         global_52.CAPTION = CVar(var_D4)
  loc_119546E:         Call global_52.Show
  loc_1195477:       Else
  loc_119547D:         If (var_C6 = 4) Then
  loc_119548A:           global_52 = New HallItemGroupMast
  loc_11954A2:           global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_11954B6:           Set var_CC = var_D0(Index)
  loc_11954BC:           Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_11954C4:            = global_52.Menu.Caption
  loc_11954D6:           global_52.CAPTION = CVar(var_D4)
  loc_11954EC:           Call global_52.Show
  loc_11954F5:         Else
  loc_11954FB:           If (var_C6 = 5) Then
  loc_1195508:             global_52 = New HallMenuItemEntry
  loc_1195520:             global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_1195534:             Set var_CC = var_D0(Index)
  loc_119553A:             Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_1195542:              = global_52.Menu.Caption
  loc_1195554:             global_52.CAPTION = CVar(var_D4)
  loc_119556A:             Call global_52.Show
  loc_1195573:           Else
  loc_1195579:             If (var_C6 = 6) Then
  loc_1195586:               global_52 = New HallMenuCatalog
  loc_119559E:               global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_11955B2:               Set var_CC = var_D0(Index)
  loc_11955B8:               Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_11955C0:                = global_52.Menu.Caption
  loc_11955D2:               global_52.CAPTION = CVar(var_D4)
  loc_11955E8:               Call global_52.Show
  loc_11955F1:             Else
  loc_11955F7:               If (var_C6 = 7) Then
  loc_1195604:                 global_52 = New HallSundry
  loc_119561C:                 global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_1195630:                 Set var_CC = var_D0(Index)
  loc_1195636:                 Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_119563E:                  = global_52.Menu.Caption
  loc_1195650:                 global_52.CAPTION = CVar(var_D4)
  loc_1195666:                 Call global_52.Show
  loc_119566C:               End If
  loc_119566C:             End If
  loc_119566C:           End If
  loc_119566C:         End If
  loc_119566C:       End If
  loc_119566C:     End If
  loc_119566C:   End If
  loc_119566C: End If
  loc_1195671: global_52 = Nothing
  loc_1195675: Exit Sub
End Sub

Private Sub OdcMis_Click(Index As Integer) 'F85884
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_F8573F: var_B4 = CVar("OdcMis" & "+") 'String
  loc_F8575A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F85776: var_CC = Proc_6_45_EADFB8(MemVar_1F95078, 2)
  loc_F85786: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_F85795: var_D2 = Index
  loc_F8579E: If (var_D2 = 0) Then
  loc_F857AB:   global_52 = New rHallRepView
  loc_F857BE:   global_52.GRepFormName = "CashierCollectionMIS"
  loc_F857CF:   Set var_D8 = var_FC(Index)
  loc_F857D5:   Call 0.Method_OdcMis_Click0 (var_CC, var_D2)
  loc_F857DD:   MemVar_1F95204 = global_52.Menu.Caption
  loc_F857EF:   global_52.CAPTION = CVar(var_CC)
  loc_F85805:   Call global_52.Show
  loc_F8580E: Else
  loc_F85814:   If (var_D2 = 1) Then
  loc_F85821:     global_52 = New rHallRepView
  loc_F85834:     global_52.GRepFormName = "TaxSummaryHall"
  loc_F85845:     Set var_D8 = var_FC(Index)
  loc_F8584B:     Call 0.Method_OdcMis_Click0 (var_CC)
  loc_F85853:      = global_52.Menu.Caption
  loc_F85865:     global_52.CAPTION = CVar(var_CC)
  loc_F8587B:     Call global_52.Show
  loc_F85881:   End If
  loc_F85881: End If
  loc_F85881: Exit Sub
End Sub

Private Sub OdcOP_Click(Index As Integer) '12368F0
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  Dim var_DC As Variant
  loc_12363C7: var_B4 = CVar("OdcOP" & "+") 'String
  loc_12363E2: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_12363F4: var_C6 = Index
  loc_12363FD: If (var_C6 = 0) Then
  loc_123640A:   global_52 = New FrmBookingInquiry
  loc_1236422:   global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_1236436:   Set var_CC = var_E0(Index)
  loc_123643C:   Call 0.Method_OdcOP_Click0 (var_E4, var_C6)
  loc_1236444:   MemVar_1F95204 = global_52.Menu.Caption
  loc_1236456:   global_52.CAPTION = CVar(var_E4)
  loc_123646C:   Call global_52.Show
  loc_1236475: Else
  loc_123647B:   If (var_C6 = 1) Then
  loc_1236488:     global_52 = New HallBooking
  loc_12364A0:     global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_12364B4:     Set var_CC = var_E0(Index)
  loc_12364BA:     Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12364C2:      = global_52.Menu.Caption
  loc_12364D4:     global_52.CAPTION = CVar(var_E4)
  loc_12364EA:     Call global_52.Show
  loc_12364F3:   Else
  loc_12364F9:     If (var_C6 = 2) Then
  loc_1236506:       global_52 = New CateringBooking
  loc_123651E:       global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_1236532:       Set var_CC = var_E0(Index)
  loc_1236538:       Call 0.Method_OdcOP_Click0 (var_E4)
  loc_1236540:        = global_52.Menu.Caption
  loc_1236552:       global_52.CAPTION = CVar(var_E4)
  loc_1236568:       Call global_52.Show
  loc_1236571:     Else
  loc_1236577:       If (var_C6 = 3) Then
  loc_1236584:         global_52 = New HallChefPreCosting
  loc_123659C:         global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_12365B0:         Set var_CC = var_E0(Index)
  loc_12365B6:         Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12365BE:          = global_52.Menu.Caption
  loc_12365D0:         global_52.CAPTION = CVar(var_E4)
  loc_12365E6:         Call global_52.Show
  loc_12365EF:       Else
  loc_12365F5:         If (var_C6 = 4) Then
  loc_1236602:           global_52 = New HallBill
  loc_123661A:           global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_123662E:           Set var_CC = var_E0(Index)
  loc_1236634:           Call 0.Method_OdcOP_Click0 (var_E4)
  loc_123663C:            = global_52.Menu.Caption
  loc_123664E:           global_52.CAPTION = CVar(var_E4)
  loc_1236664:           Call global_52.Show
  loc_123666D:         Else
  loc_1236673:           If (var_C6 = 5) Then
  loc_1236680:             global_52 = New HallAdvanceDepDialog
  loc_1236698:             global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_12366AC:             Set var_CC = var_E0(Index)
  loc_12366B2:             Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12366BA:              = global_52.Menu.Caption
  loc_12366CC:             global_52.CAPTION = CVar(var_E4)
  loc_12366E2:             Call global_52.Show
  loc_12366EB:           Else
  loc_12366F1:             If (var_C6 = 6) Then
  loc_12366FE:               global_52 = New BanqAvailability
  loc_1236716:               global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_123672A:               Set var_CC = var_E0(Index)
  loc_1236730:               Call 0.Method_OdcOP_Click0 (var_E4)
  loc_1236738:                = global_52.Menu.Caption
  loc_123674A:               global_52.CAPTION = CVar(var_E4)
  loc_1236760:               Call global_52.Show
  loc_1236769:             Else
  loc_123676F:               If (var_C6 = 7) Then
  loc_123677C:                 global_52 = New frmGuestComments
  loc_1236794:                 global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_12367A8:                 Set var_CC = var_E0(Index)
  loc_12367AE:                 Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12367B6:                  = global_52.Menu.Caption
  loc_12367C8:                 global_52.CAPTION = CVar(var_E4)
  loc_12367DE:                 Call global_52.Show
  loc_12367E7:               Else
  loc_12367ED:                 If (var_C6 = 8) Then
  loc_12367FA:                   global_52 = New HallBillEstimate
  loc_1236812:                   global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_1236826:                   Set var_CC = var_E0(Index)
  loc_123682C:                   Call 0.Method_OdcOP_Click0 (var_E4)
  loc_1236834:                    = global_52.Menu.Caption
  loc_1236846:                   global_52.CAPTION = CVar(var_E4)
  loc_123685C:                   Call global_52.Show
  loc_1236865:                 Else
  loc_123686B:                   If (var_C6 = 9) Then
  loc_1236878:                     global_52 = New HallAdvanceDepDialog
  loc_123688B:                     global_52.AdvType = "AD"
  loc_123689E:                     global_52.OpenMode = 2
  loc_12368B1:                     global_52.OpenType = 6
  loc_12368C6:                     global_52.MDIRestCode = CVar(MemVar_1F95070 & "ODC")
  loc_12368CD:                     var_DC = 1
  loc_12368DE:                     Call global_52.Show
  loc_12368E4:                   End If
  loc_12368E4:                 End If
  loc_12368E4:               End If
  loc_12368E4:             End If
  loc_12368E4:           End If
  loc_12368E4:         End If
  loc_12368E4:       End If
  loc_12368E4:     End If
  loc_12368E4:   End If
  loc_12368E4: End If
  loc_12368E9: global_52 = Nothing
  loc_12368ED: Exit Sub
End Sub

Private Sub PayOpr_Click(Index As Integer) '10828A4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_1082607: var_B4 = CVar("PayOpr" & "+") 'String
  loc_1082622: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1082634: var_C6 = Index
  loc_108263D: If (var_C6 = 0) Then
  loc_108264A:   global_52 = New prAttend
  loc_108265E:   Set var_CC = var_D0(Index)
  loc_1082664:   Call 0.Method_PayOpr_Click0 (var_D4, var_C6)
  loc_108266C:   MemVar_1F95204 = prAttend.Menu.Caption
  loc_108267E:   global_52.CAPTION = CVar(var_D4)
  loc_1082694:   Call global_52.Show
  loc_108269D: Else
  loc_10826A3:   If (var_C6 = 1) Then
  loc_10826B0:     global_52 = New PrAttend1
  loc_10826C4:     Set var_CC = var_D0(Index)
  loc_10826CA:     Call 0.Method_PayOpr_Click0 (var_D4)
  loc_10826D2:      = PrAttend1.Menu.Caption
  loc_10826E4:     global_52.CAPTION = CVar(var_D4)
  loc_10826FA:     Call global_52.Show
  loc_1082703:   Else
  loc_1082709:     If (var_C6 = 2) Then
  loc_1082716:       global_52 = New PrLoan
  loc_108272A:       Set var_CC = var_D0(Index)
  loc_1082730:       Call 0.Method_PayOpr_Click0 (var_D4)
  loc_1082738:        = PrLoan.Menu.Caption
  loc_108274A:       global_52.CAPTION = CVar(var_D4)
  loc_1082760:       Call global_52.Show
  loc_1082769:     Else
  loc_108276F:       If (var_C6 = 3) Then
  loc_108277C:         global_52 = New prOverTime
  loc_1082790:         Set var_CC = var_D0(Index)
  loc_1082796:         Call 0.Method_PayOpr_Click0 (var_D4)
  loc_108279E:          = prOverTime.Menu.Caption
  loc_10827B0:         global_52.CAPTION = CVar(var_D4)
  loc_10827C6:         Call global_52.Show
  loc_10827CF:       Else
  loc_10827D5:         If (var_C6 = 4) Then
  loc_10827E2:           global_52 = New PrLeavench
  loc_10827F6:           Set var_CC = var_D0(Index)
  loc_10827FC:           Call 0.Method_PayOpr_Click0 (var_D4)
  loc_1082804:            = PrLeavench.Menu.Caption
  loc_1082816:           global_52.CAPTION = CVar(var_D4)
  loc_108282C:           Call global_52.Show
  loc_1082835:         Else
  loc_108283B:           If (var_C6 = 5) Then
  loc_1082848:             global_52 = New prSalCreate
  loc_108285C:             Set var_CC = var_D0(Index)
  loc_1082862:             Call 0.Method_PayOpr_Click0 (var_D4)
  loc_108286A:              = prSalCreate.Menu.Caption
  loc_108287C:             global_52.CAPTION = CVar(var_D4)
  loc_1082892:             Call global_52.Show
  loc_1082898:           End If
  loc_1082898:         End If
  loc_1082898:       End If
  loc_1082898:     End If
  loc_1082898:   End If
  loc_1082898: End If
  loc_108289D: global_52 = Nothing
  loc_10828A1: Exit Sub
End Sub

Private Sub PayRep_Click(Index As Integer) '11C64CC
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_11C606F: var_B4 = CVar("PayRep" & "+") 'String
  loc_11C608A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11C609C: var_C6 = Index
  loc_11C60A5: If (var_C6 = 0) Then
  loc_11C60B2:   global_52 = New rRepPayRoll
  loc_11C60C5:   global_52.GRepFormName = "PaySlip"
  loc_11C60D6:   Set var_CC = var_F0(Index)
  loc_11C60DC:   Call 0.Method_PayRep_Click0 (var_F4, var_C6)
  loc_11C60E4:   MemVar_1F95204 = global_52.Menu.Caption
  loc_11C60F6:   global_52.CAPTION = CVar(var_F4)
  loc_11C610C:   Call global_52.Show
  loc_11C6115: Else
  loc_11C611B:   If (var_C6 = 1) Then
  loc_11C6128:     global_52 = New rRepPayRoll
  loc_11C613B:     global_52.GRepFormName = "PayrollReg"
  loc_11C614C:     Set var_CC = var_F0(Index)
  loc_11C6152:     Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C615A:      = global_52.Menu.Caption
  loc_11C616C:     global_52.CAPTION = CVar(var_F4)
  loc_11C6182:     Call global_52.Show
  loc_11C618B:   Else
  loc_11C6191:     If (var_C6 = 2) Then
  loc_11C619E:       global_52 = New rRepPayRoll
  loc_11C61B1:       global_52.GRepFormName = "LoanReg"
  loc_11C61C2:       Set var_CC = var_F0(Index)
  loc_11C61C8:       Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C61D0:        = global_52.Menu.Caption
  loc_11C61E2:       global_52.CAPTION = CVar(var_F4)
  loc_11C61F8:       Call global_52.Show
  loc_11C6201:     Else
  loc_11C6207:       If (var_C6 = 3) Then
  loc_11C6214:         global_52 = New rRepPayRoll
  loc_11C6227:         global_52.GRepFormName = "LoanAdvSumm"
  loc_11C6238:         Set var_CC = var_F0(Index)
  loc_11C623E:         Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C6246:          = global_52.Menu.Caption
  loc_11C6258:         global_52.CAPTION = CVar(var_F4)
  loc_11C626E:         Call global_52.Show
  loc_11C6277:       Else
  loc_11C627D:         If (var_C6 = 4) Then
  loc_11C628A:           global_52 = New rRepPayRoll
  loc_11C629D:           global_52.GRepFormName = "LoanLedg"
  loc_11C62AE:           Set var_CC = var_F0(Index)
  loc_11C62B4:           Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C62BC:            = global_52.Menu.Caption
  loc_11C62CE:           global_52.CAPTION = CVar(var_F4)
  loc_11C62E4:           Call global_52.Show
  loc_11C62ED:         Else
  loc_11C62F3:           If (var_C6 = 5) Then
  loc_11C6300:             global_52 = New rRepPayRoll
  loc_11C6313:             global_52.GRepFormName = "AttendanceRep"
  loc_11C6324:             Set var_CC = var_F0(Index)
  loc_11C632A:             Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C6332:              = global_52.Menu.Caption
  loc_11C6344:             global_52.CAPTION = CVar(var_F4)
  loc_11C635A:             Call global_52.Show
  loc_11C6363:           Else
  loc_11C6369:             If (var_C6 = 6) Then
  loc_11C6376:               global_52 = New rRepPayRoll
  loc_11C6389:               global_52.GRepFormName = "GratuityReport"
  loc_11C639A:               Set var_CC = var_F0(Index)
  loc_11C63A0:               Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C63A8:                = global_52.Menu.Caption
  loc_11C63BA:               global_52.CAPTION = CVar(var_F4)
  loc_11C63D0:               Call global_52.Show
  loc_11C63D9:             Else
  loc_11C63DF:               If (var_C6 = 7) Then
  loc_11C63EC:                 global_52 = New rRepPayRoll
  loc_11C63FF:                 global_52.GRepFormName = "PFStatement"
  loc_11C6410:                 Set var_CC = var_F0(Index)
  loc_11C6416:                 Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C641E:                  = global_52.Menu.Caption
  loc_11C6430:                 global_52.CAPTION = CVar(var_F4)
  loc_11C6446:                 Call global_52.Show
  loc_11C644F:               Else
  loc_11C6455:                 If (var_C6 = 8) Then
  loc_11C6462:                   global_52 = New rRepPayRoll
  loc_11C6475:                   global_52.GRepFormName = "FormC"
  loc_11C6486:                   Set var_CC = var_F0(Index)
  loc_11C648C:                   Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C6494:                    = global_52.Menu.Caption
  loc_11C64A6:                   global_52.CAPTION = CVar(var_F4)
  loc_11C64BC:                   Call global_52.Show
  loc_11C64C2:                 End If
  loc_11C64C2:               End If
  loc_11C64C2:             End If
  loc_11C64C2:           End If
  loc_11C64C2:         End If
  loc_11C64C2:       End If
  loc_11C64C2:     End If
  loc_11C64C2:   End If
  loc_11C64C2: End If
  loc_11C64C7: global_52 = Nothing
  loc_11C64CB: Exit Sub
End Sub

Private Sub CCenterMas_Click(Index As Integer) '11EEAE4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_11EE653: var_B4 = CVar("CCenterMas" & "+") 'String
  loc_11EE66E: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11EE680: var_C6 = Index
  loc_11EE689: If (var_C6 = 0) Then
  loc_11EE696:   global_52 = New FrmParty
  loc_11EE6AA:   Set var_CC = var_D0(Index)
  loc_11EE6B0:   Call 0.Method_CCenterMas_Click0 (var_D4, var_C6)
  loc_11EE6B8:   MemVar_1F95204 = FrmParty.Menu.Caption
  loc_11EE6CA:   global_52.CAPTION = CVar(var_D4)
  loc_11EE6E0:   Call global_52.Show
  loc_11EE6E9: Else
  loc_11EE6EF:   If (var_C6 = 1) Then
  loc_11EE6FC:     global_52 = New DepartMast
  loc_11EE710:     Set var_CC = var_D0(Index)
  loc_11EE716:     Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE71E:      = DepartMast.Menu.Caption
  loc_11EE730:     global_52.CAPTION = CVar(var_D4)
  loc_11EE746:     Call global_52.Show
  loc_11EE74F:   Else
  loc_11EE755:     If (var_C6 = 2) Then
  loc_11EE762:       global_52 = New FrmItemGroupMastRaw
  loc_11EE776:       Set var_CC = var_D0(Index)
  loc_11EE77C:       Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE784:        = FrmItemGroupMastRaw.Menu.Caption
  loc_11EE796:       global_52.CAPTION = CVar(var_D4)
  loc_11EE7AC:       Call global_52.Show
  loc_11EE7B5:     Else
  loc_11EE7BB:       If (var_C6 = 3) Then
  loc_11EE7C8:         global_52 = New FrmItemCatRaw
  loc_11EE7DC:         Set var_CC = var_D0(Index)
  loc_11EE7E2:         Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE7EA:          = FrmItemCatRaw.Menu.Caption
  loc_11EE7FC:         global_52.CAPTION = CVar(var_D4)
  loc_11EE812:         Call global_52.Show
  loc_11EE81B:       Else
  loc_11EE821:         If (var_C6 = 4) Then
  loc_11EE82E:           global_52 = New FrmItemMastRaw
  loc_11EE842:           Set var_CC = var_D0(Index)
  loc_11EE848:           Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE850:            = FrmItemMastRaw.Menu.Caption
  loc_11EE862:           global_52.CAPTION = CVar(var_D4)
  loc_11EE878:           Call global_52.Show
  loc_11EE881:         Else
  loc_11EE887:           If (var_C6 = 5) Then
  loc_11EE894:             global_52 = New FrmConsumMast
  loc_11EE8A8:             Set var_CC = var_D0(Index)
  loc_11EE8AE:             Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE8B6:              = FrmConsumMast.Menu.Caption
  loc_11EE8C8:             global_52.CAPTION = CVar(var_D4)
  loc_11EE8DE:             Call global_52.Show
  loc_11EE8E7:           Else
  loc_11EE8ED:             If (var_C6 = 6) Then
  loc_11EE8FA:               global_52 = New DepartSundry
  loc_11EE90E:               Set var_CC = var_D0(Index)
  loc_11EE914:               Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE91C:                = DepartSundry.Menu.Caption
  loc_11EE92E:               global_52.CAPTION = CVar(var_D4)
  loc_11EE944:               Call global_52.Show
  loc_11EE94D:             Else
  loc_11EE953:               If (var_C6 = 7) Then
  loc_11EE960:                 global_52 = New Godown
  loc_11EE974:                 Set var_CC = var_D0(Index)
  loc_11EE97A:                 Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE982:                  = Godown.Menu.Caption
  loc_11EE994:                 global_52.CAPTION = CVar(var_D4)
  loc_11EE9AA:                 Call global_52.Show
  loc_11EE9B3:               Else
  loc_11EE9B9:                 If (var_C6 = 8) Then
  loc_11EE9C6:                   global_52 = New FrmOPStock
  loc_11EE9DA:                   Set var_CC = var_D0(Index)
  loc_11EE9E0:                   Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EE9E8:                    = FrmOPStock.Menu.Caption
  loc_11EE9FA:                   global_52.CAPTION = CVar(var_D4)
  loc_11EEA10:                   Call global_52.Show
  loc_11EEA19:                 Else
  loc_11EEA1F:                   If (var_C6 = 9) Then
  loc_11EEA2C:                     global_52 = New FrmItemMast
  loc_11EEA40:                     Set var_CC = var_D0(Index)
  loc_11EEA46:                     Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EEA4E:                      = FrmItemMast.Menu.Caption
  loc_11EEA60:                     global_52.CAPTION = CVar(var_D4)
  loc_11EEA76:                     Call global_52.Show
  loc_11EEA7F:                   Else
  loc_11EEA85:                     If (var_C6 = &HB) Then
  loc_11EEA92:                       global_52 = New frmPurEnviro
  loc_11EEAA6:                       Set var_CC = var_D0(Index)
  loc_11EEAAC:                       Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11EEAB4:                        = frmPurEnviro.Menu.Caption
  loc_11EEAC6:                       global_52.CAPTION = CVar(var_D4)
  loc_11EEADC:                       Call global_52.Show
  loc_11EEAE2:                     End If
  loc_11EEAE2:                   End If
  loc_11EEAE2:                 End If
  loc_11EEAE2:               End If
  loc_11EEAE2:             End If
  loc_11EEAE2:           End If
  loc_11EEAE2:         End If
  loc_11EEAE2:       End If
  loc_11EEAE2:     End If
  loc_11EEAE2:   End If
  loc_11EEAE2: End If
  loc_11EEAE2: Exit Sub
End Sub

Public Sub CmdSubMenu_UnknownEvent_9(Index As Integer) '1235848
  'Data Table: 5C8390
  Dim var_A4 As String
  Dim unk_5C83CC As Connection15
  Dim var_E0 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_90 As Field20
  loc_123536A: Set var_8C = Me.CmdSubMenu
  loc_1235370: Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index, var_90, "Select OPT1,OPT2,OPT3,OPT4,FLAG,CODE from MenuHelp Where Code=")
  loc_1235378: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_DC)
  loc_1235380: var_A4 = CStr(-1)
  loc_12353B0: unk_5C83CC.Execute var_E0 & var_A4 & " And UserName='" & MemVar_1F950C8 & "' And CompCode='" & MemVar_1F95128 & "'", , 
  loc_12353BB: Set var_88 = var_E0
  loc_12353E9: Set var_8C = Me.CmdSubMenu
  loc_12353EF: Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_12353F7: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_90)
  loc_123540C: Me.PictSubMenu.Tag = CStr()
  loc_123545C: If (var_88.Fields.Item("Flag").Value = "N") Then
  loc_123549B:   If CBool(var_88.Fields.Item("Opt1").Value <> 0) Then
  loc_12354DA:     If CBool(var_88.Fields.Item("Opt2").Value <> 0) Then
  loc_1235519:       If CBool(var_88.Fields.Item("Opt3").Value <> 0) Then
  loc_1235536:         var_90 = var_88.Fields.Item("Opt4")
  loc_1235558:         If CBool(var_90.Value <> 0) Then
  loc_123555B:           GoTo loc_1235595
  loc_123555E:         End If
  loc_1235568:         Set var_8C = Me.CmdSubMenu
  loc_123556E:         Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_1235576:         Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_1235584:         global_88 = CStr()
  loc_1235595:         ' Referenced from: 123555B
  loc_1235598:       Else
  loc_12355A2:         Set var_8C = Me.CmdSubMenu
  loc_12355A8:         Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_12355B0:         Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_12355BE:         global_84 = CStr()
  loc_12355CF:       End If
  loc_12355D2:     Else
  loc_12355DC:       Set var_8C = Me.CmdSubMenu
  loc_12355E2:       Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_12355EA:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_12355F8:       global_80 = CStr()
  loc_1235609:     End If
  loc_123560C:   Else
  loc_1235616:     Set var_8C = Me.CmdSubMenu
  loc_123561C:     Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_1235624:     Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_1235632:     global_76 = CStr()
  loc_1235643:   End If
  loc_12356B3:   var_138 = var_88.Fields.Item("Opt3").Value
  loc_12356DA:   var_14C = var_88.Fields.Item("Opt4").Value
  loc_12356FB:   Call Proc_1_121_1332554(CInt(var_88.Fields.Item("Opt1").Value), CInt(var_88.Fields.Item("Opt2").Value))
  loc_1235721: Else
  loc_1235739:   If (global_76 <> vbNullString) Then
  loc_1235756:     global_68 = global_72 & " > " & global_76
  loc_1235761:   End If
  loc_123576C:   If (global_80 <> vbNullString) Then
  loc_1235789:     global_68 = global_68 & " > " & global_80
  loc_1235794:   End If
  loc_123579F:   If (global_84 <> vbNullString) Then
  loc_12357BC:     global_68 = global_68 & " > " & global_84
  loc_12357C7:   End If
  loc_12357D2:   If (global_88 <> vbNullString) Then
  loc_12357EF:     global_68 = global_68 & " > " & global_88
  loc_12357FA:   End If
  loc_123582F:   Proc_165_2_1E4D9D4(CLng(var_88.Fields.Item("Code").Value), global_68)
  loc_123583E: End If
  loc_1235843: Set var_88 = Nothing
  loc_1235846: Exit Sub
End Sub

Public Sub CmdMainMenu_UnknownEvent_9(Index As Integer) 'F85A24
  'Data Table: 5C8390
  Dim var_88 As Label
  loc_F858E1: Set var_88 = Me.CmdSubMenu
  loc_F858E7: Call 0.Method_CmdMainMenu_UnknownEvent_90 (0, var_8C)
  loc_F858EF: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_F85914: Set var_88 = Me.CmdMainMenu
  loc_F8591A: Call 0.Method_CmdMainMenu_UnknownEvent_90 (Index, var_8C, 0)
  loc_F85922: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000B(0)
  loc_F85932: Call Proc_1_121_1332554(CInt(CStr(0)))
  loc_F8594E: Set var_88 = Me.CmdMainMenu
  loc_F85954: Call 0.Method_CmdMainMenu_UnknownEvent_90 (Index)
  loc_F8595C: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_8C)
  loc_F85971: Me.PictMainMenu.Tag = CStr()
  loc_F8598F: Set var_88 = Me.CmdMainMenu
  loc_F85995: Call 0.Method_CmdMainMenu_UnknownEvent_90 (Index)
  loc_F8599D: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_8C)
  loc_F859AB: global_72 = CStr()
  loc_F859C2: global_76 = vbNullString
  loc_F859CC: global_80 = vbNullString
  loc_F859D6: global_84 = vbNullString
  loc_F859E0: global_88 = vbNullString
  loc_F859FF: Call 0.Method_arg_54 (MemVar_1F95130 & " { " & MemVar_1F95014 & " }")
  loc_F85A19: Me.LblCompany.Visible = False
  loc_F85A21: Exit Sub
End Sub

Private Sub mnuExit_Click() 'EA7080
  'Data Table: 5C8390
  Dim var_88 As Variant
  loc_EA7001: Me.Global.Unload Me
  loc_EA7017: Call 0.Method_arg_2B0 (var_98)
  loc_EA702D: Set var_88 = MemVar_1F956CC.txt
  loc_EA7033: Call 0.Method_mnuExit_Click0 (0, var_AC)
  loc_EA703B: frmCompany.txt.Text = MemVar_1F950C8
  loc_EA7058: Set var_88 = MemVar_1F956CC.txt
  loc_EA705E: Call 0.Method_mnuExit_Click0 (1, var_AC)
  loc_EA7066: frmCompany.txt.Text = MemVar_1F950D4
  loc_EA7078: Call frmCompany.btnapplyNew_UnknownEvent_9()
  loc_EA707D: Exit Sub
End Sub

Public Sub Proc_1_113_11C48B4(arg_C) '11C48B4
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  Dim Proc_1_113_11C48B4CFF As Integer
  loc_11C445F: var_B4 = CVar("BanqRep1" & "+") 'String
  loc_11C447A: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(arg_C))))
  loc_11C4496: var_CC = Proc_6_45_EADFB8(MemVar_1F95078, 2)
  loc_11C44A6: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_11C44B5: var_D2 = arg_C
  loc_11C44BE: If (var_D2 = 0) Then
  loc_11C44CB:   global_52 = New rHallRepView
  loc_11C44DE:   global_52.GRepFormName = "SalesRegister"
  loc_11C44EF:   Set var_D8 = var_FC(arg_C)
  loc_11C44F5:   Call 0.Method_Proc_1_113_11C48B40 (var_CC, var_D2)
  loc_11C44FD:   MemVar_1F95204 = global_52.Menu.Caption
  loc_11C450F:   global_52.CAPTION = CVar(var_CC)
  loc_11C4525:   Call global_52.Show
  loc_11C452E: Else
  loc_11C4534:   If (var_D2 = 1) Then
  loc_11C4541:     global_52 = New rHallRepView
  loc_11C4554:     global_52.GRepFormName = "PartyOutStanding"
  loc_11C4565:     Set var_D8 = var_FC(arg_C)
  loc_11C456B:     Call 0.Method_Proc_1_113_11C48B40 (var_CC)
  loc_11C4573:      = global_52.Menu.Caption
  loc_11C4585:     global_52.CAPTION = CVar(var_CC)
  loc_11C459B:     Call global_52.Show
  loc_11C45A4:   Else
  loc_11C45AA:     If (var_D2 = 2) Then
  loc_11C45B7:       global_52 = New rHallRepView
  loc_11C45CA:       global_52.GRepFormName = "PartyWiseOutStanding"
  loc_11C45DB:       Set var_D8 = var_FC(arg_C)
  loc_11C45E1:       Call 0.Method_Proc_1_113_11C48B40 (var_CC)
  loc_11C45E9:        = global_52.Menu.Caption
  loc_11C45FB:       global_52.CAPTION = CVar(var_CC)
  loc_11C4611:       Call global_52.Show
  loc_11C461A:     Else
  loc_11C4620:       If (var_D2 = 3) Then
  loc_11C462D:         global_52 = New rHallRepView
  loc_11C4640:         global_52.GRepFormName = "CashierCollection"
  loc_11C4650:         global_52.CAPTION = "Cashier Report"
  loc_11C465C:         Call global_52.Show
  loc_11C4665:       Else
  loc_11C466B:         If (var_D2 = 4) Then
  loc_11C4678:           global_52 = New rHallRepView
  loc_11C468B:           global_52.GRepFormName = "BookingDetail"
  loc_11C469C:           Set var_D8 = var_FC(arg_C)
  loc_11C46A2:           Call 0.Method_Proc_1_113_11C48B40 (var_CC)
  loc_11C46AA:            = global_52.Menu.Caption
  loc_11C46BC:           global_52.CAPTION = CVar(var_CC)
  loc_11C46D2:           Call global_52.Show
  loc_11C46DB:         Else
  loc_11C46E1:           If (var_D2 = 5) Then
  loc_11C46EE:             global_52 = New rHallRepView
  loc_11C4701:             global_52.GRepFormName = "SettleRepHall"
  loc_11C4712:             Set var_D8 = var_FC(arg_C)
  loc_11C4718:             Call 0.Method_Proc_1_113_11C48B40 (var_CC)
  loc_11C4720:              = global_52.Menu.Caption
  loc_11C4732:             global_52.CAPTION = CVar(var_CC)
  loc_11C4748:             Call global_52.Show
  loc_11C4751:           Else
  loc_11C4757:             If (var_D2 = 6) Then
  loc_11C4764:               global_52 = New rHallRepView
  loc_11C4777:               global_52.GRepFormName = "TaxReportHall"
  loc_11C4788:               Set var_D8 = var_FC(arg_C)
  loc_11C478E:               Call 0.Method_Proc_1_113_11C48B40 (var_CC)
  loc_11C4796:                = global_52.Menu.Caption
  loc_11C47A8:               global_52.CAPTION = CVar(var_CC)
  loc_11C47BE:               Call global_52.Show
  loc_11C47C7:             Else
  loc_11C47CD:               If (var_D2 = 7) Then
  loc_11C47DA:                 global_52 = New rHallRepView
  loc_11C47ED:                 global_52.GRepFormName = "DailyFuncSheet"
  loc_11C47FE:                 Set var_D8 = var_FC(arg_C)
  loc_11C4804:                 Call 0.Method_Proc_1_113_11C48B40 (var_CC)
  loc_11C480C:                  = global_52.Menu.Caption
  loc_11C481E:                 global_52.CAPTION = CVar(var_CC)
  loc_11C4834:                 Call global_52.Show
  loc_11C483D:               Else
  loc_11C4843:                 If (var_D2 = 8) Then
  loc_11C4850:                   global_52 = New rHallRepView
  loc_11C4863:                   global_52.GRepFormName = "CoverAnalysis"
  loc_11C4874:                   Set var_D8 = var_FC(arg_C)
  loc_11C487A:                   Call 0.Method_Proc_1_113_11C48B40 (var_CC)
  loc_11C4882:                    = global_52.Menu.Caption
  loc_11C4894:                   global_52.CAPTION = CVar(var_CC)
  loc_11C48AA:                   Call global_52.Show
  loc_11C48B0:                 End If
  loc_11C48B0:               End If
  loc_11C48B0:             End If
  loc_11C48B0:           End If
  loc_11C48B0:         End If
  loc_11C48B0:       End If
  loc_11C48B0:     End If
  loc_11C48B0:   End If
  loc_11C48B0: End If
  loc_11C48B0: Exit Sub
  loc_11C48B1: Proc_1_113_11C48B4CFF = 
End Sub

Public Sub Proc_1_114_F84A08(arg_C) 'F84A08
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_F848C3: var_B4 = CVar("BanqRepMIS1" & "+") 'String
  loc_F848DE: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(arg_C))))
  loc_F848FA: var_CC = Proc_6_45_EADFB8(MemVar_1F95078, 2)
  loc_F8490A: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_F84919: var_D2 = arg_C
  loc_F84922: If (var_D2 = 0) Then
  loc_F8492F:   global_52 = New rHallRepView
  loc_F84942:   global_52.GRepFormName = "CashierCollectionMIS"
  loc_F84953:   Set var_D8 = var_FC(arg_C)
  loc_F84959:   Call 0.Method_Proc_1_114_F84A080 (var_CC, var_D2)
  loc_F84961:   MemVar_1F95204 = global_52.Menu.Caption
  loc_F84973:   global_52.CAPTION = CVar(var_CC)
  loc_F84989:   Call global_52.Show
  loc_F84992: Else
  loc_F84998:   If (var_D2 = 1) Then
  loc_F849A5:     global_52 = New rHallRepView
  loc_F849B8:     global_52.GRepFormName = "TaxSummaryHall"
  loc_F849C9:     Set var_D8 = var_FC(arg_C)
  loc_F849CF:     Call 0.Method_Proc_1_114_F84A080 (var_CC)
  loc_F849D7:      = global_52.Menu.Caption
  loc_F849E9:     global_52.CAPTION = CVar(var_CC)
  loc_F849FF:     Call global_52.Show
  loc_F84A05:   End If
  loc_F84A05: End If
  loc_F84A05: Exit Sub
End Sub

Public Sub Proc_1_115_DFD1E8
  'Data Table: 5C8390
  loc_DFD1E4: Exit Sub
End Sub

Public Sub Proc_1_116_12B6C28
  'Data Table: 5C8390
  Dim unk_5C83CC As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_EC As Variant
  Dim var_128 As Recordset15
  loc_12B6601: If (global_100 = 0) Then
  loc_12B6628:   unk_5C83CC.Execute "SELECT * FROM ENVIRO WHERE SITECODE='" & MemVar_1F95078 & "'", var_B0, -1
  loc_12B6633:   Set var_88 = var_B4
  loc_12B6657:   If (var_88.RecordCount > 0) Then
  loc_12B66BA:     Me.PictMainMenu.Visible = CBool(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("ShowMenuBar")), &HFF) = "No"), False, True))
  loc_12B6732:     Me.PictSubMenu.Visible = CBool(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("ShowSubMenuBar"))) = "No"), False, True))
  loc_12B67AA:     Me.PictTitleBar.Visible = CBool(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("ShowTitleBar"))) = "No"), False, True))
  loc_12B680E:     var_11C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("ShowShortCutsBar"))) = "Yes"), True, False)
  loc_12B6822:     Me.PictShortCuts.Visible = CBool(var_11C)
  loc_12B6842:   End If
  loc_12B6842: End If
  loc_12B685D: If (Me.PictShortCuts.Visible = &HFF) Then
  loc_12B6873:   Me.ListView1.Width = CVar(CDbl(3120))
  loc_12B688E:   Me.TreeView1.Width = CVar(CDbl(3120))
  loc_12B68A9:   Me.ListView1.Width = CVar(CDbl(3120))
  loc_12B68C0:   Me.PictShortCuts.Width = CDbl(3170)
  loc_12B68DD:   var_B8 = Me.PictShortCuts.Width
  loc_12B68F6:   Set var_B4 = Me.PictSubMenu
  loc_12B690A:   Call 0.Method_arg_108 (var_B8, CInt(var_B8))
  loc_12B6926:   global_108 = CLng((((var_B8 * CDbl(&H41)) / CDbl(&H64)) - var_B4.Height))
  loc_12B6951:   var_EC = "Select * from UserMenu Where ucase(UserName)='" & Ucase(MemVar_1F950C8) 
  loc_12B6968:   MDIForm1.Connection15.Execute CStr(var_EC & "'"), var_11C, -1
  loc_12B6973:   Set var_128 = var_B4
  loc_12B699B:   If (var_128.RecordCount > 0) Then
  loc_12B69AD:     var_B4 = var_128.Fields
  loc_12B69C4:     Proc_6_39_E7D3A0(var_EC, CVar(var_B4.Item("MenuX")), var_B4)
  loc_12B6A03:     Proc_6_39_E7D3A0(var_EC, CVar(var_128.Fields.Item("MenuY")), CInt(var_EC))
  loc_12B6A2B:     var_B4 = var_128.Fields
  loc_12B6A3B:     var_B0 = CVar(var_B4.Item("MenuDisp")) 'Address
  loc_12B6A4A:     global_116 = Proc_6_38_E69628(var_B0, CInt(var_EC), global_108)
  loc_12B6A5A:   Else
  loc_12B6A7E:     unk_5C83CC.Execute "SELECT * FROM ENVIRO WHERE SITECODE='" & MemVar_1F95078 & "'", var_B0, -1
  loc_12B6A89:     Set var_88 = var_B4
  loc_12B6A9F:     var_B8 = var_88.RecordCount
  loc_12B6AAD:     If (var_B8 > 0) Then
  loc_12B6ABF:       var_B4 = var_88.Fields
  loc_12B6AD6:       Proc_6_39_E7D3A0(var_EC, CVar(var_B4.Item("MenuX")), var_B4)
  loc_12B6AE2:       global_112 = CInt(var_EC)
  loc_12B6B15:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("MenuY")), global_112)
  loc_12B6B21:       global_114 = CInt(var_EC)
  loc_12B6B5C:       global_116 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuDisp")), global_114)
  loc_12B6B69:     End If
  loc_12B6B69:   End If
  loc_12B6B72:   If (global_112 > 0) Then
  loc_12B6B87:     Me.PictShortCuts.Width = CDbl(global_112)
  loc_12B6B8F:   End If
  loc_12B6B98:   If (global_114 > 0) Then
  loc_12B6BB6:     Call 0.Method_arg_108 (var_B8, global_114)
  loc_12B6BD2:     global_108 = CLng((((var_B8 * CDbl(global_114)) / CDbl(&H64)) - Me.PictSubMenu.Height))
  loc_12B6BD8:   End If
  loc_12B6BE3:   If (global_116 = "Yes") Then
  loc_12B6BF2:     Me.PictShortCuts.Visible = True
  loc_12B6BFD:   Else
  loc_12B6C09:     Me.PictShortCuts.Visible = False
  loc_12B6C11:   End If
  loc_12B6C16:   Set var_88 = Nothing
  loc_12B6C1E:   Set var_128 = Nothing
  loc_12B6C21: End If
  loc_12B6C21: Call Proc_1_126_106FF00(global_108)
  loc_12B6C26: Exit Sub
End Sub

Public Sub Proc_1_117_E0157C
  'Data Table: 5C8390
  loc_E01575: global_52 = Nothing
  loc_E01579: Exit Sub
End Sub

Public Sub Proc_1_118_118576C
  'Data Table: 5C8390
  Dim var_8C As Menu
  Dim var_3E8 As Menu
  loc_1185411: For Each var_88 In MemVar_1F95248
  loc_118541E:   If TypeOf var_88 Is arg_E Then
  loc_1185427:     Set var_8C = var_88
  loc_1185446:     var_C4 = Ucase(CVar(var_8C.Caption)) 'Variant
  loc_118546F:     If Not (var_C4 = Ucase("&Finance")) Then
  loc_1185494:       If Not (var_C4 = Ucase("&Main Setup")) Then
  loc_11854B9:         If Not (var_C4 = Ucase("Inventory")) Then
  loc_11854DE:           If Not (var_C4 = Ucase("Members Mgmt")) Then
  loc_1185503:             If Not (var_C4 = Ucase("House Keeping")) Then
  loc_1185528:               If Not (var_C4 = Ucase("Outdoor Banquet")) Then
  loc_118554D:                 If Not (var_C4 = Ucase("Banquet")) Then
  loc_1185572:                   If Not (var_C4 = Ucase("Point of Sale")) Then
  loc_1185597:                     If Not (var_C4 = Ucase("&Messaging")) Then
  loc_11855BC:                       If Not (var_C4 = Ucase("Reservation")) Then
  loc_11855E1:                         If Not (var_C4 = Ucase("Front Office")) Then
  loc_1185606:                           If Not (var_C4 = Ucase("Night Audit")) Then
  loc_118562B:                             If Not (var_C4 = Ucase("HR/Payroll")) Then
  loc_1185650:                               If Not (var_C4 = Ucase("Mall Mgmt")) Then
  loc_1185675:                                 If Not (var_C4 = Ucase("Epabx")) Then
  loc_118569A:                                   If (var_C4 = Ucase("Extras")) Then
  loc_118569D:                                   End If
  loc_118569D:                                 End If
  loc_118569D:                               End If
  loc_118569D:                             End If
  loc_118569D:                           End If
  loc_118569D:                         End If
  loc_118569D:                       End If
  loc_118569D:                     End If
  loc_118569D:                   End If
  loc_118569D:                 End If
  loc_118569D:               End If
  loc_118569D:             End If
  loc_118569D:           End If
  loc_118569D:         End If
  loc_118569D:       End If
  loc_11856A2:       var_8C.Visible = False
  loc_11856A7:     End If
  loc_11856A7:   End If
  loc_11856B0:   Set var_3E8 = Me.CmdSubMenu
  loc_11856B6:   Call 0.Method_Proc_1_118_118576C0 (0)
  loc_11856BE:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_3EC)
  loc_11856DB:   If (CStr() = ".") Then
  loc_11856EC:     Set var_3E8 = Me.CmdSubMenu
  loc_11856F2:     Call 0.Method_Proc_1_118_118576C0 (0, var_3EC)
  loc_11856FA:     Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1185709:   Else
  loc_1185716:     Set var_3E8 = Me.CmdSubMenu
  loc_118571C:     Call 0.Method_Proc_1_118_118576C0 (0, var_3EC)
  loc_1185724:     Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1185730:   End If
  loc_1185733: Next
  loc_118574A: MemVar_1F95248.mnuMdI.Enabled = True
  loc_118575D: Set var_3E8 = MemVar_1F95248.smnuMdI
  loc_1185763: MDIForm1.smnuMdI.Enabled = True
  loc_118576B: Exit Sub
End Sub

Public Sub Proc_1_119_11C97B4
  'Data Table: 5C8390
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A8 As String
  Dim var_B0 As String
  Dim unk_5C83CC As Connection15
  Dim var_88 As Recordset15
  Dim var_104 As Variant
  Dim var_15C As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As String
  Dim var_1D4 As Variant
  Dim var_22C As Variant
  loc_11C9414: Set var_8C = Me.ListView1
  loc_11C941A: var_9C = var_8C.ListItems
  loc_11C942B: var_9C.Clear
  loc_11C9463: var_B0 = "SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128 & "' AND [Option]<>'-' AND ShowInList='Y' ORDER BY OPT1,OPT2,OPT3,OPT4 "
  loc_11C946C: unk_5C83CC.Execute var_B0, var_9C, -1
  loc_11C9477: Set var_88 = var_8C
  loc_11C948B: ' Referenced from: 11C9737
  loc_11C949A: If Not(var_88.EOF) Then
  loc_11C95C1:   var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_11C9685:   var_104 = ("C" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_11C968C:   var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_11C9693:   var_1B4 = (var_15C + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_11C9697:   var_1C4 = "-"
  loc_11C969C:   var_1D4 = (var_1B4 + var_1C4)
  loc_11C96A3:   var_22C = (var_1D4 + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_11C96C5:   Me.ListView1.ListItems.Add var_3C8, var_22C, CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F950C8 & "' AND CompCode='"), IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Open")), var_3F8
  loc_11C9732:   var_88.MoveNext
  loc_11C9737:   GoTo loc_11C948B
  loc_11C973A: End If
  loc_11C974E: If (var_88.RecordCount > 0) Then
  loc_11C9764:   Me.mnuGrid.Row = 0
  loc_11C976F: Else
  loc_11C9782:   Me.mnuGrid.Row = 1
  loc_11C978A: End If
  loc_11C979D: Me.mnuGrid.Col = 1
  loc_11C97A5: Call mnuGrid_UnknownEvent_9()
  loc_11C97AF: Set var_88 = Nothing
  loc_11C97B2: Exit Sub
End Sub

Public Sub Proc_1_120_1209720
  'Data Table: 5C8390
  Dim var_90 As String
  Dim unk_5C83CC As Connection15
  Dim var_86 As Integer
  Dim var_AC As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_C0 As Variant
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim var_F4 As Long
  Dim var_11C As Field20
  Dim var_13C As Variant
  Dim var_12C As Variant
  loc_120928C: var_90 = "Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='" & MemVar_1F950C8
  loc_12092AA: unk_5C83CC.Execute var_90 & "' And CompCode='" & MemVar_1F95128 & "' Order By Code", var_BC, -1
  loc_12092B5: Set var_8C = var_C0
  loc_12092CB: var_86 = 0
  loc_12092D2: Set var_C4 = Me.mnuGrid
  loc_12092E1: var_C4.Cols = 2
  loc_12092F2: var_C4.Rows = 0
  loc_12092F7: var_AC = vbNullString
  loc_120931A: var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_120931F: var_E4 = &H1C2
  loc_120932B: LateIdCallSt
  loc_1209348: var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_120934D: var_E4 = 0
  loc_1209356: var_104 = "0"
  loc_120935F: LateIdCallSt
  loc_120937C: var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_1209381: var_E4 = 1
  loc_120938A: var_104 = "Short Cut(s)"
  loc_1209393: LateIdCallSt
  loc_120939E: var_AC = 0
  loc_12093A7: var_E4 = 0
  loc_12093B3: LateIdCallSt
  loc_12093BB: var_AC = 1
  loc_12093CA: var_E4 = CVar(CInt(1)) 'Integer
  loc_12093D1: LateIdCallSt
  loc_12093D9: var_AC = 1
  loc_12093FB: var_E4 = CVar(CLng((CDbl(Me.mnuGrid.Width) - CDbl(375)))) 'Long
  loc_1209403: LateIdCallSt
  loc_1209411: ' Referenced from: 12096E5
  loc_1209420: If Not(var_8C.EOF) Then
  loc_1209423:   var_AC = vbNullString
  loc_1209446:   var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_120944B:   var_E4 = &H1C2
  loc_1209457:   LateIdCallSt
  loc_1209474:   var_D4 = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_1209479:   var_F4 = 0
  loc_12094AD:   var_13C = CVar(CStr(var_8C.Fields.Item("Opt1").Value)) 'String
  loc_12094B4:   LateIdCallSt
  loc_12094DE:   var_D4 = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_12094E3:   var_F4 = 1
  loc_1209517:   var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_120951E:   LateIdCallSt
  loc_1209564:   Set var_140 = Me.CmdMainMenu
  loc_120956A:   Call 0.Method_Proc_1_120_12097200 (var_86, var_144, CVar(var_8C.Fields.Item("Name")), var_C4, var_13C, var_F4, var_D4)
  loc_1209572:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_C4)
  loc_120959D:   var_11C = var_8C.Fields.Item("Opt1")
  loc_12095AE:   var_12C = CVar(CStr(var_11C.Value)) 'String
  loc_12095BC:   Set var_140 = Me.CmdMainMenu
  loc_12095C2:   Call 0.Method_Proc_1_120_12097200 (var_86, var_144, var_12C, var_13C, var_F4)
  loc_12095CA:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_D4)
  loc_12095E4:   var_8C.MoveNext
  loc_12095EF:   var_86 = (var_86 + 1)
  loc_1209603:   If (var_8C.EOF = 0) Then
  loc_1209610:     Set var_C0 = Me.CmdMainMenu
  loc_1209616:     Call 0.Method_Proc_1_120_12097200 (var_86, var_11C, var_86)
  loc_1209627:     Me.CmdMainMenu.Load var_11C
  loc_1209633:     var_AC = True
  loc_1209641:     Set var_C0 = Me.CmdMainMenu
  loc_1209647:     Call 0.Method_Proc_1_120_12097200 (var_86, var_11C, var_AC)
  loc_120964F:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_C4)
  loc_1209668:     Set var_140 = Me.CmdMainMenu
  loc_120966E:     Call 0.Method_Proc_1_120_12097200 ((var_86 - 1), var_144)
  loc_1209676:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E4)
  loc_120968C:     Set var_C0 = Me.CmdMainMenu
  loc_1209692:     Call 0.Method_Proc_1_120_12097200 ((var_86 - 1), var_11C)
  loc_120969A:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_AC)
  loc_12096AD:     var_AC = CVar(((CDbl() + CDbl(var_12C)) + CDbl(0))) 'Single
  loc_12096BC:     Set var_148 = Me.CmdMainMenu
  loc_12096C2:     Call 0.Method_Proc_1_120_12097200 (var_86, var_14C)
  loc_12096CA:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_AC)
  loc_12096E5:   End If
  loc_12096E5:   GoTo loc_1209411
  loc_12096E8: End If
  loc_12096EC: var_BC = CVar(Me.ImageList1) 'Address
  loc_12096F1: VerifyVarObj
  loc_12096FD: LateIdStAd
  loc_120970D: Set var_C4 = Nothing 
  loc_1209716: Set var_8C = Nothing
  loc_1209719: Call Proc_1_119_11C97B4(Me.TreeView1)
  loc_120971E: Exit Sub
End Sub

Public Sub Proc_1_121_1332554(arg_C, arg_10, arg_14, arg_18) '1332554
  'Data Table: 5C8390
  Dim var_B0 As String
  Dim unk_5C83CC As Connection15
  Dim var_86 As Integer
  Dim var_90 As Recordset15
  Dim var_DC As Variant
  Dim var_94 As Fields15
  Dim var_EC As Variant
  Dim var_A0 As Field20
  Dim var_110 As Variant
  Dim var_114 As PictureBox
  loc_1331DDC: Set var_94 = Me.CmdSubMenu
  loc_1331DE2: Call 0.Method_Proc_1_121_1332554C (var_96, var_86)
  loc_1331DF0: For var_9A =  To (var_96 - 1): 1 = var_9A 'Integer
  loc_1331E00:   Set var_94 = Me.CmdSubMenu
  loc_1331E06:   Call 0.Method_Proc_1_121_13325540 (var_86)
  loc_1331E17:   Me.CmdSubMenu.Unload var_A0
  loc_1331E26: Next var_9A 'Integer
  loc_1331E31: If (arg_C <> 0) Then
  loc_1331E79:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2<>" & CStr(arg_10) & " And OPT3=" & CStr(arg_14) & " And OPT4=" & CStr(arg_18)
  loc_1331E93: End If
  loc_1331E99: If (arg_10 <> 0) Then
  loc_1331EE1:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2=" & CStr(arg_10) & " And OPT3<>" & CStr(arg_14) & " And OPT4=" & CStr(arg_18)
  loc_1331EFB: End If
  loc_1331F01: If (arg_14 <> 0) Then
  loc_1331F49:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2=" & CStr(arg_10) & " And OPT3=" & CStr(arg_14) & " And OPT4<>" & CStr(arg_18)
  loc_1331F63: End If
  loc_1331F69: If (arg_18 <> 0) Then
  loc_1331FB1:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2=" & CStr(arg_10) & " And OPT3=" & CStr(arg_14) & " And OPT4=" & CStr(arg_18)
  loc_1331FCB: End If
  loc_1331FED: var_B0 = "Select [Option] Name,Cast(Code As Varchar) CODE from MenuHelp Where Flag<>'V' " & var_8C & " And UserName='" & MemVar_1F950C8
  loc_133200B: unk_5C83CC.Execute var_B0 & "' And CompCode='" & MemVar_1F95128 & "'", var_EC, -1
  loc_1332016: Set var_90 = var_94
  loc_1332030: var_86 = 0
  loc_1332033: ' Referenced from: 133253F
  loc_1332042: If Not(var_90.EOF) Then
  loc_1332073:   Set var_A4 = Me.CmdSubMenu
  loc_1332079:   Call 0.Method_Proc_1_121_13325540 (var_86, var_F0, CVar(var_90.Fields.Item("Name")))
  loc_1332081:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_86)
  loc_13320AC:   var_A0 = var_90.Fields.Item("Code")
  loc_13320BD:   var_110 = CVar(CStr(var_A0.Value)) 'String
  loc_13320CB:   Set var_A4 = Me.CmdSubMenu
  loc_13320D1:   Call 0.Method_Proc_1_121_13325540 (var_86, var_F0)
  loc_13320D9:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_110)
  loc_13320F3:   var_90.MoveNext
  loc_13320FE:   var_86 = (var_86 + 1)
  loc_1332112:   If (var_90.EOF = 0) Then
  loc_133211F:     Set var_94 = Me.CmdSubMenu
  loc_1332125:     Call 0.Method_Proc_1_121_13325540 (var_86, var_A0)
  loc_1332136:     Me.CmdSubMenu.Load var_A0
  loc_133214F:     Set var_A4 = Me.CmdSubMenu
  loc_1332155:     Call 0.Method_Proc_1_121_13325540 ((var_86 - 1), var_F0)
  loc_133215D:     Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_133218B:     Call 0.Method_Proc_1_121_13325540 ((var_86 - 1), var_A0)
  loc_1332193:     Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.CmdSubMenu)
  loc_13321BB:     If (CSng((CDbl() + CDbl(var_110))) > Me.PictSubMenu.Width) Then
  loc_13321C7:       Set var_94 = Me.CmdSubMenu
  loc_13321CD:       Call 0.Method_Proc_1_121_13325540 (0)
  loc_13321D5:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_13321F0:       Set var_A4 = Me.CmdSubMenu
  loc_13321F6:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1), var_F0)
  loc_13321FE:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_133221E:       Set var_A4 = Me.CmdSubMenu
  loc_1332224:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_133222C:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_F0)
  loc_1332242:       Set var_94 = Me.CmdSubMenu
  loc_1332248:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_1332250:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_133225F:       var_DC = CVar((CDbl() + CDbl(var_110))) 'Single
  loc_1332271:       Set var_114 = Me.CmdSubMenu
  loc_1332277:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1), var_11C)
  loc_133227F:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_13322A7:       Set var_94 = Me.CmdSubMenu
  loc_13322AD:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_13322B5:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_13322CD:       Set var_A4 = Me.CmdSubMenu
  loc_13322D3:       Call 0.Method_Proc_1_121_13325540 (var_86, var_F0)
  loc_13322DB:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_13322F1:     Else
  loc_13322FE:       Set var_A4 = Me.CmdSubMenu
  loc_1332304:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_133230C:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_F0)
  loc_1332322:       Set var_94 = Me.CmdSubMenu
  loc_1332328:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_1332330:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_133233F:       var_DC = CVar((CDbl() + CDbl(var_110))) 'Single
  loc_133234E:       Set var_114 = Me.CmdSubMenu
  loc_1332354:       Call 0.Method_Proc_1_121_13325540 (var_86, var_11C)
  loc_133235C:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_1332384:       Set var_94 = Me.CmdSubMenu
  loc_133238A:       Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_1332392:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_13323AA:       Set var_A4 = Me.CmdSubMenu
  loc_13323B0:       Call 0.Method_Proc_1_121_13325540 (var_86, var_F0)
  loc_13323B8:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_13323D5:       Set var_A4 = Me.CmdSubMenu
  loc_13323DB:       Call 0.Method_Proc_1_121_13325540 (var_86)
  loc_13323E3:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_F0)
  loc_1332408:       Set var_94 = Me.CmdSubMenu
  loc_133240E:       Call 0.Method_Proc_1_121_13325540 (var_86)
  loc_1332416:       Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_133243E:       If (CSng((CDbl() + CDbl(var_110))) > Me.PictSubMenu.Width) Then
  loc_133244A:         Set var_94 = Me.CmdSubMenu
  loc_1332450:         Call 0.Method_Proc_1_121_13325540 (0)
  loc_1332458:         Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_1332470:         Set var_A4 = Me.CmdSubMenu
  loc_1332476:         Call 0.Method_Proc_1_121_13325540 (var_86, var_F0)
  loc_133247E:         Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_133249E:         Set var_A4 = Me.CmdSubMenu
  loc_13324A4:         Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_13324AC:         Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_F0)
  loc_13324C2:         Set var_94 = Me.CmdSubMenu
  loc_13324C8:         Call 0.Method_Proc_1_121_13325540 ((var_86 - 1))
  loc_13324D0:         Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_13324DF:         var_DC = CVar((CDbl() + CDbl(var_110))) 'Single
  loc_13324EE:         Set var_114 = Me.CmdSubMenu
  loc_13324F4:         Call 0.Method_Proc_1_121_13325540 (var_86, var_11C)
  loc_13324FC:         Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_1332517:       End If
  loc_1332517:     End If
  loc_1332525:     Set var_94 = Me.CmdSubMenu
  loc_133252B:     Call 0.Method_Proc_1_121_13325540 (var_86, var_A0)
  loc_1332533:     Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_133253F:   End If
  loc_133253F:   GoTo loc_1332033
  loc_1332542: End If
  loc_1332548: If (var_86 > 0) Then
  loc_133254B: End If
  loc_1332550: Set var_90 = Nothing
  loc_1332553: Exit Sub
End Sub

Public Sub Proc_1_122_107B98C(arg_C) '107B98C
  'Data Table: 5C8390
  Dim var_B4 As Variant
  Dim MemVar_1F95204 As String
  Dim var_C6 As Integer
  loc_107B6F7: var_B4 = CVar("Memb" & "+") 'String
  loc_107B712: MemVar_1F95204 = CStr(var_B4 & Trim(CVar(CStr(arg_C))))
  loc_107B724: var_C6 = arg_C
  loc_107B72D: If (var_C6 = 0) Then
  loc_107B73A:   global_52 = New MemVisitEntry
  loc_107B74E:   Set var_CC = var_D0(arg_C)
  loc_107B754:   Call 0.Method_Proc_1_122_107B98C0 (var_D4, var_C6)
  loc_107B75C:   MemVar_1F95204 = MemVisitEntry.Menu.Caption
  loc_107B76E:   global_52.CAPTION = CVar(var_D4)
  loc_107B784:   Call global_52.Show
  loc_107B78D: Else
  loc_107B793:   If (var_C6 = 1) Then
  loc_107B7A0:     global_52 = New MemRenewalEntry
  loc_107B7B4:     Set var_CC = var_D0(arg_C)
  loc_107B7BA:     Call 0.Method_Proc_1_122_107B98C0 (var_D4)
  loc_107B7C2:      = MemRenewalEntry.Menu.Caption
  loc_107B7D4:     global_52.CAPTION = CVar(var_D4)
  loc_107B7EA:     Call global_52.Show
  loc_107B7F3:   Else
  loc_107B7F9:     If (var_C6 = 2) Then
  loc_107B806:       global_52 = New MemFacilityEntry
  loc_107B81A:       Set var_CC = var_D0(arg_C)
  loc_107B820:       Call 0.Method_Proc_1_122_107B98C0 (var_D4)
  loc_107B828:        = MemFacilityEntry.Menu.Caption
  loc_107B83A:       global_52.CAPTION = CVar(var_D4)
  loc_107B850:       Call global_52.Show
  loc_107B859:     Else
  loc_107B85F:       If (var_C6 = 3) Then
  loc_107B86C:         global_52 = New MemFacilityBilling
  loc_107B880:         Set var_CC = var_D0(arg_C)
  loc_107B886:         Call 0.Method_Proc_1_122_107B98C0 (var_D4)
  loc_107B88E:          = MemFacilityBilling.Menu.Caption
  loc_107B8A0:         global_52.CAPTION = CVar(var_D4)
  loc_107B8B6:         Call global_52.Show
  loc_107B8BF:       Else
  loc_107B8C5:         If (var_C6 = 4) Then
  loc_107B8D2:           global_52 = New MemBillPrintingModule
  loc_107B8E6:           Set var_CC = var_D0(arg_C)
  loc_107B8EC:           Call 0.Method_Proc_1_122_107B98C0 (var_D4)
  loc_107B8F4:            = MemBillPrintingModule.Menu.Caption
  loc_107B906:           global_52.CAPTION = CVar(var_D4)
  loc_107B91C:           Call global_52.Show
  loc_107B925:         Else
  loc_107B92B:           If (var_C6 = 5) Then
  loc_107B938:             global_52 = New MemAssistant
  loc_107B94C:             Set var_CC = var_D0(arg_C)
  loc_107B952:             Call 0.Method_Proc_1_122_107B98C0 (var_D4)
  loc_107B95A:              = MemAssistant.Menu.Caption
  loc_107B96C:             global_52.CAPTION = CVar(var_D4)
  loc_107B982:             Call global_52.Show
  loc_107B988:           End If
  loc_107B988:         End If
  loc_107B988:       End If
  loc_107B988:     End If
  loc_107B988:   End If
  loc_107B988: End If
  loc_107B988: Exit Sub
End Sub

Public Sub Proc_1_123_128A2D4
  'Data Table: 5C8390
  Dim var_98 As Menu
  Dim var_C0 As Variant
  Dim var_D8 As String
  Dim var_E0 As String
  Dim var_FC As String
  Dim unk_5C83CC As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As String
  Dim var_148 As Variant
  Dim var_AC As String
  Dim var_C4 As Fields15
  Dim var_128 As Variant
  Dim var_8C As Recordset15
  loc_1289D69: For Each var_94 In MemVar_1F95248
  loc_1289D76:   If TypeOf var_94 Is arg_E Then
  loc_1289D7F:     Set var_98 = var_94
  loc_1289D93:     If (var_98.Visible = &HFF) Then
  loc_1289DE4:       If ((InStr(1, var_98.Caption, "&", 0) > 0) And (InStr(1, var_98.Caption, " & ", 0) <= 0)) Then
  loc_1289E0F:         var_A0 = Replace(var_98.Caption, "&", vbNullString, 1, -1, 0)
  loc_1289E18:       Else
  loc_1289E1B:         var_C0 = var_94.CAPTION
  loc_1289E21:         var_A0 = CStr(var_C0)
  loc_1289E27:       End If
  loc_1289E2A:       Set var_C4 = var_98 
  loc_1289E44:       Set var_98 = var_C4
  loc_1289E50:       If (IsArray(var_C4) = &HFF) Then
  loc_1289E90:         var_E0 = "select MenuCaption AS  FORM_NAME from menuHelp1 WHERE MenuName='" & var_98.Name & "' And MenuIndex=" & CStr(var_98.Index)
  loc_1289EC1:         var_FC = var_E0 & " And MenuCaption='" & var_A0 & "' And UserName='" & MemVar_1F950C8 & "' and (CompCode='" & MemVar_1F95128 & "' OR CompCode='"
  loc_1289ED8:         unk_5C83CC.Execute var_FC & MemVar_1F95128 & " ')", var_C0, -1
  loc_1289EE3:         Set var_88 = var_C4
  loc_1289F0E:       Else
  loc_1289F42:         var_E0 = "select MenuCaption AS  FORM_NAME from menuHelp1 WHERE MenuName='" & var_98.Name & "' And MenuCaption='" & var_A0 & "' And UserName='"
  loc_1289F75:         unk_5C83CC.Execute var_E0 & MemVar_1F950C8 & "' and (CompCode='" & MemVar_1F95128 & "' OR CompCode='" & MemVar_1F95128 & " ')", var_C0, -1
  loc_1289F80:         Set var_88 = var_C4
  loc_1289FA2:       End If
  loc_1289FCD:       var_118 = "-"
  loc_1289FE4:       If CBool((var_88.RecordCount > 0) And (Trim(var_A0) <> var_118)) Then
  loc_1289FEC:         var_98.Visible = True
  loc_1289FF4:       Else
  loc_1289FFF:         var_C0 = Trim(var_A0)
  loc_128A007:         var_118 = "-"
  loc_128A012:         If CBool(var_C0 <> var_118) Then
  loc_128A018:           Set var_C4 = var_98 
  loc_128A032:           Set var_98 = var_C4
  loc_128A03E:           If (IsArray(var_C4) = &HFF) Then
  loc_128A046:             var_98.Visible = False
  loc_128A04E:           Else
  loc_128A053:             var_98.Enabled = False
  loc_128A058:           End If
  loc_128A058:         End If
  loc_128A058:       End If
  loc_128A058:     End If
  loc_128A058:   End If
  loc_128A05D:   Set var_98 = Nothing
  loc_128A063: Next
  loc_128A07D: var_AC = "SELECT Distinct Opt1 FROM menuHelp1 WHERE Opt1>0 AND Opt2=0 AND Opt3=0 AND Flag='V' AND UserName='SA' and CompCode='" & MemVar_1F95128
  loc_128A08B: var_D8 = var_AC & "' " & "AND Opt1 NOT IN(SELECT Distinct Opt1 FROM menuHelp1 WHERE Opt1>0 AND Opt3=0 AND MenuIndex<0 AND  Flag='N' AND UserName='SA' and CompCode='"
  loc_128A0A2: unk_5C83CC.Execute var_D8 & MemVar_1F95128 & "') ORDER By Opt1", var_C0, -1
  loc_128A0AD: Set var_88 = var_C4
  loc_128A0D7: If (var_88.RecordCount <= 0) Then
  loc_128A0DA:   Exit Sub
  loc_128A0DB:   ' Referenced from: 128A2C7
  loc_128A0DB: End If
  loc_128A0EA: If Not(var_88.EOF) Then
  loc_128A132:   var_148 = "SELECT MenuCaption,MenuName,MenuIndex FROM menuHelp1 WHERE Opt1=" & var_88.Fields.Item("Opt1").Value & " AND Opt2=0 AND UserName='SA' and (CompCode='" 
  loc_128A161:   unk_5C83CC.Execute CStr(var_148 & CVar(MemVar_1F95128) & "' OR CompCode='" & CVar(MemVar_1F95128 & " ')")), var_1CC, -1
  loc_128A16C:   Set var_8C = var_1D0
  loc_128A1A2:   If (var_8C.RecordCount > 0) Then
  loc_128A1AE:     For Each var_94 In MemVar_1F95248
  loc_128A1BB:       If TypeOf var_94 Is arg_E Then
  loc_128A200:         If (var_94.Name = var_94.Recordset15.Fields.Item("menuNAME").Value) Then
  loc_128A20B:           var_94.Visible = False
  loc_128A25C:           var_128 = CVar(Replace(CStr(var_94.Recordset15.Fields.Item("MenuCaption").Value), "&", vbNullString, 1, -1, 0)) 'String
  loc_128A295:           If (InStr(1, Ucase(var_94.Name), "EXIT", 0) > 0) Then
  loc_128A29F:             var_94.Visible = True
  loc_128A2AA:             var_94.Enabled = True
  loc_128A2AE:           End If
  loc_128A2AE:         End If
  loc_128A2AE:       End If
  loc_128A2B1:     Next
  loc_128A2BA:     var_8C.MoveNext
  loc_128A2BF:   End If
  loc_128A2C2:   var_88.MoveNext
  loc_128A2C7:   GoTo loc_128A0DB
  loc_128A2CA: End If
  loc_128A2CF: Set var_88 = Nothing
  loc_128A2D2: Exit Sub
End Sub

Public Sub Proc_1_124_EEAB18(arg_C) 'EEAB18
  'Data Table: 5C8390
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EEAA86: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EEAAA5: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EEAAC8:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EEAAE4:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EEAAEC:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EEAAF1:   var_8C = CStr(var_108)
  loc_EEAB05: Next var_B8 'Integer
  loc_EEAB0D: var_88 = var_8C
  loc_EEAB10: Proc_1_124_EEAB18 = 
End Sub

Public Sub Proc_1_125_EEE6EC(arg_C) 'EEE6EC
  'Data Table: 5C8390
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EEE631: Randomize(var_B0)
  loc_EEE652: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EEE662: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EEE67B: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EEE6B7:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EEE6BF:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EEE6C4:   var_8C = CStr(var_10C)
  loc_EEE6D8: Next var_B8 'Integer
  loc_EEE6E0: var_88 = var_8C
  loc_EEE6E3: Proc_1_125_EEE6EC = 
End Sub

Public Sub Proc_1_126_106FF00
  'Data Table: 5C8390
  Dim var_BC As Integer
  Dim var_C4 As Variant
  loc_106FC87: If (Me.PictMainMenu.Visible = &HFF) Then
  loc_106FC90:   var_BC = 6
  loc_106FCB0:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106FCB8:   var_C4._ObjectDefault = var_C4
  loc_106FCD0: Else
  loc_106FCDC:   Me.PictMainMenu.Visible = False
  loc_106FCEA:   var_BC = 6
  loc_106FD0A:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106FD12:   var_C4._ObjectDefault = var_C4
  loc_106FD27: End If
  loc_106FD42: If (Me.PictTitleBar.Visible = &HFF) Then
  loc_106FD4B:   var_BC = 7
  loc_106FD6B:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106FD73:   var_C4._ObjectDefault = var_C4
  loc_106FD8B: Else
  loc_106FD97:   Me.PictTitleBar.Visible = False
  loc_106FDA5:   var_BC = 7
  loc_106FDC5:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106FDCD:   var_C4._ObjectDefault = var_C4
  loc_106FDE2: End If
  loc_106FE1A: Set var_C4 = Me.PictTitleBar
  loc_106FE35: If (((Me.PictMainMenu.Visible = &HFF) Or (Me.PictSubMenu.Visible = &HFF)) Or (var_C4.Visible = &HFF)) Then
  loc_106FE3E:   var_BC = 8
  loc_106FE5E:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106FE66:   var_C4._ObjectDefault = var_C4
  loc_106FE7E: Else
  loc_106FE8A:   Me.PictMainMenu.Visible = False
  loc_106FE9E:   Me.PictSubMenu.Visible = False
  loc_106FEB2:   Me.PictTitleBar.Visible = False
  loc_106FEC0:   var_BC = 8
  loc_106FEE0:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106FEE8:   var_C4._ObjectDefault = var_C4
  loc_106FEFD: End If
  loc_106FEFD: Exit Sub
End Sub
