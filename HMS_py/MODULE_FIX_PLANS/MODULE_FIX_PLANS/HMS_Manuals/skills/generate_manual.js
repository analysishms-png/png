/**
 * HMS Module Manual Generator
 * Usage: node generate_manual.js <config.json>
 * Config schema: see SKILL.md | Output: <output>.docx
 */
const fs = require("fs");
const path = require("path");
const {
 Document, Packer, Paragraph, TextRun, HeadingLevel, AlignmentType,
 Table, TableRow, TableCell, WidthType, ShadingType, BorderStyle,
 ImageRun, PageBreak, LevelFormat, Header, Footer, PageNumber, TableOfContents,
} = require("docx");

const cfg = JSON.parse(fs.readFileSync(process.argv[2], "utf-8"));
const THEME = cfg.theme || { color: "00897B", dark: "00695C", light: "E0F2F1" };
const IMG_DIR = cfg.imageRoot || ".";

const DXA = WidthType.DXA;
const PAGE_W = 12240 - 1440 - 1440; // letter - margins

function h1(text) {
 return new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun({ text, bold: true, color: THEME.dark })] });
}
function h2(text) {
 return new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun({ text, bold: true, color: THEME.color })] });
}
function h3(text) {
 return new Paragraph({ heading: HeadingLevel.HEADING_3, children: [new TextRun({ text, bold: true })] });
}
function para(text, opts = {}) {
 return new Paragraph({ children: [new TextRun({ text, size: 22, ...opts })], spacing: { after: 120 } });
}
function navPath(text) {
 return new Paragraph({
 children: [new TextRun({ text: "Navigation Path: ", bold: true, size: 22, color: THEME.dark }),
 new TextRun({ text, italics: true, size: 22 })],
 spacing: { after: 120 },
 });
}
function bullets(items) {
 return items.map(t => new Paragraph({
 numbering: { reference: "bullets", level: 0 },
 children: [new TextRun({ text: t, size: 22 })],
 spacing: { after: 60 },
 }));
}
function steps(items) {
 return items.map(t => new Paragraph({
 numbering: { reference: "steps", level: 0 },
 children: [new TextRun({ text: t, size: 22 })],
 spacing: { after: 60 },
 }));
}
function makeTable(headers, rows) {
 const n = headers.length;
 const colW = Math.floor(PAGE_W / n);
 const widths = Array(n).fill(colW);
 widths[n - 1] = PAGE_W - colW * (n - 1);
 const headRow = new TableRow({
 tableHeader: true,
 children: headers.map(hh => new TableCell({
 width: { size: colW, type: DXA },
 shading: { type: ShadingType.CLEAR, fill: THEME.color },
 margins: { top: 60, bottom: 60, left: 100, right: 100 },
 children: [new Paragraph({ children: [new TextRun({ text: hh, bold: true, color: "FFFFFF", size: 20 })] })],
 })),
 });
 const bodyRows = rows.map((r, i) => new TableRow({
 children: r.map(c => new TableCell({
 width: { size: colW, type: DXA },
 shading: { type: ShadingType.CLEAR, fill: i % 2 ? "F5F5F5" : "FFFFFF" },
 margins: { top: 40, bottom: 40, left: 100, right: 100 },
 children: [new Paragraph({ children: [new TextRun({ text: String(c), size: 20 })] })],
 })),
 }));
 return new Table({ columnWidths: widths, width: { size: PAGE_W, type: DXA }, rows: [headRow, ...bodyRows] });
}
function figure(relPath, caption) {
 const abs = path.join(IMG_DIR, relPath);
 if (!fs.existsSync(abs)) {
 return [para("[Screenshot pending: " + relPath + "]", { italics: true, color: "999999" })];
 }
 const buf = fs.readFileSync(abs);
 // PNG width/height parse from IHDR
 const w = buf.readUInt32BE(16), h = buf.readUInt32BE(20);
 const dispW = 600;
 const dispH = Math.round(h * (dispW / w));
 return [
 new Paragraph({
 alignment: AlignmentType.CENTER,
 children: [new ImageRun({ type: "png", data: buf, transformation: { width: dispW, height: dispH } })],
 spacing: { before: 120, after: 40 },
 }),
 new Paragraph({
 alignment: AlignmentType.CENTER,
 children: [new TextRun({ text: caption || "", italics: true, size: 18, color: "666666" })],
 spacing: { after: 160 },
 }),
 ];
}
function screenSection(s) {
 const out = [];
 out.push(h1(s.title));
 if (s.navPath) out.push(navPath(s.navPath));
 if (s.screenshot) out.push(...figure(s.screenshot, s.caption || s.title));
 if (s.intro) out.push(para(s.intro));
 for (const sub of s.subsections || []) {
 out.push(h3(sub.title));
 if (sub.navPath) out.push(navPath(sub.navPath));
 if (sub.screenshot) out.push(...figure(sub.screenshot, sub.caption || sub.title));
 if (sub.paragraph) out.push(para(sub.paragraph));
 if (sub.table) out.push(makeTable(sub.table.headers, sub.table.rows));
 if (sub.bullets) out.push(...bullets(sub.bullets));
 if (sub.steps) out.push(...steps(sub.steps));
 out.push(new Paragraph({ children: [], spacing: { after: 80 } }));
 }
 return out;
}

// ---- Build document ----
const children = [];

// Cover page
children.push(
 new Paragraph({ spacing: { before: 2400 } }),
 new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: cfg.module, bold: true, size: 72, color: THEME.color })] }),
 new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: "Complete Operations Manual", size: 32, color: THEME.dark })], spacing: { after: 400 } }),
 new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: cfg.subtitle || "Master · Operations · Transactions · Reports · Appendix", size: 24 })] }),
 new Paragraph({ spacing: { before: 600 } }),
 new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: cfg.property || "Analysis HMS Property", size: 24, bold: true })] }),
 new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: cfg.version || "", size: 22 })] }),
 new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: "Software: Analysis HMS | analysishms.com | +91 9161380170", size: 20, color: "666666" })] }),
 new Paragraph({ children: [new PageBreak] }),
);

// TOC
children.push(h1("Table of Contents"));
children.push(new TableOfContents("Table of Contents", { hyperlink: true, headingStyleRange: "1-3" }));

for (const sec of cfg.sections) {
 if (sec.pageBreakBefore) children.push(new Paragraph({ children: [new PageBreak] }));
 children.push(...screenSection(sec));
}

const doc = new Document({
 numbering: {
 config: [
 { reference: "bullets", levels: [{ level: 0, format: LevelFormat.BULLET, text: "•", alignment: AlignmentType.LEFT, style: { paragraph: { indent: { left: 360, hanging: 200 } } } }] },
 { reference: "steps", levels: [{ level: 0, format: LevelFormat.DECIMAL, text: "%1.", alignment: AlignmentType.LEFT, style: { paragraph: { indent: { left: 360, hanging: 240 } } } }] },
 ],
 },
 styles: {
 default: { document: { run: { font: "Calibri", size: 22 } } },
 },
 features: { updateFields: true },
 sections: [{
 properties: {},
 headers: { default: new Header({ children: [new Paragraph({ alignment: AlignmentType.RIGHT, children: [new TextRun({ text: cfg.header || cfg.module + " Manual", size: 16, color: "999999" })] })] }) },
 footers: {
 default: new Footer({
 children: [new Paragraph({
 alignment: AlignmentType.CENTER,
 children: [
 new TextRun({ text: (cfg.footerText || "Analysis HMS") + " | Page ", size: 16, color: "999999" }),
 new TextRun({ children: [PageNumber.CURRENT], size: 16, color: "999999" }),
 ],
 })],
 }),
 },
 children,
 }],
});

Packer.toBuffer(doc).then(buf => {
 const outPath = process.argv[3] || cfg.output;
 fs.writeFileSync(outPath, buf);
 console.log("Written:", outPath, "(" + Math.round(buf.length / 1024) + " KB)");
});
