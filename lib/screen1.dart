import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdmo/example2.dart';


class S1 extends StatefulWidget {
  const S1({super.key});

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {
  Ex2 example2 = Get.put(Ex2());
 //double ops = .4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text('s1'),),
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Center(
               child: TextButton(onPressed: (){
                  //Get.to (S2(name: 'mayuri',));
                 Get.toNamed('/S2');
               }, child: const Text('Go To Screen 2')),
             ),
           ),

          Obx(() {
             return  Container(
               height: 100,
               width: 100,
               color: Colors.blue.withOpacity(example2.ops.value),
             );
          }),
          Obx(() {
            return Slider(value:example2.ops.value , onChanged: (value){
              example2.setOps(value);
            });
          }),

        ],
      ),
    );
  }
}

