import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';
 class Home extends StatefulWidget {

   const Home({super.key,});

   @override
   State<Home> createState() => _HomeState();
 }

 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: const Text('Home'),
         leading: IconButton(onPressed:() {
           Navigator.pop(context);

         },icon: const Icon(CupertinoIcons.back),),
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Center(
               child: TextButton(onPressed: (){
                        Get.to( const GetXEx());

               }, child:const Text('Click Me for next Screen')),
             )
          ],
       ),
     );
   }
 }
