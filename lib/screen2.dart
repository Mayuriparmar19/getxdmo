import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdmo/screen3.dart';
class S2 extends StatefulWidget {
  final String name;
  const S2({super.key, this.name=""});

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('s2${widget.name}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
               // Get.to(S3());
              Get.toNamed('/S3');
            }, child: const Text('Go To Screen 2')),
          )
        ],
      ),
    );
  }
}
