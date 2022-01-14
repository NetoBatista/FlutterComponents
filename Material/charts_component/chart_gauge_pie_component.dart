import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ChartGaugePieComponent extends StatelessWidget {
  List<charts.Series<dynamic, String>> seriesList;
  final double pi = 3.14159265359;

  ChartGaugePieComponent({Key? key, required this.seriesList }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return charts.PieChart<String>(seriesList,
                                   animate: true,
                                   defaultRenderer: charts.ArcRendererConfig(arcWidth: 30,));
  }
}