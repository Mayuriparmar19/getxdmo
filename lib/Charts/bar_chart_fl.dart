import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BarChartFL extends StatefulWidget {
  const BarChartFL({super.key});

  @override
  State<BarChartFL> createState() => _BarChartFLState();
}

class _BarChartFLState extends State<BarChartFL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Bar Chart',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
      ),
      body: BarChart(BarChartData(
          borderData: FlBorderData(
              border: const Border(
            top: BorderSide.none,
            right: BorderSide.none,
            left: BorderSide(width: 1),
            bottom: BorderSide(width: 1),
          )),
          groupsSpace: 10,

          // add bars
          barGroups: [
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(toY: 10, width: 15, color: Colors.blue),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(toY: 9, width: 15, color: Colors.blue),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(toY: 4, width: 15, color: Colors.blue),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(toY: 2, width: 15, color: Colors.blue),
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(toY: 13, width: 15, color: Colors.blue),
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(toY: 17, width: 15, color: Colors.blue),
            ]),
            BarChartGroupData(x: 7, barRods: [
              BarChartRodData(toY: 19, width: 15, color: Colors.blue),
            ]),
            BarChartGroupData(x: 8, barRods: [
              BarChartRodData(toY: 21, width: 15, color: Colors.blue),
            ]),
          ])),
    );
  }
}
