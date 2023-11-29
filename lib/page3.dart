import 'package:flutter/material.dart';

class Page3Demo extends StatefulWidget {
  const Page3Demo({super.key});

  @override
  State<Page3Demo> createState() => _Page3DemoState();
}

class _Page3DemoState extends State<Page3Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Text('Page 3'),
       ),
    );
  }
}
