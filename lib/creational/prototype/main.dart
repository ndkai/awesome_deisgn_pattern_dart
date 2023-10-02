import 'package:flutter_design_pattern/creational/prototype/shape_example/shape.dart';

// the prototype is use to copy the object to another object(to make clone)
// but the problem is the class of object have some private field that you can access to copy is
// so you need the prototype to help you create the function to make clone inside the class
main(){

  // circle
  Shape circle = Circle(10);
  circle.getArea();
  Shape circleClone = circle.clone();
  circleClone.getArea();

  // rectangle
  Shape rectangle = Rectangle(2, 10);
  rectangle.getArea();
  Shape rectangleClone = rectangle.clone();
  rectangleClone.getArea();
}