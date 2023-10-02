import 'dart:isolate';
import 'dart:math';

class KaiSingleton{

  // method 1
  // static late KaiSingleton _instance;
  // KaiSingleton._(){
  // }
  //
  // static KaiSingleton getInstance(){
  //   if(_instance == null){
  //     _instance = KaiSingleton._();
  //   }
  //   return _instance;
  // }

  //method 2
  late int index;
  KaiSingleton._(){
    index = Random().nextInt(200);
    print("create constructor");
  }
  static KaiSingleton _instance = KaiSingleton._();
  static KaiSingleton get instance => _instance;

  void sayHi(){
    print("Nice to meet you customer: ${index}");
  }
}

main(){
  KaiSingleton s1 = KaiSingleton.instance;
  s1.sayHi();
  KaiSingleton s2 = KaiSingleton.instance;
  s2.sayHi();
  Future.sync((){
    print("----Future thread----");
    KaiSingleton s3 = KaiSingleton.instance;
    s3.sayHi();
  });
  //isolate cannot share data with the order thread
  Isolate.run((){
    print("----isolate thread----");
    KaiSingleton s4 = KaiSingleton.instance;
    s4.sayHi();
  });

}
