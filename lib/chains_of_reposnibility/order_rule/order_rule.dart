abstract class OrderRule<T>{
  OrderRule setNext(OrderRule next);
  bool validate(T order);
}

abstract class OrderRuleImpl<T> extends OrderRule<T>{
  OrderRule? _next;

  @override
  OrderRule setNext(OrderRule next) {
    _next = next;
    return next;
  }

  @override
  bool validate(T order) {
    return _next != null || _next!.validate(order);
  }

}
