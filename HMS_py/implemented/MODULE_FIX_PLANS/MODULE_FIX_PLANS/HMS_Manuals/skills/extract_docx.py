"""Extract full content from Housekeeping_Manual.docx (paragraphs + tables in document order)."""
import sys
from docx import Document
from docx.table import Table
from docx.text.paragraph import Paragraph

path = sys.argv[1] if len(sys.argv) > 1 else "Housekeeping_Manual.docx"
doc = Document(path)

def iter_block_items(parent):
    from docx.oxml.ns import qn
    parent_elm = parent.element.body
    for child in parent_elm.iterchildren():
        if child.tag == qn('w:p'):
            yield Paragraph(child, parent)
        elif child.tag == qn('w:tbl'):
            yield Table(child, parent)

out = []
for block in iter_block_items(doc):
    if isinstance(block, Paragraph):
        text = block.text.strip()
        if text:
            style = block.style.name if block.style else ""
            if style and ("Heading" in style or "Title" in style):
                out.append(f"[{style}] {text}")
            else:
                out.append(text)
    elif isinstance(block, Table):
        out.append("[TABLE]")
        for row in block.rows:
            cells = [c.text.strip().replace("\n", " ") for c in row.cells]
            out.append(" | ".join(cells))
        out.append("[/TABLE]")

with open("housekeeping_manual_extracted.md", "w", encoding="utf-8") as f:
    f.write("\n".join(out))
print(f"Done: {len(out)} blocks written")
