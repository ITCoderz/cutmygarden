import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constant_lists.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../../gardeners/gardener_profile/components/gardener_profile_components.dart';
import '../../report/components/report_screen_components.dart';
import '../components/revenue_screen_components.dart';
import '../controller/revenue_controller.dart';

class RevenueScreen extends StatelessWidget {
  const RevenueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final revenueScreenController = Get.put(
      RevenueController(),
    );
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return Row(
            children: [
              CustomMenuBar(
                maxWidth: constraint.maxWidth,
                selectedIndex: 6,
              ),
              Expanded(
                child: Container(
                  height: context.height * 1,
                  width: context.width * 1,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        10.ph,
                        SearchField(
                          height: 45,
                          width: context.width * 0.37,
                          textEditingController: TextEditingController(),
                        ),
                        20.ph,
                        const Text(
                          "Revenue",
                          style: CCustomTextStyles.black630,
                        ).alignWidget(
                          alignment: Alignment.centerLeft,
                        ),
                        20.ph,
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            for (int index = 0;
                                index < ConstantLists.revenueDataList.length;
                                index++) ...[
                              ReportCardWidget(
                                reportType: ConstantLists
                                    .revenueDataList[index].dataType,
                                value: ConstantLists
                                    .revenueDataList[index].dataValue,
                              ),
                            ]
                          ],
                        ).alignWidget(
                          alignment: Alignment.centerLeft,
                        ),
                        20.ph,
                        Scrollbar(
                          controller: revenueScreenController
                              .monthlyRevenueScrollController,
                          trackVisibility: true,
                          thumbVisibility: true,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: revenueScreenController
                                .monthlyRevenueScrollController,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomWidgetBackground(
                                  height: 435,
                                  width: 810,
                                  widget: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            "Monthly Revenues",
                                            style: CCustomTextStyles.black617,
                                          ),
                                          const Spacer(),
                                          20.pw,
                                          Obx(
                                            () {
                                              return ToggleWeekMonthButtonComponent(
                                                selectedIndex:
                                                    revenueScreenController
                                                        .monthlyRevenueOption
                                                        .value,
                                                weeklyFunction: () {
                                                  revenueScreenController
                                                      .toggleMonthlyRevenueOption(
                                                          index: 0);
                                                },
                                                monthlyFunction: () {
                                                  revenueScreenController
                                                      .toggleMonthlyRevenueOption(
                                                          index: 1);
                                                },
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                      20.ph,
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const RotatedBox(
                                              quarterTurns: 3,
                                              child: Text(
                                                "Monthly Revenue",
                                                style:
                                                    CCustomTextStyles.black617,
                                              ),
                                            ),
                                            Expanded(
                                              child: CustomChart(
                                                data: ConstantLists
                                                    .monthlyRevenueData,
                                                tooltip: revenueScreenController
                                                    .monthlyTooltip,
                                                barWidth: 0.2,
                                                tipString: "Revenue",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "Months",
                                        style: CCustomTextStyles.black617,
                                      ),
                                    ],
                                  ),
                                ),
                                20.pw,
                                CustomWidgetBackground(
                                  height: 380,
                                  width: 333,
                                  widget: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "Monthly Revenues",
                                        style: CCustomTextStyles.black617,
                                      ).alignWidget(
                                          alignment: Alignment.centerLeft),
                                      20.ph,
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                for (int index = 0;
                                                    index <
                                                        ConstantLists
                                                            .topServicesData
                                                            .length;
                                                    index++) ...[
                                                  Text(
                                                    ConstantLists
                                                        .topServicesData[index]
                                                        .x,
                                                  ),
                                                ]
                                              ],
                                            ),
                                            10.pw,
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  for (int index = 0;
                                                      index <
                                                          ConstantLists
                                                              .topServicesData
                                                              .length;
                                                      index++) ...[
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10.0,
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: ConstantLists
                                                            .topServicesData[
                                                                index]
                                                            .y,
                                                        minHeight: 12,
                                                        backgroundColor:
                                                            CColors.cardColor,
                                                        valueColor:
                                                            const AlwaysStoppedAnimation<
                                                                Color>(
                                                          CColors.primaryColor,
                                                        ),
                                                      ),
                                                    )
                                                  ]
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.ph,
                        Scrollbar(
                          controller:
                              revenueScreenController.frequencyScrollController,
                          trackVisibility: true,
                          thumbVisibility: true,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: revenueScreenController
                                .frequencyScrollController,
                            child: Row(
                              children: [
                                CustomWidgetBackground(
                                  height: 360,
                                  width: 500,
                                  widget: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            "Client Frequency Revenues",
                                            style: CCustomTextStyles.black617,
                                          ),
                                          const Spacer(),
                                          20.pw,
                                          Obx(
                                            () {
                                              return ToggleWeekMonthButtonComponent(
                                                selectedIndex:
                                                    revenueScreenController
                                                        .clientFrequencyOption
                                                        .value,
                                                weeklyFunction: () {
                                                  revenueScreenController
                                                      .toggleClientFrequencyOption(
                                                          index: 0);
                                                },
                                                monthlyFunction: () {
                                                  revenueScreenController
                                                      .toggleClientFrequencyOption(
                                                          index: 1);
                                                },
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                      20.ph,
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const RotatedBox(
                                              quarterTurns: 3,
                                              child: Text(
                                                "Client Frequency Revenue",
                                                style:
                                                    CCustomTextStyles.black617,
                                              ),
                                            ),
                                            Expanded(
                                              child: CustomChart(
                                                data: ConstantLists
                                                    .clientFrequencyData,
                                                tooltip: revenueScreenController
                                                    .clientFrequencyTooltip,
                                                barWidth: 0.3,
                                                tipString: "Revenue",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "Territories",
                                        style: CCustomTextStyles.black617,
                                      ),
                                    ],
                                  ),
                                ),
                                20.pw,
                                CustomWidgetBackground(
                                  height: 360,
                                  width: 500,
                                  widget: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            "Client Frequency Revenues",
                                            style: CCustomTextStyles.black617,
                                          ),
                                          const Spacer(),
                                          20.pw,
                                          Obx(
                                            () {
                                              return ToggleWeekMonthButtonComponent(
                                                selectedIndex:
                                                    revenueScreenController
                                                        .revenuePerformanceOption
                                                        .value,
                                                weeklyFunction: () {
                                                  revenueScreenController
                                                      .toggleRevenuePerformanceOption(
                                                          index: 0);
                                                },
                                                monthlyFunction: () {
                                                  revenueScreenController
                                                      .toggleRevenuePerformanceOption(
                                                          index: 1);
                                                },
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                      20.ph,
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const RotatedBox(
                                              quarterTurns: 3,
                                              child: Text(
                                                "Revenue Performance",
                                                style:
                                                    CCustomTextStyles.black617,
                                              ),
                                            ),
                                            Expanded(
                                              child: CustomChart(
                                                data: ConstantLists
                                                    .revenuePerformanceData,
                                                tooltip: revenueScreenController
                                                    .revenuePerformanceTooltip,
                                                barWidth: 0.3,
                                                tipString: "Revenue",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "Territories",
                                        style: CCustomTextStyles.black617,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.ph,
                        Scrollbar(
                          controller: revenueScreenController
                              .productivityScrollController,
                          trackVisibility: true,
                          thumbVisibility: true,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: revenueScreenController
                                .productivityScrollController,
                            child: CustomWidgetBackground(
                              height: 360,
                              width: 800,
                              widget: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Jobs productivity",
                                        style: CCustomTextStyles.black617,
                                      ),
                                      Text(
                                        "Last 5 months",
                                        style: CCustomTextStyles.black617,
                                      ),
                                    ],
                                  ),
                                  20.ph,
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const RotatedBox(
                                          quarterTurns: 3,
                                          child: Text(
                                            "Months",
                                            style: CCustomTextStyles.black617,
                                          ),
                                        ),
                                        Expanded(
                                          child: CustomAreaChart(
                                            data:
                                                ConstantLists.jobsProductivity,
                                            tooltip: revenueScreenController
                                                .jobsProductivityTooltip,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "Job Done",
                                    style: CCustomTextStyles.black617,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
