
import 'package:flutter_design_pattern/structure_pattern/proxy/ex1/remote_proxy.dart';

import 'i_remote.dart';

main(){
  IRemote remoteProxy = RemoteProxy();
  remoteProxy.turnOn();
  remoteProxy.turnOff();
}