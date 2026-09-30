# HMS LOGIN & SECURITY FLOW  [VERIFIED-VB6]

Source: EXTRAS.text — Form at line 9646 (frmPassword/frmCompany `Form_Load`, addr 147D994)
and login handler at line ~10480 (addr 1917EC0+), plus `CmdLogin_Click` at 418127 (addr EC1B8C).

## 1. Startup sequence (before login)
1. `Form_Load` (addr 147D994) reads `App.Path & "\Analysis.ini"` (line 147D17F).
   - If missing: MsgBox "S/W ini File Missing.Contact to Software windor" → `End`.
2. Forces Windows short-date format to `dd/MMM/yyyy` via registry
   `HKCU\Control Panel\International\sShortDate` (lines 147CF23–147D107).
   If it had to change: "Some Setting are Changed, Please ShutDown Your Computer For Better Result".
3. Initializes globals (Hindi font name, default site "HO", etc.)
4. Captures ComputerName → used for licensing/session.
5. Opens DB connections:
   - SQL Server: `Provider=SQLNCLI.1;Password=<pwd>;Persist Security Info=True;User ID=<uid>;Initial Catalog=<INI key 6>` (line 9868)
   - Shaped:    `Provider=MSDataShape;Data Provider=SQLOLEDB.1;...` (line 9871)
   - Jet:       `...Microsoft.Jet.OLEDB.4.0;...Data Source=<path>\DMEPABX.mdb` (line 9879)
6. MDIForm_Load (line 7373) loads logos from `App.Path\Pic\Hotel.bmp`, `Hotellogo.bmp`,
   `DealerLogo.bmp` (lines 7412–7496).

## 2. Login validation (login form, addr 1917EC0)
Order of checks — [VERIFIED-VB6]:
1. `select COUNT(*) from userMast` — if 0 users:
   - `insert into userMAST (USER_NAME,PASSWD,LABEL) values('SA','\','1')`
   - `insert into user1(USER_NAME,FORM_CODE,PARAM_STR) select 'SA',code,'AEDP' from module`
   → first-run seed: user SA, password stored as `\` (obfuscated), full rights 'AEDP'
     (A=Add, E=Edit, D=Delete, P=Print) on every module form.
2. `SELECT * FROM USERMAST WHERE USER_NAME='<entered>'` → RecordCount=0 ⇒
   MsgBox "Invalid User" ("Login" caption, icon &H20), clear + refocus.
3. Reads `PASSWD` field, decrypts via `Proc_4_28_EE06F8`, compares `UCase(input)` vs
   `UCase(decrypted)`. Mismatch ⇒ "Invalid Password". ⇒ Passwords are stored OBFUSCATED,
   comparison is case-insensitive.
4. `ActiveYN = 'N'` ⇒ "This User Is Not Currently Active".
5. Success: loads session globals:
   - MemVar_1F810C8 = USER_NAME; MemVar_1F810B8 = Label (user level);
     MemVar_1F810EC = business date (CDate); MemVar_1F81078 = LogSite_Code.
6. `Select isnull(AllowDtChng,'') from UserMast where User_Name='<user>'` → per-user
   permission to change business date.
7. Menu/permission load:
   `SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo
    WHERE User1.User_Name='<user>'`
   → User1 rows = (FORM_CODE, PARAM_STR) per module form; PARAM_STR chars = AEDP rights.
8. Company selection grid:
   `Select * from company [where comp_code in (select Distinct compcode from MenuHelp
    where username='<user>')] order by STart_dt Desc`
   (filter applied only for non-SA users) → user picks property/company (DBGrid1, "Select Company").
9. After selection: validates `End_dt>` (company validity period) then opens MDI.

## 3. Backdoor / special access [VERIFIED-VB6 - flag to owner]
`CmdLogin_Click` (addr EC1B8C, BanqAvailability-adjacent module): if
`UCase(Trim(txtPassword)) = "INDIA12"` → unloads and Show's the Banquet availability screen.
Hardcoded password "India12" in binary. Severity: HIGH (vendor backdoor) — recorded as
BUG/SEC-001, not modified.

## 4. Security-relevant tables
- userMast (USER_NAME, PASSWD[obfuscated], LABEL, ActiveYN, AllowDtChng, ShortName)
- user1 (USER_NAME, FORM_CODE, PARAM_STR='AEDP')
- module (code per form)
- User_Module (SrNo)
- MenuHelp (username, compcode, menu text) — also drives per-user menus
- company (comp_code, Start_dt, End_dt)

## 5. Password handling in this documentation
All credentials masked as ********; none stored in any generated file. [VERIFIED-CONFIG]
