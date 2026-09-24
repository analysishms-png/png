"""Test import and basic operations"""
import os
os.environ["QT_QPA_PLATFORM"] = "offscreen"

from HMS_py.core import db
db.ensure_paths()
print("Paths OK")

from HMS_py.ui import partial_forms_ui as pf
print("Import OK")

from HMS_py.core import fa_masters_ops as fmo
print("FA ops OK")

# Test core probes
print("tdscat_list:", len(fmo.tdscat_list()))
print("acgroup_list:", len(fmo.acgroup_list()))
print("subgroup_list:", len(fmo.subgroup_list(limit=50)))
print("narr_list:", len(fmo.narr_list()))
print("dep_opstk_list:", len(fmo.dep_opstk_list()))
print("budget_view:", len(fmo.budget_view()))
print("tdscat_next_code:", fmo.tdscat_next_code())
print("acgroup_next_code:", fmo.acgroup_next_code())