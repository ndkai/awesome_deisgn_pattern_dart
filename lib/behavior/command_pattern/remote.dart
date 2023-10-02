import 'package:flutter_design_pattern/behavior/command_pattern/icommand.dart';

class Remote{
  ICommand _turnOffFan;
  ICommand _turnOnFan;

  Remote(this._turnOffFan, this._turnOnFan);

  void turnOnFan(){
    _turnOnFan.execute();
  }

  void turnOffFan(){
    _turnOffFan.execute();
  }
}