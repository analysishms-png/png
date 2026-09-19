HMS MODULE LOGIC PLAN
=====================

Project root:
C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py

Source of truth:
- FODER\*.frm / .bas / .cls
- Python implementation under HMS_py\core and HMS_py\ui
- Live SQL Server database (KailashData2526)
- Analysis.ini and project Temp/Reports folders

Purpose:
This folder captures the practical VB6-to-Python logic map, not a line-by-line conversion.
We focus on business behavior, database contracts, temp/report usage, and missing logic that must be repaired in Python.

Core rule:
VB6 behavior is first evidence.
Database schema and live data are second evidence.
Python code must preserve both, not invent a new model.

Module map:
1) Foundation / setup
2) Reservation / Front Office
3) Room status / housekeeping
4) Check-in / folio / charge posting
5) Reports / Crystal / Temp usage
6) Missing logic / debug / fix notes

Important correlation:
- VB6 forms in FODER correspond to Python modules in HMS_py\core and HMS_py\ui.
- Example mapping:
  - RsBookingEntry.frm -> reservation.py
  - FdRoomDisplay.frm / FrmHouseStatus.frm -> roomstatus.py
  - fdCheckIn.frm / fdDisplayFolio.frm -> checkin.py / folio.py
  - frmCompany.frm -> company.py
  - frmPassword.frm -> auth.py
  - MDIForm1.frm -> shell.py and menu.py

Safety:
- Do not overwrite legacy DB data.
- Do not delete .rpt, .dll, .ocx, .ini or DB files without confirming purpose.
- Use project-local Temp and Report paths, not random global writes.

Primary evidence now available:
- SQL Server reachable via pyodbc
- Project-local Analysis.ini is active
- Live UserMast and Booking tables confirm logic behavior
- Reservation missing logic was reproduced and fixed with evidence
