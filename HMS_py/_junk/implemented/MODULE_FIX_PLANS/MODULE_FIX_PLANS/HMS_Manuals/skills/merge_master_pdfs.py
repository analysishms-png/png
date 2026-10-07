# -*- coding: utf-8 -*-
"""Dono combined Master PDFs rebuild karta hai (Hinglish + English), bookmarks ke saath."""
import os, sys
from pypdf import PdfWriter, PdfReader
sys.stdout.reconfigure(encoding='utf-8')

TMP = 'HMS_Manuals/_pdf_temp'
MODULE_ORDER = [
    ('Housekeeping',  'Housekeeping_Module_Manual'),
    ('Front Office',  'FrontOffice_Module_Training_Manual'),
    ('Reservation',   'Reservation_Module_Training_Manual'),
    ('POS',           'POS_Module_Training_Manual'),
    ('Finance',       'Finance_Module_Training_Manual'),
    ('Inventory',     'Inventory_Module_Training_Manual'),
    ('Banquet',       'Banquet_Module_Training_Manual'),
    ('Night Audit',   'NightAudit_Module_Training_Manual'),
    ('HR-Payroll',    'HRPayroll_Module_Training_Manual'),
    ('Maintenance',   'Maintenance_Module_Training_Manual'),
    ('Mall Management','MallManagement_Module_Training_Manual'),
    ('Members Mgmt',  'MembersMgmt_Module_Training_Manual'),
    ('EXTRAs',        'Extras_Module_Training_Manual'),
]

def build(suffix, outname):
    w = PdfWriter()
    total = 0
    page_counts = {}
    for label, base in MODULE_ORDER:
        f = base + suffix + '.pdf'
        r = PdfReader(os.path.join(TMP, f))
        n = len(r.pages)
        page_counts[label] = n
        w.append(r)
        total += n
    start = 0
    for label, base in MODULE_ORDER:
        w.add_outline_item(label, start)
        start += page_counts[label]
    out = os.path.join('HMS_Manuals', outname)
    with open(out, 'wb') as fh:
        w.write(fh)
    print(outname, ':', total, 'pages,', os.path.getsize(out)//1024, 'KB')

build('', 'Analysis_HMS_Master_Manual_ALL_Modules.pdf')
build('_English', 'Analysis_HMS_Master_Manual_ALL_Modules_English.pdf')
print('BOTH MASTERS REBUILT')
