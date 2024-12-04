import 'package:flutter_design_pattern/behavior/specification/loan/loan_application.dart';
import 'package:flutter_design_pattern/behavior/specification/specification.dart';

class CreditScoreSpecification extends SpecificationImpl<LoanApplication>{
  @override
  bool isSatisfiedBy(LoanApplication entity) {
    return entity.creditScore > 650;
  }
}

class AgeSpecification extends SpecificationImpl<LoanApplication>{
  @override
  bool isSatisfiedBy(LoanApplication entity) {
    return entity.age > 21;
  }
}

class CostSpecification extends SpecificationImpl<LoanApplication>{
  @override
  bool isSatisfiedBy(LoanApplication entity) {
    return entity.cost < 300;
  }
}