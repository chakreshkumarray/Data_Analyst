# == vs is operator

a = [1,2,3]
b = [1,2,3]

print(id(a),id(b))
print(a == b) # Check content (actual value)
print(a is b) # check Object Address(Reference)