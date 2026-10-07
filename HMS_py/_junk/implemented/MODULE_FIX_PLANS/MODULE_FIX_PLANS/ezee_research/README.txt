eZee / eZee Absolute / eZee FrontDesk / eZee Optimus — RESEARCH FOLDER
====================================================================
Banane ka date: Sep 2026
Kis liye: HMIS/Laravel HMS project (analysishms) me eZee jaise features + POS module reference ke liye.

FOLDER STRUCTURE
----------------
ezee_research\
  README.txt                      <- ye file, overview
  links_and_videos.txt            <- saare web + YouTube links ek jagah
  features\
    eZee-Optimus-brochure.pdf     <- official product PDF (1.6 MB), sachme kaafi kuch feature isme hai
    ezee_frontdesk_features.txt   <- FrontDesk (PMS) module-wise features
    ezee_absolute_features.txt    <- eZee Absolute (PMS + modules) features
    ezee_optimus_pos_features.txt <- eZee Optimus (Restaurant POS) feature + hamare project me mapping
    modules_notes.txt             <- pura eZee ekosystem (Absolute, Optimus, Reservation, Centrix, etc.)
  screenshots\
    frontdesk\  (19 PNG)          <- Room Layout, Stay View, Check In, Checkout, HK, Maintenance, GRM, Reports, etc.
    absolute\    (16 PNG)         <- Walk-in, Room View, Night Audit, Dashboard, Reports, Housekeeping, etc.
    optimus\     (8 PNG + banner) <- POS UI: Billing, Menu Mgmt, Table Mgmt, Shift, Day Close, Inventory, Alerts, Privileges

SOURCE (images kahan se aaye)
----------------------------
Klisstic eZee sites ab live nahi hain (rebrand ho chuki hai, Yanolja Cloud Solution),
isliye screenshots Wayback Machine (web.archive.org) ke official pages ke snapshots se download kiye:
  - FrontDesk:  web.archive.org snapshot 2026-05-21 of www.ezeefrontdesk.com/screenshots.php
  - Absolute:   web.archive.org snapshot 2024-05-16 of www.ezeeabsolute.com/screenshots.php
  - Optimus:    web.archive.org snapshot 2019-07-22 of www.ezeeoptimus.com/features.php + homepage banner

NOTE: eZee ka source code proprietary/closed-source hai, isliye yahan sirf docs/screenshots/images/marketing.
Koi crack/pirated version download Nahi karna (legal + malware risk). Hamare project me POINTS ko yen isko REFERENCE
mujhe use karke implement kar sakte hain.

KEY TTACTICAL POINTS (hamare Laravel project ke liye)
------------------------------------------------------
- Estimated Bill / Pre-bill  -> eZee me "Pre Checkout Settlement" concept
- Move Bill / Folio Transfer -> FrontDesk: "Transfer folio charges to another room" (link links_and_videos me)
- POS item discount + split  -> Optimus: "Split bill by seat in Restaurant POS" (link me) + item-wise discount
- Day close, shift mgmt, table mgmt, KOT, delivery aggregator integration Optimus ki core skills hain