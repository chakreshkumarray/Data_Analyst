class Bank:
    def __init__(self, balance):
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount

class SavingsAccount(Bank):
    def add_interest(self):
        self.balance += self.balance * 0.05

s = SavingsAccount(1000)
s.deposit(500)
s.add_interest()
print(s.balance)
