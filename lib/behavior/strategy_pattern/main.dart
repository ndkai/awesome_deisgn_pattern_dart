import 'package:flutter/scheduler.dart';
import 'package:flutter_design_pattern/behavior/strategy_pattern/promotion_strategy_impl.dart';
import 'package:flutter_design_pattern/behavior/strategy_pattern/ticket.dart';


main(){

  Ticket noDiscountTicket = new Ticket(name: "Music", price: 100.0, promotionStrategy: NoDiscountStrategy());
  Ticket quarterDiscountTicket = new Ticket(name: "Sport", price: 100.0, promotionStrategy: QuarterDiscountStrategy());
  Ticket halfDiscountTicket = new Ticket(name: "Lucky", price: 100.0, promotionStrategy: HalfDiscountStrategy());

  print("noDiscountTicket price: ${noDiscountTicket.getPromotionPrice()}");
  print("quarterDiscountTicket price: ${quarterDiscountTicket.getPromotionPrice()}");
  print("halfDiscountTicket price: ${halfDiscountTicket.getPromotionPrice()}");
}