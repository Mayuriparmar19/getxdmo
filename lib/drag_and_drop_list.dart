import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragAndDropListDemo extends StatefulWidget {
  const DragAndDropListDemo({super.key});

  @override
  State<DragAndDropListDemo> createState() => _DragAndDropListDemoState();
}

class _DragAndDropListDemoState extends State<DragAndDropListDemo> {
  List<String> items = ['Flutter', 'Python', 'Java', 'IOS', 'React'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(CupertinoIcons.back),),
         title:const Text('Drag & Drop List'),),
       body: ReorderableListView(
        onReorder: _onReorder,
        children: _buildListItems(),
    ),
    );
  }
  List<Widget> _buildListItems() {
    return items
        .map((item) => Card(
      color: Colors.lightBlueAccent,
      margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      elevation: 3,
      key: Key(item),
      child: SizedBox(
        height: 60,
          child: Center(child: Text(item))),
    ))
        .toList();
  }
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final String item = items.removeAt(oldIndex);
      items.insert(newIndex, item);
    });
  }
  }

