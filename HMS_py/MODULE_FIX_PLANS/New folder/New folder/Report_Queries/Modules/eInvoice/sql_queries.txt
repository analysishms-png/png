# ==========================================================
# Module: eInvoice
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: eInvoiceEnviro
-- --------------------------------------------
Select Top 1 * From eInvoiceEnviro;

-- --------------------------------------------
-- Query 2
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Select QrCodeImage,IRN,AckNo,AckDt From eInvoiceBill1
    Where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [eInvoiceBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceEnviro]  NOT present in visahl.sql dump (schema unknown)
