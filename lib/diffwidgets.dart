import 'package:flutter/material.dart';

class DiffWidgetsInFlutter extends StatefulWidget {
  const DiffWidgetsInFlutter({super.key});

  @override
  State<DiffWidgetsInFlutter> createState() => _DiffWidgetsInFlutterState();
}

class _DiffWidgetsInFlutterState extends State<DiffWidgetsInFlutter> {
  @override
  Widget build(BuildContext context) {
    void showDate()
    {
      showDatePicker(context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1801),
          lastDate: DateTime(3001));
    }
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDate();
                  },
                   child: const Text('open Calender'),
                ),
              ),

            ],
          ),
        ));
  }
}
