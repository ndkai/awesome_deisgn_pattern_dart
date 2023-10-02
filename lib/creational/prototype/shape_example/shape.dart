abstract class Shape{
  late String color;
  late int x;
  late int y;

  //this is a prototype
  Shape clone();
  void getArea();
}

class Rectangle extends Shape{
  late int height;
  late int width;

  Rectangle(this.height, this.width);

  //this is a prototype
  Rectangle.fromPrototype(Rectangle prototype) {
    height = prototype.height;
    width = prototype.width;
  }

  @override
  Shape clone() {
    return Rectangle.fromPrototype(this);
  }

  @override
  void getArea() {
    print("The area is: ${height * width}");
  }

}

class Circle extends Shape{
  late int radius;


  Circle(this.radius);

  Circle.fromPrototype(Circle prototype){
    radius = prototype.radius;
  }

  @override
  Shape clone() {
    return Circle.fromPrototype(this);
  }

  @override
  void getArea() {
    print("The area is: ${radius * radius}");
  }
}