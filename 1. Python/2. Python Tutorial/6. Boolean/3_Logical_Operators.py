# has adhaar card and  age >= 18 --> DL

has_adhaar = True
age = 17
print(has_adhaar and age >= 18)

# has DL or adhar card --> club
has_dl = True
has_adhaar = False
print(has_dl or has_adhaar)

# NOT injury -> play cricket
has_injury = True
print(not has_injury)

x = 5
y = 10
print(x > 0 and y > 0)
print(x > 7 and y > 0)
print(False and y > 0)

age = 25
income = 30000
print(age > 18 or income > 50000)
print(age < 18 or income > 50000)
print(age < 18 or not (income > 50000))

result = True or False and not True
print(result)

result = (True or False) and (not True)
print(result)

age = 25
income = 30000
credit_score = 700
is_eligible = (age >= 18 and age <= 65) and (income > 25000 and credit_score > 650)
print(is_eligible)

working_age = age >= 18 and age <= 65 # (18 <= age <= 65)
print(is_eligible)

print((not age >= 18) or (not income > 25000))

# != == <= >= <>
