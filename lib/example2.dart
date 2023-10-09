import 'package:get/get.dart';

class Ex2 extends  GetxController{

  RxDouble ops =.4.obs;

  setOps(double value)
  {
    ops.value = value;
  }
}