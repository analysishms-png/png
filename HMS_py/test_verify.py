import core.validation as v
import core.error_handling as e
import core.vb6_logic as vb

print("=== Validation Tests ===")
# Test validate_not_negative
print("validate_not_negative(5):", v.validate_not_negative(5))
print("validate_not_negative(-1):", v.validate_not_negative(-1))

# Test validate_greater_than_zero
print("validate_greater_than_zero(5):", v.validate_greater_than_zero(5))
print("validate_greater_than_zero(0):", v.validate_greater_than_zero(0))

# Test asc/ucase/lcase
print("asc('A'):", v.asc('A'))
print("ucase('hello'):", v.ucase('hello'))
print("lcase('HELLO'):", v.lcase('HELLO'))

# Test number_to_text (in vb6_logic)
print("number_to_text(123):", vb.VB6LogicImpl().number_to_text(123))
print("number_to_language(123):", vb.VB6LogicImpl().number_to_language(123))

# Test validate_required_field
print("validate_required_field('test', 'test'):", v.validate_required_field('test', 'test'))
print("validate_required_field('', 'test'):", v.validate_required_field('', 'test'))

print("\n=== Error Handling Tests ===")
# Test error handling functions
print("initialize_error_handling:", hasattr(e, 'initialize_error_handling'))
print("log_error:", hasattr(e, 'log_error'))
print("count_errors_by_severity:", hasattr(e, 'count_errors_by_severity'))

print("\n=== VB6 Logic Tests ===")
impl = vb.VB6LogicImpl()
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
print("confirm_exit('Test Form'):", impl.confirm_exit('Test Form'))
print("validate_field('test', 'value', 'text'):", impl.validate_field('test', 'value', 'text'))

print("\n=== All Tests Complete ===")