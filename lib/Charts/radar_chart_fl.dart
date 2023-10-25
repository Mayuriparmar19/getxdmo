import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RadarChartFL extends StatefulWidget {
  const RadarChartFL({super.key});

  @override
  State<RadarChartFL> createState() => _RadarChartFLState();
}

class _RadarChartFLState extends State<RadarChartFL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('Radar Chart'),
         leading: IconButton(onPressed: (){},icon: const Icon(CupertinoIcons.back),) ,
       ),
      body: RadarChart(
          RadarChartData(

      )),
    );
  }
}
