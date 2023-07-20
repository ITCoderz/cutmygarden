import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/platform_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../../reusable_widgets/buttons/primary_button.dart';
import '../../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../../../reusable_widgets/tables/bookings/booking_dashboard/dashboard_booking_table.dart';
import '../../../../reusable_widgets/tables/gardeners/gardener_reviews_paginated.dart';
import '../../../../reusable_widgets/text_fields/search_field.dart';
import '../../../../utils/constants/constant_lists.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../components/gardener_profile_components.dart';
import '../controller/gardener_profile_controller.dart';

class GardenerProfileScreen extends StatefulWidget {
  const GardenerProfileScreen({super.key});

  @override
  State<GardenerProfileScreen> createState() => _GardenerProfileScreenState();
}

class _GardenerProfileScreenState extends State<GardenerProfileScreen> {
  PaginatorController? paginationController = PaginatorController();
  final ScrollController performanceScrollController = ScrollController();
  final ScrollController revenueScrollController = ScrollController();
  final gardenerProfileController = Get.put(
    GardenerProfileController(),
  );
  late TooltipBehavior tooltip;

  @override
  void initState() {
    tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
        return Row(
          children: [
            CustomMenuBar(
              maxWidth: constraint.maxWidth,
              selectedIndex: 3,
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
                        "Theodore Hoffman",
                        style: CCustomTextStyles.black630,
                      ).alignWidget(
                        alignment: Alignment.centerLeft,
                      ),
                      20.ph,
                      constraint.maxWidth > PlatformSizes.maxMediumScreenWidth
                          ? SizedBox(
                              height: 520,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const GardenerCredentials(),
                                  20.pw,
                                  Expanded(
                                    child: CustomWidgetBackground(
                                      alignment: Alignment.center,
                                      widget: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Bookings",
                                              style: CCustomTextStyles.black615,
                                            ),
                                            20.ph,
                                            DashBoardBookingTableData(
                                              bookingList:
                                                  ConstantLists.bookingList,
                                            ),
                                            20.ph,
                                            Center(
                                              child: PrimaryButton(
                                                width: 230,
                                                height: 40,
                                                text: "View Booking",
                                                onPressFunction: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  20.pw,
                                  Expanded(
                                    child: CustomWidgetBackground(
                                      alignment: Alignment.center,
                                      widget: PaginatedReviewTableWidget(
                                        paginationController:
                                            paginationController,
                                        dataList:
                                            ConstantLists.gardenerReviewList,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 375,
                                  child: GardenerCredentials(),
                                ),
                                20.ph,
                                SizedBox(
                                  height: 520,
                                  child: CustomWidgetBackground(
                                    alignment: Alignment.center,
                                    widget: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Bookings",
                                            style: CCustomTextStyles.black615,
                                          ),
                                          20.ph,
                                          DashBoardBookingTableData(
                                            bookingList:
                                                ConstantLists.bookingList,
                                          ),
                                          20.ph,
                                          Center(
                                            child: PrimaryButton(
                                              width: 230,
                                              height: 40,
                                              text: "View Booking",
                                              onPressFunction: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                20.ph,
                                SizedBox(
                                  height: 520,
                                  child: CustomWidgetBackground(
                                    alignment: Alignment.center,
                                    widget: PaginatedReviewTableWidget(
                                      paginationController:
                                          paginationController,
                                      dataList:
                                          ConstantLists.gardenerReviewList,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      20.ph,
                      Scrollbar(
                        trackVisibility: true,
                        thumbVisibility: true,
                        interactive: true,
                        controller: revenueScrollController,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          controller: revenueScrollController,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  PerformanceWidget(
                                    performanceScrollController:
                                        performanceScrollController,
                                  ),
                                  50.pw,
                                  constraint.maxWidth >
                                          PlatformSizes.maxMediumScreenWidth
                                      ? CustomWidgetBackground(
                                          height: 360,
                                          width: 810,
                                          widget: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  const Text(
                                                    "Daily Revenue",
                                                    style: CCustomTextStyles
                                                        .black617,
                                                  ),
                                                  const Spacer(),
                                                  const Text(
                                                    "26/06/23 to 22/07/23 ",
                                                    style: CCustomTextStyles
                                                        .black617,
                                                  ),
                                                  20.pw,
                                                  Obx(
                                                    () {
                                                      return ToggleWeekMonthButtonComponent(
                                                        selectedIndex:
                                                            gardenerProfileController
                                                                .selectedOption
                                                                .value,
                                                        makeFriendsFunction:
                                                            () {
                                                          gardenerProfileController
                                                              .toggleSelection(
                                                                  index: 0);
                                                        },
                                                        searchPartnersFunction:
                                                            () {
                                                          gardenerProfileController
                                                              .toggleSelection(
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    const RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Text(
                                                        "Daily Revenue",
                                                        style: CCustomTextStyles
                                                            .black617,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child:
                                                          CustomDailyRevenueChart(
                                                        data: ConstantLists
                                                            .revenueData,
                                                        tooltip: tooltip,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                ],
                              ),
                              20.ph,
                              constraint.maxWidth >
                                      PlatformSizes.maxMediumScreenWidth
                                  ? const SizedBox.shrink()
                                  : CustomWidgetBackground(
                                      height: 360,
                                      width: 810,
                                      widget: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Text(
                                                "Daily Revenue",
                                                style:
                                                    CCustomTextStyles.black617,
                                              ),
                                              const Spacer(),
                                              const Text(
                                                "26/06/23 to 22/07/23 ",
                                                style:
                                                    CCustomTextStyles.black617,
                                              ),
                                              20.pw,
                                              Obx(
                                                () {
                                                  return ToggleWeekMonthButtonComponent(
                                                    selectedIndex:
                                                        gardenerProfileController
                                                            .selectedOption
                                                            .value,
                                                    makeFriendsFunction: () {
                                                      gardenerProfileController
                                                          .toggleSelection(
                                                              index: 0);
                                                    },
                                                    searchPartnersFunction: () {
                                                      gardenerProfileController
                                                          .toggleSelection(
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
                                                    "Daily Revenue",
                                                    style: CCustomTextStyles
                                                        .black617,
                                                  ),
                                                ),
                                                Expanded(
                                                  child:
                                                      CustomDailyRevenueChart(
                                                    data: ConstantLists
                                                        .revenueData,
                                                    tooltip: tooltip,
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
                      GardenerAttributesDisplayTableWidget(
                        gardenerDisplayModel: ConstantLists.allGardenersList[0],
                      ),
                      20.ph,
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
