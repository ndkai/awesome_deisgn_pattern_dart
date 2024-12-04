import 'package:flutter_design_pattern/behavior/specification/loan/loan_application.dart';
import 'package:flutter_design_pattern/behavior/specification/loan/loan_specification.dart';

class LoanService{

  bool approveLoan(LoanApplication application){
    final creditScoreSpec = CreditScoreSpecification();
    final costScoreSpec = CostSpecification();
    final ageSpec = AgeSpecification();
    final canApprove = creditScoreSpec.and(costScoreSpec).and(ageSpec);
    return canApprove.isSatisfiedBy(application);
  }
}