import 'package:flutter_design_pattern/creational/builder_pattern/builder.dart';
import 'package:flutter_design_pattern/creational/builder_pattern/car.dart';

main(){
  Car car = CarBuilder()
      .setEngine(Engine())
      .setSeatBelt(SeatBelt())
      .setWheel(Wheel())
      .setWindScreen(WindScreen())
      .build();
}