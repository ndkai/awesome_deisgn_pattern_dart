import 'package:flutter_design_pattern/structure_pattern/proxy/ex1/i_remote.dart';
import 'package:flutter_design_pattern/structure_pattern/proxy/ex1/remote_impl.dart';

class RemoteProxy implements IRemote{
  RemoteImpl? remoteImpl = null;

  @override
  void turnOff() {
   if(remoteImpl == null) remoteImpl = RemoteImpl();
   remoteImpl!.turnOff();
  }

  @override
  void turnOn() {
    if(remoteImpl == null) remoteImpl = RemoteImpl();
    remoteImpl!.turnOn();
  }
}