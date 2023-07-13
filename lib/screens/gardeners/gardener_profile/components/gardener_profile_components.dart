import 'package:cut_my_garden/reusable_widgets/background_container_widgets/custom_widget_background.dart';
import 'package:cut_my_garden/reusable_widgets/buttons/primary_button.dart';
import 'package:cut_my_garden/reusable_widgets/circular_container.dart';
import 'package:cut_my_garden/reusable_widgets/dividers.dart';
import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/colors/app_colors.dart';
import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/constants/constant_strings.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../models/all_gardeners_model.dart';
import '../../../../reusable_widgets/tables/gardeners/all_gardeners.dart';

class GardenerCredentials extends StatelessWidget {
  final double? height;

  const GardenerCredentials({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return CustomWidgetBackground(
      widget: SizedBox(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircularContainer(
              width: 100,
              height: 100,
              backgroundColor: CColors.cardColor,
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CredentialAttributeWidget(
                      credentialAttributeValue: "First Name",
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "Second name",
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "Phone number",
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "Email",
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "Address",
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "City / Town",
                    ),
                    10.ph,
                    const CredentialAttributeWidget(
                      credentialAttributeValue: "Postcode",
                    ),
                  ],
                ),
                30.pw,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CredentialAttributeWidget(
                      credentialAttributeValue: "Theodore",
                      isValue: true,
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "Hoffman",
                      isValue: true,
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "07376066184",
                      isValue: true,
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "info@cutmygarden.com",
                      isEmail: true,
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "46 Fieldhouse Road",
                      isValue: true,
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "Wolverhampton",
                      isValue: true,
                    ),
                    10.ph,
                    CredentialAttributeWidget(
                      credentialAttributeValue: "WV4 6ST",
                      isValue: true,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            PrimaryButton(
              width: 230,
              height: 40,
              onPressFunction: () {},
              text: "Edit Profile",
            ),
          ],
        ),
      ),
    );
  }
}

class CredentialAttributeWidget extends StatelessWidget {
  final String credentialAttributeValue;
  final bool isValue, isEmail;

  const CredentialAttributeWidget({
    super.key,
    this.isValue = false,
    this.isEmail = false,
    required this.credentialAttributeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      isValue
          ? credentialAttributeValue
          : isEmail
              ? credentialAttributeValue
              : "$credentialAttributeValue: ",
      style: isValue
          ? CCustomTextStyles.black410
          : isEmail
              ? CCustomTextStyles.blackUnderlined410
              : CCustomTextStyles.black610,
    );
  }
}

class GardenerAttributesDisplayTableWidget extends StatelessWidget {
  final AllGardenerDisplayModel gardenerDisplayModel;

  const GardenerAttributesDisplayTableWidget({
    super.key,
    required this.gardenerDisplayModel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomWidgetBackground(
      widget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            gardenerDisplayModel.cityName,
            style: CCustomTextStyles.black615,
          ).alignWidget(
            alignment: Alignment.centerLeft,
          ),
          20.ph,
          SizedBox(
            height: gardenerDisplayModel.allGardenersList.isEmpty
                ? 80
                : gardenerDisplayModel.allGardenersList.length == 1
                    ? 120
                    : 80.0 * gardenerDisplayModel.allGardenersList.length,
            child: GardenersAttributesTable(
              allGardenersDisplayList: gardenerDisplayModel.allGardenersList,
            ),
          ),
        ],
      ),
    );
  }
}

class PerformanceWidget extends StatelessWidget {
  final ScrollController performanceScrollController;

  const PerformanceWidget({
    super.key,
    required this.performanceScrollController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomWidgetBackground(
      alignment: Alignment.center,
      height: 360,
      widget: Scrollbar(
        trackVisibility: true,
        thumbVisibility: true,
        interactive: true,
        controller: performanceScrollController,
        radius: const Radius.circular(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Performance",
                    style: CCustomTextStyles.black615,
                  ),
                  50.pw,
                  const Text(
                    "00/00/00 to 00/00/00",
                    style: CCustomTextStyles.black410,
                  ),
                ],
              ),
              20.ph,
              IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int index = 0;
                            index < ConstantLists.weekDaysList.length - 1;
                            index++) ...[
                          Text(
                            ConstantLists.weekDaysList[index],
                            style: CCustomTextStyles.black410,
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job1",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists.jobStatus[0].jobOneStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue:
                                ConstantLists.jobStatus[0].jobOneStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job2",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists.jobStatus[0].jobTwoStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue:
                                ConstantLists.jobStatus[0].jobTwoStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job3",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists
                                        .jobStatus[0].jobThreeStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue: ConstantLists
                                .jobStatus[0].jobThreeStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job4",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists
                                        .jobStatus[0].jobFourStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue:
                                ConstantLists.jobStatus[0].jobFourStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job5",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists
                                        .jobStatus[0].jobFiveStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue:
                                ConstantLists.jobStatus[0].jobFiveStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job6",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists.jobStatus[0].jobSixStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue:
                                ConstantLists.jobStatus[0].jobSixStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job7",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists
                                        .jobStatus[0].jobSevenStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue: ConstantLists
                                .jobStatus[0].jobSevenStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Job8",
                          style: CCustomTextStyles.black410,
                        ),
                        10.ph,
                        for (int index = 0;
                            index <
                                ConstantLists
                                        .jobStatus[0].jobEightStatus.length -
                                    1;
                            index++) ...[
                          CustomCheckWidget(
                            performanceValue: ConstantLists
                                .jobStatus[0].jobEightStatus[index],
                          ),
                          10.ph,
                        ]
                      ],
                    ),
                    10.pw,
                    const CustomVerticalDivider(),
                    10.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Productivity",
                          style: CCustomTextStyles.black615,
                        ),
                        20.ph,
                        for (int index = 0;
                            index < ConstantLists.statusStringsList.length - 1;
                            index++) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomCheckWidget(
                                performanceValue:
                                    ConstantLists.statusStringsList[index],
                              ),
                              5.pw,
                              Text(
                                ConstantLists.statusStringsList[index],
                                style: CCustomTextStyles.black410,
                              ),
                            ],
                          ),
                          10.ph,
                        ]
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCheckWidget extends StatelessWidget {
  final String performanceValue;

  const CustomCheckWidget({
    super.key,
    required this.performanceValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: CColors.blackColor,
        ),
        color: performanceValue == ConstantStrings.standardAvailability
            ? CColors.greenAccent
            : performanceValue == ConstantStrings.greatAvailability
                ? CColors.yellowAccent
                : performanceValue == ConstantStrings.topAvailability
                    ? CColors.pinkAccent
                    : performanceValue == ConstantStrings.jobComplete
                        ? CColors.greenAccentThree
                        : CColors.redAccentColor,
      ),
      child: performanceValue == ConstantStrings.jobComplete ||
              performanceValue == ConstantStrings.jobCancelled
          ? Icon(
              performanceValue == ConstantStrings.jobComplete
                  ? Icons.check_rounded
                  : Icons.close_rounded,
              color: CColors.blackColor,
              size: 12,
            )
          : null,
    );
  }
}

class ToggleWeekMonthButtonComponent extends StatelessWidget {
  final Function()? makeFriendsFunction, searchPartnersFunction;
  final int selectedIndex;

  const ToggleWeekMonthButtonComponent(
      {Key? key,
      required this.makeFriendsFunction,
      required this.searchPartnersFunction,
      required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 210,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: CColors.imagePlaceHolderColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: GestureDetector(
            onTap: makeFriendsFunction,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:
                    selectedIndex == 0 ? CColors.cardColor : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                border: selectedIndex == 0
                    ? Border.all(color: CColors.blackColor)
                    : Border.all(
                        color: Colors.transparent,
                      ),
              ),
              child: const Text(
                "Weekly",
                style: CCustomTextStyles.black417,
              ),
            ),
          )),
          Expanded(
            child: GestureDetector(
              onTap: searchPartnersFunction,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: selectedIndex == 1
                        ? CColors.cardColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10,),
                  border: selectedIndex == 1
                      ? Border.all(color: CColors.blackColor)
                      : Border.all(
                    color: Colors.transparent,
                  ),),
                child: const Text(
                  "Monthly",
                  style: CCustomTextStyles.black417,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDailyRevenueChart extends StatelessWidget {
  final List<ChartData> data;
  final TooltipBehavior tooltip;

  const CustomDailyRevenueChart({
    super.key,
    required this.data,
    required this.tooltip,
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
        maximum: 400,
        interval: 100,
      ),
      tooltipBehavior: tooltip,
      backgroundColor: Colors.transparent,
      series: <ChartSeries<ChartData, String>>[
        ColumnSeries<ChartData, String>(
          dataSource: data,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          name: 'Daily Revenue',
          borderRadius: BorderRadius.circular(
            10,
          ),
          isVisible: true,
          width: 0.4,
          color: CColors.primaryColor,
        ),
      ],
    );
  }
}
