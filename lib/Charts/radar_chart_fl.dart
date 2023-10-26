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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: RadarChart(
          swapAnimationDuration: const Duration(milliseconds: 1000),
          swapAnimationCurve: Curves.linear,
          RadarChartData(dataSets: [
            RadarDataSet(
                entryRadius: 5,
                borderWidth: 1,
                borderColor: Colors.black,
                dataEntries: [
                  const RadarEntry(value: 6),
                  const RadarEntry(value: 2),
                  const RadarEntry(value: 4),
                ])
          ])),
    );
  }
}
