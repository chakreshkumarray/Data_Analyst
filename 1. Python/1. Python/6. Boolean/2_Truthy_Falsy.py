print(bool(1))
print(bool(0))

print(bool("Ck"))
print(bool())

# Falsy value in python
print(bool(0))
print(bool(0.0))
print(bool(''))
print(bool([]))
print(bool({}))
print(bool(None))

# Truthy value in Python
print(bool(42))
print(bool(-1))
print(bool('hello'))
print(bool([1,2]))
print(bool())
print(bool())

# Every Boolean is an  integer
print(isinstance(True,int))

# Integer are not boolean -> False -> No
print(isinstance(1,bool))

a = 102
print(a.bit_length())

print(True.bit_length())
print(False.bit_length())

c = bool(25)
c = True
print(c)