import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PieChartFL extends StatefulWidget {
  const PieChartFL({super.key});

  @override
  State<PieChartFL> createState() => _PieChartFLState();
}

class _PieChartFLState extends State<PieChartFL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pie Chart',
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.back),
          ),
        ),
        body: PieChart(
            swapAnimationCurve: Curves.linear,
            swapAnimationDuration: const Duration(milliseconds: 1000),
            PieChartData(
                centerSpaceRadius: 8,
                borderData: FlBorderData(show: false),
                sectionsSpace: 0.5,
                sections: [
                  PieChartSectionData(
                    title: 'First Data',
                      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
                      value: 35, color: Colors.green, radius: 100),
                  PieChartSectionData(
                    title: 'Second Data',
                      titleStyle: const TextStyle(fontWeight: FontWeight.bold,),
                      value: 40, color: Colors.blue, radius: 100),
                  PieChartSectionData(
                    title: 'Third Data',
                      titleStyle: const TextStyle(fontWeight: FontWeight.bold,),
                      value: 55, color: Colors.redAccent, radius: 100),
                  PieChartSectionData(
                     title: 'Fourth Data',
                      titleStyle: const TextStyle(fontWeight: FontWeight.bold,),
                      value: 70, color: Colors.purple, radius: 100),
                   PieChartSectionData(
                     title: 'Fifth Data',
                      titleStyle: const TextStyle(fontWeight: FontWeight.bold,),
                      value: 20,color: Colors.yellow,radius: 100
                   ),

                ])));
  }
}
