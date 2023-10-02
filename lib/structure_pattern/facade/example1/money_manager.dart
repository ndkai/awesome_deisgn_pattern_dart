class MoneyManager{

  double currentAmount = 100;


  MoneyManager();

  bool isEnoughMoney(double amount){
    return currentAmount > amount;
  }

  void withdraw(double amount){
    if(isEnoughMoney(amount)){
      currentAmount -= amount;
      //do some stuff to transfer money to other system to return cash
    } else {
      throw Exception("Not enough money in the bank account");
    }
  }

  void deposit(double money){
    currentAmount += money;
  }


}