import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotesAppHive extends StatefulWidget {
  const NotesAppHive({super.key});

  @override
  State<NotesAppHive> createState() => _NotesAppHiveState();
}

class _NotesAppHiveState extends State<NotesAppHive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          show();
        },
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }

  Future<void> show() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Add Notes'),
            actions: [
              TextButton(onPressed: () {}, child: const Text('add')),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: const Text('cancel'))
            ],
          );
        });
  }
}
