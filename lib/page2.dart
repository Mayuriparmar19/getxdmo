import 'package:flutter/material.dart';
class Page2Demo extends StatefulWidget {
  const Page2Demo({super.key});

  @override
  State<Page2Demo> createState() => _Page2DemoState();
}

class _Page2DemoState extends State<Page2Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}
