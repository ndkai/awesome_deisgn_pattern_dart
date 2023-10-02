import 'dart:math';

import 'animal_example/animal.dart';
import 'animal_example/animal_factory.dart';
import 'animal_example/animal_factory_impl.dart';

//Factory Method is a creational design pattern that provides an interface for creating objects in a superclass,\
//but allows subclasses to alter the type of objects that will be created.



main(){
  AnimalFactory animalFactory;
  Random random = Random();
  int type = random.nextInt(2);
  if(type == 0){
    animalFactory = BasicAnimalFactory(2);
  } else {
    animalFactory = RandomAnimalFactory();
  }

  Animal animal = animalFactory.createAnimal();
  print(animal.toString());
}