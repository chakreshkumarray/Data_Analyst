# 16. Anagram (no sorted) 
def is_anagram(a, b):
  if len(a)!=len(b): 
    return False
  freq={}
  for ch in a:
    freq[ch]=freq.get(ch,0) + 1
  for ch in b:
    if ch not in freq: 
      return False
    freq[ch]-=1
  return True  

# 17. Rotation Check