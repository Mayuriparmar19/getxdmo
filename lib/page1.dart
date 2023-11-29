import 'package:flutter/material.dart';

class Page1Demo extends StatefulWidget {
  const Page1Demo({super.key});

  @override
  State<Page1Demo> createState() => _Page1DemoState();
}

class _Page1DemoState extends State<Page1Demo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Center(
         child: Text('Page 1'),
       ),
    );
  }
}
