# Bank_Tech_Test/
Challenge link
https://github.com/makersacademy/course/blob/main/individual_challenges/bank_tech_test.md

A Ruby program which records banking transactions and prints out account statements.

Installing / Getting started
git clone https://github.com/KKassim/bank_tech_test

Clones the repo and loads the required files in irb.

#Features
Depo (Deposits), Withdraw (Withdrawals), Accstatement (Formatted Acc Statement).

Account statements return time of transaction, credit, debit and balance

## Usage (within irb)

**Creating a new account:**
```ruby
account = BankStatement.new()
```

**Deposit an amount:**
```ruby
account.depo(100)
```

**Withdraw an amount:**
```ruby
account.withdraw(100)
```

**Formatted Account Statements:**
```ruby
account.accstatement
```
## Testing

Used TDD to write all code and tests,  with 100% test coverage.
Used requirements to sketch domain model with short methods with one responsibility (e.g. withdraw, deposit, statements ).
Used raised error messaging to check to stop overdraft.

## Screenshot of Code
![alt text](/relative/path/to/img.jpg?raw=true "banktechtest")

