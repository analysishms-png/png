/**
 * Housekeeping BUG MANUAL Generator (Tester Format)
 * Usage: node generate_bug_manual.js
 * Output: HMS_Manuals/Bug_Manual/Housekeeping_Bug_Manual.docx
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
  const sizes = { 1: 32, 2: 26, 3: 24 };
  const lvl = { 1: HeadingLevel.HEADING_1, 2: HeadingLevel.HEADING_2, 3: HeadingLevel.HEADING_3 };
  return new Paragraph({
    children: [new TextRun({ text, bold: true, size: sizes[level], color: level === 1 ? THEME.dark : THEME.color, font: "Calibri" })],
    heading: lvl[level], spacing: { before: 240, after: 120 },
  });
}

function bullet(text, opts = {}) {
  return new Paragraph({ children: [S(text, opts.run || {})], bullet: { level: opts.level || 0 }, spacing: { after: 60 } });
}

function kvTable(rows) {
  return new Table({
    width: { size: PAGE_W, type: DXA },
    rows: rows.map(([k, v]) => new TableRow({
      children: [
        new TableCell({
          width: { size: 2600, type: DXA }, shading: { fill: THEME.light, type: ShadingType.CLEAR },
          margins: { top: 60, bottom: 60, left: 100, right: 100 },
          children: [new Paragraph({ children: [S(k, { bold: true, size: 20, color: THEME.dark })] })],
        }),
        new TableCell({
          width: { size: PAGE_W - 2600, type: DXA },
          margins: { top: 60, bottom: 60, left: 100, right: 100 },
          children: [new Paragraph({ children: [S(v, { size: 20 })] })],
        }),
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
  if (!fs.existsSync(fp)) return [P("[Screenshot available: " + file + "]", { run: { italics: true, color: "999999" } })];
  const sizeOf = (buf) => ({ w: buf.readUInt32LE(16), h: buf.readUInt32LE(20) });
  const buf = fs.readFileSync(fp);
  const { w, h } = sizeOf(buf);
  let dw = maxW, dh = Math.round(h * (maxW / w));
  return [
    new Paragraph({
      children: [new ImageRun({ type: "png", data: buf, transformation: { width: dw, height: dh } })],
      alignment: AlignmentType.CENTER, spacing: { before: 120, after: 40 },
    }),
    new Paragraph({
      children: [S(caption, { italics: true, size: 18, color: "666666" })],
      alignment: AlignmentType.CENTER, spacing: { after: 160 },
    }),
  ];
}

const severityColor = { CRITICAL: "B71C1C", HIGH: "E65100", MEDIUM: "F9A825", LOW: "2E7D32" };

function bugBlock(b) {
  const out = [];
  out.push(new Paragraph({
    children: [
      new TextRun({ text: `[${b.id}] `, bold: true, size: 24, color: THEME.dark, font: "Calibri" }),
      new TextRun({ text: b.title, bold: true, size: 24, font: "Calibri" }),
      new TextRun({ text: `   [${b.severity}]`, bold: true, size: 20, color: "FFFFFF", shading: { fill: severityColor[b.severity] || "757575" }, font: "Calibri" }),
    ],
    spacing: { before: 280, after: 100 },
    border: { bottom: { style: BorderStyle.SINGLE, size: 6, color: THEME.color } },
  }));
  out.push(kvTable([
    ["Screen / Menu", b.screen],
    ["Steps to Reproduce", b.steps],
    ["Expected Result", b.expected],
    ["Actual Result (Bug)", b.actual],
    ["Impact on Operations", b.impact],
  ]));
  out.push(new Paragraph({ children: [], spacing: { after: 60 } }));
  if (b.screens && b.screens.length) {
    out.push(P("Screenshot Evidence:", { run: { bold: true, size: 20 } }));
    b.screens.forEach(([f, cap]) => out.push(...screenshot(f, cap)));
  }
  if (b.note) out.push(new Paragraph({ children: [S("Note: ", { bold: true, size: 20 }), S(b.note, { size: 20, italics: true })], spacing: { after: 120 } }));
  return out;
}

// ───────────────────────────── BUG DATA ─────────────────────────────
const BUGS = [
  {
    id: "BUG-01", severity: "CRITICAL",
    title: "Business Date Galat Hai - Saari Nayi Entries Purani Date Par Ban Rahi Hain",
    screen: "Header (har screen) | Operations > Start Cleaning | Operations > Laundry Send",
    steps: "1. Application me login karo\n2. Top-right header me business date dekho\n3. Operations > Start Cleaning kholo - Date field ka default dekho\n4. Operations > Laundry Send kholo - Send Date ka default dekho",
    expected: "Business date aaj ki (21-Sep-2026) hona chahiye. Saare forms me default aaj ki date aaye.",
    actual: "Header me aur dono forms me date 17-Sep-2026 dikh rahi hai - aaj 21-Sep-2026 hai. 4 din purani date.",
    impact: "17 se 21 Sep tak ki saari cleaning/laundry/stock entries 17-Sep ki date par record ho rahi hain. Reports me date-range filter lagane par data galat jagah count hoga. Day-end/Night Audit process par seedha asar.",
    screens: [["sc_stale_date.png", "Start Cleaning form - Date field me 17-Sep-2026 (aaj 21-Sep-2026 hai)"]],
    note: "Ye testing me sabse pehle check karna chahiye kyunki iske baad ki saari data-entry testing isi date par hoti hai.",
  },
  {
    id: "BUG-02", severity: "CRITICAL",
    title: "Stock Minus Me Ja Raha Hai - System Negative Stock Par Issue Rokta Nahi",
    screen: "Reports > HK Stock Report",
    steps: "1. Reports > HK Stock Report kholo\n2. From Date: 01-Sep-2026, To Date: 21-Sep-2026 dalo\n3. Items select karke Refresh dabao\n4. Coffee / Floor Cleaner / Glass Cleaner ke groups dekho",
    expected: "Stock kabhi zero se neeche nahi jana chahiye. Stock kam ho to issue par warning/block aana chahiye.",
    actual: "Coffee: Opening -45, Closing -52 (7 unit aur issue hue). Floor Cleaner: -4.74. Glass Cleaner: -2.87. System ne negative stock par bhi saare issues allow kar diye.",
    impact: "Stock records galat ho gaye. Valuation/audit reports me negative balances aayenge. Physical stock se mismatch hoga.",
    screens: [["hks_data.png", "HK Stock Report - Coffee ka balance -52.000 (negative)"]],
    note: "Amenities Report me bhi Coffee ka usage 7 qty dikh raha hai jabki stock kabhi positive me aaya hi nahi.",
  },
  {
    id: "BUG-03", severity: "HIGH",
    title: "Ek Room Do Housekeepers Ko Assign Ho Jata Hai (Duplicate Assignment)",
    screen: "Operations > Room Status Board (Pending Inspections) | Operations > Start Cleaning",
    steps: "1. Operations > Start Cleaning me Room 103 ko pehle ek housekeeper ko assign karo\n2. Wahi Room 103 doosre housekeeper ko assign karo - dono save ho jate hain\n3. Operations > Room Status Board kholo, neeche Pending Inspections panel dekho",
    expected: "Ek room ka ek time par sirf ek active assignment hona chahiye. Duplicate par warning aana chahiye.",
    actual: "Room 103 ke 2 pending inspections dikh rahe hain - ek 'DEMO HK 097812' ke liye, ek 'Aman' ke liye. System ne dono allow kiye.",
    impact: "Do housekeepers same room me jayenge. Inspection 2 baar create hogi. Kaam ki duplication aur accountability confusion.",
    screens: [["rsb_pending_insp.png", "Pending Inspections - Room 103 do baar (2 alag housekeepers)"]],
  },
  {
    id: "BUG-04", severity: "HIGH",
    title: "Cleaning Type Save Par Technical Error Message Dikhta Hai (Table/SQL Details User Ko Dikhti Hain)",
    screen: "Masters > Cleaning Type",
    steps: "1. Masters > Cleaning Type kholo\n2. Sirf Name field bharo (jaise 'QA BUG MANUAL')\n3. Estimated Time khali chhodo, Department khali chhodo\n4. Submit dabao",
    expected: "Friendly message aana chahiye: 'Department select karna zaroori hai' type validation.",
    actual: "Error popup me poora technical error dikhta hai: 'Unable to save: SQLSTATE[23000]: Integrity constraint violation: 1048 Column 'esttime' cannot be null (Connection: mysql, SQL: insert into `hkcleaningtype` ... values (<property>, <code>, QA BUG MANUAL, ?, ?, <user>, <timestamp>, a))'. Database table ka naam, column names aur internal values sab user ko dikh gaye.",
    impact: "Unprofessional. Non-technical user confuse hota hai. Internal database details (table name, user id) expose hoti hain. Alag-alag fields skip karne par alag-alag columns ka error aata hai (Department skip = dcode null error, Estimated Time skip = esttime null error).",
    screens: [["ct_raw_sql.png", "Cleaning Type submit par raw SQL error popup - table name aur values visible"]],
    note: "Estimate Time field pattern bhi sirf 'e.g. 00:20' placeholder se hi enforce hota hai - koi strict format validation nahi.",
  },
  {
    id: "BUG-05", severity: "HIGH",
    title: "Housekeeping Report Me Check-Out Ho Chuke Guests Bhi In-House Dikh Rahe Hain",
    screen: "Reports > Housekeeping Report",
    steps: "1. Reports > Housekeeping Report kholo\n2. Date range 01-Sep-2026 se 21-Sep-2026 dalo\n3. Report generate karo\n4. Departure date 16-18 Sep wale guests dhundo",
    expected: "Jinka check-out ho chuka hai wo report me nahi aane chahiye (ya clearly 'Departed' dikhna chahiye).",
    actual: "Departure 16-18 Sep ho chuke guests aaj (21-Sep) bhi in-house/inventory list me hain.",
    impact: "Housekeeping team un rooms ko bhi cleaning list me dekhegi jo khali ho chuke hain. Kaam ki priority galat set hogi.",
    screens: [["hkr.png", "HK Report - past departure guests abhi bhi list me"]],
  },
  {
    id: "BUG-06", severity: "HIGH",
    title: "Laundry Send - Submit Par Kuch Nahi Hota (Na Save, Na Error) Aur Support Popup Khul Jata Hai",
    screen: "Operations > Laundry Send",
    steps: "1. Operations > Laundry Send kholo\n2. Send Date, Sent By, Challan No, Qty bharo\n3. Send button dabao\n4. Screen observe karo (2-3 baar retry karo)",
    expected: "Entry save ho to success message + Send No. next number (LAISS0006) par advance ho. Fail ho to clear error message.",
    actual: "Dono attempts me kuch nahi hua - na success, na error. Send No. LAISS0005 par hi raha (matlab save nahi hua). Sath hi submit karte hi support-ticket modal khul jata hai jiska is form se koi sambandh nahi.",
    impact: "Laundry contractor challan record nahi hota. User ko pata hi nahi chalta ki save hua ya nahi - bar-bar retry karega. Support popup user ko form se hata deta hai.",
    screens: [["ls_after.png", "Laundry Send - submit ke baad bhi Send No. LAISS0005 (unchanged), support modal khula"]],
  },
  {
    id: "BUG-07", severity: "MEDIUM",
    title: "Laundry Send - Item Stock 0 Hone Par Qty Field Chupchaap Lock Hai, Koi Guide Nahi",
    screen: "Operations > Laundry Send (item rows)",
    steps: "1. Operations > Laundry Send kholo\n2. Item rows me quantity column dekho\n3. Qty badhane ki koshish karo",
    expected: "Stock na hone par clear message: 'Is item ka stock available nahi hai - pehle stock receive/issue karo' + input disabled state.",
    actual: "Qty input max 0 par locked hai (kuch items) - koi message nahi, koi reason nahi. User samajh nahi pata aage kaise badhe.",
    impact: "User stuck ho jata hai. Support team par aane wale calls badhenge.",
    note: "BUG-06 (silent fail) ka sambandhit root cause ho sakta hai - qty 0 rows ke saath submit par kuch nahi hota.",
  },
  {
    id: "BUG-08", severity: "MEDIUM",
    title: "Lost & Found Ka Direct URL 404 Deta Hai",
    screen: "Operations > Lost & Found",
    steps: "1. Browser me directly /lostfoundform URL kholo (purana bookmark/link)",
    expected: "Page khulna chahiye ya sahi page par redirect hona chahiye.",
    actual: "404 NOT FOUND page aata hai. Sahi URL /lostfound hai - purana link dead-end hai.",
    impact: "Purane bookmarks/links se user page nahi khol payega. Navigation inconsistency.",
    screens: [["lf_blank.png", "/lostfoundform par 404 NOT FOUND"]],
  },
  {
    id: "BUG-09", severity: "MEDIUM",
    title: "Lost & Found - Entry Save Hoti Hai Par Success Message Nahi Aata",
    screen: "Operations > Lost & Found",
    steps: "1. Operations > Lost & Found kholo\n2. Date, Item, Location bhar ke Save dabao\n3. Screen observe karo",
    expected: "Save hone par success toast/popup aaye: 'Entry saved' jaisa confirmation.",
    actual: "Entry list me save ho jati hai, par koi success message nahi dikhta. User ko refresh karke list me ja kar confirm karna padta hai.",
    impact: "Double-entry ka risk - user sochta hai save nahi hua aur dobara entry karta hai.",
  },
  {
    id: "BUG-10", severity: "LOW",
    title: "Floor Master - Nayi Entry List Ke Page-2 Par Chhup Jati Hai, Success Message Nahi Aata",
    screen: "Masters > Floor",
    steps: "1. Masters > Floor kholo\n2. Naya floor add karo (jaise 'DEMO FLOOR TEST')\n3. Screen dekho",
    expected: "Save par success message + nayi entry dikhe (highlight ya first page par).",
    actual: "Entry save hoti hai par list ke page-2 par chali jati hai. Screen par koi success message nahi. Pehli nazar me lagta hai save fail hua.",
    impact: "User confusion, possible duplicate entry.",
  },
  {
    id: "BUG-11", severity: "LOW",
    title: "Start Cleaning / Cleaning Complete - Dono Par Silent Response (Koi Confirmation Nahi)",
    screen: "Operations > Start Cleaning | Operations > Cleaning Entry",
    steps: "1. Operations > Start Cleaning - room select karke Start dabao\n2. Form observe karo\n3. Cleaning Entry me ja kar wahi cleaning complete karo\n4. Screen observe karo",
    expected: "Dono actions par confirmation aaye: 'Cleaning started for Room 207' / 'Cleaning #83 completed'.",
    actual: "Dono baar form chupchaap reset ho jata hai. Kaam background me ho jata hai (Room Status Board me status change dikhta hai), par us waqt user ko kuch pata nahi chalta.",
    impact: "User double-click karega - jisse BUG-03 ka duplicate assignment aur badhega. Operation confirm karne ke liye har baar Room Status Board me jana padega.",
    screens: [["sc_after.png", "Start Cleaning - submit ke baad form blank/reset, koi message nahi"]],
  },
];

// ───────────────────────────── DOCUMENT ─────────────────────────────
const children = [];

// Cover
children.push(new Paragraph({ spacing: { before: 2000 }, children: [] }));
children.push(new Paragraph({
  children: [new TextRun({ text: "HOUSEKEEPING MODULE", bold: true, size: 56, color: THEME.dark, font: "Calibri" })],
  alignment: AlignmentType.CENTER, spacing: { after: 200 },
}));
children.push(new Paragraph({
  children: [new TextRun({ text: "BUG REPORT & TESTING MANUAL", bold: true, size: 40, color: THEME.color, font: "Calibri" })],
  alignment: AlignmentType.CENTER, spacing: { after: 400 },
}));
children.push(new Paragraph({
  children: [new TextRun({ text: "Data Entry | Masters | Operations | Reports", size: 26, color: "555555", font: "Calibri" })],
  alignment: AlignmentType.CENTER, spacing: { after: 1200 },
}));
children.push(kvTable([
  ["Property", "Demo Property"],
  ["Test Period", "September 2026 (17-Sep to 21-Sep observations)"],
  ["Report Date", "21-Sep-2026"],
  ["Tested By", "QA / Testing Team"],
  ["Total Bugs Found", "11  (2 Critical, 4 High, 3 Medium, 2 Low)"],
  ["Screens Tested", "12+ screens across Masters, Operations, Reports, Laundry"],
  ["Purpose", "Team meeting discussion & fix prioritization"],
]));
children.push(new Paragraph({ children: [new PageBreak()] }));

// TOC
children.push(new Paragraph({
  children: [new TextRun({ text: "TABLE OF CONTENTS", bold: true, size: 32, color: THEME.dark, font: "Calibri" })],
  spacing: { after: 200 },
}));
children.push(new TableOfContents("Contents", { hyperlink: true, headingStyleRange: "1-2" }));
children.push(new Paragraph({ children: [new PageBreak()] }));

// Section 1 - Summary
children.push(H(1, "1. Summary - Ek Nazar Me"));
children.push(P("Housekeeping module ki data-entry (Masters + Operations) aur Reports ki testing September 2026 me ki gayi. Total 11 issues mile - jinme 2 business ko directly rokne wale (Critical) aur 4 serious data-integrity/user-experience (High) issues hain."));
children.push(bugTable(
  [
    ["Severity", "Count", "Bug IDs", "Ek Line Me"],
    ["CRITICAL", "2", "BUG-01, BUG-02", "Business date purani; stock minus me ja raha hai"],
    ["HIGH", "4", "BUG-03 se BUG-06", "Duplicate assignment, technical error popup, galat guest list, laundry save fail"],
    ["MEDIUM", "3", "BUG-07 se BUG-09", "Qty lock bina message, 404 URL, missing success feedback"],
    ["LOW", "2", "BUG-10, BUG-11", "List me entry chhupna, silent form response"],
  ],
  [1500, 900, 2500, PAGE_W - 4900]
));
children.push(new Paragraph({ spacing: { after: 100 }, children: [] }));
children.push(P("Kya sahi chal raha hai:", { run: { bold: true } }));
[
  "Login aur saare Housekeeping screens khul rahe hain",
  "Housekeeper Master - naya housekeeper add hota hai, duplicate naam par sahi error aata hai",
  "Floor Master aur Cleaning Type - department/time bharne par save ho jate hain",
  "Room Status Board - 54 rooms, counts aur filters sahi kaam kar rahe hain",
  "Start Cleaning se Complete tak ka poora flow functionally chalta hai (status C + Inspection Pending update hota hai)",
  "Cleaning Register, HK Stock Report, Amenities Report - data sahi render hota hai",
  "Lost & Found - mandatory fields ki validation lagti hai, entry save hoti hai",
].forEach(t => children.push(bullet("+ " + t)));

// Section 2 - Critical
children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "2. Critical Bugs (Turant Fix Honi Chahiye)"));
BUGS.filter(b => b.severity === "CRITICAL").forEach(b => children.push(...bugBlock(b)));

// Section 3 - High
children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "3. High Severity Bugs"));
BUGS.filter(b => b.severity === "HIGH").forEach(b => children.push(...bugBlock(b)));

// Section 4 - Medium/Low
children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "4. Medium & Low Severity Bugs"));
BUGS.filter(b => b.severity === "MEDIUM" || b.severity === "LOW").forEach(b => children.push(...bugBlock(b)));

// Section 5 - Data issues
children.push(new Paragraph({ children: [new PageBreak()] }));
children.push(H(1, "5. System Me Abhi Padi Galat Data (Cleanup Chahiye)"));
children.push(P("Testing ke dauran jo galat/incorrect data system me mila, wo meeting me discuss karke cleanup ka plan banana hoga:"));
children.push(bugTable(
  [
    ["#", "Data Issue", "Kahan Dikha", "Kya Karna Hoga"],
    ["1", "Coffee stock -52, Floor Cleaner -4.74, Glass Cleaner -2.87 (negative)", "HK Stock Report", "Adjustment/Opening entry daal ke stock positive karna hoga"],
    ["2", "17 se 21 Sep ki entries 17-Sep ki date par padi hain", "Saare vouchers/reports", "Date correction ya re-entry - business decision"],
    ["3", "Room 103 ke 2 active assignments", "Room Status Board / Pending Inspections", "Ek assignment cancel karna hoga"],
    ["4", "Test entries (DEMO HK, DEMO FLOOR, QA BUG MANUAL, QA housekeeper, QA Lost & Found)", "Masters + Operations", "Testing ke baad ye entries delete karni hongi"],
  ],
  [500, 3300, 2800, PAGE_W - 6600]
));

// Section 6 - Meeting agenda
children.push(H(1, "6. Meeting Agenda - Fix Priority Suggestion"));
children.push(bugTable(
  [
    ["Priority", "Bugs", "Kyun"],
    ["Is week", "BUG-01, BUG-02, BUG-04", "Date galat hai to saari nayi testing/data galat hogi; stock integrity; error popup user-facing"],
    ["Next sprint", "BUG-03, BUG-05, BUG-06", "Kaam ki duplication rokna; report sahi karna; laundry process unblock karna"],
    ["Backlog", "BUG-07 se BUG-11", "User-experience improvements - messages, redirects, feedback"],
  ],
  [1700, 2600, PAGE_W - 4300]
));
children.push(new Paragraph({ spacing: { after: 150 }, children: [] }));
children.push(P("Note: Ye report sirf testing observations par based hai - kisi bhi bug ka fix karne se pehle development team se expected behaviour confirm karna chahiye.", { run: { italics: true, size: 20, color: "777777" } }));

// Section 7 - How to retest
children.push(H(1, "7. Retest Kaise Karein (Har Bug Ke Liye Quick Checklist)"));
children.push(P("Fix aane ke baad har bug ko isi order me retest karo:"));
children.push(bugTable(
  [
    ["Bug", "Retest Step (Sirf Ye Confirm Karna Hai)"],
    ["BUG-01", "Header date aur Start Cleaning/Laundry Send date = aaj ki date"],
    ["BUG-02", "Full issue karte waqt stock zero se neeche na jaye, warning aaye"],
    ["BUG-03", "Same room dobara assign karo - system warning/block de"],
    ["BUG-04", "Department khali chhod ke submit - friendly message aaye, SQL na dikhe"],
    ["BUG-05", "Check-out ho chuka guest HK Report me na aaye"],
    ["BUG-06", "Laundry Send par success message + Send No. next par advance ho"],
    ["BUG-07", "Stock-0 item par clear guide message dikhe"],
    ["BUG-08", "/lostfoundform sahi page par le jaye"],
    ["BUG-09", "Lost & Found save par success toast dikhe"],
    ["BUG-10", "Nayi floor entry screen par highlight ho"],
    ["BUG-11", "Start/Complete par confirmation message dikhe"],
  ],
  [1300, PAGE_W - 1300]
));

// Doc
const doc = new Document({
  features: { updateFields: true },
  styles: { default: { document: { run: { font: "Calibri", size: 22 } } } },
  numbering: { config: [] },
  sections: [{
    properties: { page: { margin: { top: 1080, bottom: 1080, left: 1440, right: 1440 } } },
    headers: {
      default: new Header({
        children: [new Paragraph({
          children: [
            new TextRun({ text: "Housekeeping Module - Bug Report & Testing Manual", size: 18, color: "888888", font: "Calibri" }),
            new TextRun({ text: "\tDemo Property\t21-Sep-2026", size: 18, color: "888888", font: "Calibri" }),
          ],
          border: { bottom: { style: BorderStyle.SINGLE, size: 4, color: "CCCCCC" } },
        })],
      }),
    },
    footers: {
      default: new Footer({
        children: [new Paragraph({
          alignment: AlignmentType.CENTER,
          children: [
            new TextRun({ text: "Page ", size: 18, color: "888888", font: "Calibri" }),
            new TextRun({ children: [PageNumber.CURRENT], size: 18, color: "888888", font: "Calibri" }),
            new TextRun({ text: " of ", size: 18, color: "888888", font: "Calibri" }),
            new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 18, color: "888888", font: "Calibri" }),
          ],
        })],
      }),
    },
    children,
  }],
});

fs.mkdirSync("HMS_Manuals/Bug_Manual", { recursive: true });
Packer.toBuffer(doc).then(buf => {
  fs.writeFileSync("HMS_Manuals/Bug_Manual/Housekeeping_Bug_Manual.docx", buf);
  console.log("OK: HMS_Manuals/Bug_Manual/Housekeeping_Bug_Manual.docx");
});
