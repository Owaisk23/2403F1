class BAHL {
  num _accountBalance = 70;

  void deposit(num amount) {
    try {
      if (amount <= 0) {
        throw Exception("Invalid Amount");
      } else {
        _accountBalance += amount;
        print("Deposit Successful. New Balance: $_accountBalance");
      }
    } catch (e) {
      print("Error: ${e.toString()}");
    }
  }

  void withdraw(num amount) {
    try {
      if (amount <= 0) {
        throw Exception("Invalid Amount");
      } else if (amount > _accountBalance) {
        throw Exception("Insufficient Balance");
      } else {
        _accountBalance -= amount;
        print("Withdrawal Successful. New Balance: $_accountBalance");
      }
    } catch (e) {
      print("Error: ${e.toString()}");
    }
  }

  void balanceInquiry() {
    print("Current Balance: $_accountBalance");
  }
}
