import 'dart:math';

import 'animal.dart';
import 'animal_factory.dart';
import 'animal_impl.dart';

class BasicAnimalFactory extends AnimalFactory{
  late int type;

  BasicAnimalFactory(this.type);

  @override
  Animal createAnimal() {
    if(type == 0){
      return Dog();
    } else
    if(type == 1){
      return Cat();
    } else
      return Duck();
  }

}

class RandomAnimalFactory extends AnimalFactory{
  @override
  Animal createAnimal() {
    Random random = Random();
    int type = random.nextInt(2);
    if(type == 0){
      return Dog();
    } else
    if(type == 1){
      return Cat();
    } else
      return Duck();
  }

}