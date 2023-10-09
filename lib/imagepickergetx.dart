import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'imagepickercontroller.dart';
 class ImagePickerDemo extends StatefulWidget {
   const ImagePickerDemo({super.key});

   @override
   State<ImagePickerDemo> createState() => _ImagePickerDemoState();
 }

 class _ImagePickerDemoState extends State<ImagePickerDemo> {
   ImagePickerController imagePickerController= Get.put(ImagePickerController());
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(title: const Text('ImagePicker'),
           leading: IconButton(onPressed:() {
             Navigator.pop(context);

           },icon: const Icon(CupertinoIcons.back),),
         ),
        body:  Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                        Center(
                          child: CircleAvatar(
                            radius: 50,
                                     backgroundImage: imagePickerController.imagePath.isNotEmpty? FileImage(File(imagePickerController.imagePath.toString())):null,
                          ),
                        ),
                       TextButton(onPressed: (){
                         imagePickerController.getImage();
                       }, child: const Text('Take Image')),
                       TextButton(onPressed: (){
                         imagePickerController.getImage1();
                       }, child: const Text('Select Image')),
                     ],
          );
        })
     );
   }
 }
