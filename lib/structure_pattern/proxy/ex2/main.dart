import 'package:flutter_design_pattern/structure_pattern/proxy/ex2/iimage.dart';
import 'package:flutter_design_pattern/structure_pattern/proxy/ex2/image_impl.dart';

main(){
  IImage proxyImage = ImageProxy("http://image.png");
  proxyImage.display();
  proxyImage.loading();
}