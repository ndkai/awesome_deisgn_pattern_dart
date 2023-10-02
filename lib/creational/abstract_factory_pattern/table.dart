abstract class Table{
  void sitOn();
  void lieOn();
}

class ModernTable extends Table{
  @override
  void lieOn() {
    print("Lie on a ModernTable");
  }

  @override
  void sitOn() {
    print("Sit on ModernTable");
  }

}

class LuxuryTable extends Table{
  @override
  void lieOn() {
    print("Lie on LuxuryTable");
  }

  @override
  void sitOn() {
    print("Sit on LuxuryTable");
  }

}