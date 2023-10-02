import 'observer.dart';

class Subject{
  List<IObserver> observers = <IObserver>[];

  void addObserver(IObserver observer){
    observers.add(observer);
  }
  void removeObserver(IObserver observer){
    observers.remove(observer);
  }
  void notifyObserver(String data){
    for(var i in observers){
      i.notify(data);
    }
  }
}