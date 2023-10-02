abstract class Transport{
  void delivery();
}

class Ship extends Transport{
  @override
  void delivery() {
    print("Ship on the way");
  }

}

class Truck extends Transport{
  @override
  void delivery() {
    print("Truck on the way");
  }

}

class AirPlane extends Transport{
  @override
  void delivery() {
    print("AirPlane on the way");
  }

}