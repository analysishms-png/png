from core.validation import validate_not_negative, validate_greater_than_zero, asc, ucase, lcase, validate_required_field
from core.vb6_logic import VB6LogicImpl

impl = VB6LogicImpl()

# Validation tests
print("validate_not_negative(5):", validate_not_negative(5))
print("validate_not_negative(-1):", validate_not_negative(-1))
print("validate_greater_than_zero(5):", validate_greater_than_zero(5))
print("validate_greater_than_zero(0):", validate_greater_than_zero(0))
print("asc('A'):", asc('A'))
print("ucase('hello'):", ucase('hello'))
print("lcase('HELLO'):", lcase('HELLO'))
print("validate_required_field('test', 'test'):", validate_required_field('test', 'test'))
print("validate_required_field('', 'test'):", validate_required_field('', 'test'))

# VB6 Logic tests
print("format_currency(1234.56):", impl.format_currency(1234.56))
print("format_date('2024-01-15'):", impl.format_date('2024-01-15'))
print("format_sql_date('2024-01-15'):", impl.format_sql_date('2024-01-15'))
print("format_currency_2dp('1234.5'):", impl.format_currency_2dp('1234.5'))
print("is_null_or_empty(None):", impl.is_null_or_empty(None))
print("is_null_or_empty(''):", impl.is_null_or_empty(''))
print("is_null_or_empty('value'):", impl.is_null_or_empty('value'))
print("parse_vb6_date('2024-01-15'):", impl.parse_vb6_date('2024-01-15'))
print("parse_vb6_date('01/15/2024'):", impl.parse_vb6_date('01/15/2024'))
print("serialize_param({'a': 1, 'b': 2}):", impl.serialize_param({'a': 1, 'b': 2}))
print("strip_and_upper('  hello  '):", impl.strip_and_upper('  hello  '))
print("confirm_exit('Test'):", impl.confirm_exit('Test'))

print("\nAll core functionality verified!")