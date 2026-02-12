# String Immutable in Python

s = "Hello"
print(id(s))

print(s(0))

# s[0] = "M" won't work
print("M" + s[1:])
s = "M" + s[1:]
print(id(s))

# Raw Strings
rs = r"He\llo"
print(rs)
print(r"C:\Users\Name\Documents\Photos")

'''
r"She said, \"Hello\""    # Works: backslash escapes the quote
r"She said, "Hello""      # SyntaxError: quote ends the string too
r"This ends with a \\"    # Works
r"This ends with a \\\"   # SyntaxError
r"This ends with a \"     # SyntaxError
r"This ends with a \""    # Works
'''

# odd \ --> escape closing quote
# even \ --> doesn't escape closing quote