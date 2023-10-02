import 'package:flutter_design_pattern/creational/builder_pattern/car.dart';

abstract class ICarBuilder{
  CarBuilder setWindScreen(WindScreen windScreen);
  CarBuilder setWheel(Wheel wheel);
  CarBuilder setSeatBelt(SeatBelt seatBelt);
  CarBuilder setEngine(Engine engine);
  Car build();
}

class CarBuilder extends ICarBuilder{
  late Car car;

  CarBuilder(){
    car = Car();
  }

  @override
  CarBuilder setEngine(Engine engine) {
    car.engine = engine;
    return this;
  }

  @override
  CarBuilder setSeatBelt(SeatBelt seatBelt) {
   car.seatBelt = seatBelt;
   return this;
  }

  @override
  CarBuilder setWheel(Wheel wheel) {
    car.wheel = wheel;
    return this;
  }

  @override
  CarBuilder setWindScreen(WindScreen windScreen) {
    car.windScreen = windScreen;
    return this;
  }

  @override
  Car build() {
    return car;
  }



}