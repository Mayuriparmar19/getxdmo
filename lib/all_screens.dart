import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getxdmo/Charts/cartesion_chart.dart';
import 'package:getxdmo/Charts/chartstype.dart';
import 'package:getxdmo/Example_3_getx.dart';
import 'package:getxdmo/demo.dart';
import 'package:getxdmo/diffwidgets.dart';
import 'package:getxdmo/dismissible_class_demo.dart';
import 'package:getxdmo/drag_and_drop_widget.dart';
import 'package:getxdmo/getapiwithgetx.dart';
import 'package:getxdmo/home.dart';
import 'package:getxdmo/imagepickergetx.dart';
import 'package:getxdmo/index.dart';
import 'package:getxdmo/markfavlist.dart';
import 'package:getxdmo/screen1.dart';
import 'package:getxdmo/screen2.dart';
import 'package:getxdmo/screen3.dart';

import 'drag_and_drop_list.dart';
import 'encrypt.dart';

class AllScreens extends StatefulWidget {
  const AllScreens({Key? key}) : super(key: key);

  @override
  _AllScreensState createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Screens'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Dismissible Demo'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DismissibleDemo()));
            },
          ),
          ListTile(
            title: const Text('Example-3'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Example3()));
            },
          ),
          ListTile(
            title: const Text('Get Data From Api with Get-x'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
          ),
          ListTile(
            title: const Text('Home'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          ListTile(
            title: const Text('ImagePicker with Get-x'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ImagePickerDemo()));
            },
          ),
          ListTile(
            title: const Text('Index'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const GetXEx()));
            },
          ),
          ListTile(
            title: const Text('MarkFavList'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MarkFavouriteApp()));
            },
          ),
          ListTile(
            title: const Text('Screen-1'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const S1()));
            },
          ),
          ListTile(
            title: const Text('Screen-2'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const S2()));
            },
          ),
          ListTile(
            title: const Text('Screen-3'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const S3()));
            },
          ),
          ListTile(
            title: const Text('Graphs & Charts Demo'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Chart()));
            },
          ),
          ListTile(
            title: const Text('  Demo'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DiffWidgetsInFlutter()));
            },
          ),
          ListTile(
            title: const Text('Drag & Drop List'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DragAndDropListDemo()));
            },
          ),
          ListTile(
            title: const Text('Drag & Drop Widget'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DragAndDropGrid()));
            },
          ),
          ListTile(
            title: const Text('Animated Text'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const DemoApp()));
            },
          ),
        ],
      ),
    );
  }
}
