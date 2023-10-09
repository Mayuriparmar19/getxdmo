import 'package:get/get.dart';

class MyController extends GetxController{
  RxBool turn = false.obs;
   setNotification (bool value)
   {
       turn.value = value;
   }
}