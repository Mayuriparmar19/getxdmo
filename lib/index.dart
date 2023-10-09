import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdmo/countercontroller.dart';

class GetXEx extends StatefulWidget {
  const GetXEx({super.key});

  @override
  State<GetXEx> createState() => _GetXExState();
}

class _GetXExState extends State<GetXEx> {
  final CounterController1 controller1 = Get.put(CounterController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Get-x'),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);

        },icon: const Icon(CupertinoIcons.back),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: const Text('Mayuri'),
                subtitle: (const Text('Flutter developer ')),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: const EdgeInsets.all(2),
                    middleText: 'Are you sure You want to delete The Data?',
                    contentPadding: const EdgeInsets.all(10),
                    confirm: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Get.back();
                        },
                        child: const Text('Ok')),
                    cancel: TextButton(
                        onPressed: () {}, child: const Text('Cancel')),
                    // content: Column(
                    //    children: [
                    //       Text('hey'),
                    // with the use of content you can add multiple lines in dialog box
                    //    ],
                    // )
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: const Text('Mayuri'),
                subtitle: (const Text('Flutter developer ')),
                onTap: () {
                  Get.bottomSheet(Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.deepPurple,
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Icons.light_mode,
                              color: Colors.white,
                            ),
                            title: const Text(
                              'Light Mode',
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.dark_mode,
                              color: Colors.white,
                            ),
                            title: const Text(
                              'Dark Mode',
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      )));
                },
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(
              'Go back',
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
          Center(
            child: Obx(() {
               return Text( controller1.counter.toString(),style:  TextStyle(fontSize: 20),);
            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.notifications),
        onPressed: () {
          // Get.snackbar('Hey', 'hello');
          controller1.incrementCounter();
        },
      ),
    );
  }
}
