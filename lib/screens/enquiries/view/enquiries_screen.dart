import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../reusable_widgets/bookings/assign_gardener/assign_gardener_widget.dart';
import '../../../reusable_widgets/bookings/bookings_details_display_widget/bookings_details_display_widget.dart';
import '../../../reusable_widgets/bookings/edit_booking/edit_booking_widget.dart';
import '../../../reusable_widgets/bookings/job_compliance/job_compliance_widget.dart';
import '../../../reusable_widgets/buttons/primary_button.dart';
import '../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../../reusable_widgets/tables/enquiries/enquiries_paginated/paginated_enquiries_table.dart';
import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../controller/enquiries_controller.dart';

class EnquiriesScreen extends StatefulWidget {
  const EnquiriesScreen({super.key});

  @override
  State<EnquiriesScreen> createState() => _EnquiriesScreenState();
}

class _EnquiriesScreenState extends State<EnquiriesScreen> {
  final enquiriesController = Get.put(
    EnquiriesController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
        return Row(
          children: [
            CustomMenuBar(
              maxWidth: constraint.maxWidth,
              selectedIndex: 2,
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
                      Row(
                        children: [
                          SearchField(
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
                          )
                        ],
                      ),
                      20.ph,
                      CustomWidgetBackground(
                        widget: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "All Enquires",
                              style: CCustomTextStyles.black630,
                            ).alignWidget(
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(
                              height: 350,
                              child: PaginatedEnquiriesTableWidget(
                                paginationController:
                                    enquiriesController.paginationController,
                                dataList: ConstantLists.allEnquiresList,
                              ),
                            ),
                          ],
                        ),
                      ),
                      20.ph,
                      BookingsDetailsDisplayWidget(
                        constraint: constraint,
                        name: "",
                        address: "",
                        subscriber: "",
                        dateController:
                            enquiriesController.dateDetailsController,
                        timeController:
                            enquiriesController.timeDetailsController,
                        bookingValueController:
                            enquiriesController.bookingValueDetailsController,
                        assignedGardenerController: enquiriesController
                            .assignedGardenerDetailsController,
                        hoursController:
                            enquiriesController.hoursDetailsController,
                        accessToSiteController:
                            enquiriesController.accessToSiteDetailsController,
                        serviceNumberController:
                            enquiriesController.serviceNumberDetailsController,
                        frequencyController:
                            enquiriesController.frequencyDetailsController,
                        lawnWidthController:
                            enquiriesController.lawnWidthDetailsController,
                        lawnHeightController:
                            enquiriesController.lawnHeightDetailsController,
                        growthController:
                            enquiriesController.growthDetailsController,
                        binController: enquiriesController.binDetailsController,
                        assignGardenerFunction: () {
                          showDialog(
                            context: context,
                            builder: (context) => AssignGardenerWidget(
                              constraint: constraint,
                              locationController:
                                  enquiriesController.locationController,
                              assignGardenerController:
                                  enquiriesController.assignGardenerController,
                              detailController:
                                  enquiriesController.detailsController,
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
                              dateController:
                                  enquiriesController.dateEditController,
                              timeController:
                                  enquiriesController.timeEditController,
                              bookingValueController: enquiriesController
                                  .bookingValueEditController,
                              assignedGardenerController: enquiriesController
                                  .assignedGardenerEditController,
                              hoursController:
                                  enquiriesController.hoursEditController,
                              accessToSiteController: enquiriesController
                                  .accessToSiteEditController,
                              serviceNumberController: enquiriesController
                                  .serviceNumberEditController,
                              frequencyController:
                                  enquiriesController.frequencyEditController,
                              lawnWidthController:
                                  enquiriesController.lawnWidthEditController,
                              lawnHeightController:
                                  enquiriesController.lawnHeightEditController,
                              growthController:
                                  enquiriesController.growthEditController,
                              binController:
                                  enquiriesController.binEditController,
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
                              dateController:
                                  enquiriesController.dateComplianceController,
                              timeController:
                                  enquiriesController.timeComplianceController,
                              bookingValueController: enquiriesController
                                  .bookingValueComplianceController,
                              assignedGardenerController: enquiriesController
                                  .assignedGardenerComplianceController,
                              hoursController:
                                  enquiriesController.hoursComplianceController,
                              accessToSiteController: enquiriesController
                                  .accessToSiteComplianceController,
                              serviceNumberController: enquiriesController
                                  .serviceNumberComplianceController,
                              frequencyController: enquiriesController
                                  .frequencyComplianceController,
                              lawnWidthController: enquiriesController
                                  .lawnWidthComplianceController,
                              lawnHeightController: enquiriesController
                                  .lawnHeightComplianceController,
                              growthController: enquiriesController
                                  .growthComplianceController,
                              binController:
                                  enquiriesController.binComplianceController,
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
