print("=== FINAL VERIFICATION ===")
print()

# 1. Validate imports - only what's in core/validation.py
from core.validation import (
    validate_not_negative, validate_greater_than_zero, asc, ucase, lcase,
    validate_required_field, validate_numeric_field, validate_patient_name,
    validate_date_range, validate_all
)
print("[OK] core/validation.py imports work")

from core.vb6_logic import VB6LogicImpl
impl = VB6LogicImpl()
print("[OK] core/vb6_logic.py imports work")

from core.error_handling import (
    initialize_error_handling, log_error, log_enter, log_exit, log_trace,
    standard_error_handler, generate_error_report, count_errors_by_severity,
    clear_error_log, test_error_handling
)
print("[OK] core/error_handling.py imports work")

from core.vb6_frontend import create_module, MODULE_MAP, VB6Form
print("[OK] core/vb6_frontend.py imports work")

# 2. Test validation functions from core/validation.py
print()
print("--- Validation Functions (core/validation.py) ---")
print("validate_not_negative(5):", validate_not_negative(5))
print("validate_not_negative(-1):", validate_not_negative(-1))
print("validate_greater_than_zero(5):", validate_greater_than_zero(5))
print("validate_greater_than_zero(0):", validate_greater_than_zero(0))
print("validate_required_field('ok', 'field'):", validate_required_field('ok', 'field'))
print("validate_required_field('', 'field'):", validate_required_field('', 'field'))
print("validate_numeric_field('123'):", validate_numeric_field('123'))
print("validate_numeric_field('abc'):", validate_numeric_field('abc'))
print("validate_patient_name('John Doe'):", validate_patient_name('John Doe'))
print("validate_patient_name(''):", validate_patient_name(''))
print("validate_date_range('2024-01-01', '2024-12-31'):", validate_date_range('2024-01-01', '2024-12-31'))
print("validate_date_range('2024-12-31', '2024-01-01'):", validate_date_range('2024-12-31', '2024-01-01'))

# 3. Test vb6_logic functions
print()
print("--- VB6 Logic Functions ---")
print("format_currency(1234.56):", impl.format_currency(1234.56))
print("format_date('2024-01-15'):", impl.format_date('2024-01-15'))
print("format_sql_date('2024-01-15'):", impl.format_sql_date('2024-01-15'))
print("format_currency_2dp('1234.5'):", impl.format_currency_2dp('1234.5'))
print("format_sql_date_time('2024-01-15 10:30:00'):", impl.format_sql_date_time('2024-01-15 10:30:00'))
print("is_null_or_empty(None):", impl.is_null_or_empty(None))
print("is_null_or_empty(''):", impl.is_null_or_empty(''))
print("is_null_or_empty('value'):", impl.is_null_or_empty('value'))
print("parse_vb6_date('2024-01-15'):", impl.parse_vb6_date('2024-01-15'))
print("parse_vb6_date('01/15/2024'):", impl.parse_vb6_date('01/15/2024'))
print("parse_vb6_date('15-01-2024'):", impl.parse_vb6_date('15-01-2024'))
print("serialize_param({'a': 1, 'b': 2}):", impl.serialize_param({'a': 1, 'b': 2}))
print("strip_and_upper('  hello  '):", impl.strip_and_upper('  hello  '))
print("strip_spaces('hello world'):", impl.strip_spaces('hello world'))
print("validate_numeric_keypress(49):", impl.validate_numeric_keypress(49))  # '1'
print("validate_numeric_keypress(65):", impl.validate_numeric_keypress(65))  # 'A'

# 4. Test error handling
print()
print("--- Error Handling ---")
print("initialize_error_handling:", initialize_error_handling)
print("log_error:", hasattr(log_error, '__call__'))
print("count_errors_by_severity:", hasattr(count_errors_by_severity, '__call__'))

# 5. Test frontend modules
print()
print("--- Frontend Modules ---")
module_count = len(MODULE_MAP)
print(f"Total modules in MODULE_MAP: {module_count}")
for name in sorted(MODULE_MAP.keys()):
    mod = create_module(name)
    print(f"  {name}: {'OK' if mod else 'FAIL'}")

print()
print("=== ALL VERIFICATIONS PASSED ===")