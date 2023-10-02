abstract class Sofa{
  void sitOn();
  void lieOn();
}

class ModernSofa extends Sofa{
  @override
  void lieOn() {
    print("Lie on a ModernSofa");
  }

  @override
  void sitOn() {
    print("Sit on ModernSofa");
  }

}

class LuxurySofa extends Sofa{
  @override
  void lieOn() {
    print("Lie on LuxurySofa");
  }

  @override
  void sitOn() {
    print("Sit on LuxurySofa");
  }

}