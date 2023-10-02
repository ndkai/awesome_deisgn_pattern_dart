import 'package:flutter_design_pattern/behavior/command_pattern/fan_speed_enum.dart';
import 'package:flutter_design_pattern/behavior/command_pattern/icommand.dart';

import 'fan.dart';

class TurnOnFan implements ICommand{
  Fan fan;
  TurnOnFan(this.fan);

  @override
  void execute() {
   fan.turnOn();
  }

  @override
  void undo() {
    print("TurnOnFan undo");
  }

}

class TurnOffFan implements ICommand{
  Fan fan;
  TurnOffFan(this.fan);

  @override
  void execute() {
    fan.turnOff();
  }

  @override
  void undo() {
    print("TurnOffFan undo");
  }

}

class FanAdjustSpeed implements ICommand{
  Fan fan;
  FanSpeed speed;

  FanAdjustSpeed(this.fan, this.speed);

  @override
  void execute() {
    fan.fanSpeedButtonPress(speed);
  }

  @override
  void undo() {

  }

}