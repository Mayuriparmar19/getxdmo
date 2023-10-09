import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class PieChartDemo extends StatefulWidget {
  const PieChartDemo({super.key});

  @override
  State<PieChartDemo> createState() => _PieChartDemoState();
}

class _PieChartDemoState extends State<PieChartDemo> {
 final List<PieData> chartData =[
      PieData(59000, 'TATA'),
      PieData(20000, 'Bajaj'),
      PieData( 35000, 'ITC'),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pie Chart'),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);

        },icon: const Icon(CupertinoIcons.back),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
               margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            child: SfCircularChart(
              backgroundColor: Colors.grey.shade200,
              title: ChartTitle(text: 'Pie Data'),
                 legend: const Legend(
                    isVisible: true
                 ),
// palette: [Colors.pinkAccent,Colors.indigoAccent,Colors.orangeAccent],
                series: [
                   PieSeries <PieData,String>(
                     dataLabelSettings: const DataLabelSettings(
                        isVisible: true,

                     ),
                     dataSource: chartData,
                      xValueMapper: (PieData data , _) => data.xData,
                     yValueMapper:  (PieData data , _ ) => data.yData
                   )
                ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
class PieData{
    final num  yData;
    final String xData;

   PieData(this.yData, this.xData);
}
