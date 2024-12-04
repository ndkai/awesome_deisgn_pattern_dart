import 'package:flutter_design_pattern/chains_of_reposnibility/order_rule/order_service.dart';

import 'order.dart';

void main(){
  final order = Order(itemCount: 1, total: 1, userVerification: true);
  OrderService service = OrderService();

  print("order valid: ${service.validateOrder(order)}");
}