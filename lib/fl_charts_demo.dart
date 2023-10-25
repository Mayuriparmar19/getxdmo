import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getxdmo/Charts/line_chart_fl.dart';
import 'package:getxdmo/Charts/pie_chart_fl.dart';
import 'package:getxdmo/Charts/rada_chart_fl.dart';

import 'Charts/bar_chart_fl.dart';

class FlChartsDemo extends StatefulWidget {
  const FlChartsDemo({Key? key}) : super(key: key);

  @override
  State<FlChartsDemo> createState() => _FlChartsDemoState();
}

class _FlChartsDemoState extends State<FlChartsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All FL Charts'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Line Chart'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LineChartFl()));
            },
          ),
          ListTile(
            title: const Text('Bar Chart'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BarChartFL()));
            },
          ),
          ListTile(
            title: const Text('Pie Chart'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PieChartFL()));
            },
          ),
          ListTile(
            title: const Text('Radar Chart'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const RadarChartFL()));
            },
          ),
        ],

      ),
    );
  }
}
