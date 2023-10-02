import 'package:flutter_design_pattern/behavior/command_pattern/command_impl.dart';
import 'package:flutter_design_pattern/behavior/command_pattern/fan_speed_enum.dart';
import 'package:flutter_design_pattern/behavior/command_pattern/icommand.dart';
import 'package:flutter_design_pattern/behavior/command_pattern/remote.dart';

import 'fan.dart';

main(){
  Fan fan = Fan();
  ICommand turnOnFan = TurnOnFan(fan);
  ICommand turnOffFan = TurnOffFan(fan);
  ICommand fanAdjustSpeed = FanAdjustSpeed(fan, FanSpeed.high);

  var remote = Remote(turnOffFan, turnOnFan);
  remote.turnOnFan();
  remote.turnOffFan();
  fanAdjustSpeed.execute();
}