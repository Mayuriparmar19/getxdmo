import 'package:flutter/material.dart';
import 'package:get/get.dart';

class S3 extends StatefulWidget {
  const S3({super.key});

  @override
  State<S3> createState() => _S3State();
}

class _S3State extends State<S3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('s3'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
               Get.back();
              Get.back();
            }, child: const Text('Go back')),
          )
        ],
      ),
    );
  }
}
