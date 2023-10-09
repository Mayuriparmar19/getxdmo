import 'package:get/get.dart';

class MarkFavouriteAppController extends GetxController{

  RxList<String> names =['Mayuri','Mihir','Urvish','Het','Priyal'].obs;
  RxList temp = [].obs;

  addFav (String value)
  {
                 temp.add(value);

  }
  removeFav (String value)
  {
    temp.remove(value);

  }



}