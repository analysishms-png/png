# MAIN SETUP — VB6 → PYTHON FILE MAPPING

## VB6 Source Files → Python Implementation

### General Setup (Main Setup > General Setup)

| VB6 Form | VB6 Table | Python Core | Python UI |
|----------|-----------|-------------|-----------|
| FrmTaxMast.frm | RevMast (FieldType='T') | core/taxmaster.py | ui/general_setup_tabs_ui.py (TaxMasterTab) |
| FrmTaxStruMast.frm | TaxStru | core/taxstru.py | ui/general_setup_tabs_ui.py (TaxStructureTab) |
| FrmPayTypeMast.frm | RevMast (PAYTYPE<>'') | core/paymenttype.py | ui/general_setup_tabs_ui.py (PaymentTypeTab) |
| frmEnviro.frm | Enviro | core/enviro.py | ui/general_setup_tabs_ui.py (ParameterTab) |
| frmPrintModule.frm | PrintMast | core/printmast.py | ui/general_setup_tabs_ui.py (PrintingParametersTab) |
| frmMod_Print.frm | PrinterSetup | core/printersetup.py | ui/general_setup_tabs_ui.py (PrintingSetupTab) |
| (lookup) | PrintFormats | core/printformats.py | (used by printmast) |

### Front Office (Main Setup > Front Office)

| VB6 Form | VB6 Table | Python Core | Python UI |
|----------|-----------|-------------|-----------|
| FaCountryMast.frm | Country | core/country.py | ui/front_office_setup_ui.py (CountryTab) |
| FaStateMast.frm | State | core/state.py | ui/front_office_setup_ui.py (StateTab) |
| FaCityMast.frm | City | core/city.py | ui/front_office_setup_ui.py (CityTab) |
| FrmMarketSeg.frm | MarketSeg | core/marketsegment.py | ui/front_office_setup_ui.py (MarketSegmentTab) |
| FrmBusinessSrc.frm | BussSource | core/businesssource.py | ui/front_office_setup_ui.py (BusinessSourceTab) |
| FrmGuestStat.frm | GuestStat | core/gueststatus.py | ui/front_office_setup_ui.py (GuestStatusTab) |
| frmFixedChargeMast.frm | FixedCharge | core/fixcharge.py | ui/front_office_setup_ui.py (ChargeMasterTab) |
| FrmRoomCatMast.frm | RoomCat | core/roomcategory.py | ui/front_office_setup_ui.py (RoomCategoryTab) |
| FrmRoomMast.frm | RoomMast | core/roommaster.py | ui/front_office_setup_ui.py (RoomMasterTab) |
| CompMast.frm | GroupProf | core/companymaster.py | ui/front_office_setup_ui.py (CompanyMasterTab) |
| FrmForeignExMast.frm | ForEx | core/forexmaster.py | ui/front_office_setup_ui.py (ForexMasterTab) |
| FrmRoomFeatureMast.frm | RoomFeature | core/general_setup.py | ui/general_setup_ui.py (RoomFeatAPI) |

### Point of Sale (Main Setup > Point of Sale)

| VB6 Form | VB6 Table | Python Core | Python UI |
|----------|-----------|-------------|-----------|
| FrmWaiterMast.frm | Waiter | core/pos_masters.py | ui/pos_setup_ui.py (ServerMasterTab) |
| FrmTableMast.frm | TableMast | core/pos_table.py | ui/pos_setup_ui.py (TableMasterTab) |
| frmSessionMast.frm | SessionMast | core/pos_masters.py | ui/pos_setup_ui.py (SessionMasterTab) |
| FrmSchemeMast.frm | SchemeMast | core/pos_masters.py | ui/pos_setup_ui.py (SchemeMasterTab) |
| FrmNCType.frm | NCTypeMast | core/pos_masters.py | ui/pos_setup_ui.py (NCTypeTab) |
| FrmDeliveryBoyMast.frm | DeliveryBoy | core/pos_masters.py | ui/pos_setup_ui.py (DeliveryBoyTab) |

### Members Mgmt (Main Setup > Members Mgmt)

| VB6 Form | VB6 Table | Python Core | Python UI |
|----------|-----------|-------------|-----------|
| MemCatMast.frm | MemCatMast | core/members_masters.py | ui/other_setup_ui.py (_MembersCategoryTab) |
| MemRevMast.frm | MemRevMast | core/members_masters.py | ui/other_setup_ui.py (_MembersRevenueTab) |
| MemFacilityMast.frm | MemFacilityMast | core/members_masters.py | ui/other_setup_ui.py (_MembersFacilityTab) |

### Banquet (Main Setup > Banquet)

| VB6 Form | VB6 Table | Python Core | Python UI |
|----------|-----------|-------------|-----------|
| FrmVenueFeat.frm | VenueFeatures | core/banquet_masters.py | ui/other_setup_ui.py (_VenueFeaturesTab) |
| FrmVenueMast.frm | VenueMast | core/banquet_masters.py | ui/other_setup_ui.py (_VenueMasterTab) |
| FrmHallItemCatMast.frm | HallItemCatMast | core/banquet_masters.py | ui/other_setup_ui.py (_MenuCategoryTab) |
| FrmHallItemGroupMast.frm | HallItemGroupMast | core/banquet_masters.py | ui/other_setup_ui.py (_ItemGroupTab) |
| FrmHallMenuItem.frm | HallMenuItem | core/banquet_masters.py | ui/other_setup_ui.py (_MenuItemTab) |
| HallMenuCatalog.frm | CatalogMast | core/banquet_masters.py | ui/other_setup_ui.py (_CatalogMasterTab) |

### HR/Payroll (Main Setup > HR/Payroll)

| VB6 Form | VB6 Table | Python Core | Python UI |
|----------|-----------|-------------|-----------|
| PrDesigMast.frm | Desig | core/hr_masters.py | ui/other_setup_ui.py (_DesignationTab) |
| PrCategoryMast.frm | EmpCategory | core/hr_masters.py | ui/other_setup_ui.py (_EmployeeCategoryTab) |
| FrmHoliday.frm | Holiday | core/hr_masters.py | ui/other_setup_ui.py (_HolidayTab) |
| FrmEmployee.frm | Employee | core/hr_masters.py | ui/other_setup_ui.py (_EmployeeTab) |

### EPABX (Main Setup > EPABX)

| VB6 Form | VB6 Table | Python Core | Python UI |
|----------|-----------|-------------|-----------|
| TelCallTypeMast.frm | TelCallType | core/epabx_masters.py | ui/other_setup_ui.py (_CallTypeTab) |
| TelExtensionMast.frm | TelExt | core/epabx_masters.py | ui/other_setup_ui.py (_TelExtTab) |
| TelCallCodeMast.frm | TelCallCode | core/epabx_masters.py | ui/other_setup_ui.py (_CallCodeTab) |

## Database Tables Created

| Table | Purpose | Created By |
|-------|---------|------------|
| PrintMast | Printing Parameters (module print registry) | create_print_tables2.py |
| PrinterSetup | Printing Setup (printer assignments) | create_print_tables2.py |
| PrintFormats | Print format lookup (FOM/POS) | create_print_tables2.py |

## UI Entry Points

| Window | Function | File |
|--------|----------|------|
| General Setup | open_general_setup() | ui/general_setup_tabs_ui.py |
| Front Office Setup | open_front_office_setup() | ui/front_office_setup_ui.py |
| Point of Sale Setup | open_pos_setup() | ui/pos_setup_ui.py |
| Members Mgmt | open_members_mgmt() | ui/other_setup_ui.py |
| Banquet Setup | open_banquet_setup() | ui/other_setup_ui.py |
| HR/Payroll Setup | open_hr_payroll_setup() | ui/other_setup_ui.py |
| EPABX Setup | open_epabx_setup() | ui/other_setup_ui.py |