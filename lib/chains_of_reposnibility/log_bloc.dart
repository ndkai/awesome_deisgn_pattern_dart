import 'dart:async';

import 'log_message.dart';

class LogBloc{
  final List<LogMessage> _logs = [];
  final _logStream  = StreamController<List<LogMessage>>();

  StreamSink<List<LogMessage>> get _inLogStream => _logStream.sink;
  Stream<List<LogMessage>> get _outLogStream => _logStream.stream;

  void log(LogMessage logMessage){
    _logs.add(logMessage);
    _inLogStream.add(_logs);
  }

  void dispose(){
    _logStream.close();
  }
}