# 1. String Method Chaining
# Strip, capatialize the first letter of each word, and replaces "Skills" with "Expertise"
text = " python programming SKILLS "
print(text.strip())  # --> Strip
print(text.title())  # --> capatialize
print(text.replace("Skills","Expertise")) # --> replace

# OR
print(text.strip().title().replace("Skills","Expertise"))

# 2. Advanced Slicing Challenge
# Print every second character using slicing
# Print the string in reverse order using slicing
# Extract and print just "Programming" using negative indices
s = "Python Programming Language"
print(s[::2])
print(s[::-1])
print(s[-20:-9])

# 3.String Concatenation and Slicing
# Create a new string by extracting the first letter of each word and concatenation them
txt = "python is easy to learn"
result = txt[0] + txt[7] + txt[10] + txt[15] + txt[18]
print(result)

# 4. String Palindrom Check
# Ex->Input: pop,radar
word = "radar"
print(word == word[::-1])

word = "pop"
print(word == word[::-1])

word = "Chakresh"
print(word == word[::-1])

# 5. Count Occurrences of i,s,p,m
sentence = "mississippi"
print(sentence.count('i'))
print(sentence.count('s'))
print(sentence.count('p'))
print(sentence.count('m'))
