import 'package:get/get.dart';

class RevenueController extends GetxController {
  final monthlyRevenueOption = 0.obs;
  final clientFrequencyOption = 0.obs;
  final revenuePerformanceOption = 0.obs;

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
