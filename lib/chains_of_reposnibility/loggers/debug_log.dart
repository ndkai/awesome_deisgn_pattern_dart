import 'package:flutter_design_pattern/chains_of_reposnibility/log_bloc.dart';
import 'package:flutter_design_pattern/chains_of_reposnibility/log_level.dart';
import 'package:flutter_design_pattern/chains_of_reposnibility/log_message.dart';
import 'package:flutter_design_pattern/chains_of_reposnibility/logger_base.dart';

class DebugLogger extends LoggerBase{
  final LogBloc logBloc;

  DebugLogger(this.logBloc, {super.nextLogger}) : super(logLevel: LogLevel.debug);

  @override
  void log(String message) {
   final logMessage = LogMessage(logLevel: logLevel, message: message);
   logBloc.log(logMessage);
  }
}