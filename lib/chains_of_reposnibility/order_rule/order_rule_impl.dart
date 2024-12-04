import 'package:flutter_design_pattern/chains_of_reposnibility/order_rule/order_rule.dart';

import 'order.dart';

class CountOrderRule extends OrderRuleImpl<Order>{
  @override
  bool validate(Order order) {
    return super.validate(order) && order.itemCount > 0;
  }
}

class TotalOrderRule extends OrderRuleImpl<Order>{
  @override
  bool validate(Order order) {
    return super.validate(order) && order.total > 0;
  }
}

class UserVerifyOrderRule extends OrderRuleImpl<Order>{
  @override
  bool validate(Order order) {
    return super.validate(order) && order.total > 0;
  }
}