import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_modular/flutter_modular.dart';

class ChartGroupedStackedComponent extends StatelessWidget {
  List<charts.Series<dynamic, String>> seriesList;

  ChartGroupedStackedComponent({ Key? key, required this.seriesList }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = false;
    var primaryMeasureAxis = charts.NumericAxisSpec(renderSpec: charts.GridlineRendererSpec(labelStyle: charts.TextStyleSpec(color: isDark ? charts.MaterialPalette.white : charts.MaterialPalette.black)));
    var domainAxis = charts.AxisSpec<String>(renderSpec: charts.GridlineRendererSpec(lineStyle: const charts.LineStyleSpec(color: charts.MaterialPalette.transparent), 
                                                                                     labelStyle: charts.TextStyleSpec(color: isDark ? charts.MaterialPalette.white : charts.MaterialPalette.black)));
    return IgnorePointerComponent(
      child: charts.BarChart(
        seriesList,
        animate: true,
        barGroupingType: charts.BarGroupingType.groupedStacked,
        primaryMeasureAxis: primaryMeasureAxis,
        domainAxis: domainAxis,
      ),
    );
  }

}
