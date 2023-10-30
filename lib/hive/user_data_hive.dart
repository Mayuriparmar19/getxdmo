import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getxdmo/hive/boxes_of_hive.dart';
import 'package:getxdmo/hive/notes_model.dart';
import 'package:hive_flutter/adapters.dart';

class NotesAppHive extends StatefulWidget {
  const NotesAppHive({super.key});

  @override
  State<NotesAppHive> createState() => _NotesAppHiveState();
}

class _NotesAppHiveState extends State<NotesAppHive> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

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
      body: ValueListenableBuilder<Box<MyModel>>(
        valueListenable: Boxes.getData().listenable(),
        builder: (context, box, _) {
          var data = box.values.toList().cast<MyModel>();
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              data[index].title.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  edit(
                                      data[index],
                                      data[index].title.toString(),
                                      data[index].description.toString());
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                )),
                            IconButton(
                                onPressed: () {
                                  delete(data[index]);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                        Text(
                          data[index].description.toString(),
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> show() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    showCursor: false,
                    controller: titleController,
                    decoration: InputDecoration(
                        hintText: ' Enter Title',
                        hintStyle:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 2))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 5,
                    controller: descriptionController,
                    decoration: InputDecoration(
                        hintText: ' Enter Description',
                        hintStyle:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 2))),
                  )
                ],
              ),
            ),
            title: const Text('Add Notes'),
            actions: [
              TextButton(
                  onPressed: () {
                    final data = MyModel(
                        title: titleController.text,
                        description: descriptionController.text);
                    final box = Boxes.getData();
                    box.add(data);
                    // if(kDebugMode){
                    //   print(title.text);
                    //   print(desc.text);
                    // }
                    data.save();
                    titleController.clear();
                    descriptionController.clear();
                    Navigator.pop(context);
                  },
                  child: const Text('add')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'))
            ],
          );
        });
  }

  void delete(MyModel myModel) async {
    await myModel.delete();
  }

  Future<void> edit(MyModel myModel, String title, String description) async {
    titleController.text = title;
    descriptionController.text = description;
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    showCursor: false,
                    controller: titleController,
                    decoration: InputDecoration(
                        hintText: ' Enter Title',
                        hintStyle:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 2))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 5,
                    controller: descriptionController,
                    decoration: InputDecoration(
                        hintText: ' Enter Description',
                        hintStyle:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 2))),
                  )
                ],
              ),
            ),
            title: const Text('Edit Notes'),
            actions: [
              TextButton(
                  onPressed: () async {
                    myModel.title = titleController.text.toString();
                    myModel.description = descriptionController.text.toString();
                    myModel.save();
                    titleController.clear();
                    descriptionController.clear();
                    Navigator.pop(context);
                  },
                  child: const Text('Edit')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'))
            ],
          );
        });
  }
}
