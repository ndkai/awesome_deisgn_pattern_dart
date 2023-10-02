import 'package:flutter_design_pattern/chains_of_reposnibility/log_level.dart';
import 'package:flutter_design_pattern/chains_of_reposnibility/log_message.dart';

import 'log_bloc.dart';


class ExternalBlocService{

  final LogBloc logBloc;

  ExternalBlocService(this.logBloc);

  void logMessage(LogLevel logLevel, String message){
    final logMessage = LogMessage(logLevel: logLevel, message: message);
    //sending to external logging service

    logBloc.log(logMessage);
  }
}