import 'package:flutter_design_pattern/chains_of_reposnibility/order_rule/order.dart';

import 'order_rule_impl.dart';

class OrderService{

  bool validateOrder(Order order){

    final itemCountRule = CountOrderRule();
    final totalCountRule = TotalOrderRule();
    final userVerifyCountRule = UserVerifyOrderRule();
    itemCountRule.setNext(totalCountRule).setNext(userVerifyCountRule);
    return itemCountRule.validate(order);
  }
}