import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DiffWidgetsInFlutter extends StatefulWidget {
  const DiffWidgetsInFlutter({super.key});

  @override
  State<DiffWidgetsInFlutter> createState() => _DiffWidgetsInFlutterState();
}

class _DiffWidgetsInFlutterState extends State<DiffWidgetsInFlutter> {

  @override
  Widget build(BuildContext context) {
    void showDate() {
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1801),
          lastDate: DateTime(3001));
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child:GridView(
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          ElevatedButton(
            onPressed: () {
              showDate();
            },
            child: const Text('open Calender'),
          ),
          const SpinKitChasingDots(
            color: Colors.redAccent,
            size: 20,
            duration: Duration(milliseconds: 3000),
          ),
          const SpinKitCircle(
            color: Colors.green,
            size: 20,
            duration: Duration(milliseconds: 3000),
          ),
          const SpinKitCubeGrid(
            size: 20,
            color: Colors.blueAccent,
            duration: Duration(milliseconds: 3000),
          ),
          const SpinKitDoubleBounce(
            size: 20,
            color: Colors.purple,
            duration: Duration(milliseconds: 3000),
          ),
          const SpinKitDancingSquare(
            size: 20,
            color: Colors.orange,
            duration: Duration(milliseconds: 3000),
          ),
          const SpinKitFadingCube(
            color: Colors.brown,
            size: 20,
            duration: Duration(milliseconds: 3000),
          ),

          const SpinKitFadingFour(
            color: Colors.pinkAccent,
            size: 20,
            duration: Duration(milliseconds: 3000),
          ),
          const SpinKitFadingGrid(
            color: Colors.blueGrey,
            size: 20,
            duration: Duration(milliseconds: 3000),
          ),
          const SpinKitHourGlass(
            color: Colors.lightBlueAccent,
            size: 20,
            duration: Duration(milliseconds: 3000),
          ),
         const  SpinKitFoldingCube( color: Colors.deepPurple,duration: Duration(milliseconds: 3000),size: 20,)
        ],
      ),
    ));
  }
}
