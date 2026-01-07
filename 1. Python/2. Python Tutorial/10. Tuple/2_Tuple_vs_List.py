t = (1, 2, 3)
# t[0] = 11 tuple are immutable
print(t)

import sys
# List
print(sys.getsizeof([1, 2, 3])) # More bytes

# Tuple
print(sys.getsizeof((1, 2, 3))) # Fewer bytes