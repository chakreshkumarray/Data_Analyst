# 1. Reverse string (no slicing)
def reverse_string(s):
  res = " "
  for ch in s:
    res = ch + s
  return res  

# 2. Palindrome check
def is_palindrome(s):
  l, r = 0, len(s) - 1
  while(l < r):
    if s[l] != s[r]:
      return False
    l += 1
    r += 1
  return True

# 3. Count vowels & consonants
def count_vs(s):
  v = c = 0
  vowels = "aeiouAEIOU"
  for ch in s:
    if ch.isalpha():
      if ch in vowels:
        v += 1
      else:
        c += 1
  return v, c      

# 4. Count upper, lower, digit, special
def count_types(s):
  u = l = d = sp = 0
  for ch in s:
    if ch.isupper(): 
      u += 1
    elif ch.islower(): 
      l += 1
    elif ch.isdigit(): 
      d += 1
    else: 
      sp += 1
  return u, l, d, sp  

# 5. Remove duplicates 
def remove_duplicates(s):
  res = " "
  for ch in s:
    if ch not in res:
      res += ch
  return res

# 6. Frequency of characters
def frequency(s):
  freq = {}
  for ch in s:
    freq[ch] = freq.get(ch,0) + 1
  return freq

# 7. First non-repeating char
def first_non_repeat(s):
  freq = frequency(s)
  for ch in s:
    if freq[ch] == 1:
      return ch
  return None  

# 8. First repeating char
def first_repeating(s):
  seen = set()
  for ch in s:
    if ch in seen:
      return ch
    seen.add(ch)

# 9. Only digits (no isdigit)
def only_digits(s):
  for ch in s:
    if ch < '0' or ch > '9':
      return False
    return True

# 10. Toggle case
def toggle_case(s):
  res = " "
  for ch in s:
    if 'a' <= ch <= 'z':
      res += ch(ord(ch) - 32)
    elif 'A' <= ch <= 'Z':
      res += ch(ord(ch) + 32)
    else:
      res += ch 
  return res

# 11. Count words (no split) 
def count_words(s):
  count = 0
  in_word = False
  for ch in s:
    if ch != " " and not in_word:
      count += 1
      in_word = True
    elif ch == " ":
      in_word = False
  return count

# 12. Largest word
def largest_word(s):
  words = s.split()
  largest = ""
  for w in words:
    if len(w) > len(largest):
      largest = w
  return largest

# 13. Remove spaces
def remove_spaces(s):
  res=""
  for ch in s:
    if ch!=" ":
      res+=ch
  return res

# 14. Replace vowels with *
def replace_vowels(s):
  vowels = "aeiouAEIOU"
  res = ""
  for ch in s:
    if ch in vowels:
      res += "*"
    else:
      res += ch
  return res

# 15. Count substring occurrence
def count_substring(s, sub):
  count = 0
  for i in range(len(s)-len(sub)+1):
    if s[i:i+len(sub)] == sub:
      count += 1
  return count

# End Basic Question --> 16. Intermediate Questions -->    