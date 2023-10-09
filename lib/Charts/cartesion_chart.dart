import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
class CartesianChartsDemo extends StatefulWidget {
  const CartesianChartsDemo({super.key});

  @override
  State<CartesianChartsDemo> createState() => _CartesianChartsDemoState();
}

class _CartesianChartsDemoState extends State<CartesianChartsDemo> {
  final List<SalesData> chartData =[
      SalesData(2002, 34000, Colors.indigo),
    SalesData(2009, 40000, Colors.redAccent),
    SalesData(2013, 37000, Colors.deepOrangeAccent),
    SalesData(2020, 4000, Colors.brown),
    SalesData(2023, 72000, Colors.purpleAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cartesian Chart'),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);

        },icon: const Icon(CupertinoIcons.back),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              child:SfCartesianChart(

                backgroundColor: Colors.grey.shade200,
                title: ChartTitle(text: 'Sales Data'),
                series: <ChartSeries> [
                  LineSeries <SalesData,int>
                    (
                    dashArray: <double> [10,5],
                    xAxisName: 'Year',
                    yAxisName:'Sales',
                    animationDuration: 3000,
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    dataSource: chartData,
                    xValueMapper:(SalesData sales, _ ) => sales.year,
                    yValueMapper: (SalesData sales, _ ) => sales.sales,
                  ),
                ],
              ) ,
            ),
            const SizedBox(height: 20,),
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              child:SfCartesianChart(

                backgroundColor: Colors.grey.shade200,
                title: ChartTitle(text: 'Sales Data'),
                series: <ChartSeries> [
                  BarSeries <SalesData,int>
                    (

                    xAxisName: 'Year',
                    yAxisName:'Sales',
                    animationDuration: 3000,
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    dataSource: chartData,
                    xValueMapper:(SalesData sales, _ ) => sales.year,
                    yValueMapper: (SalesData sales, _ ) => sales.sales,
                  ),
                ],
              ) ,
            ),
            const SizedBox(height: 20,),
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              child:SfCartesianChart(

                backgroundColor: Colors.grey.shade200,
                title: ChartTitle(text: 'Sales Data'),
                series: <ChartSeries> [
                  SplineSeries <SalesData,int>
                    (
                    xAxisName: 'Year',
                    yAxisName:'Sales',
                    animationDuration: 3000,
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    dataSource: chartData,
                    xValueMapper:(SalesData sales, _ ) => sales.year,
                    yValueMapper: (SalesData sales, _ ) => sales.sales,
                  ),
                ],
              ) ,
            ),
            const SizedBox(height: 20,),
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              child:SfCartesianChart(

                backgroundColor: Colors.grey.shade200,
                title: ChartTitle(text: 'Sales Data'),
                series: <ChartSeries> [
                  AreaSeries <SalesData,int>
                    (
                    xAxisName: 'Year',
                    yAxisName:'Sales',
                    animationDuration: 3000,
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    dataSource: chartData,
                    xValueMapper:(SalesData sales, _ ) => sales.year,
                    yValueMapper: (SalesData sales, _ ) => sales.sales,
                  ),
                ],
              ) ,
            ),
            const SizedBox(height: 20,),
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              child:SfCartesianChart(

                backgroundColor: Colors.grey.shade200,
                title: ChartTitle(text: 'Sales Data'),
                series: <ChartSeries> [
                 ColumnSeries <SalesData,int>
                    (
                    xAxisName: 'Year',
                    yAxisName:'Sales',
                    animationDuration: 3000,
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    dataSource: chartData,
                    xValueMapper:(SalesData sales, _ ) => sales.year,
                    yValueMapper: (SalesData sales, _ ) => sales.sales,
                  ),
                ],
              ) ,
            ),
            const SizedBox(height: 20,),
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              child:SfCartesianChart(

                backgroundColor: Colors.grey.shade200,
                title: ChartTitle(text: 'Sales Data'),
                series: <ChartSeries> [
                  WaterfallSeries <SalesData,int>
                    (
                    xAxisName: 'Year',
                    yAxisName:'Sales',
                    animationDuration: 3000,
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    dataSource: chartData,
                    xValueMapper:(SalesData sales, _ ) => sales.year,
                    yValueMapper: (SalesData sales, _ ) => sales.sales,
                  ),
                ],
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  late final int year;
  late final double sales;
  late final Color color;

  SalesData(this.year, this.sales, this.color);
}
// class SalesDataBar {
//   late final int year1;
//   late final double sales1;
//   late final Color color1;
//
//   SalesDataBar(this.year1, this.sales1, this.color1);
// }
