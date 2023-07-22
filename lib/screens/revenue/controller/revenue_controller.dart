import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RevenueController extends GetxController {
  final monthlyRevenueOption = 0.obs;
  final clientFrequencyOption = 0.obs;
  final revenuePerformanceOption = 0.obs;
  final ScrollController monthlyRevenueScrollController = ScrollController();
  final ScrollController frequencyScrollController = ScrollController();
  final ScrollController jobsDoneScrollController = ScrollController();
  final ScrollController productivityScrollController = ScrollController();
  late TooltipBehavior monthlyTooltip;
  late TooltipBehavior clientFrequencyTooltip;
  late TooltipBehavior revenuePerformanceTooltip;
  late TooltipBehavior jobsProductivityTooltip;

  @override
  onInit() {
    monthlyTooltip = TooltipBehavior(enable: true);
    clientFrequencyTooltip = TooltipBehavior(enable: true);
    revenuePerformanceTooltip = TooltipBehavior(enable: true);
    jobsProductivityTooltip = TooltipBehavior(enable: true);
    super.onInit();
  }

  toggleMonthlyRevenueOption({required int index}) {
    monthlyRevenueOption.value = index;
  }

  toggleClientFrequencyOption({required int index}) {
    clientFrequencyOption.value = index;
  }

  toggleRevenuePerformanceOption({required int index}) {
    revenuePerformanceOption.value = index;
  }
}
