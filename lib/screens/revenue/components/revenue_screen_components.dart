import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../models/all_gardeners_model.dart';
import '../../../utils/colors/app_colors.dart';

class CustomMonthlyRevenueChart extends StatelessWidget {
  final List<ChartData> data;
  final TooltipBehavior tooltip;
  final double barWidth;
  final String tipString;

  const CustomMonthlyRevenueChart({
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
        // Remove X-axis grid lines
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
      series: <ChartSeries<ChartData, String>>[
        ColumnSeries<ChartData, String>(
          dataSource: data,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
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
