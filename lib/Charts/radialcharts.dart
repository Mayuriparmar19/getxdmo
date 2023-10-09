
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class RadialChartsDemo extends StatefulWidget {
  const RadialChartsDemo({super.key});

  @override
  State<RadialChartsDemo> createState() => _RadialChartsDemoState();
}

class _RadialChartsDemoState extends State<RadialChartsDemo> {
  final List<RadialChartData> chartData =[
    RadialChartData(59000, 'TATA'),
    RadialChartData(20000, 'Bajaj'),
    RadialChartData( 35000, 'ITC'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radial Chart'),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);

        },icon: const Icon(CupertinoIcons.back),),
      ),
      body: SingleChildScrollView(
         child: Column(
            children: [
               Container(
                  margin:const  EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                 child: SfCircularChart(
                   backgroundColor: Colors.grey.shade200,
                   title: ChartTitle(text: 'Sales Data'),
                   legend: const Legend(isVisible: true),
                   series: [
                       DoughnutSeries<RadialChartData, String>(

                         animationDuration: 2000,
                            dataLabelSettings: const DataLabelSettings(isVisible: true,showZeroValue: true),
                          cornerStyle: CornerStyle.bothFlat,
                          yValueMapper: (RadialChartData data , _) => data.yData,
                         xValueMapper:  (RadialChartData data , _) => data.xData,
                         dataSource: chartData
                       )
                   ],
                 ),
               ),
              const SizedBox(height: 10,),
              Container(
                margin:const  EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                child: SfCircularChart(

                  backgroundColor: Colors.grey.shade200,
                  title: ChartTitle(text: 'Sales Data'),
                   legend: const Legend(isVisible: true),
                  series: [

                    RadialBarSeries<RadialChartData, String>(
                      trackOpacity: 0.3,
                      animationDuration: 2000,

                        // animationDelay: 50,
                        radius: '90%',
                      trackColor: Colors.grey.shade400,
                          gap: "5%",
                        innerRadius: "40%",

                        dataLabelSettings: const DataLabelSettings(isVisible: true,),
                        cornerStyle: CornerStyle.bothCurve,
                        yValueMapper: (RadialChartData data , _) => data.yData,
                        xValueMapper:  (RadialChartData data , _) => data.xData,
                        dataSource: chartData

                    )
                  ],
                ),
              ),
              // const SizedBox(height: 20,),
              // Container(
              //   margin:const  EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              //   child: SfCircularChart(
              //
              //     backgroundColor: Colors.grey.shade200,
              //     title: ChartTitle(text: 'Sales Data'),
              //     legend: const Legend(isVisible: true),
              //     series: [
              //
              //       RadialBarSeries<RadialChartData, String>(
              //         innerRadius: "40%",
              //           trackColor: Colors.grey.shade400,
              //           gap: "5%",
              //           // dataLabelSettings: const DataLabelSettings(isVisible: true),
              //           cornerStyle: CornerStyle.bothCurve,
              //           yValueMapper: (RadialChartData data , _) => data.yData,
              //           xValueMapper:  (RadialChartData data , _) => data.xData,
              //           dataSource: chartData
              //       )
              //     ],
              //   ),
              // ),

            ],
         ),
      ),
    );
  }
}
class RadialChartData{
  final num  yData;
  final String xData;
  RadialChartData(this.yData, this.xData);

}