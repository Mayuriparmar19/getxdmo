import 'package:get/get.dart';

class CounterController1 extends GetxController{

     RxInt counter =0.obs;

     incrementCounter ()
     {
           counter.value++;
     }


}