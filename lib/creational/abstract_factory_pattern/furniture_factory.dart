import 'package:flutter_design_pattern/creational/abstract_factory_pattern/sofa.dart';
import 'package:flutter_design_pattern/creational/abstract_factory_pattern/table.dart';

import 'chair.dart';

abstract class FurnitureFactory{
  Chair createChair();
  Sofa createSofa();
  Table createTable();
}

class ModernFurnitureFactory extends FurnitureFactory{
  @override
  Chair createChair() {
    return ModernChair();
  }

  @override
  Sofa createSofa() {
    return ModernSofa();
  }

  @override
  Table createTable() {
      return ModernTable();
  }

}

class LuxuryFurnitureFactory extends FurnitureFactory{
  @override
  Chair createChair() {
    return LuxuryChair();
  }

  @override
  Sofa createSofa() {
    return LuxurySofa();
  }

  @override
  Table createTable() {
    return LuxuryTable();
  }

}