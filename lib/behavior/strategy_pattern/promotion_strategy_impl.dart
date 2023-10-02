

import 'ipromotion_strategy.dart';

class NoDiscountStrategy implements IPromotionStrategy{
  @override
  double doDiscount(double price) {
    return price;
  }
}

class QuarterDiscountStrategy implements IPromotionStrategy{
  @override
  double doDiscount(double price) {
    return price * 0.75;
  }
}

class HalfDiscountStrategy implements IPromotionStrategy{
  @override
  double doDiscount(double price) {
    return price * 0.5;
  }
}