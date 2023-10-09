import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getxdmo/Charts/cartesion_chart.dart';
import 'package:getxdmo/Charts/livecharts.dart';
import 'package:getxdmo/Charts/piecharts.dart';
import 'package:getxdmo/Charts/radialcharts.dart';
class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Chart'),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);

        },icon: const Icon(CupertinoIcons.back),),

      ),
      body: ListView(
         children: [
           ListTile(
             title: const Text('Cartesian Charts'),
             trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {

               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => const CartesianChartsDemo()));
             },
           ),
           ListTile(
             title: const Text('Pie Charts'),
             trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {

               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => const PieChartDemo()));
             },
           ),
           ListTile(
             title: const Text('Radial Charts'),
             trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {

               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => const RadialChartsDemo(
                   )));
             },
           ),
           ListTile(
             title: const Text('Live Charts'),
             trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {

               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => const LiveChartDemo(
                   )));
             },
           ),
         ],
      ),
    );
  }
}
