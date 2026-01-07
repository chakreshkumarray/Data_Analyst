#
age = 20
status = "Adult" if age >= 18 else "Minor"
print(status)

#
number = 17
divisor = 7
result = number / divisor if divisor != 0 else "Can't divide by zero"
print(result)

operation = input("sub or add ? ")
a,b = 5,3
result = a + b if operation == "add" else a - b if operation == "sub" else "Unknown Operation"
print(result)