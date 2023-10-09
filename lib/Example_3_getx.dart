import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Example3_Controller.dart';
class Example3 extends StatefulWidget {
  const Example3({super.key});

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example-3'),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);

        },icon: const Icon(CupertinoIcons.back),),
      ),
       body: SafeArea(
         child: Center(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const Text('Notification'),
               Obx((){
                 return Switch(value:myController.turn.value , onChanged: (value){
                   myController.setNotification(value);

                 });
               })
              ],
           ),
         ),
       ),  
    );
    
  }
}
