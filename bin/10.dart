class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double a) {
    if (a > 0) {
      _balance += a;
      print('$a deposited successfully.');
    } else {
      print('Invalid amount to deposit.');
    }
  }

  void withdraw(double a) {
    if (a > 0 && a <= _balance) {
      _balance -= a;
      print('$a withdrawn successfully.');
    } else {
      print('Insufficient balance or invalid amount to withdraw.');
    }
  }

  void displayBalance() {
    print('Current Balance: \$$_balance');
  }

  String get accountNumber => _accountNumber;

  double get balance => _balance;
}

double calculateTotalBalance(Set<BankAccount> accounts) {
  double totalBalance = 0;
  for (var account in accounts) {
    totalBalance += account.balance;
  }
  return totalBalance;
}

void main() {
  var account1 = BankAccount('123456789', 1000);
  var account2 = BankAccount('987654321', 2000);

  account1.deposit(500);
  account1.withdraw(200);
  account2.deposit(1000);
  account2.withdraw(500);
  account1.displayBalance();
  account2.displayBalance();
  var accountsSet = {account1, account2};
  var totalBalance = calculateTotalBalance(accountsSet);
  print('Total Balance of all accounts: \$${totalBalance.toStringAsFixed(2)}');
}