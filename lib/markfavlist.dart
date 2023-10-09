import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'markfav_controller.dart';
 class MarkFavouriteApp extends StatefulWidget {
   const MarkFavouriteApp({super.key});

   @override
   State<MarkFavouriteApp> createState() => _MarkFavouriteAppState();
 }

 class _MarkFavouriteAppState extends State<MarkFavouriteApp> {
   MarkFavouriteAppController markFavouriteAppController = Get.put(
       MarkFavouriteAppController());

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: const Text('Mark Favourite'),
         leading: IconButton(onPressed:() {
           Navigator.pop(context);

         },icon: const Icon(CupertinoIcons.back),),
       ),
       body: ListView.builder(
           itemCount: markFavouriteAppController.names.length,
           itemBuilder: (context, index) {
             return Card(
                 child: ListTile(
                   onTap: () {
                     if (markFavouriteAppController.temp.contains(
                         markFavouriteAppController.names[index].toString())) {
                       markFavouriteAppController.removeFav(
                           markFavouriteAppController.names[index].toString());
                     } else {
                       markFavouriteAppController.addFav(
                           markFavouriteAppController.names[index].toString());
                     }
                   },

                   title: Text(
                       markFavouriteAppController.names[index].toString()),
                   trailing: Obx( () {
                      return Icon(Icons.favorite,
                          color: markFavouriteAppController.temp.contains(
                              markFavouriteAppController.names[index].toString())
                              ? Colors.red
                              : Colors.grey);
                   }),
                 )
             );
           }
       ),
     );
   }
 }
