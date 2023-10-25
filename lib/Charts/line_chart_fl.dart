import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LineChartFl extends StatefulWidget {
  const LineChartFl({super.key});

  @override
  State<LineChartFl> createState() => _LineChartFlState();
}

class _LineChartFlState extends State<LineChartFl> {
  final List<Color> gradient = [
    const Color(0xff23bee6),
    const Color(0xff02d39a)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Line Charts',
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
      body: LineChart(
        curve: Curves.linear,
        LineChartData(
          backgroundColor: const Color(0xff313E97),
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 0.5),
                const FlSpot(2, 0.2),
                const FlSpot(3, 1.5),
                const FlSpot(4, 1),
                const FlSpot(6, 1.9),
                const FlSpot(7, 1.3),
                const FlSpot(8, 2),
                const FlSpot(9, 1),
                const FlSpot(10, 2.9)
              ],
              isCurved: true,
              gradient: const LinearGradient(
                colors: [
                  Color(0xff23bee6),
                  Color(0xff02d39a),
                ],
              ),
              barWidth: 3.8,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff23bee6).withOpacity(0.3),
                    const Color(0xff02d39a).withOpacity(0.3)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
