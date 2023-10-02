abstract class Chair{
  void sitOn();
}

class ModernChair extends Chair{
  @override
  void sitOn() {
    print("Sit on modern ModernChair");
  }

}

class LuxuryChair extends Chair{
  @override
  void sitOn() {
    print("Sit on luxury ModernChair");
  }

}