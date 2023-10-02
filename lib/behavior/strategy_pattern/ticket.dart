

import 'ipromotion_strategy.dart';

class Ticket{
  late String name;
  late double price;
  late IPromotionStrategy promotionStrategy;

  Ticket({required this.name, required this.price, required this.promotionStrategy});

  double getPromotionPrice(){
    return promotionStrategy.doDiscount(price);
  }
}