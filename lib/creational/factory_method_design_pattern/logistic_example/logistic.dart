import 'package:flutter_design_pattern/creational/factory_method_design_pattern/logistic_example/transport.dart';

abstract class Logistic{

  //this is factory method
  void planDelivery();
  Transport createTransport();
}

class RoadLogistic extends Logistic{

  @override
  Transport createTransport() {
    return Truck();
  }

  @override
  void planDelivery() {
    var transport = createTransport();
    transport.delivery();
  }

}

class PlaneLogistic extends Logistic{

  @override
  Transport createTransport() {
    return AirPlane();
  }

  @override
  void planDelivery() {
    var transport = createTransport();
    transport.delivery();
  }

}

class SeaLogistic extends Logistic{

  @override
  Transport createTransport() {
    return Ship();
  }

  @override
  void planDelivery() {
    var transport = createTransport();
    transport.delivery();
  }

}