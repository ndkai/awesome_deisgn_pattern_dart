
import 'package:flutter_design_pattern/structure_pattern/proxy/ex2/iimage.dart';

class RealImage implements IImage{
  @override
  String? url;

  RealImage(this.url);

  @override
  void display() {
    print("display");
  }

  @override
  void loading() {
    print("loading");
  }



}

class ImageProxy implements IImage{
  @override
  String? url;
  RealImage? realImage = null;

  ImageProxy(this.url);
  @override
  void display() {
    if(realImage == null){
      realImage = RealImage(url);
    }
    realImage!.display();
  }

  @override
  void loading() {
    if(realImage == null){
      realImage = RealImage(url);
    }
    realImage!.loading();
  }

}