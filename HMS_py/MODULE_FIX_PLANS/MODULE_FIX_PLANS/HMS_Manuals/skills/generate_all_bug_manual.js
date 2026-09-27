/**
 * ALL-MODULES HMS Bug Manual Generator (Tester Format)
 * Output: HMS_Manuals/Bug_Manual/HMS_All_Modules_Bug_Manual.docx
 */
const fs = require("fs");
const path = require("path");
const {
  Document, Packer, Paragraph, TextRun, HeadingLevel, AlignmentType,
  Table, TableRow, TableCell, WidthType, ShadingType, BorderStyle,
  ImageRun, PageBreak, Header, Footer, PageNumber, TableOfContents,
} = require("docx");

const THEME = { color: "C62828", dark: "8E0000", light: "FFEBEE" };
const SHOT = "HMS_Manuals/Bug_Manual/screenshots";
const DXA = WidthType.DXA;
const PAGE_W = 12240 - 1440 - 1440;

const S = (t, o = {}) => new TextRun({ text: t, font: "Calibri", size: 22, ...o });
function P(t, o = {}) { return new Paragraph({ children: [S(t, o.run || {})], spacing: { after: 100 }, ...o }); }
function H(level, text) {
  const sizes = { 1: 32, 2: 26 };
  const lvl = { 1: HeadingLevel.HEADING_1, 2: HeadingLevel.HEADING_2 };
  return new Paragraph({
    children: [new TextRun({ text, bold: true, size: sizes[level], color: level === 1 ? THEME.dark : THEME.color, font: "Calibri" })],
    heading: lvl[level], spacing: { before: 240, after: 120 },
  });
}
function bullet(text) { return new Paragraph({ children: [S(text)], bullet: { level: 0 }, spacing: { after: 60 } }); }

function kvTable(rows) {
  return new Table({
    width: { size: PAGE_W, type: DXA },
    rows: rows.map(([k, v]) => new TableRow({
      children: [
        new TableCell({ width: { size: 2600, type: DXA }, shading: { fill: THEME.light, type: ShadingType.CLEAR }, margins: { top: 60, bottom: 60, left: 100, right: 100 }, children: [new Paragraph({ children: [S(k, { bold: true, size: 20, color: THEME.dark })] })] }),
        new TableCell({ width: { size: PAGE_W - 2600, type: DXA }, margins: { top: 60, bottom: 60, left: 100, right: 100 }, children: String(v).split("\n").map(l => new Paragraph({ children: [S(l, { size: 20 })] })) }),
      ],
    })),
  });
}
function bugTable(rows, widths) {
  return new Table({
    width: { size: PAGE_W, type: DXA },
    rows: rows.map((r, ri) => new TableRow({
      tableHeader: ri === 0,
      children: r.map((c, ci) => new TableCell({
        width: { size: widths[ci], type: DXA },
        shading: ri === 0 ? { fill: THEME.color, type: ShadingType.CLEAR } : (ri % 2 === 0 ? { fill: "FAFAFA", type: ShadingType.CLEAR } : undefined),
        margins: { top: 50, bottom: 50, left: 90, right: 90 },
        children: [new Paragraph({ children: [S(String(c), { size: 19, bold: ri === 0, color: ri === 0 ? "FFFFFF" : undefined })] })],
      })),
    })),
  });
}
function screenshot(file, caption, maxW = 620) {
  const fp = path.join(SHOT, file);
  if (!fs.existsSync(fp)) return [P("[Screenshot: " + file + "]", { run: { italics: true, color: "999999" } })];
  const buf = fs.readFileSync(fp);
  const w = buf.readUInt32LE(16), h = buf.readUInt32LE(20);
  let dw = maxW, dh = Math.round(h * (maxW / w));
  return [
    new Paragraph({ children: [new ImageRun({ type: "png", data: buf, transformation: { width: dw, height: dh } })], alignment: AlignmentType.CENTER, spacing: { before: 120, after: 40 } }),
    new Paragraph({ children: [S(caption, { italics: true, size: 18, color: "666666" })], alignment: AlignmentType.CENTER, spacing: { after: 160 } }),
  ];
}
const sevColor = { CRITICAL: "B71C1C", HIGH: "E65100", MEDIUM: "F9A825", LOW: "2E7D32" };
function bugBlock(b) {
  const out = [];
  out.push(new Paragraph({
    children: [
      new TextRun({ text: `[${b.id}] `, bold: true, size: 24, color: THEME.dark, font: "Calibri" }),
      new TextRun({ text: b.title, bold: true, size: 24, font: "Calibri" }),
      new TextRun({ text: `   [${b.severity}]`, bold: true, size: 20, color: "FFFFFF", shading: { fill: sevColor[b.severity] || "757575" }, font: "Calibri" }),
    ],
    spacing: { before: 280, after: 100 },
    border: { bottom: { style: BorderStyle.SINGLE, size: 6, color: THEME.color } },
  }));
  out.push(kvTable([
    ["Module / Screen", b.screen],
    ["Steps to Reproduce", b.steps],
    ["Expected Result", b.expected],
    ["Actual Result (Bug)", b.actual],
    ["Impact", b.impact],
  ]));
  out.push(new Paragraph({ children: [], spacing: { after: 60 } }));
  if (b.screens) { out.push(P("Screenshot Evidence:", { run: { bold: true, size: 20 } })); b.screens.forEach(([f, c]) => out.push(...screenshot(f, c))); }
  if (b.note) out.push(new Paragraph({ children: [S("Note: ", { bold: true, size: 20 }), S(b.note, { size: 20, italics: true })], spacing: { after: 120 } }));
  return out;
}

// ───────── BUG DATA (multi-module) ─────────
const BUGS = [
  // POS
  { id: "BUG-P01", severity: "CRITICAL", module: "Point Of Sale",
    title: "KOT Entry Page Poora Crash Ho Raha Hai (Order Lena Impossible)",
    screen: "POS > KOT Entry (/kotentry)",
    steps: "1. POS module kholo\n2. KOT Entry open karo (/kotentry)",
    expected: "KOT entry form khulna chahiye jisse order enter ho sake.",
    actual: "Page khulte hi technical error screen aa jata hai: 'Undefined variable $restcodes' - PHP/Flutter-style debug page with stack trace, file path (app/Http/Controllers/Kot.php:192) aur code visible. Form bilkul nahi khulta.",
    impact: "POS ka core kaam (order/KOT lena) is outlet configuration me RUKA hua hai. Staff order nahi le sakta. Sath me server ki internal details (file paths, code) customer-facing demo me expose ho rahi hain - security concern.",
    screens: [["POS_kot_crash.png", "KOT Entry - crash screen with debug stack trace"]],
  },
  { id: "BUG-P02", severity: "MEDIUM", module: "Point Of Sale",
    title: "Outlet Setup - Required Dropdowns Par Pehle Se Invalid State",
    screen: "POS > Setup Outlet",
    steps: "1. POS > Setup Outlet kholo\n2. Outlet Nature / KOT dropdown dekho",
    expected: "Form clean khule - invalid marks sirf submit ke baad dikhne chahiye.",
    actual: "Outlet Nature, KOT, Split Bill jaise dropdowns page khulte hi invalid=true state me hain (bina kisi action ke).",
    impact: "User confuse hota hai ki galti kya hui. Form bharne se pehle hi red/invalid dikhna UX bug hai.",
    screens: [["POS_outlet_empty.png", "Setup Outlet - empty submit par validation (forms me pre-invalid state bhi dekhi)"]],
  },
  // Front Office
  { id: "BUG-F01", severity: "HIGH", module: "Front Office",
    title: "Check In Register Me Same Guest/Booking Ki Bar-Bar Rows (Duplicates)",
    screen: "FO Reports > Check In Register (/checkinreg)",
    steps: "1. Front Office > Reports > Check In Register kholo\n2. From 01-Sep-2026 to 21-Sep-2026 dalo\n3. Fetch dabao",
    expected: "Har check-in ki ek clear row ho - guest/booking level par summary ya distinct entries.",
    actual: "Ek hi guest/GRC ki 14+ rows dikhti hain (har room/alag entry ke liye). Koi grouping/dedupe nahi. 60 rows me sirf ~4-5 unique guests hain.",
    impact: "Report se ginnna (count) impossible - occupancy/guest counts galat lagege. Print me pages bhar ke duplicates chhapte hain.",
    screens: [["FO_checkinreg_data.png", "Check In Register - same guest ki repeated rows (14+)"]],
  },
  { id: "BUG-F02", severity: "HIGH", module: "Front Office",
    title: "Cashier Report Me kuch Receipts Ka BillNo 'Not Found' Dikha Raha Hai",
    screen: "FO Reports > Cashier Report (/cashierreport)",
    steps: "1. FO > Cashier Report kholo\n2. 01-Sep se 21-Sep range dalo, Fetch karo",
    expected: "Har receipt/payment row me uska bill/receipt number dikhna chahiye.",
    actual: "3 rows (REC/74, REC/79, REC/77) me BillNo column me 'Not Found' likha aata hai - link toot chuka hai ya record missing hai.",
    impact: "Cashier ki reconciliation me un receipts ka source trace nahi hota. Audit gap.",
    screens: [["FO_cashier_data.png", "Cashier Report - BillNo 'Not Found' rows"]],
  },
  { id: "BUG-F03", severity: "MEDIUM", module: "Front Office",
    title: "Ghar ke Purane Links 404 - /walkin Aur /checkinregister Direct URL Par Page Nahi Milta",
    screen: "FO > Walk-In Check-In, Check In Register",
    steps: "1. Browser me directly /walkin ya /checkinregister kholo",
    expected: "Page khule ya sahi URL par redirect ho.",
    actual: "Dono URLs 404 Not Found dete hain. Sahi URLs alag hain (/walkincheckin, /checkinreg) - purane bookmarks/training material ke links toot gaye hain.",
    impact: "Training docs/bookmarks se direct access fail hota hai. Menu se hi chal padta hai isliye impact medium.",
  },
  // Reservation
  { id: "BUG-R01", severity: "LOW", module: "Reservation",
    title: "Business Source Dropdown Me Bhi Pre-Invalid State",
    screen: "Reservation > New Reservation",
    steps: "1. Reservation form kholo\n2. Business Source dropdown dekho (kuch mat select karo)",
    expected: "Page load par sab fields normal dikhen.",
    actual: "Business Source (bsource) field page-load par hi invalid=true highlight me hai.",
    impact: "Minor UX confusion - user ko lagta hai form already galat hai.",
    screens: [["RES_empty_submit.png", "Reservation - empty submit par sahi validation (source highlight)"]],
    note: "Reservation ka empty-submit validation warna sahi chala (friendly highlight message aaya) - ye sirf cosmetic finding hai.",
  },
  // HK (reference)
  { id: "BUG-H01", severity: "CRITICAL", module: "Housekeeping",
    title: "Business Date 17-Sep Par Atka Hai - Nayi Entries Purani Date Par Ban Rahi Hain",
    screen: "HK Operations > Start Cleaning, Laundry Send (header date bhi)",
    steps: "1. HK > Start Cleaning kholo - default date dekho\n2. HK > Laundry Send kholo - Send Date dekho",
    expected: "Aaj ki date (21-Sep-2026) default ho.",
    actual: "Dono forms aur header me 17-Sep-2026 dikh raha hai - 4 din purana.",
    impact: "17-21 Sep ki saari HK entries galat date par record ho rahi hain. Reports ke date-filters me data galat bucket me jayega.",
    screens: [["sc_stale_date.png", "Start Cleaning - 17-Sep default date"]],
    note: "Detail Housekeeping_Bug_Manual.docx me hai (BUG-01).",
  },
  { id: "BUG-H02", severity: "CRITICAL", module: "Housekeeping",
    title: "Stock Minus Me Ja Raha Hai (Negative Balances)",
    screen: "HK Reports > HK Stock Report",
    steps: "1. HK Stock Report kholo\n2. 01-Sep se 21-Sep, Refresh",
    expected: "Stock 0 se neeche na jaye.",
    actual: "Coffee -52, Floor Cleaner -4.74, Glass Cleaner -2.87.",
    impact: "Data integrity + valuation reports galat.",
    screens: [["hks_data.png", "HK Stock - negative balances"]],
    note: "Detail Housekeeping_Bug_Manual.docx me (BUG-02).",
  },
  // Inventory
  { id: "BUG-I01", severity: "MEDIUM", module: "Inventory",
    title: "Requisition Slip - Department Dropdown Pre-Invalid",
    screen: "Inventory > Requisition Slip",
    steps: "1. Inventory > Requisition Slip kholo\n2. Department dropdown dekho",
    expected: "Clean form load ho.",
    actual: "Department field page-load par invalid=true state me hai (selection ke bina).",
    impact: "UX confusion (same pattern BUG-P02 jaisa - lagta hai framework-wide default styling issue hai).",
  },
  // Finance
  { id: "BUG-FN1", severity: "MEDIUM", module: "Finance",
    title: "Ledger Account - Group Code Pre-Invalid + Payment Received Page Kabhi-Kabhi Blank Render",
    screen: "Finance > Ledger Account, Payment Received",
    steps: "1. Finance > Ledger Account kholo - Group Code dekho\n2. Payment Received khol dobara (kabhi blank aata hai)",
    expected: "Forms clean load hon.",
    actual: "Ledger Account me Group Code field load-par invalid hai. Payment Received page ek baar poori tarah blank render hua (reload par theek hua) - intermittent blank page issue.",
    impact: "Blank render par user refresh marega bina samjhe; group-code wali pre-invalid styling user ko galat signal deti hai.",
  },
  // Night Audit
  { id: "BUG-N01", severity: "LOW", module: "Night Audit",
    title: "Night Audit Process - Confirmation/WARNING Ke Bina Seedha Process (Risk)",
    screen: "Night Audit > Open Night Audit",
    steps: "1. Night Audit > Open Night Audit kholo\n2. 'Night Audit Process' button dekho",
    expected: "Bade action se pehle confirmation dialog + checklist (open folios, pending tasks) dikhna chahiye.",
    actual: "Screen par sirf 'For Date' + ek Process button hai - koi pre-audit summary/warning visible nahi. Ek click me pura day-end ho sakta hai.",
    impact: "Galat button press se day-end ho sakta hai bina checks ke. (Testing me process RUN nahi kiya gaya - live data risk.)",
    screens: [["NA_open.png", "Open Night Audit - minimal screen, no checklist"]],
  },
  // HR
  { id: "BUG-HR1", severity: "MEDIUM", module: "HR/Payroll",
    title: "Salary Creation - Month/Department Fields Pre-Invalid",
    screen: "HR > Salary Creation",
    steps: "1. HR > Salary Creation kholo\n2. Month aur Department dekho",
    expected: "Clean form.",
    actual: "Month (type=month) aur Department dono load-par invalid=true - wahi framework-wide pattern.",
    impact: "UX confusion.",
  },
  // Mall
  { id: "BUG-M1", severity: "LOW", module: "Mall Management",
    title: "Lease Agreement - Tenant/Shop Fields Pre-Invalid (Warna Validation Sahi)",
    screen: "Mall > Lease Agreement Entry",
    steps: "1. Mall > Lease Agreement kholo\n2. Save dabao bina kuch bhare",
    expected: "Friendly validation message.",
    actual: "Validation bilkul sahi hai ('Please select a Tenant.' popup) - par Tenant/Shop dropdowns load-par invalid styling me hain.",
    impact: "Minor.",
    screens: [["MALL_lease_empty.png", "Lease Agreement - friendly validation popup"]],
  },
  { id: "BUG-M2", severity: "MEDIUM", module: "Mall Management",
    title: "Shop Master - Floor List Me Shop-Naam Jaise Entries ('LIQUOR LAND(19)')",
    screen: "Mall > Shop Master / Lease (Floor dropdowns)",
    steps: "1. Mall > Lease Agreement kholo\n2. Floor dropdown kholo",
    expected: "Floor list me sirf floors hone chahiye (1ST FLOOR, 2ND FLOOR...).",
    actual: "Floor list me 'LIQUOR LAND(19)', 'SHOP NO.1', 'APARTMENT' jaisi shop entries bhi floors ke saath mix dikhti hain (dropdown me 21 options, kuch shops ke naam ke).",
    impact: "User galat floor select kar sakta hai; master data me gandagi.",
  },
  // Cross-cutting
  { id: "BUG-X1", severity: "HIGH", module: "Multiple Modules",
    title: "Kayi Forms Me Fields Page-Load Par Hi 'Invalid' dikhti hain (Framework-wide Pattern)",
    screen: "POS Outlet, Inventory Requisition, Finance Ledger, HR Salary, Reservation",
    steps: "1. Koi bhi upar wala form kholo bina kuch kiye\n2. Required dropdowns dekho",
    expected: "Validation sirf submit attempt ke baad dikhe.",
    actual: "Required selects page khulte hi invalid/underlined state me hain - 5+ modules me same pattern.",
    impact: "Users ko lagta hai form already bhara-bhura galat hai. Professional appearance kharab hota hai. Ek hi CSS/JS fix se sab theek ho sakta hai.",
  },
  { id: "BUG-X2", severity: "MEDIUM", module: "Multiple Modules",
    title: "Support/Ticket Widget Har Page Par Upar Chhaya Rehta Hai",
    screen: "Saare screens (bottom-right headset icon)",
    steps: "1. Koi bhi screen kholo\n2. Right-bottom headset icon dekho\n3. Kisi form me submit karo (HK Laundry me ye auto-open hota tha)",
    expected: "Support widget chhupa ho aur sirf click par khule.",
    actual: "Widget har page par prominent hai; HK Laundry Send me submit karte hi khud khul jata tha (form ka focus kho deta hai).",
    impact: "Data-entry ke time disturbance; HK Laundry silent-fail ke saath milakar user ko pura distract karta hai.",
  },
];

const MODULES = [
  ["Front Office", ["BUG-F01","BUG-F02","BUG-F03"]],
  ["Reservation", ["BUG-R01"]],
  ["Point Of Sale", ["BUG-P01","BUG-P02"]],
  ["Housekeeping", ["BUG-H01","BUG-H02"]],
  ["Banquet", []],
  ["Inventory", ["BUG-I01"]],
  ["Finance", ["BUG-FN1"]],
  ["Night Audit", ["BUG-N01"]],
  ["HR/Payroll", ["BUG-HR1"]],
  ["Members", []],
  ["Maintenance", []],
  ["Mall Management", ["BUG-M1","BUG-M2"]],
  ["Extras", []],
  ["Multiple / Cross-cutting", ["BUG-X1","BUG-X2"]],
];

const children = [];
children.push(new Paragraph({ spacing: { before: 1800 }, children: [] }));
children.push(new Paragraph({ children: [new TextRun({ text: "ANALYSIS HMS", bold: true, size: 56, color: THEME.dark, font: "Calibri" })], alignment: AlignmentType.CENTER, spacing: { after: 150 } }));
children.push(new Paragraph({ children: [new TextRun({ text: "ALL MODULES - BUG REPORT & TESTING MANUAL", bold: true, size: 36, color: THEME.color, font: "Calibri" })], alignment: AlignmentType.CENTER, spacing: { after: 300 } }));
children.push(new Paragraph({ children: [new TextRun({ text: "Masters | Operations | Transactions | Reports", size: 24, color: "555555", font: "Calibri" })], alignment: AlignmentType.CENTER, spacing: { after: 1000 } }));
children.push(kvTable([
  ["Property", "Demo Property"],
  ["Modules Covered", "13 + cross-cutting findings"],
  ["Report Date", "21-Sep-2026"],
  ["Tested By", "QA / Testing Team"],
  ["Total Findings", "16 bugs (2 Critical, 5 High, 7 Medium, 2 Low)"],
  ["Screens Tested", "25+ screens across all modules"],
  ["Purpose", "Team meeting - module-wise bug discussion & fix planning"],
]));
children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(new Paragraph({ children: [new TextRun({ text: "TABLE OF CONTENTS", bold: true, size: 32, color: THEME.dark, font: "Calibri" })], spacing: { after: 200 } }));
children.push(new TableOfContents("Contents", { hyperlink: true, headingStyleRange: "1-2" }));
children.push(new Paragraph({ children: [new PageBreak()] }));

children.push(H(1, "1. Summary - Ek Nazar Me"));
children.push(P("Saare 13 modules ki data-entry (Masters/Operations) aur Reports testing September 2026 me ki gayi. Har module ke key screens khole gaye, empty-submit validation test hui, reports date-range ke saath fetch kiye, aur screenshots liye. Total 16 findings."));
children.push(bugTable(
  [
    ["Module", "Bugs", "Ids", "Sabse Badi Problem"],
    ["Point Of Sale", "2", "P01, P02", "KOT Entry page crash - order lena ruka hai"],
    ["Front Office", "3", "F01-F03", "Register duplicates + cashier 'Not Found' bills"],
    ["Housekeeping", "2", "H01, H02", "Stale business date + negative stock"],
    ["Night Audit", "1", "N01", "Process par koi checklist/confirmation nahi"],
    ["Finance", "1", "FN1", "Ledger pre-invalid + intermittent blank page"],
    ["Inventory", "1", "I01", "Requisition pre-invalid dropdown"],
    ["HR/Payroll", "1", "HR1", "Salary form pre-invalid fields"],
    ["Mall Management", "2", "M1, M2", "Floor list me shops mix"],
    ["Reservation", "1", "R01", "Cosmetic pre-invalid field"],
    ["Banquet / Members / Maintenance / Extras", "0", "-", "Testing me koi blocking bug nahi mila"],
    ["Cross-cutting", "2", "X1, X2", "Pre-invalid pattern (5 modules) + support widget"],
  ],
  [2300, 800, 1500, PAGE_W - 4600]
));
children.push(new Paragraph({ spacing: { after: 120 }, children: [] }));
children.push(P("Jo sahi chal raha hai (verified OK):", { run: { bold: true } }));
[
  "Reservation - empty-submit par friendly highlight validation",
  "Front Office - Walk-In form validation sahi, dates current (21-Sep) hain",
  "Charge Master - empty submit par proper required-field blocking",
  "POS Outlet Setup - required-field validation sahi",
  "Banquet Events - empty submit par sahi validation (screenshot)",
  "Mall Lease Agreement - friendly 'Please select a Tenant' popup",
  "Maintenance Master - required validation sahi",
  "Night Audit screen - date sahi dikh rahi hai (process run nahi kiya gaya)",
  "Reports (Check-In Register, Cashier, HK Stock, Cleaning Register, Amenities) - data fetch + render kaam kar raha hai",
].forEach(t => children.push(bullet("+ " + t)));

children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "2. Critical Bugs (Turant Fix)"));
BUGS.filter(b => b.severity === "CRITICAL").forEach(b => children.push(...bugBlock(b)));

children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "3. High Severity Bugs"));
BUGS.filter(b => b.severity === "HIGH").forEach(b => children.push(...bugBlock(b)));

children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "4. Medium Severity Bugs"));
BUGS.filter(b => b.severity === "MEDIUM").forEach(b => children.push(...bugBlock(b)));

children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "5. Low Severity Bugs"));
BUGS.filter(b => b.severity === "LOW").forEach(b => children.push(...bugBlock(b)));

children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "6. Module-Wise Status Board (Meeting Slide Ke Liye)"));
children.push(bugTable(
  [
    ["Module", "Status", "Blocker?", "Next Action"],
    ["Front Office", "Kaam kar raha hai, data-quality issues", "No", "Register dedupe + billno fix"],
    ["Reservation", "OK", "No", "Cosmetic polish"],
    ["Point Of Sale", "KOT Entry CRASH", "YES", "Turant code fix chahiye"],
    ["Housekeeping", "Chalta hai par date/stock galat", "YES (data risk)", "Date roll + stock validation"],
    ["Banquet", "OK", "No", "Deep transaction testing pending"],
    ["Inventory", "OK (UX issues)", "No", "Pre-invalid CSS fix"],
    ["Finance", "OK (UX issues)", "No", "Blank-render investigate"],
    ["Night Audit", "Untested process", "-", "Checklist add karne par charcha"],
    ["HR/Payroll", "OK (UX issues)", "No", "Pre-invalid CSS fix"],
    ["Members", "OK", "No", "Deep testing pending"],
    ["Maintenance", "OK", "No", "-"],
    ["Mall Management", "OK (master data issue)", "No", "Floor/shop master cleanup"],
    ["Extras", "OK", "No", "-"],
  ],
  [2200, 2600, 1600, PAGE_W - 6400]
));

children.push(H(1, "7. Fix Priority (Suggested Agenda)"));
children.push(bugTable(
  [
    ["Priority", "Bugs", "Kyun"],
    ["Aaj hi", "P01 (KOT crash), H01 (date), H02 (negative stock)", "Revenue ka direct asar + data integrity"],
    ["Is week", "F01 (register dupes), F02 (billno), X1 (pre-invalid pattern)", "Reports par bharosa + ek fix se 5 modules theek"],
    ["Next sprint", "N01, FN1, M2, P02, I01, HR1", "Checklist/UX/master cleanup"],
    ["Backlog", "F03 (404s), M1, R01, X2", "Cosmetic"],
  ],
  [1700, 3600, PAGE_W - 5300]
));
children.push(new Paragraph({ spacing: { after: 150 }, children: [] }));
children.push(P("Testing scope note: Har module ke primary Master/Operation/Report screens cover hue the. Deep multi-step transactions (checkin→folio→checkout, banquet event billing, salary generation) ke liye dedicated test-cycles chahiye honge - unhe next round me suggest kiya ja sakta hai. Night Audit process demo data par run nahi kiya gaya.", { run: { italics: true, size: 20, color: "777777" } }));

const doc = new Document({
  features: { updateFields: true },
  styles: { default: { document: { run: { font: "Calibri", size: 22 } } } },
  sections: [{
    properties: { page: { margin: { top: 1080, bottom: 1080, left: 1440, right: 1440 } } },
    headers: { default: new Header({ children: [new Paragraph({ children: [new TextRun({ text: "Analysis HMS - All Modules Bug Report & Testing Manual", size: 18, color: "888888", font: "Calibri" }), new TextRun({ text: "\tDemo Property\t21-Sep-2026", size: 18, color: "888888", font: "Calibri" })], border: { bottom: { style: BorderStyle.SINGLE, size: 4, color: "CCCCCC" } } })] }) },
    footers: { default: new Footer({ children: [new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: "Page ", size: 18, color: "888888", font: "Calibri" }), new TextRun({ children: [PageNumber.CURRENT], size: 18, color: "888888", font: "Calibri" }), new TextRun({ text: " of ", size: 18, color: "888888", font: "Calibri" }), new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 18, color: "888888", font: "Calibri" })] })] }) },
    children,
  }],
});

Packer.toBuffer(doc).then(buf => {
  fs.writeFileSync("HMS_Manuals/Bug_Manual/HMS_All_Modules_Bug_Manual.docx", buf);
  console.log("OK: HMS_Manuals/Bug_Manual/HMS_All_Modules_Bug_Manual.docx");
});
