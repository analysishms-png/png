---
name: hms-module-manual
description: "Analysis HMS ke liye module-wise professional manual (.docx) banane ka process. Screenshots capture karna (analysishms.com login: credentials admin se lein), folder structure banana, aur Module → Master → Operations → Transactions → Reports → Appendix structure me manual generate karna. Use when user asks 'manual banao', 'module manual', 'HMS manual', ya kisi HMS module (Front Office, POS, Inventory, Housekeeping, Banquet, etc.) ka documentation chahe."
---

# HMS Module-Wise Manual Builder

Ye skill Analysis HMS ke kisi bhi module ka professional Word manual banati hai:
**Module → Master → Operations → Transactions → Reports → Appendix** structure me,
real screenshots ke saath.

## Step 1: Menu Map nikalo (AJAX API)

analysishms.com pe login ke baad browser eval se menu tree fetch karo.
Session: `browser-act --session <name> ...`

```js
// Top-level modules: page source me #menu ul#metismenu me li[id] + code attribute
// Sub-modules (level 2):
xhr POST /fetchsubmenu body: code=<topmodulecode>&_token=<token>
// Screens (level 3):
xhr POST /fetchlastmenu body: code=<subcode>&code2=<topmodulecode>&_token=<token>
```

- `_token` page ke inline script me milta hai (`mainmenu` click handler).
- Response JSON fields: `module` (name), `route` (URL path), `code` (opt2), `code2` (opt1).
- Level-3 URL = `https://analysishms.com/<route>`

## Step 2: Screenshots capture karo

Folder structure banao:

```
HMS_Manuals/<Module>/screenshots/
 00_Login/ -> login page
 01_Master/ -> masters (setup screens)
 02_Operations/ -> daily operations screens
 03_Reports/ -> reports screens
 04_Transactions/ -> billing/transaction screens (module ke hisab se)
 05_Extras/ -> linen, QR, workflows etc.
```

Har screen ke liye:
```bash
browser-act --session <name> navigate "https://analysishms.com/<route>" \
 && browser-act --session <name> wait stable \
 && browser-act --session <name> screenshot "path/NN_Screen_Name.png"
```

**Important:**
- Kuch routes direct navigate pe redirect hote hain (splitbill, getcompdt).
 Fix: `/company` pe jao → menu expand karo (HK click → submenu click) → actual link click karo.
- Permission error aaye to screenshot me error dikhane ke bajaye note karo:
 "Screen demo property pe restricted hai" — manual me mention karo.
- Session expire ho jaye to apne credentials se re-login karo.

## Step 3: Manual content ka structure

Har section ka format (ye fixed template hai):

```markdown
# <NN>. <Section Name>
Navigation Path: <menu path>
[Figure: screenshots/XX/NN_Screen.png]
## Screen Elements <- table: Field | Description | Example
## How to <do task> <- numbered steps
## Tips / Notes
```

Manual me ye sections hamesha isi order me:

1. **Cover Page** — Module name, Property, Version, Software branding
2. **Table of Contents**
3. **Introduction** — module overview, benefits, section summary table
4. **Login & Navigation** — login steps table, sidebar structure
5. **Master Module** — saare masters (Floor, Staff, Type, Checklist...)
6. **Operations Module** — daily workflow screens
7. **Transactions Module** — billing, memo, settlement (agar module me hai)
8. **Reports Module** — saare reports + filters table
9. **Appendix** — status codes table, daily workflow timetable,
 troubleshooting table, contact & support

## Step 4: DOCX generate karo (docx npm package)

`HMS_Manuals/skills/generate_manual.js` use karo (already installed):

```bash
node HMS_Manuals/skills/generate_manual.js <module-config.json>
```

Config JSON me har section: `{ title, navPath, screenshot, intro,
elementsTable, steps[], tips[] }`.

**docx gotchas (docx-js):**
- Tables: `columnWidths` + har cell `width` (DXA) dono do
- Shading: `ShadingType.CLEAR` (SOLID black ho jata hai)
- Lists: numbering config `LevelFormat.BULLET`, kabhi `•` literal nahi
- `ImageRun` me `type: "png"` zaroori; image width ~600px, height auto ratio se
- `PageBreak` Paragraph ke andar
- Cover page: module color theme (Housekeeping = teal #00897B)
- TOC: `HeadingLevel.HEADING_1/2/3` use karo

## Verified Screens (Housekeeping, Demo Property)

| Section | Route | |---|--- | | Floor Master | floormaster | | Housekeeper Master | housemaster | | Cleaning Type | cleaningtype | | HK Supervisor | hksupervisor | | Checklist | checklist | | Amenities Master | amenitiesmaster | | HK Screen (Shift+H) | housekeepingscreen | | Room Status Board | roomstatusboard | | Assignments | assignments | | Start Cleaning | startcleaning | | Room Cleaning Entry | roomcleaningentry | | Inspection | Inspection (capital I) | | Lost & Found | lostfound | | Damage Entry | storedamagereport | | HK Report | housekeepingreport | | Cleaning Register | cleaningregister | | Assignment Report | assignmentreport | | Room-wise Amenities | roomwiseamenitiesreport | | Damage Report | damagereport | | Lost&Found Register | lostfoundregister | | Laundry Memo | salebillentry?dcode=LAUN | | Memo Bill Reprint | posbillentry?dcode=LAUN | | Settlement Entry | settlemententry?dcode=LAUN | | Split Bill | splitbill?dcode=LAUN (restricted on demo) | | Linen Send | laundrysend | | Linen Receive | laundryreceive