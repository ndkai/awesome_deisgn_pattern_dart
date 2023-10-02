
import 'i_remote.dart';

class RemoteImpl implements IRemote{
  @override
  void turnOff() {
    print("turnOff");
  }

  @override
  void turnOn() {
    print("turnOn");
  }
}