import 'package:flutter_design_pattern/behavior/specification/loan/loan_application.dart';

import 'loan_service.dart';

void main(){
  LoanApplication application = LoanApplication(
      name: "Andy", age: 22, cost: 100, creditScore: 1000);
  LoanService service = LoanService();
  print("Can approve application: ${service.approveLoan(application)}");
}