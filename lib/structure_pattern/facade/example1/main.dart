import 'package:flutter_design_pattern/structure_pattern/facade/example1/account_manager.dart';
import 'package:flutter_design_pattern/structure_pattern/facade/example1/bank_account_facade.dart';

main(){
  BankAccountFacade bankAccountFacade = BankAccountFacade("duy", "nd");
  bankAccountFacade.withdraw(1000); // not successful because account only have 100$
  bankAccountFacade.deposit(1000); // account money increase to 1100$
  bankAccountFacade.withdraw(1000); // withdraw successful and the remaining account balance is 100$
}