def factorial(n):
# Base Case
    if n == 0 or n == 1:
        return 1
    else:
    # Recursive call
        return n * factorial(n-1)

# Function call
print(factorial(5)) 