import 'package:flutter_design_pattern/behavior/observer%20pattern/subject.dart';


abstract class IObserver{
  Subject? subject;
  void notify(String data);
}

class PhoneNotifier implements IObserver{
  @override
  Subject? subject;
  PhoneNotifier(Subject subject){
    subject = subject;
    subject.addObserver(this);
  }

  @override
  void notify(String data) {
    print("Notify PhoneNotifier ${data}");
    //code to send notify to phone
  }
}

class EmailNotifier implements IObserver{
  @override
  Subject? subject;

  EmailNotifier(Subject subject){
    subject = subject;
    subject.addObserver(this);
  }
  @override
  void notify(String data) {
    print("Notify EmailNotifier: ${data}");
    // code to send notify to email
  }
}

class FacebookNotifier implements IObserver{
  @override
  Subject? subject;

  FacebookNotifier(Subject subject){
    subject = subject;
    subject.addObserver(this);
  }
  @override
  void notify(String data) {
    print("Notify EmailNotifier: ${data}");
    // code to send notify to email
  }
}

