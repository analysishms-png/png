"""Shared field validators (VB6 ValidationModule.bas port).

ValidateRequiredField / ValidateNumericField / ValidateEmailField /
ValidatePhoneNumber / ValidateDateField — pure functions, no DB.
Return (ok: bool, message: str).
"""
from __future__ import annotations

import datetime as _dt
import re
from typing import Any

_EMAIL_RE = re.compile(r"^[^@\s]+@[^@\s]+\.[^@\s]{2,}$")
_PHONE_RE = re.compile(r"^\+?[\d\s\-()]{7,20}$")
_NAMLESH_VALID_CHARS = re.compile(r"^[A-Za-z\s\-']+$")


# VB6 Asc function - returns ASCII code of last character
def asc(value: Any) -> int:
    """VB6 Asc function - returns ASCII code of string's last character."""
    s = str(value) if value is not None else ""
    if not s:
        return 0
    return ord(s[-1])


def ucase(value: Any) -> str:
    """VB6 UCase function - converts string to uppercase."""
    return str(value).upper() if value else ""


def lcase(value: Any) -> str:
    """VB6 LCase function - converts string to lowercase."""
    return str(value).lower() if value else ""


def validate_required_field(value: Any, label: str = "Field") -> tuple[bool, str]:
    if value is None or str(value).strip() == "":
        return False, f"{label} is required"
    return True, ""


def validate_not_negative(value: Any, label: str = "Field") -> tuple[bool, str]:
    """VB6 ValidateNotNegative: checks value < 0 like Proc_6_4_E8BC38."""
    ok, msg = validate_numeric_field(value, label)
    if not ok:
        return ok, msg
    num = float(str(value).strip())
    if num < 0:
        return False, f"{label} must not be negative"
    return True, ""


def validate_greater_than_zero(value: Any, label: str = "Field") -> tuple[bool, str]:
    """VB6 ValidateGreaterThanZero: checks value <= 0 like Proc_6_5_E8B2D0."""
    ok, msg = validate_numeric_field(value, label)
    if not ok:
        return ok, msg
    num = float(str(value).strip())
    if num <= 0:
        return False, f"{label} must be greater than zero"
    return True, ""


def validate_numeric_field(value: Any, label: str = "Field",
                           minimum: float | None = None,
                           maximum: float | None = None) -> tuple[bool, str]:
    try:
        num = float(str(value).strip())
    except (TypeError, ValueError):
        return False, f"{label} must be numeric"
    if minimum is not None and num < minimum:
        return False, f"{label} must be >= {minimum}"
    if maximum is not None and num > maximum:
        return False, f"{label} must be <= {maximum}"
    return True, ""


def validate_email_field(value: Any, label: str = "Email") -> tuple[bool, str]:
    s = str(value or "").strip()
    if not s:
        return True, ""
    if not _EMAIL_RE.match(s):
        return False, f"{label} is invalid"
    return True, ""


def validate_phone_number(value: Any, label: str = "Phone") -> tuple[bool, str]:
    s = str(value or "").strip()
    if not s:
        return True, ""
    if not _PHONE_RE.match(s):
        return False, f"{label} must be 7-20 digits (optional + - ())"
    return True, ""


def validate_date_field(value: Any, label: str = "Date",
                        date_format: str = "%Y-%m-%d",
                        allow_blank: bool = True) -> tuple[bool, str]:
    if value is None or value == "":
        if allow_blank:
            return True, ""
        return False, f"{label} is required"
    if isinstance(value, (_dt.date, _dt.datetime)):
        return True, ""
    try:
        _dt.datetime.strptime(str(value).strip(), date_format)
        return True, ""
    except ValueError:
        return False, f"{label} must be date (YYYY-MM-DD)"


def validate_all(*checks: tuple[bool, str]) -> tuple[bool, str]:
    """First failing (ok, msg) wins; else (True, '')."""
    for ok, msg in checks:
        if not ok:
            return False, msg
    return True, ""


def validate_patient_name(value: Any, label: str = "Name") -> tuple[bool, str]:
    """VB6 ValidatePatientName: checks length (2-100), valid chars, starts with letter."""
    s = str(value or "").strip()
    if not s:
        return False, f"{label} is required"
    if len(s) < 2 or len(s) > 100:
        return False, f"{label} must be between 2 and 100 characters."
    if not _NAMLESH_VALID_CHARS.match(s):
        return False, f"{label} contains invalid characters. Only letters, spaces, hyphens, and apostrophes are allowed."
    first_char = s[0]
    if not first_char.isalpha():
        return False, f"{label} must start with a letter."
    return True, ""


def validate_emergency_contact_name(value: Any, label: str = "Name") -> tuple[bool, str]:
    """VB6 equivalent: validate emergency contact name."""
    return validate_patient_name(value, label)


def validate_date_range(value: Any, label: str,
                        min_date: str = None, max_date: str = None,
                        date_format: str = "%Y-%m-%d") -> tuple[bool, str]:
    """VB6 ValidateDateRange: checks date is within range."""
    ok, msg = validate_date_field(value, label, date_format)
    if not ok:
        return ok, msg
    s = str(value).strip()
    try:
        dt = _dt.datetime.strptime(s, date_format)
    except ValueError:
        return False, f"{label} must be a valid date."
    if min_date:
        try:
            min_dt = _dt.datetime.strptime(str(min_date), date_format)
            if dt < min_dt:
                return False, f"{label} cannot be before {min_date}."
        except ValueError:
            pass
    if max_date:
        try:
            max_dt = _dt.datetime.strptime(str(max_date), date_format)
            if dt > max_dt:
                return False, f"{label} cannot be after {max_date}."
        except ValueError:
            pass
    return True, ""


def validate_medical_history(value: Any, label: str = "Medical History") -> tuple[bool, str]:
    """VB6 ValidateMedicalHistory: checks for dangerous terms and minimum length."""
    s = str(value or "").strip()
    if not s:
        return True, ""  # Optional field
    if len(s) < 10:
        return False, "Please provide more detailed " + label + "."
    dangerous_terms = ["allergic", "allergy", "severe", "critical", "emergency", "life threatening"]
    s_lower = s.lower()
    for term in dangerous_terms:
        if term in s_lower:
            return True, "Important medical information detected. Please ensure this is reviewed by medical staff."
    return True, ""


def validate_patient_registration(
    patient_name: str,
    age: str,
    contact: str,
    address: str,
    email: str = "",
    medical_history: str = "",
    insured: bool = False,
    policy_number: str = "",
    insurance_provider: str = "",
) -> tuple[bool, str]:
    """VB6 ValidatePatientRegistration: complete patient registration validation."""
    errors = []

    # Validate patient name
    ok, msg = validate_patient_name(patient_name, "Patient Name")
    if not ok:
        errors.append(msg)

    # Validate age
    ok, msg = validate_numeric_field(age, "Age", minimum=0, maximum=150)
    if not ok:
        errors.append(msg)

    # Validate contact/phone
    ok, msg = validate_phone_number(contact, "Contact Number")
    if not ok:
        errors.append(msg)

    # Validate address
    ok, msg = validate_required_field(address, "Address")
    if not ok:
        errors.append(msg)

    # Validate email (if provided)
    if email and email.strip():
        ok, msg = validate_email_field(email, "Email")
        if not ok:
            errors.append(msg)

    # Validate medical history
    ok, msg = validate_medical_history(medical_history, "Medical History")
    if not ok:
        errors.append(msg)

    # Validate insurance if indicated
    if insured:
        ok, msg = validate_required_field(policy_number, "Policy Number")
        if not ok:
            errors.append(msg)
        ok, msg = validate_required_field(insurance_provider, "Insurance Provider")
        if not ok:
            errors.append(msg)

    if errors:
        return False, ". ".join(errors)
    return True, ""


def validate_registration_form(
    patient_name: str,
    age: str,
    contact: str,
    address: str,
    email: str = "",
    medical_history: str = "",
) -> tuple[bool, str]:
    """VB6 ValidateRegistrationForm: simplified patient registration validation."""
    return validate_patient_registration(
        patient_name=patient_name,
        age=age,
        contact=contact,
        address=address,
        email=email,
        medical_history=medical_history,
    )


# Convenient wrapper returning just the boolean (used by VB6 code that checks result)
def validate_registration_result(
    patient_name: str,
    age: str,
    contact: str,
    address: str,
    email: str = "",
    medical_history: str = "",
) -> bool:
    ok, _ = validate_patient_registration(
        patient_name=patient_name,
        age=age,
        contact=contact,
        address=address,
        email=email,
        medical_history=medical_history,
    )
    return ok


def validate_age_field(value: Any, label: str = "Age") -> tuple[bool, str]:
    """VB6 ValidateAgeField: checks age between 0 and 150."""
    ok, msg = validate_numeric_field(value, label, minimum=0, maximum=150)
    if not ok:
        return ok, msg
    return True, ""


def validate_emergency_contact(value: Any, label: str = "Emergency Contact") -> tuple[bool, str]:
    """VB6 ValidateEmergencyContact: validates name and format."""
    # Validate name starts with letter and has valid chars
    ok, msg = validate_patient_name(value, label)
    if not ok:
        return ok, msg
    return True, ""


def generate_error_report(date_from=None, date_to=None) -> list[str]:
    """Generate date-filtered validation error summary."""
    from core.error_handling import generate_error_report as _gen_report
    return _gen_report(date_from, date_to)


def standard_error_handler(exc: BaseException, *,
                           user: str = "", form: str = "",
                           procedure: str = "") -> str:
    """Log + return short user-facing message (VB6 StandardErrorHandler)."""
    from core.error_handling import standard_error_handler as _seh
    return _seh(exc, user=user, form=form, procedure=procedure)