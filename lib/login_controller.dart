import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
   RxBool  loading = false.obs;

  Future<void> loginApi() async {
     loading.value=true;
    try {
       Map newData ={
         'email': emailController.value.text,
         'password': passwordController.value.text,
       };
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), 
              body:  jsonEncode(newData),
          );

      var data = jsonDecode(response.body);
      if (kDebugMode) {
        print(response.statusCode);
      }
      if (kDebugMode) {
        print(data);
      }
      if (response.statusCode == 200) {
        loading.value = false;
       Get.snackbar('Login Successful', 'welcome');
      } else {
            loading.value=false;
                     Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
       Get.snackbar('ex', e.toString());
    }
  }
}
