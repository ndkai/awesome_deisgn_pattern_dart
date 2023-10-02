import 'package:flutter_design_pattern/structure_pattern/facade/example1/security_manager.dart';

import 'account_manager.dart';
import 'money_manager.dart';

class BankAccountFacade{
  String _accountName;
  String _securityCode;

  late AccountManager _accountManager;
  late MoneyManager _moneyManager;
  late SecurityManager _securityManager;

  BankAccountFacade(this._accountName, this._securityCode){
   _accountManager = AccountManager();
   _moneyManager = MoneyManager();
   _securityManager = SecurityManager();
  }


  void withdraw(double amount){
    if(_accountManager.isValid(_accountName) && _securityManager.isCodeValid(_securityCode)){
      try{
        _moneyManager.withdraw(amount);
        print("Withdraw success");
      } catch(e){
        print("Withdraw Error: ${e.toString()}");
      }
    }
  }

  void deposit(double amount){
    if(_accountManager.isValid(_accountName) && _securityManager.isCodeValid(_securityCode)){
      try{
        _moneyManager.deposit(amount);
        print("Deposit success");
      } catch(e){
        print("Deposit Error: ${e.toString()}");
      }
    }
  }


}

