import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/screen_sizes.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../reusable_widgets/bookings/assign_gardener/assign_gardener_widget.dart';
import '../../../reusable_widgets/bookings/bookings_details_display_widget/bookings_details_display_widget.dart';
import '../../../reusable_widgets/bookings/edit_booking/edit_booking_widget.dart';
import '../../../reusable_widgets/bookings/job_compliance/job_compliance_widget.dart';
import '../../../reusable_widgets/buttons/primary_button.dart';
import '../../../reusable_widgets/tables/bookings/booking_paginated/paginated_booking_table.dart';
import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/sizes/platform_sizes.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  PaginatorController? paginationController = PaginatorController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 1,
      width: context.width * 1,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                10.ph,
                Row(
                  children: [
                    CustomTextField(
                      height: 45,
                      width: context.width * 0.37,
                      textEditingController: TextEditingController(),
                    ),
                    const Spacer(),
                    PrimaryButton(
                      width: context.width * 0.3,
                      height: 40,
                      text: "Create New Client Booking",
                      onPressFunction: () {},
                    ),
                  ],
                ),
                20.ph,
                const Text(
                  "Bookings",
                  style: CCustomTextStyles.black630,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomWidgetBackground(
                            alignment: Alignment.center,
                            widget: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "All Bookings",
                                  style: CCustomTextStyles.black615,
                                ).alignWidget(alignment: Alignment.centerLeft),
                                SizedBox(
                                  height: 540,
                                  child: PaginatedBookingTable(
                                    paginationController: paginationController,
                                    dataList: ConstantLists.bookingList,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          20.ph,
                          constraint.maxWidth <
                                  PlatformSizes.maxMediumScreenWidth
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    BookingsDetailsDisplayWidget(
                                      constraint: constraint,
                                      name: "",
                                      address: "",
                                      subscriber: "",
                                      dateController: TextEditingController(),
                                      timeController: TextEditingController(),
                                      bookingValueController:
                                          TextEditingController(),
                                      assignedGardenerController:
                                          TextEditingController(),
                                      hoursController: TextEditingController(),
                                      accessToSiteController:
                                          TextEditingController(),
                                      serviceNumberController:
                                          TextEditingController(),
                                      frequencyController:
                                          TextEditingController(),
                                      lawnWidthController:
                                          TextEditingController(),
                                      lawnHeightController:
                                          TextEditingController(),
                                      growthController: TextEditingController(),
                                      binController: TextEditingController(),
                                      assignGardenerFunction: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) =>
                                              AssignGardenerWidget(
                                            constraint: constraint,
                                            locationController:
                                                TextEditingController(),
                                            assignGardenerController:
                                                TextEditingController(),
                                            detailController:
                                                TextEditingController(),
                                            assignGardenerFunction: () {
                                              Navigator.pop(context);
                                            },
                                            closeFunction: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        );
                                      },
                                      editBookingFunction: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) =>
                                              EditBookingWidget(
                                            constraint: constraint,
                                            name: "",
                                            address: "",
                                            subscriber: "",
                                            dateController:
                                                TextEditingController(),
                                            timeController:
                                                TextEditingController(),
                                            bookingValueController:
                                                TextEditingController(),
                                            assignedGardenerController:
                                                TextEditingController(),
                                            hoursController:
                                                TextEditingController(),
                                            accessToSiteController:
                                                TextEditingController(),
                                            serviceNumberController:
                                                TextEditingController(),
                                            frequencyController:
                                                TextEditingController(),
                                            lawnWidthController:
                                                TextEditingController(),
                                            lawnHeightController:
                                                TextEditingController(),
                                            growthController:
                                                TextEditingController(),
                                            binController:
                                                TextEditingController(),
                                            saveFunction: () {
                                              Navigator.pop(context);
                                            },
                                            cancelFunction: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        );
                                      },
                                      fullClientProfileFunction: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) =>
                                              JobComplianceWidget(
                                            constraint: constraint,
                                            name: "",
                                            address: "",
                                            subscriber: "",
                                            dateController:
                                                TextEditingController(),
                                            timeController:
                                                TextEditingController(),
                                            bookingValueController:
                                                TextEditingController(),
                                            assignedGardenerController:
                                                TextEditingController(),
                                            hoursController:
                                                TextEditingController(),
                                            accessToSiteController:
                                                TextEditingController(),
                                            serviceNumberController:
                                                TextEditingController(),
                                            frequencyController:
                                                TextEditingController(),
                                            lawnWidthController:
                                                TextEditingController(),
                                            lawnHeightController:
                                                TextEditingController(),
                                            growthController:
                                                TextEditingController(),
                                            binController:
                                                TextEditingController(),
                                            acceptComplianceFunction: () {
                                              Navigator.pop(context);
                                            },
                                            declineComplianceFunction: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        );
                                      },
                                      cancelBookingFunction: () {},
                                    ),
                                    20.ph,
                                  ],
                                )
                              : const SizedBox.shrink(),
                          CustomWidgetBackground(
                            alignment: Alignment.center,
                            widget: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Client Name Bookings",
                                  style: CCustomTextStyles.black615,
                                ).alignWidget(alignment: Alignment.centerLeft),
                                SizedBox(
                                  height: 400,
                                  child: PaginatedBookingTable(
                                    paginationController: paginationController,
                                    dataList: ConstantLists.bookingList,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.pw,
                    constraint.maxWidth > PlatformSizes.maxMediumScreenWidth
                        ? Expanded(
                            flex: 3,
                            child: BookingsDetailsDisplayWidget(
                              constraint: constraint,
                              name: "",
                              address: "",
                              subscriber: "",
                              dateController: TextEditingController(),
                              timeController: TextEditingController(),
                              bookingValueController: TextEditingController(),
                              assignedGardenerController:
                                  TextEditingController(),
                              hoursController: TextEditingController(),
                              accessToSiteController: TextEditingController(),
                              serviceNumberController: TextEditingController(),
                              frequencyController: TextEditingController(),
                              lawnWidthController: TextEditingController(),
                              lawnHeightController: TextEditingController(),
                              growthController: TextEditingController(),
                              binController: TextEditingController(),
                              assignGardenerFunction: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AssignGardenerWidget(
                                    constraint: constraint,
                                    locationController: TextEditingController(),
                                    assignGardenerController:
                                        TextEditingController(),
                                    detailController: TextEditingController(),
                                    assignGardenerFunction: () {
                                      Navigator.pop(context);
                                    },
                                    closeFunction: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                              },
                              editBookingFunction: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => EditBookingWidget(
                                    constraint: constraint,
                                    name: "",
                                    address: "",
                                    subscriber: "",
                                    dateController: TextEditingController(),
                                    timeController: TextEditingController(),
                                    bookingValueController:
                                        TextEditingController(),
                                    assignedGardenerController:
                                        TextEditingController(),
                                    hoursController: TextEditingController(),
                                    accessToSiteController:
                                        TextEditingController(),
                                    serviceNumberController:
                                        TextEditingController(),
                                    frequencyController:
                                        TextEditingController(),
                                    lawnWidthController:
                                        TextEditingController(),
                                    lawnHeightController:
                                        TextEditingController(),
                                    growthController: TextEditingController(),
                                    binController: TextEditingController(),
                                    saveFunction: () {
                                      Navigator.pop(context);
                                    },
                                    cancelFunction: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                              },
                              fullClientProfileFunction: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => JobComplianceWidget(
                                    constraint: constraint,
                                    name: "",
                                    address: "",
                                    subscriber: "",
                                    dateController: TextEditingController(),
                                    timeController: TextEditingController(),
                                    bookingValueController:
                                        TextEditingController(),
                                    assignedGardenerController:
                                        TextEditingController(),
                                    hoursController: TextEditingController(),
                                    accessToSiteController:
                                        TextEditingController(),
                                    serviceNumberController:
                                        TextEditingController(),
                                    frequencyController:
                                        TextEditingController(),
                                    lawnWidthController:
                                        TextEditingController(),
                                    lawnHeightController:
                                        TextEditingController(),
                                    growthController: TextEditingController(),
                                    binController: TextEditingController(),
                                    acceptComplianceFunction: () {
                                      Navigator.pop(context);
                                    },
                                    declineComplianceFunction: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                              },
                              cancelBookingFunction: () {},
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),

                ///Table Primary Display for Big Screen.
                // constraint.maxWidth >= PlatformSizes.minMediumScreenWidth
              ],
            );
          },
        ),
      ),
    );
  }
}
