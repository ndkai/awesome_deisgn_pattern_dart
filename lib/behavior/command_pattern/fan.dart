import 'fan_speed_enum.dart';

class Fan{
  void turnOff(){
    print("Turn Off");
  }

  void turnOn(){
    print("Turn On");
  }

  void fanSpeedButtonPress(FanSpeed fanSpeed){
    print("Turn fan speed to level ${fanSpeed}");
  }
}