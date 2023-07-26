import 'package:cut_my_garden/screens/clients/controller/client_controller.dart';
import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
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
import '../../../reusable_widgets/tables/bookings/booking_paginated/paginated_booking_table.dart';
import '../../../reusable_widgets/tables/clients/clients_paginated_table.dart';
import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/constants/constant_lists.dart';
import '../../../utils/sizes/platform_sizes.dart';
import '../../../utils/text_styles/text_styles.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  final clientController = Get.put(
    ClientController(),
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
              selectedIndex: 4,
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
                          ),
                        ],
                      ),
                      20.ph,
                      const Text(
                        "Clients",
                        style: CCustomTextStyles.black630,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
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
                                        "Client List",
                                        style: CCustomTextStyles.black615,
                                      ).alignWidget(
                                          alignment: Alignment.centerLeft),
                                      SizedBox(
                                        height: 400,
                                        child: PaginatedClientsTableWidget(
                                          paginationController: clientController
                                              .clientTableController,
                                          dataList: ConstantLists.clientList,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                20.ph,
                                constraint.maxWidth >
                                        PlatformSizes.maxMediumScreenWidth
                                    ? BookingsDetailsDisplayWidget(
                                        constraint: constraint,
                                        name: "",
                                        address: "",
                                        subscriber: "",
                                        dateController: clientController
                                            .dateDetailsController,
                                        timeController: clientController
                                            .timeDetailsController,
                                        bookingValueController: clientController
                                            .bookingValueDetailsController,
                                        assignedGardenerController:
                                            clientController
                                                .assignedGardenerDetailsController,
                                        hoursController: clientController
                                            .hoursDetailsController,
                                        accessToSiteController: clientController
                                            .accessToSiteDetailsController,
                                        serviceNumberController:
                                            clientController
                                                .serviceNumberDetailsController,
                                        frequencyController: clientController
                                            .frequencyDetailsController,
                                        lawnWidthController: clientController
                                            .lawnWidthDetailsController,
                                        lawnHeightController: clientController
                                            .lawnHeightDetailsController,
                                        growthController: clientController
                                            .growthDetailsController,
                                        binController: clientController
                                            .binDetailsController,
                                        assignGardenerFunction: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) =>
                                                AssignGardenerDialog(
                                              constraint: constraint,
                                              locationController:
                                                  clientController
                                                      .locationController,
                                              assignGardenerController:
                                                  clientController
                                                      .assignGardenerController,
                                              detailController: clientController
                                                  .detailsController,
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
                                                EditBookingDialog(
                                              constraint: constraint,
                                              name: "",
                                              address: "",
                                              subscriber: "",
                                              dateController: clientController
                                                  .dateEditController,
                                              timeController: clientController
                                                  .timeEditController,
                                              bookingValueController:
                                                  clientController
                                                      .bookingValueEditController,
                                              assignedGardenerController:
                                                  clientController
                                                      .assignedGardenerEditController,
                                              hoursController: clientController
                                                  .hoursEditController,
                                              accessToSiteController:
                                                  clientController
                                                      .accessToSiteEditController,
                                              serviceNumberController:
                                                  clientController
                                                      .serviceNumberEditController,
                                              frequencyController:
                                                  clientController
                                                      .frequencyEditController,
                                              lawnWidthController:
                                                  clientController
                                                      .lawnWidthEditController,
                                              lawnHeightController:
                                                  clientController
                                                      .lawnHeightEditController,
                                              growthController: clientController
                                                  .growthEditController,
                                              binController: clientController
                                                  .binEditController,
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
                                                JobComplianceDialog(
                                              constraint: constraint,
                                              name: "",
                                              address: "",
                                              subscriber: "",
                                              dateController: clientController
                                                  .dateComplianceController,
                                              timeController: clientController
                                                  .timeComplianceController,
                                              bookingValueController:
                                                  clientController
                                                      .bookingValueComplianceController,
                                              assignedGardenerController:
                                                  clientController
                                                      .assignedGardenerComplianceController,
                                              hoursController: clientController
                                                  .hoursComplianceController,
                                              accessToSiteController:
                                                  clientController
                                                      .accessToSiteComplianceController,
                                              serviceNumberController:
                                                  clientController
                                                      .serviceNumberComplianceController,
                                              frequencyController: clientController
                                                  .frequencyComplianceController,
                                              lawnWidthController: clientController
                                                  .lawnWidthComplianceController,
                                              lawnHeightController: clientController
                                                  .lawnHeightComplianceController,
                                              growthController: clientController
                                                  .growthComplianceController,
                                              binController: clientController
                                                  .binComplianceController,
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
                                      )
                                    : const SizedBox.shrink(),
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
                                            dateController: clientController
                                                .dateDetailsController,
                                            timeController: clientController
                                                .timeDetailsController,
                                            bookingValueController:
                                                clientController
                                                    .bookingValueDetailsController,
                                            assignedGardenerController:
                                                clientController
                                                    .assignedGardenerDetailsController,
                                            hoursController: clientController
                                                .hoursDetailsController,
                                            accessToSiteController:
                                                clientController
                                                    .accessToSiteDetailsController,
                                            serviceNumberController:
                                                clientController
                                                    .serviceNumberDetailsController,
                                            frequencyController:
                                                clientController
                                                    .frequencyDetailsController,
                                            lawnWidthController:
                                                clientController
                                                    .lawnWidthDetailsController,
                                            lawnHeightController:
                                                clientController
                                                    .lawnHeightDetailsController,
                                            growthController: clientController
                                                .growthDetailsController,
                                            binController: clientController
                                                .binDetailsController,
                                            assignGardenerFunction: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AssignGardenerDialog(
                                                  constraint: constraint,
                                                  locationController:
                                                      clientController
                                                          .locationController,
                                                  assignGardenerController:
                                                      clientController
                                                          .assignGardenerController,
                                                  detailController:
                                                      clientController
                                                          .detailsController,
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
                                                    EditBookingDialog(
                                                  constraint: constraint,
                                                  name: "",
                                                  address: "",
                                                  subscriber: "",
                                                  dateController:
                                                      clientController
                                                          .dateEditController,
                                                  timeController:
                                                      clientController
                                                          .timeEditController,
                                                  bookingValueController:
                                                      clientController
                                                          .bookingValueEditController,
                                                  assignedGardenerController:
                                                      clientController
                                                          .assignedGardenerEditController,
                                                  hoursController:
                                                      clientController
                                                          .hoursEditController,
                                                  accessToSiteController:
                                                      clientController
                                                          .accessToSiteEditController,
                                                  serviceNumberController:
                                                      clientController
                                                          .serviceNumberEditController,
                                                  frequencyController:
                                                      clientController
                                                          .frequencyEditController,
                                                  lawnWidthController:
                                                      clientController
                                                          .lawnWidthEditController,
                                                  lawnHeightController:
                                                      clientController
                                                          .lawnHeightEditController,
                                                  growthController:
                                                      clientController
                                                          .growthEditController,
                                                  binController:
                                                      clientController
                                                          .binEditController,
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
                                                    JobComplianceDialog(
                                                  constraint: constraint,
                                                  name: "",
                                                  address: "",
                                                  subscriber: "",
                                                  dateController: clientController
                                                      .dateComplianceController,
                                                  timeController: clientController
                                                      .timeComplianceController,
                                                  bookingValueController:
                                                      clientController
                                                          .bookingValueComplianceController,
                                                  assignedGardenerController:
                                                      clientController
                                                          .assignedGardenerComplianceController,
                                                  hoursController: clientController
                                                      .hoursComplianceController,
                                                  accessToSiteController:
                                                      clientController
                                                          .accessToSiteComplianceController,
                                                  serviceNumberController:
                                                      clientController
                                                          .serviceNumberComplianceController,
                                                  frequencyController:
                                                      clientController
                                                          .frequencyComplianceController,
                                                  lawnWidthController:
                                                      clientController
                                                          .lawnWidthComplianceController,
                                                  lawnHeightController:
                                                      clientController
                                                          .lawnHeightComplianceController,
                                                  growthController: clientController
                                                      .growthComplianceController,
                                                  binController: clientController
                                                      .binComplianceController,
                                                  acceptComplianceFunction: () {
                                                    Navigator.pop(context);
                                                  },
                                                  declineComplianceFunction:
                                                      () {
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
                                20.ph,
                                constraint.maxWidth <
                                        PlatformSizes.maxMediumScreenWidth
                                    ? CustomWidgetBackground(
                                        alignment: Alignment.center,
                                        widget: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Text(
                                              "Client Name Bookings",
                                              style: CCustomTextStyles.black615,
                                            ).alignWidget(
                                                alignment:
                                                    Alignment.centerLeft),
                                            SizedBox(
                                              height: 600,
                                              child: PaginatedBookingTable(
                                                paginationController:
                                                    clientController
                                                        .clientNameTableController,
                                                dataList:
                                                    ConstantLists.bookingList,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    : const SizedBox.shrink()
                              ],
                            ),
                          ),
                          20.pw,
                          constraint.maxWidth >
                                  PlatformSizes.maxMediumScreenWidth
                              ? Expanded(
                                  flex: 2,
                                  child: CustomWidgetBackground(
                                    alignment: Alignment.center,
                                    widget: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          "Client Name Bookings",
                                          style: CCustomTextStyles.black615,
                                        ).alignWidget(
                                            alignment: Alignment.centerLeft),
                                        SizedBox(
                                          height: 600,
                                          child: PaginatedBookingTable(
                                            paginationController:
                                                clientController
                                                    .clientNameTableController,
                                            dataList: ConstantLists.bookingList,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
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
/*


 */
