import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

// what is box in hive
//
class HiveDatabaseDemo extends StatefulWidget {
  const HiveDatabaseDemo({super.key});

  @override
  State<HiveDatabaseDemo> createState() => _HiveDatabaseDemoState();
}

class _HiveDatabaseDemoState extends State<HiveDatabaseDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('Hive'),
         leading: IconButton(
           onPressed: (){
             Navigator.pop(context);
           },
           icon:const  Icon(CupertinoIcons.back),

         ),
       ),
      body: Column(
        children: [
             FutureBuilder(
                 future: Hive.openBox('demo box'),
                 builder: (context,snapShot){
               return
                 Column(
                   children: [
                     InkWell(
                    onTap: (){} ,
                       child:
                         Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapShot.data!.get('name').toString()),
                                Text(snapShot.data!.get('age').toString()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(onPressed: (){
                                      snapShot.data!.put('name','Mihir').toString();
                                      setState(() {

                                      });

                                    }, icon:const Icon(Icons.edit)),
                                    IconButton(onPressed: (){
                                      snapShot.data!.clear();
                                      snapShot.data!.delete('name').toString();
                                      setState(() {

                                      });

                                    }, icon:const Icon(Icons.delete)),
                                  ],
                                )

                              ],
                            ),
                         )




                     )
                   ],
                 );
             })
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()async{
        var box = await Hive.openBox('demo box');
        box.put('name', 'Mayuri');
        box.put('age', '22');
        if(kDebugMode){
          print(box.get('name'));
        }
        if(kDebugMode){
          print(box.get('age'));
        }
        box.put( 'details',{
          'dept':'Mobile',
          'tech':'Flutter'

        });
        if(kDebugMode){
           print(box.get('details'));
        }
        setState(() {

        });

      },child:const  Icon(CupertinoIcons.plus),),
    );
  }
}
