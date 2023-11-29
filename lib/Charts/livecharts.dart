import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LiveChartDemo extends StatefulWidget {
  const LiveChartDemo({Key? key}) : super(key: key);

  @override
  State<LiveChartDemo> createState() => _LiveChartDemoState();
}

class _LiveChartDemoState extends State<LiveChartDemo> {
  late List<LiveChartData> chartData;
  late ChartSeriesController chartSeriesController;

  @override
  void initState() {
    chartData = getChartData();
    Timer.periodic(const Duration(seconds: 1), updateDataSource);
    super.initState();
  }

  List<LiveChartData> getChartData() {
    return <LiveChartData>[
      LiveChartData(0, 42),
      LiveChartData(1, 43),
      LiveChartData(2, 48),
      LiveChartData(3, 52),
      LiveChartData(4, 24),
      LiveChartData(5, 42),
      LiveChartData(6, 60),
      LiveChartData(7, 70),
      LiveChartData(8, 15),
      LiveChartData(9, 09),

    ];
  }

  int time = 10;

  void updateDataSource(Timer timer) {
    setState(() {
      chartData.add(LiveChartData(time++, (math.Random().nextInt(60))));
      chartData.removeAt(0);
      chartSeriesController.updateDataSource(
          addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Chart'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: SfCartesianChart(
                borderColor:const Color(0xff000000),
                backgroundColor: Colors.grey.shade200,
                title: ChartTitle(text: 'Time & Speed Chart'),
                series: <LineSeries<LiveChartData, int>>[
                  LineSeries<LiveChartData, int>(
                    onRendererCreated: (ChartSeriesController controller) {
                      chartSeriesController = controller;
                    },
                    xValueMapper: (LiveChartData data, _) => data.time,
                    yValueMapper: (LiveChartData data, _) => data.speed,
                    dataSource: chartData,
                  ),
                ],
                primaryXAxis: NumericAxis(
                    majorGridLines: const MajorGridLines(
                      width: 1,
                    ),
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interval: 2,
                    title: AxisTitle(text: 'Time in Seconds')),
       
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LiveChartData {
  final int time;
  final num speed;

  LiveChartData(this.time, this.speed);
}
