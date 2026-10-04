import core.vb6_frontend as v
print('loaded ok')
m = v.create_module('Finance')
print('module type:', type(m).__name__ if m else 'None')