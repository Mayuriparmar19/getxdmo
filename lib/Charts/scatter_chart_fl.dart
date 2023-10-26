import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScatterChartFL extends StatefulWidget {
  const ScatterChartFL({super.key});

  @override
  State<ScatterChartFL> createState() => _ScatterChartFLState();
}

class _ScatterChartFLState extends State<ScatterChartFL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Scatter Chart'),
        leading: IconButton(
           onPressed: (){
             Navigator.pop(context);
           },
           icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: ScatterChart(
        ScatterChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 20,

          scatterSpots: [

             ScatterSpot(0, 5),
             ScatterSpot(0.5, 4),
             ScatterSpot(3, 1.5),
             ScatterSpot(4, 1),
             ScatterSpot(6, 1.9),
             ScatterSpot(7, 1.3),
             ScatterSpot(8, 2),
             ScatterSpot(9, 1),
             ScatterSpot(10, 2.9),



          ]
        )

      ),

    );
  }
}
