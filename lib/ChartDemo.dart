import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartDemo extends StatelessWidget {
  ChartDemo({Key? key}) : super(key: key);
  // final List<ChartData> chartData = [
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chart'),
        ),
        body: Center(
            child: Container(
                child: SfCircularChart(
                    legend: Legend(isVisible: true),
                    series: <CircularSeries>[
              // Initialize line series
              PieSeries<ChartData, String>(
                dataSource: [
                  // Bind data source
                  ChartData('Covide -ve', 15, Colors.blue),
                  ChartData('Vaccinated', 70, Colors.yellow),
                  ChartData('Covid +ve', 15, Colors.red)
                ],
                xValueMapper: (ChartData item, _) => item.x,
                yValueMapper: (ChartData item, _) => item.y,
                // Render the data label
                dataLabelSettings: DataLabelSettings(isVisible: true),
                name: 'Health survey',
              ),
            ]))));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
