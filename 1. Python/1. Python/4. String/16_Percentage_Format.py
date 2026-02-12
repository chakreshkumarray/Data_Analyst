# Perctenage Format %
# old-style formatting with % operator
# "String with format specifier" % values

name = "Alice"
greeting = "Hello I am %s kumar Ray."% name
print(greeting)

age = 25
mail = "My age is %d years old."% age
print(mail)

name = "Bob"
age = 30
message = "My name is %s and I am %d years old." % (name, age)
print(message)

pi = 3.1454446
print("Pi rounded to 2 decimal places: %f" %pi)
print("Pi rounded to 2 decimal places: %.2f" %pi)