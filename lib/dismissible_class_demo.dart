import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({super.key});

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  List<int> items = List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible Demo'),
      leading: IconButton(onPressed:() {
        Navigator.pop(context);

      },icon: const Icon(CupertinoIcons.back),),
      ),

      body: Column(
         children: [
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                            itemCount: items.length,
                            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context,index){
                                 return Dismissible(
                                     onDismissed: (DismissDirection direction) {
                                       setState(() {
                                         items.removeAt(index);

                                       });
                                     },
                                     key: ValueKey<int>(items[index]), child: const ListTile(
                                       // leading: Icon(Icons.delete,color: Colors.red,),
                                   title: Text('Data'),
                                   trailing: Icon(Icons.delete,color: Colors.red,),
                                 ));
                        }),
                      )
         ],
      ),
    );
  }
}
