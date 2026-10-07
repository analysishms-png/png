# 02_Main_Setup - Screens

Module id: builder `&HC` (decimal 12) · menu_tree hex `C` · `menuHelp.OPT1 = 12` (root caption `Main Setup`).

Menu source: `19_VB6_Logic/menu_tree_raw.txt` L46-L168 (123 rows) + 1 stray at L17.
Menu registration source: `EXTRAS.text` **124** `Proc_165_0_14C1708(..., &HC, ...)` calls — 123 inside
`Proc_165_1_1EF3904` (L475938-L476204) + 1 stray inside `Proc_4_36_13480F8`
(`Member Select Category`, L11677). `[VERIFIED-VB6]`

## 0. Which menu surface is authoritative?

There are **two independent menu surfaces**, and they do not agree:

| Surface | Source | Main Setup leaf rows |
|---|---|---|
| Static builder registrations | `Proc_165_0_14C1708` calls, module `&HC` — 124 calls, **113 leaf rows** (105 type `0` + 8 type `2`) → **99 unique leaf captions** | `EXTRAS.text` L475938-L476204 + stray L11677 `[VERIFIED-VB6]` |
| Per-user DB menu | `MenuHelp_SA_tree.txt` rows with `OPT1=12` — **92 rows** = 10 structural + **82 leaves** → **75 unique leaf captions** | `[VERIFIED-SQL]` |

At runtime the menu is built **from the database**, not from the builder calls:

- module tabs: `Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='...'` (`EXTRAS.text` L8279-L8280) `[VERIFIED-VB6]`
- sub-menu items: `Select [Option] Name,Cast(Code As Varchar) CODE from MenuHelp Where Flag<>'V' ... And UserName='...'` (`EXTRAS.text` L8392-L8393) `[VERIFIED-VB6]`
- click: `Select OPT1,OPT2,OPT3,OPT4,FLAG,CODE from MenuHelp Where Code=<n> And UserName='...'` (`EXTRAS.text` L4644/L4647) `[VERIFIED-VB6]`
- dispatch key resolution: `Select [Option] From MenuHelp Where Code=<n> AND UserName='...' and compcode='...'` (`Proc_165_3_EEA710`, `EXTRAS.text` L480844) `[VERIFIED-VB6]`

So `menuHelp.[Option]` is the canonical dispatch key; `Proc_165_0` registrations are a legacy/seed
surface. Because the DB row is the key, a caption that differs by even one space (e.g. `Category Master`
vs `Category  Master`) routes to a different form. `[INFERRED]`

### Dispatch context variables (set once per click)

| Variable | Source | Used for |
|---|---|---|
| `var_94` | `Proc_165_3_EEA710(arg_C, var_130)` = `MenuHelp.[Option]` | breadcrumb, `EXTRAS.text` L477039-L477045 |
| `var_AC` | `MenuHelp.OutletCode` via `Proc_6_37_E618F4` | outlet routing (`"BANQ"` / `"ODC"`), L477052 |
| `var_A8` | `Proc_6_37_E618F4(Module_name, UPrivilege)` | module routing (`"MemMas"` / `"MallMgmt"`), L477050 |
| `MemVar_1F810B8` | `Enviro` read at L477023-L477025 | supervisor gate (POS Recycle / Data Transfer) |

`[VERIFIED-VB6]`

### Registered but no menu-help group at `OPT2=18`

`menuHelp` `OPT1=12` groups are `11 General Setup, 12 Front Office, 13 Point of Sale, 14 Members Mgmt,
15 Banquet, 16 Inventory, 17 HR/Payroll, 19 Finance, 20 Utility` — **`OPT2=18` is skipped**. `[VERIFIED-SQL]`

---

## 1. General Setup (group header `EXTRAS.text` L475940, type 3, parent `vbNullString`)

`menu_tree_raw` L47-L55 · `menuHelp` `General Setup|12|11|0|0|N` (6 leaves)

| Menu caption | menu_tree | Builder reg. | Type | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|---|
| Tax Master | L48 | L475942 | 0 | 0 | 11 | L477566 | `FrmTaxMast` | `[VERIFIED-VB6]` |
| Tax Structure | L49 | L475944 | 0 | 1 | 12 | L477572 | `FrmTaxStruMast` | `[VERIFIED-VB6]` |
| Payment Type | L50 | L475946 | 0 | 2 | 13 | L477578 | `FrmPayTypeMast` | `[VERIFIED-VB6]` |
| Parameter | L51 | L475948 | 0 | 3 | 14 | L477584 | `frmEnviro` | `[VERIFIED-VB6]` |
| Revenue Group Setting | L52 | L475950 | 0 | 4 | **—** | L477590 | `frmRevGroup` | `[VERIFIED-VB6]` |
| Printing Parameters | L53 | L475952 | 0 | 5 | 16 | L480363 | `frmPrintModule` | `[VERIFIED-VB6]` |
| Printing Setup | L54 | L475954 | 0 | 6 | 17 | L480368 | `frmMod_Print` | `[VERIFIED-VB6]` |
| Revenue Wise Budget Entry | L55 | L475956 | **2** | 7 | **—** | L480373 | `FrmRevenueWiseBudget` | `[VERIFIED-VB6]` |

Builder index is contiguous 0-7. `menuHelp` skips `OPT3=15` and omits the last two captions. `[VERIFIED-SQL]`

## 2. Front Office Setup (group header L475959, type 3, parent `vbNullString`)

`menu_tree_raw` L56-L74 · `menuHelp` `Front Office|12|12|0|0|N` (12 leaves) — caption drift:
builder says `Front Office Setup`, DB says `Front Office`. `[VERIFIED-VB6]`/`[VERIFIED-SQL]`

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| Country Master | L57 | L475961 | 0 | *(only `12\|20\|28` Utility)* | L477596 | `FaCountryMast` | `[VERIFIED-VB6]` |
| State Master | L58 | L475963 | 1 | *(only `12\|20\|29`)* | L477602 | `FaStateMast` | `[VERIFIED-VB6]` |
| City Master | L59 | L475965 | 2 | *(only `12\|20\|30`)* | L477608 | `FaCityMast` | `[VERIFIED-VB6]` |
| Market Segment | L60 | L475967 | 4 | 14 | L477614 | `FrmMarketSeg` | `[VERIFIED-VB6]` |
| Business Source | L61 | L475969 | 5 | 15 | L477620 | `FrmBusinessSrc` | `[VERIFIED-VB6]` |
| Guest Status | L62 | L475971 | 6 | 16 | L477626 | `FrmGuestStat` | `[VERIFIED-VB6]` |
| Charge Master | L63 | L475973 | 7 | 17 | L477632 | `FrmChargeMast` | `[VERIFIED-VB6]` |
| Fixed Charge | L64 | L475975 | 8 | 18 | L477716 | `frmFixedChargeMast` | `[VERIFIED-VB6]` |
| Package Master | L65 | L475977 | 9 | **—** | L477215 | `FrmPackageMast` (`MyType="Package"`) | `[VERIFIED-VB6]` |
| Plan Master | L66 | L475979 | `&HC` | 20 | L477230 | `FrmPackageMast` (`MyType="Plan"`) **or** `FrmPlanPackMast` | `[VERIFIED-VB6]` |
| Season Master | L67 | L475981 | `&HD` | **—** | L477644 | `frmSeasonMast` | `[VERIFIED-VB6]` |
| Room Features | L68 | L475983 | `&HE` | 22 | L477650 | `FrmRoomFeatureMast` | `[VERIFIED-VB6]` |
| Room Category | L69 | L475985 | `&HF` | 23 | L477656 | `FrmRoomCatMast` | `[VERIFIED-VB6]` |
| Room Master | L70 | L475987 | `&H10` | 24 | L477662 | `FrmRoomMast` | `[VERIFIED-VB6]` |
| Company Master | L71 | L475989 | `&H11` | 25 (also `12\|20\|31`) | L477668 | `CompMast` | `[VERIFIED-VB6]` |
| Forex Master | L72 | L475991 | `&H14` | **—** | L477674 | `FrmForeignExMast` | `[VERIFIED-VB6]` |
| Guest History | L73 | L475993 | `&H15` | 27 | L477722 | `GuestProfile` | `[VERIFIED-VB6]` |
| Room Display | L74 | L475995 | `&H17` | 29 | L477728 | `FdRoomDisplay` | `[VERIFIED-VB6]` |

`Plan Master` is a real two-way branch: it reads
`Select PlanMastType from Enviro where logsite_code='<site>'` and opens `FrmPackageMast` with
`MyType = "Plan"` when the value is `Advanced`, otherwise `FrmPlanPackMast`. `EXTRAS.text` L477230-L477251. `[VERIFIED-VB6]`

Builder index gaps: 3, `&H12`, `&H13`, `&H16`.

## 3. Point of Sale Setup (group header L475999, type 3, parent `vbNullString`)

`menu_tree_raw` L75-L92 · `menuHelp` `Point of Sale|12|13|0|0|N` (13 leaves)

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| Item List | L76 | L476001 | 2 | 15 | **L477692 (`If Not`)** | `FrmItemMast` | `[VERIFIED-VB6]` see §13 |
| Scheme Master | L77 | L476003 | 3 | **—** | L477700 | `SchemeMast` | `[VERIFIED-VB6]` |
| Server Master | L78 | L476005 | 4 | 13 | L477706 | `FrmWaiterMast` | `[VERIFIED-VB6]` |
| Setup Outlet | L79 | L476007 | 6 | 11 | L477816 | `OutLetMast` | `[VERIFIED-VB6]` |
| Table Master | L80 | L476009 | 7 | 14 | L477822 | `RsTableMast` | `[VERIFIED-VB6]` |
| Menu Group | L81 | L476011 | 8 | 16 | L477840 | `FrmItemGroupMast` (`RestType="='Finish'"`) | `[VERIFIED-VB6]` |
| Menu Category | L82 | L476013 | 9 | 17 | L477828 | `FrmHallItemCatMast` (BANQ/ODC) **or** `FrmItemCatMast` | `[VERIFIED-VB6]` |
| Menu Item | L83 | L476015 | `&HA` | 18 | L477855 | `HallMenuItemEntry` (BANQ/ODC) **or** `RsMenuItemEntry` | `[VERIFIED-VB6]` |
| Outlet Bill Sundry Setting | L84 | L476017 | `&HB` | 12 | L480378 | `OutLetSundry` | `[VERIFIED-VB6]` |
| Menu Item Rate | L85 | L476019 | `&HC` | 19 | L477881 | `FrmMenuRate` | `[VERIFIED-VB6]` |
| Session Master | L86 | L476021 | `&HD` | 21 | L477887 | `frmSessionMast` | `[VERIFIED-VB6]` |
| Open Item Consumption | L87 | L476023 | `&HE` | 22 | L477734 | `FrmConsumMast9999` | `[VERIFIED-VB6]` |
| Happy Hours | L88 | L476025 | `&HF` | **—** | L480747 | `pHappyHours` | `[VERIFIED-VB6]` |
| Happy Hours [ Fee Items ] | L89 | L476027 | `&H10` | **—** | **L480752 (empty)** | — | `[VERIFIED-VB6]` see §13 |
| Combo Pack | L90 | L476029 | `&H11` | **—** | L480758 | `frmComboMast` | `[VERIFIED-VB6]` |
| NC Type | L91 | L476031 | `&H12` | 27 | L477893 | `FrmNCType` | `[VERIFIED-VB6]` |
| Customer History | L92 | L476033 | `&H13` | 28 | L477899 | `frmGuestInfo` | `[VERIFIED-VB6]` |

`Menu Category` and `Menu Item` both branch on `var_AC` (`MenuHelp.OutletCode`, L477052):
`If (var_AC = "BANQ") Or (var_AC = "ODC")` → hall/banquet form, `Else` → restaurant form
(`FrmItemCatMast` L477836 / `RsMenuItemEntry` L477868). `EXTRAS.text` L477828-L477874. `[VERIFIED-VB6]`

There is also an unregistered sibling branch `Outlet Sundry Setting` at L477875 → `OutLetSundry`
(registered caption is `Outlet Bill Sundry Setting`). See §5b.

## 4. Banquet (group header L476037, type 3, parent `vbNullString`)

`menu_tree_raw` L93 header + L94-L101 children registered under group name **`Indoor Catering`**,
which itself has **no group registration** — see §14 (group integrity). `[VERIFIED-VB6]`

`menuHelp` `Banquet|12|15|0|0|N` (8 leaves, caption drift: builder `Banquet` = DB `Banquet` ✓)

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| Events | L94 | L476039 | 0 | 11 | L479716 | `FrmEventMast` | `[VERIFIED-VB6]` |
| Venue Features | L95 | L476041 | 1 | 12 | L479722 | `FrmVenueFeat` | `[VERIFIED-VB6]` |
| Venue Master | L96 | L476043 | 2 | 13 | L479728 | `FrmVenueMast` | `[VERIFIED-VB6]` |
| Menu Category | L97 | L476045 | 3 | 14 | L477828 | `FrmHallItemCatMast` / `FrmItemCatMast` | `[VERIFIED-VB6]` |
| Item Group | L98 | L476047 | 4 | 15 | L477929 | `HallItemGroupMast` (BANQ/ODC) **or** `FrmItemGroupMastRaw` | `[VERIFIED-VB6]` |
| Menu Item | L99 | L476049 | 5 | 16 | L477855 | `HallMenuItemEntry` / `RsMenuItemEntry` | `[VERIFIED-VB6]` |
| Catalog Master | L100 | L476051 | 6 | 17 | L479735 | `HallMenuCatalog` | `[VERIFIED-VB6]` |
| Banquet Bill Sundry Setting | L101 | L476053 | 7 | 18 | L479742 | `HallSundry` | `[VERIFIED-VB6]` |

`Item Group` else-branch sets `RestType = "<>'Finish'"` on `FrmItemGroupMastRaw` (L477936) — the mirror
image of POS `Menu Group` (`RestType="='Finish'"`, L477840-region). `[VERIFIED-VB6]`

## 5. Members Mgmt Setup (group header L476057, parent `Main Setup`)

`menu_tree_raw` L102 header + L103-L112 children · `menuHelp` `Members Mgmt|12|14|0|0|N` (3 + 1 stray)

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| Category Master | L103 | L476059 | 0 | 11 | L480484 | `MemCatMast` | `[VERIFIED-VB6]` |
| Member Master | L104 | L476061 | 1 | 12 | **L477740** (first match) | `MembershipMast` | `[VERIFIED-VB6]` |
| Corporate Member Master | L105 | L476063 | 2 | **—** | **none** | — | `[VERIFIED-VB6]` see §13 |
| Revenue Master | L106 | L476065 | 3 | **—** | L480494 | `MemberShipRevenueMast` | `[VERIFIED-VB6]` |
| Facility Master | L107 | L476067 | 4 | **—** | L480499 (first) | `memFacilityMast` if `var_A8="MemMas"`, else `FrmFacilityMast` (L480504) | `[VERIFIED-VB6]` |
| Category wise Revenue | L108 | L476069 | 5 | **—** | L480508 | `memCatRevMast` | `[VERIFIED-VB6]` |
| Category wise Facility | L109 | L476071 | 6 | **—** | L480513 | `memCategoryFacilities` | `[VERIFIED-VB6]` |
| Member Bill Sundry Setting | L110 | L476073 | **2** | **—** | **none** | — | `[VERIFIED-VB6]` see §13 |
| Environment Settings | L111 | L476075 | 8 | 19 | L480528 | `MemberEnviro` | `[VERIFIED-VB6]` |
| Member Age Wise Revenue | L112 | L476077 | 9 | **—** | L480518 | `memAgeRevMast` | `[VERIFIED-VB6]` |
| Member Select Category | **L17 (stray)** | L11677 (stray, group `Members Mgmt`) | `&HA` | 20 | L480523 | `MemSelectCategory` | `[VERIFIED-VB6]` |

`Member Master` and `Facility Master` each have a **second, unreachable** branch later in the
`Loop Until` region (`MemCatMast` L480489, `FrmFacilityMast` L480789) — the first match wins and
`GoTo loc_1E2A553`s out. `[VERIFIED-VB6]`

## 6. Material Mgmt Setup (group header L476081, parent `Main Setup`)

`menu_tree_raw` L113 header + L114-L123 children · `menuHelp` `Inventory|12|16|0|0|N` (9 leaves)
— caption drift: builder `Material Mgmt Setup` vs DB `Inventory`. `[VERIFIED-SQL]`

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| Party Master | L114 | L476083 | 0 | 11 | L477917 | `FrmParty` | `[VERIFIED-VB6]` |
| Department | L115 | L476085 | 1 | 12 (also `12\|20\|32`) | L477923 | `DepartMast` | `[VERIFIED-VB6]` |
| Item Group | L116 | L476087 | 2 | 13 | L477929 | `HallItemGroupMast` / `FrmItemGroupMastRaw` | `[VERIFIED-VB6]` |
| Item Category | L117 | L476089 | 3 | 14 | L477942 | `FrmItemCatRaw` | `[VERIFIED-VB6]` |
| Item Entry | L118 | L476091 | 4 | 15 | **L477948 (`If Not`)** | `FrmItemMastRaw` | `[VERIFIED-VB6]` see §13 |
| Consumption Master | L119 | L476093 | **2** | **—** | L477956 | `FrmConsumMast` | `[VERIFIED-VB6]` |
| Purchase Sundry Setting | L120 | L476095 | 6 | 17 | L477746 | `DepartSundry` | `[VERIFIED-VB6]` |
| Opening Stock | L121 | L476097 | 8 | 19 | L477758 | `FrmOPStock` | `[VERIFIED-VB6]` |
| Item  List *(two spaces)* | L122 | L476099 | 9 | 20 | **L477693** | `FrmItemMast` | `[VERIFIED-VB6]` |
| Enviro Inventry | L123 | L476101 | `&HB` | 22 | L477962 | `frmPurEnviro` | `[VERIFIED-VB6]` |

`menuHelp` carries **both** `Item List|12|13|15` (POS, one space) and `Item  List|12|16|20`
(Inventory, two spaces) as distinct rows. `[VERIFIED-SQL]`

## 7. PayRoll Setup (group header L476105, parent `Main Setup`)

`menu_tree_raw` L124 header + L125-L128 children · `menuHelp` `HR/Payroll|12|17|0|0|N` (4 leaves)
— caption drift: builder `PayRoll Setup` vs DB `HR/Payroll`. `[VERIFIED-SQL]`

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp row | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| Designation Master | L125 | L476107 | 0 | `12\|17\|11` | L477974 | `PrDesigMast` | `[VERIFIED-VB6]` |
| Category Master | L126 | L476109 | 1 | **absent** (DB has `Category  Master`, 2 spaces) | L480484 → **`MemCatMast`** | see §14 collision | `[VERIFIED-VB6]` |
| Holiday Master | L127 | L476111 | 2 | `12\|17\|13` | L477986 | `prHoliday` | `[VERIFIED-VB6]` |
| Employee Master | L128 | L476113 | 3 | `12\|17\|14` | L477992 | `PrEmployee` | `[VERIFIED-VB6]` |

The DB row `Category  Master|12|17|12|0|E` (two spaces) dispatches to `New PrCategoryMast` at
`EXTRAS.text` L477981 — a **different** branch from the builder's one-space `Category Master`. `[VERIFIED-VB6]`

## 8. EPABX Setup (group header L476117, parent `Main Setup`)

`menu_tree_raw` L129 header + L130-L132 children · **no `menuHelp` group** — the three captions have
no `OPT1=12` row for user SA. `[VERIFIED-SQL]`

| Menu caption | menu_tree | Builder reg. | Idx | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|
| Call Type Master | L130 | L476119 | 1 | L477998 | `MemVar_1F8236C` (pre-instantiated, not `New`) | `[VERIFIED-VB6]` |
| Extension Master | L131 | L476121 | 2 | L478004 | `MemVar_1F82380` | `[VERIFIED-VB6]` |
| Call Codes Master | L132 | L476123 | 3 | L478010 | `MemVar_1F82394` | `[VERIFIED-VB6]` |

Index starts at 1 (0 is missing). A fourth sibling `Call Control Master` (L478016 → `MemVar_1F823A8`)
has **no** registration and **no** `menuHelp` row — see §5b. `[VERIFIED-VB6]`

## 9. Financial Setup (group header L476127, parent `Main Setup`)

`menu_tree_raw` L133 header + L134-L147 children · `menuHelp` `Finance|12|19|0|0|N` (10 leaves).
Cross-listed in `03_Finance/screens/screens.md` §7. `[VERIFIED-VB6]`/`[VERIFIED-SQL]`

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| Group Accounts | L134 | L476129 | 0 | 11 | L478022 | `FaGrEnt` | `[VERIFIED-VB6]` |
| Ledger Accounts | L135 | L476131 | 1 | 12 (also `12\|20\|33`) | L478029 | `FaSubGroup` | `[VERIFIED-VB6]` |
| Narration Master | L136 | L476133 | 2 | 13 | L478140 | `FaNarrMast` | `[VERIFIED-VB6]` |
| T.D.S. Category | L137 | L476135 | 3 | 14 | L478147 | `FaTDSCat` | `[VERIFIED-VB6]` |
| FA Environment | L138 | L476137 | 4 | 15 | L478155 | *(no `New` — `Call 0.Method_arg_54` / `Method_arg_2B0`)* | `[VERIFIED-VB6]` |
| Voucher Environment | L139 | L476139 | 5 | 16 | L478161 | *(same indirect pattern)* | `[VERIFIED-VB6]` |
| Year End Updation | L140 | L476141 | 7 | 18 (also `12\|20\|22`) | **L477223** (inside `If Not (... "Year End Updation ")`) | `frmYearEnd` | `[VERIFIED-VB6]` |
| Current Balance Updation | L141 | L476143 | 8 | 19 | L480459 | `FaCurrBalUpdate` | `[VERIFIED-VB6]` |
| Country Master | L142 | L476145 | 9 | *(Utility only)* | L477596 | `FaCountryMast` | `[VERIFIED-VB6]` |
| State Master | L143 | L476147 | `&HA` | *(Utility only)* | L477602 | `FaStateMast` | `[VERIFIED-VB6]` |
| City Master | L144 | L476149 | `&HB` | *(Utility only)* | L477608 | `FaCityMast` | `[VERIFIED-VB6]` |
| Delete Message | L145 | L476151 | `&HC` | **—** | L477764 | `EmptyInbox` | `[VERIFIED-VB6]` |
| Account Merging | L146 | L476153 | `&HD` | 24 | **L478173** (first) | `AccountMerg` | `[VERIFIED-VB6]` |
| Voucher Serialisation | L147 | L476155 | `&HE` | 25 | L478180 | `FrmSerialiseVr` | `[VERIFIED-VB6]` |

Index 6 is missing. Second, empty branches exist for `Year End Updation` (L478170-L478172) and
`Account Merging` (L478207-L478209) — unreachable because the first match `GoTo`s out. `[VERIFIED-VB6]`

## 10. Utility (group header L476158, parent `Main Setup`)

`menu_tree_raw` L148 header + L149-L168 children · `menuHelp` `Utility|12|20|0|0|N` (15 + 1 stray)

| Menu caption | menu_tree | Builder reg. | Idx | menuHelp `OPT3` | Dispatch | Form | Evidence |
|---|---|---|---|---|---|---|---|
| User Master | L149 | L476160 | 0 | 11 | L478187 | `UserMast` | `[VERIFIED-VB6]` |
| Permissions | L150 | L476162 | 1 | 12 | L478193 | `UserPermission` | `[VERIFIED-VB6]` |
| Backup Data | L151 | L476164 | 8 | 14 | L478203 | *(no form — `Proc_165_6_1342C90(var_CC)`)* | `[VERIFIED-VB6]` |
| Sundry Master | L152 | L476166 | `&HC` | 17 | L478218 | `SundryMast` | `[VERIFIED-VB6]` |
| Inconsistency Check | L153 | L476168 | `&H10` | 21 | L477770 | `FrmInc` | `[VERIFIED-VB6]` |
| Year End Updation | L154 | L476170 | `&H11` | 22 | L477223 | `frmYearEnd` (shared key) | `[VERIFIED-VB6]` |
| Data Transfer | L155 | L476172 | `&H12` | **—** | L480429 | `Transfer`, gated `MemVar_1F810B8 >= 1` (L480433) | `[VERIFIED-VB6]` |
| Menu Item Copy | L156 | L476174 | `&H14` | 25 | L480464 | `frmMenuItemCopy` | `[VERIFIED-VB6]` |
| POS Bill Deletion | L157 | L476176 | `&H15` | **—** | L480479 | `FrmPOSBillDeletion` | `[VERIFIED-VB6]` |
| Guest B'Day/Anniversary LookUp | L158 | L476178 | `&H16` | **—** | **none** | — | `[VERIFIED-VB6]` see §13 |
| Country Master | L159 | L476181 | `&H17` | 28 | L477596 | `FaCountryMast` | `[VERIFIED-VB6]` |
| State Master | L160 | L476183 | `&H18` | 29 | L477602 | `FaStateMast` | `[VERIFIED-VB6]` |
| City Master | L161 | L476185 | `&H19` | 30 | L477608 | `FaCityMast` | `[VERIFIED-VB6]` |
| Company Master | L162 | L476187 | `&H1A` | 31 | L477668 | `CompMast` | `[VERIFIED-VB6]` |
| Department | L163 | L476191 | `&H1B` | 32 | L477923 | `DepartMast` | `[VERIFIED-VB6]` |
| Ledger Accounts | L164 | L476195 | `&H1C` | 33 | L478029 | `FaSubGroup` | `[VERIFIED-VB6]` |
| Data Transfer (POS) | L165 | L476198 | `&H1D` | **—** | L478036 | `FrmPOSSaleDataTransfer` | `[VERIFIED-VB6]` |
| PLU File (W.Scale) | L166 | L476200 | `&H1E` | **—** | L478042 | `rPOSRepView` (report viewer) | `[VERIFIED-VB6]` |
| POS Recycle | L167 | L476202 | `&H20` | **—** | L478049 | `FrmPOSRecycleData` if `MemVar_1F810B8 = 1`, else `MsgBox "Only Supervisor is Authorised."` (L478055) | `[VERIFIED-VB6]` |
| Unit Master | L168 | L476204 | `&H21` | 38 | L480469 | `frmUnitMast` | `[VERIFIED-VB6]` |
| *(no builder row)* | — | — | — | 27 `Guest LookUp` | L480763 | `FrmBdayLookup` | `[VERIFIED-VB6]` |
| *(no builder row)* | — | — | — | 41 `Task Scheduler` | L480474 | `FrmJobScheduler` | `[VERIFIED-VB6]` |

---

## 11. menuHelp-only rows (no static registration) — 3

`MenuHelp_SA_tree.txt` rows with `OPT1=12` that have **no** `Proc_165_0_14C1708(..., &HC, ...)` call
anywhere in `EXTRAS.text`. All three have a live dispatcher branch. `[VERIFIED-SQL]` `[VERIFIED-VB6]`

| menuHelp row | Row | Dispatcher branch | Dispatch line | Form | Reachable? |
|---|---|---|---|---|---|
| `Category  Master\|12\|17\|12\|0\|E` *(2 spaces)* | L88 | `If (var_188 = "Category  Master")` | `EXTRAS.text` L477980 | `PrCategoryMast` (L477981) | **yes** |
| `Guest LookUp\|12\|20\|27\|0\|E` | L110 | `Loop Until (var_188 = "Guest LookUp")` | L480763 | `FrmBdayLookup` (L480764) | **yes** |
| `Task Scheduler\|12\|20\|41\|0\|E` | L360 | `Loop Until (var_188 = "Task Scheduler")` | L480474 | `FrmJobScheduler` (L480475) | **yes** |

`Category  Master` exists in the builder only as the one-space `Category Master` (Members Mgmt
L476059 / PayRoll L476109) — a different dispatch key, hence a different form. `[VERIFIED-VB6]`

## 12. Registered in code but absent from `menuHelp` — 27

Builder leaf captions with **no** `OPT1=12` row in `MenuHelp_SA_tree.txt`. Checked against **all five**
extracted trees (`MenuHelp_SA_tree.txt`, `_Deepak_tree.txt`, `_Kitchen_tree.txt`, `_kot_tree.txt`,
`_POS_tree.txt`): **0 hits for every one of the 27**, so none is reachable from any extracted user. `[VERIFIED-SQL]`

| # | Caption | Builder reg. | Dispatcher branch | Form |
|---|---|---|---|---|
| 1 | Call Codes Master | L476123 | L478010 | `MemVar_1F82394` |
| 2 | Call Type Master | L476119 | L477998 | `MemVar_1F8236C` |
| 3 | Category wise Facility | L476071 | L480513 | `memCategoryFacilities` |
| 4 | Category wise Revenue | L476069 | L480508 | `memCatRevMast` |
| 5 | Combo Pack | L476029 | L480758 | `frmComboMast` |
| 6 | Consumption Master | L476093 | L477956 | `FrmConsumMast` |
| 7 | **Corporate Member Master** | L476063 | **none** | — (§13) |
| 8 | Data Transfer | L476172 | L480429 | `Transfer` |
| 9 | Data Transfer (POS) | L476198 | L478036 | `FrmPOSSaleDataTransfer` |
| 10 | Delete Message | L476151 | L477764 | `EmptyInbox` |
| 11 | Extension Master | L476121 | L478004 | `MemVar_1F82380` |
| 12 | Facility Master | L476067 | L480499 (+ L480789) | `memFacilityMast` / `FrmFacilityMast` |
| 13 | Forex Master | L475991 | L477674 | `FrmForeignExMast` |
| 14 | **Guest B'Day/Anniversary LookUp** | L476178 | **none** | — (§13) |
| 15 | Happy Hours | L476025 | L480747 | `pHappyHours` |
| 16 | **Happy Hours [ Fee Items ]** | L476027 | L480752 (empty body) | — (§13) |
| 17 | Member Age Wise Revenue | L476077 | L480518 | `memAgeRevMast` |
| 18 | **Member Bill Sundry Setting** | L476073 | **none** | — (§13) |
| 19 | Package Master | L475977 | L477215 | `FrmPackageMast` |
| 20 | PLU File (W.Scale) | L476200 | L478042 | `rPOSRepView` |
| 21 | POS Bill Deletion | L476176 | L480479 | `FrmPOSBillDeletion` |
| 22 | POS Recycle | L476202 | L478049 | `FrmPOSRecycleData` |
| 23 | Revenue Group Setting | L475950 | L477590 | `frmRevGroup` |
| 24 | Revenue Master | L476065 | L480494 | `MemberShipRevenueMast` |
| 25 | Revenue Wise Budget Entry | L475956 | L480373 | `FrmRevenueWiseBudget` |
| 26 | Scheme Master | L476003 | L477700 | `SchemeMast` |
| 27 | Season Master | L475981 | L477644 | `frmSeasonMast` |

Evidence for all rows: `[VERIFIED-VB6]` (registration + dispatch), `[VERIFIED-SQL]` (absence from trees).

Set arithmetic: 99 unique builder leaves = 72 shared + 27 builder-only; 75 unique `menuHelp` leaves =
72 shared + 3 `menuHelp`-only; union = 102 distinct captions. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 13. Dead items — two different kinds

**(a) Registered but no dispatcher branch — 6 captions.**
Negative check with `rg -F "var_188 = \"<caption>\"" EXTRAS.text` over all 99 unique `&HC` leaf
captions; 93 matched, these 6 did not match a positive guard:

| Caption | Builder reg. | Nearest dispatcher text | Why it is dead | Evidence |
|---|---|---|---|---|
| Corporate Member Master | L476063 | `rg -F 'var_188 = "Corporate Member Master"'` → **0 hits** | no branch at all | `[VERIFIED-VB6]` |
| Member Bill Sundry Setting | L476073 | 0 hits | no branch at all | `[VERIFIED-VB6]` |
| Guest B'Day/Anniversary LookUp | L476178 | 0 hits | no branch (the DB row uses `Guest LookUp`, L480763) | `[VERIFIED-VB6]` |
| Happy Hours [ Fee Items ] | L476027 | `Loop Until Not (var_188 = "Happy Hours [ Fee Items ]")` L480752 | **inverted guard with empty body** — the next statement is the boundary for `Happy Hours [ Free Items ]` (L480753 → `New NewHappyHours` L480754) | `[VERIFIED-VB6]` |
| Item List *(1 space, POS)* | L476001 | `If Not (var_188 = "Item List") Then` L477692 | **inverted guard** — a key equal to `Item List` skips the block | `[VERIFIED-VB6]` `[INFERRED]` |
| Item Entry *(1 space)* | L476091 | `If Not (var_188 = "Item Entry") Then` L477948 | **inverted guard** — same pattern | `[VERIFIED-VB6]` `[INFERRED]` |

The last three are **inverted-guard anomalies**: every sibling branch is `If (var_188 = "...") Then`,
these three are `If Not (... )` / `Loop Until Not (...)` with a residual empty inner `If`:

```
477692: If Not (var_188 = "Item List") Then
477693:   If (var_188 = "Item  List") Then   ' two spaces, empty body
477694:   End If
477695:   Set var_90 = New FrmItemMast
...
477948: If Not (var_188 = "Item Entry") Then
477949:   If (var_188 = "Item Entry ") Then   ' trailing space, empty body
477950:   End If
477951:   Set var_90 = New FrmItemMastRaw
```

`[VERIFIED-VB6]` for the literal text. The **reachability conclusion is `[INFERRED]`**: it depends on
whether the decompiler faithfully emitted `If Not`. The sibling case
`If Not (var_188 = "Year End Updation ") Then / If (var_188 = "Year End Updation") Then / End If /
Set var_90 = New frmYearEnd` (L477222-L477226) reads the same way and *does* work under the literal
reading (guard caption has a trailing space, key has none → guard is False → body runs). Resolving this
definitively needs the original `.bas`, which is not in this repo. `[UNKNOWN]`

**(b) `menuHelp` row but the branch is not positively reachable — 2 captions:**

| menuHelp row | Row | Evidence |
|---|---|---|
| `Item List\|12\|13\|15\|0\|E` | L54 | inverted guard L477692; the working `New FrmItemMast` sits behind `Item  List` (2 spaces, L477693) | `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[INFERRED]` |
| `Item Entry\|12\|16\|15\|0\|E` | L81 | inverted guard L477948; inner key `Item Entry ` (trailing space) exists nowhere in `menuHelp` | `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[INFERRED]` |

Both fail silently: the dispatcher starts `On Error Resume Next` (L477022) and `var_188` matches no
positive branch, so no form opens and no message is shown. `[VERIFIED-VB6]`

**(c) Structural captions correctly have no branch:** the 10 group headers + root
(`Main Setup` L475938, `General Setup` L475940, `Front Office Setup` L475959, `Point of Sale Setup`
L475999, `Banquet` L476037, `Members Mgmt Setup` L476057, `Material Mgmt Setup` L476081,
`PayRoll Setup` L476105, `EPABX Setup` L476117, `Financial Setup` L476127, `Utility` L476158) are
rendered by the menu builder, never dispatched. `[VERIFIED-VB6]`

### Net reachability of the 102 distinct captions

| Bucket | Count |
|---|---|
| Reachable from the SA `menuHelp` menu (row + live branch) | 73 |
| `menuHelp` row but dead branch | 2 |
| builder-only, live branch, absent from **all 5** extracted trees | 23 |
| builder-only, no branch at all | 4 |
| **total distinct captions across both surfaces** | **102** |

`[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 14. Group integrity and caption collisions

**Group headers with an empty parent (4 of 10).** `menu_tree_raw` records
`C|3||<caption>` — the group column is blank:

| Group header | Builder reg. | menu_tree_raw | menuHelp equivalent |
|---|---|---|---|
| General Setup | L475940, parent `vbNullString` | L47 `C\|3\|\|General Setup` | `General Setup\|12\|11` |
| Front Office Setup | L475959, parent `vbNullString` | L56 `C\|3\|\|Front Office Setup` | `Front Office\|12\|12` |
| Point of Sale Setup | L475999, parent `vbNullString` | L75 `C\|3\|\|Point of Sale Setup` | `Point of Sale\|12\|13` |
| Banquet | L476037, parent `vbNullString` | L93 `C\|3\|\|Banquet` | `Banquet\|12\|15` |

The other 6 (`Members Mgmt Setup` L476057, `Material Mgmt Setup` L476081, `PayRoll Setup` L476105,
`EPABX Setup` L476117, `Financial Setup` L476127, `Utility` L476158) carry parent `"Main Setup"`
and appear as `C|3|Main Setup|<caption>` at menu_tree L102/L113/L124/L129/L133/L148. `[VERIFIED-VB6]`

**Orphan child group — `Indoor Catering`.** The 8 Banquet children (menu_tree L94-L101) are registered
with group name `"Indoor Catering"`, but the only nearby group header is `Banquet` (L476037) and no
`Proc_165_0` call registers a group called `Indoor Catering`. `rg -F '14C1708("Indoor Catering"'`
→ 0 hits. `[VERIFIED-VB6]`

**Orphan child group — `Members Mgmt`.** The stray `Member Select Category` (L11677, menu_tree L17)
is registered with group `"Members Mgmt"`, but the registered group is `Members Mgmt Setup`
(L476057). `rg -F '14C1708("Members Mgmt", &HC, 3'` → 0 hits. `[VERIFIED-VB6]`

**Group-name caption drift vs `menuHelp`:**

| Builder group | menuHelp group | Same? |
|---|---|---|
| General Setup | General Setup (`12\|11`) | yes |
| Front Office Setup | Front Office (`12\|12`) | **no** |
| Point of Sale Setup | Point of Sale (`12\|13`) | **no** |
| Banquet | Banquet (`12\|15`) | yes |
| Members Mgmt Setup | Members Mgmt (`12\|14`) | **no** |
| Material Mgmt Setup | Inventory (`12\|16`) | **no** |
| PayRoll Setup | HR/Payroll (`12\|17`) | **no** |
| EPABX Setup | *(no group row)* | **no** |
| Financial Setup | Finance (`12\|19`) | **no** |
| Utility | Utility (`12\|20`) | yes |

`[VERIFIED-VB6]` `[VERIFIED-SQL]`

**Duplicate captions across groups (14 leaf rows collapse to a smaller key set):**

| Caption | Registrations | Shared dispatch key? |
|---|---|---|
| Category Master | Members Mgmt L476059, **PayRoll L476109** | yes → both hit `MemCatMast` (L480484). The PayRoll one is almost certainly a **wrong-form bug**; the DB instead carries `Category  Master` (2 spaces) → `PrCategoryMast`. `[INFERRED]` |
| Menu Category | POS L476013, Indoor Catering L476045 | yes → branch on `var_AC` disambiguates (L477828) |
| Menu Item | POS L476015, Indoor Catering L476049 | yes → branch on `var_AC` (L477855) |
| Item Group | Indoor Catering L476047, Material Mgmt L476087 | yes → branch on `var_AC` (L477929) |
| Year End Updation | Financial Setup L476141, Utility L476170 | yes → `frmYearEnd` (L477223) |
| Country / State / City Master | Front Office, Financial Setup, Utility (3 each) | yes |
| Company Master | Front Office L475989, Utility L476187 | yes |
| Department | Material Mgmt L476085, Utility L476191 | yes |
| Ledger Accounts | Financial Setup L476131, Utility L476195 | yes |

`[VERIFIED-VB6]`

`menuHelp` carries the same 7 duplicate leaf captions (`Menu Category`, `Menu Item`, `Item Group`,
`Year End Updation`, `Company Master`, `Department`, `Ledger Accounts`) → 82 leaf rows collapse to
75 unique. `[VERIFIED-SQL]`

**`OPT3` uniqueness inside `OPT1=12`:** every `(OPT2, OPT3)` pair is unique; `OPT3` is only reused
*across* `OPT2` groups (e.g. `Country Master` sits at `20|28`, not under `12|11`). Because dispatch goes
through `MenuHelp.Code`, not `OPT3`, this is safe. `[VERIFIED-SQL]`

## 15. Object ranges (decompiled source)

Ranges are `'Object: <name>` markers in `EXTRAS.text`; end = next object's start − 1. `[VERIFIED-VB6]`

### General Setup
| Object | Lines | Object | Lines |
|---|---|---|---|
| `FrmTaxMast` | 25221-26562 | `FrmTaxStruMast` | 30721-32667 |
| `FrmPayTypeMast` | 27469-29999 | `frmEnviro` | 139789-145610 |
| `frmRevGroup` | 188695-188943 | `frmPrintModule` | 273689-274687 |
| `frmMod_Print` | 924205-926149 | `FrmRevenueWiseBudget` | 513118-513953 |

### Front Office Setup
| Object | Lines | Object | Lines |
|---|---|---|---|
| `FaCountryMast` | 550941-551842 | `FaStateMast` | 551843-552810 |
| `FaCityMast` | 549704-550940 | `FrmMarketSeg` | 24470-25220 |
| `FrmBusinessSrc` | 22996-23752 | `FrmGuestStat` | 23753-24469 |
| `FrmChargeMast` | 187207-188694 | `frmFixedChargeMast` | 446667-448378 |
| `FrmPackageMast` | 456700-460882 | `FrmPlanPackMast` | 34174-36269 |
| `frmSeasonMast` | 32668-34173 | `FrmRoomFeatureMast` | 30000-30720 |
| `FrmRoomCatMast` | 41555-43971 | `FrmRoomMast` | 52020-55018 |
| `CompMast` | 36270-41554 | `FrmForeignExMast` | 929338-930102 |
| `GuestProfile` | 43972-50882 | `FdRoomDisplay` | 283117-283335 |

### Point of Sale Setup
| Object | Lines | Object | Lines |
|---|---|---|---|
| `FrmItemMast` | 612894-613795 | `SchemeMast` | 592563-593633 |
| `FrmWaiterMast` | 25663-27468 | `OutLetMast` | 183116-187206 |
| `RsTableMast` | 107258-108101 | `FrmItemGroupMast` | 50883-52019 |
| `FrmHallItemCatMast` | 379697-381175 | `FrmItemCatMast` | 129629-131330 |
| `HallMenuItemEntry` | 381985-383976 | `RsMenuItemEntry` | 116648-119810 |
| `OutLetSundry` | 366501-369437 | `FrmMenuRate` | 181006-183115 |
| `frmSessionMast` | 200393-201206 | `FrmConsumMast9999` | 426552-428230 |
| `pHappyHours` | 515216-517730 | `NewHappyHours` | 535558-538028 |
| `frmComboMast` | 538771-541581 | `FrmNCType` | 896292-897030 |
| `frmGuestInfo` | 900111-901479 | | |

### Banquet / Indoor Catering
| Object | Lines | Object | Lines |
|---|---|---|---|
| `FrmEventMast` | 378923-379696 | `FrmVenueFeat` | 633079-633840 |
| `FrmVenueMast` | 631225-633078 | `HallItemGroupMast` | 381176-381984 |
| `HallMenuCatalog` | 389222-391605 | `HallSundry` | 383977-386323 |

### Members Mgmt Setup
| Object | Lines | Object | Lines |
|---|---|---|---|
| `MemCatMast` | 836032-836927 | `MembershipMast` | 836928-847104 |
| `MemberShipRevenueMast` | 847105-848345 | `memFacilityMast` | 848346-849721 |
| `FrmFacilityMast` | 932271-933791 | `memCatRevMast` | 849722-851184 |
| `memCategoryFacilities` | 851185-852739 | `MemberEnviro` | 852740-853259 |
| `memAgeRevMast` | 853260-854761 | `MemSelectCategory` | 985677-986620 |

### Material Mgmt Setup
| Object | Lines | Object | Lines |
|---|---|---|---|
| `FrmParty` | 19849-22995 | `DepartMast` | 179642-181005 |
| `FrmItemCatRaw` | 205177-206836 | `FrmItemMastRaw` | 127293-129628 |
| `FrmConsumMast` | 56138-58097 | `DepartSundry` | 188944-191373 |
| `FrmOPStock` | 424548-426551 | `FrmItemGroupMastRaw` | 377797-378922 |
| `frmPurEnviro` | 889475-890269 | | |

### PayRoll / EPABX
| Object | Lines | Object | Lines |
|---|---|---|---|
| `PrDesigMast` | 918492-919214 | `PrCategoryMast` | 917629-918491 |
| `prHoliday` | 922337-923118 | `PrEmployee` | 919215-922336 |

EPABX forms are handed out as pre-instantiated `MemVar_1F8236C` / `MemVar_1F82380` / `MemVar_1F82394`
objects; their object ranges are `[UNKNOWN]` (the variables are assigned elsewhere). `[UNKNOWN]`

### Financial Setup
| Object | Lines | Object | Lines |
|---|---|---|---|
| `FaGrEnt` | 555999-557753 | `FaSubGroup` | 521908-525400 |
| `FaNarrMast` | 557754-558502 | `FaTDSCat` | 572631-573444 |
| `FaCurrBalUpdate` | 552811-554209 | `frmYearEnd` | 464936-465229 |
| `AccountMerg` | 500575-501369 | `FrmSerialiseVr` | 586345-586571 |
| `EmptyInbox` | 456080-456699 | | |

### Utility
| Object | Lines | Object | Lines |
|---|---|---|---|
| `UserMast` | 462901-463990 | `UserPermission` | 460883-462537 |
| `SundryMast` | 197045-197862 | `FrmInc` | 266693-269980 |
| `Transfer` | 485906-488665 | `frmMenuItemCopy` | 506751-508414 |
| `FrmPOSBillDeletion` | 513954-515215 | `FrmPOSSaleDataTransfer` | 595905-596900 |
| `rPOSRepView` | 726131-763057 | `FrmPOSRecycleData` | 621773-622279 |
| `frmUnitMast` | 897031-897787 | `FrmJobScheduler` | 928017-929337 |
| `FrmBdayLookup` | 538029-538770 | | |

`FrmUploadProcess` (971727-972063) and `frmGuestParamMast` (119811-120612) are reached from
dispatcher keys that belong to other modules.
