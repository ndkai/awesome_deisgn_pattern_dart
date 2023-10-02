import 'package:flutter_design_pattern/chains_of_reposnibility/log_level.dart';
import 'package:flutter_design_pattern/chains_of_reposnibility/log_message.dart';

import 'log_bloc.dart';

class MailService{
  final LogBloc logBloc;

  MailService(this.logBloc);

  void sendErrorMail(LogLevel logLevel, String message){
    final logMessage = LogMessage(logLevel: logLevel, message: message);
    //send error mail
    logBloc.log(logMessage);
  }
}