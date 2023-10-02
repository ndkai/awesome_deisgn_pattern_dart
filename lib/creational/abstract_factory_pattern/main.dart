import 'dart:ffi';

import 'package:flutter_design_pattern/creational/abstract_factory_pattern/furniture_factory.dart';
import 'package:flutter_design_pattern/creational/abstract_factory_pattern/sofa.dart';

import 'chair.dart';
import 'table.dart';

main(){
  // FurnitureFactory factory = ModernFurnitureFactory();
  FurnitureFactory factory = LuxuryFurnitureFactory();
  Table table = factory.createTable();
  Sofa sofa = factory.createSofa();
  Chair chair = factory.createChair();

  print(table.toString());
  print(chair.toString());
  print(sofa.toString());
}