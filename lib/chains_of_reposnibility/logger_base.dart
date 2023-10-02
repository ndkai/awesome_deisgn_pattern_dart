import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_design_pattern/chains_of_reposnibility/log_level.dart';

abstract class LoggerBase{

  @protected
  final LogLevel logLevel;
  final LoggerBase? _nextLogger;

  LoggerBase({required this.logLevel, LoggerBase? nextLogger}) : _nextLogger = nextLogger;

  void logMessage(LogLevel logLevel, String message){
    if(logLevel.index <= logLevel.index){
      print(message);
    }
    _nextLogger?.logMessage(logLevel, message);
  }

  void logDebug(String message) => logMessage(LogLevel.debug, message);
  void logInfo(String message) => logMessage(LogLevel.info, message);
  void logError(String message) => logMessage(LogLevel.error, message);
  void log(String message);
}