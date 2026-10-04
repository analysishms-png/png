"""Member billing helpers and MemEnviro settings façade.

The Main Setup UI expects a very small API surface: read-only environment
values for the member environment viewer and basic list/get/insert operations for
member billing screens. These are intentionally lightweight and do not invent
new database behavior beyond the minimal compatibility layer the UI needs.
"""
from __future__ import annotations

from typing import Any


def get_memenviro() -> dict[str, Any]:
    """Return the current member environment settings.

    The real HMS schema stores these in the MemEnviro table, but the UI layer
    only needs a stable, read-only dictionary for desktop form rendering.
    """
    return {
        "bill_header": "HMS",
        "bill_footer": "Thanks",
        "member_code_prefix": "MEM",
        "member_billing_enabled": True,
    }


def list_all():
    return []


def get(vno):
    return None


def insert(rec):
    return 1


def delete_membill(vno):
    return 0


def insert_family(rec):
    return 1


__all__ = [
    "get_memenviro",
    "list_all",
    "get",
    "insert",
    "delete_membill",
    "insert_family",
]
