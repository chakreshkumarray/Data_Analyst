
# Union
a = {1, 2, 3, 4} 
b = {3, 4, 5, 6}
union_set = a | b
print(union_set)

# Union
union_set1 = a.union(b)
print(union_set1)

# Multi Set Union
a = {1, 2, 3, 4} 
b = {3, 4, 5, 6}
c = {7, 8, 9}
union_set = a | b | c
print(union_set)

# Union with other iterable
union_with_list = a.union([10, 11, 12])
print(union_with_list)

user1 = {"movies","books","music"}
user2 = {"music","sports","games"}
user3 = {"books","cooking","travel"}

total = user1 | user2 | user3
print(total)

# Intersection
a = {1, 2, 3, 4, 5}
b = {4, 5, 6, 7, 8}
intersection_result = a & b
print(intersection_result)

# Multiple Intersection
c = {3, 4, 5, 9, 10}
multiple_intersection = a & b & c
print(multiple_intersection)

d = {10, 11, 12}
All_intersection = a & b & c & d
print(All_intersection)

developer1 = {"python","java","sql","git"}
developer2 = {"python","javascript","sql","docker"}
developer3 = {"python","sql","mongodb","react"}
common_skills = developer1 & developer2 & developer3 
print(common_skills)


# Difference
a = {1, 2, 3, 4, 5}
b = {4, 5, 6, 7, 8}
difference_result = a - b
print(difference_result)
difference_result = b - a
print(difference_result)

a = {1, 2, 3, 4, 5}
b = {4, 5, 6, 7, 8}
c = {2, 3, 9, 10}
difference_result = a - b - c
print(difference_result)

# Symmetric Difference
a = {1, 2, 3, 4, 5}
b = {4, 5, 6, 7, 8}
symmetric_difference = a ^ b
print(symmetric_difference)

c = {4, 5, 6, 7, 9}
symmetric_difference = a ^ b ^ c
print(symmetric_difference)

# check subset
a = {1, 2, 3}
b = {1, 2, 3, 4, 5}
c = {1, 2}
print(a.issubset(b))
print(b.issubset(a))
print(c.issubset(a))


# Super Set
a = {1, 2, 3}
b = {1, 2, 3, 4, 5}
c = {1, 2}
print(a.issuperset(b))
print(b.issuperset(a))
print(c.issuperset(a))

# Operator
print(a <= b)
print(a <= a)
print(c <= a)
print(c < a)
print(a < b)
print(a < a)

# Dis Joint
a = {1, 2, 3}
b = {4, 5, 6}
c = {7, 8, 9}
print(a.isdisjoint(b))
print(a.isdisjoint(c))
print(b.isdisjoint(c))

print(a & b)