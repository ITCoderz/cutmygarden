import 'package:cut_my_garden/models/charts/column_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../models/charts/area_chart_model.dart';
import '../../../utils/colors/app_colors.dart';

class CustomChart extends StatelessWidget {
  final List<ColumnChartData> data;
  final TooltipBehavior tooltip;
  final double barWidth;
  final String tipString;

  const CustomChart({
    super.key,
    required this.data,
    required this.tooltip,
    required this.barWidth,
    required this.tipString,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(
          width: 0,
        ),
        // Remove Y-axis grid lines
        axisLine: const AxisLine(
          width: 0,
        ),
        // Remove X-axis line
        majorTickLines: const MajorTickLines(
          width: 0,
        ),
      ),
      plotAreaBorderWidth: 0,
      primaryYAxis: NumericAxis(
        maximumLabels: 1,
        axisLine: const AxisLine(
          width: 0,
        ),
        majorTickLines: const MajorTickLines(
          width: 0,
        ),
        majorGridLines: const MajorGridLines(
          dashArray: [
            4,
            2,
          ],
          width: 1,
          color: CColors.blackColor,
        ),
        minimum: 0,
        maximum: 10,
        interval: 2,
      ),
      tooltipBehavior: tooltip,
      backgroundColor: Colors.transparent,
      series: <ChartSeries<ColumnChartData, String>>[
        ColumnSeries<ColumnChartData, String>(
          dataSource: data,
          xValueMapper: (ColumnChartData data, _) => data.x,
          yValueMapper: (ColumnChartData data, _) => data.y,
          name: tipString,
          borderRadius: BorderRadius.circular(
            10,
          ),
          isVisible: true,
          width: barWidth,
          color: CColors.primaryColor,
        ),
      ],
    );
  }
}

class CustomAreaChart extends StatelessWidget {
  final List<AreaChartModel> data;
  final TooltipBehavior tooltip;

  const CustomAreaChart({
    super.key,
    required this.data,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: NumericAxis(
        labelFormat: '{value} 2023',
        majorGridLines: const MajorGridLines(
          width: 0,
        ),
        // Remove Y-axis grid lines
        axisLine: const AxisLine(
          width: 0,
        ),
        // Remove X-axis line
        majorTickLines: const MajorTickLines(
          width: 0,
        ),
      ),
      plotAreaBorderWidth: 0,
      primaryYAxis: NumericAxis(
        maximumLabels: 1,
        axisLine: const AxisLine(
          width: 0,
        ),
        majorTickLines: const MajorTickLines(
          width: 0,
        ),
        majorGridLines: const MajorGridLines(
          dashArray: [
            4,
            2,
          ],
          width: 1,
          color: CColors.blackColor,
        ),
        minimum: 0,
        maximum: 30,
        interval: 5,
      ),
      backgroundColor: Colors.transparent,
      tooltipBehavior: tooltip,
      series: <ChartSeries>[
        // Renders area chart
        AreaSeries<AreaChartModel, int>(
          dataSource: data,
          xValueMapper: (AreaChartModel data, _) => data.x,
          yValueMapper: (AreaChartModel data, _) => data.y,
          color: CColors.primaryColor.withOpacity(
            0.7,
          ),
        ),
      ],
    );
  }
}
