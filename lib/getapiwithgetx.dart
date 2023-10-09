import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);

        },icon: const Icon(CupertinoIcons.back),),
      ),
               body: Form(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                           TextFormField(
                             controller:  loginController.emailController.value,
                             decoration: const InputDecoration(
                                hintText: 'Email',

                             ),
                           ),
                        TextFormField(
                          controller:  loginController.passwordController.value,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        const SizedBox(height: 100,),

                       Obx(() =>  SizedBox(height:50 ,
                         width: 200,
                         child: ElevatedButton(
                           onPressed: ()
                           {
                             loginController.loginApi();
                           },
                           child: loginController.loading.value ? const CircularProgressIndicator():const Text('Submit',style: TextStyle(fontSize: 20),),
                         ),
                       ),
                       )
                      ],
                   ),
                 ),
               ),
    );
  }
}

