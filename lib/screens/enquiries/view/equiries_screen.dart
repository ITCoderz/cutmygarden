import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/screen_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../reusable_widgets/buttons/primary_button.dart';
import '../../../reusable_widgets/tables/enquiries/enquiries_paginated/paginated_enquiries_table.dart';
import '../../../reusable_widgets/text_fields/data_display_only_text_field.dart';
import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/sizes/platform_sizes.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../components/enquiries_components.dart';

class EnquiriesScreen extends StatefulWidget {
  const EnquiriesScreen({super.key});

  @override
  State<EnquiriesScreen> createState() => _EnquiriesScreenState();
}

class _EnquiriesScreenState extends State<EnquiriesScreen> {
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
                    PrimaryColorButton(
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
                        style: CCustomTextStyles.black615,
                      ).alignWidget(alignment: Alignment.centerLeft),
                      SizedBox(
                        height: 350,
                        child: PaginatedEnquiriesTableWidget(
                          paginationController: paginationController,
                          dataList: ConstantLists.allEnquiresList,
                        ),
                      ),
                    ],
                  ),
                ),
                20.ph,
                CustomWidgetBackground(
                  widget: SizedBox(
                    width:   constraint.maxWidth >= PlatformSizes.minLargeScreenWidth+100? context.width * 0.5:context.width * 1,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const ImageContainer(
                                      height: 110,
                                      width: 110,
                                    ),
                                    20.pw,
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "Name: ",
                                                style:
                                                    CCustomTextStyles.black613,
                                              ),
                                              TextSpan(
                                                text: "",
                                                style:
                                                    CCustomTextStyles.black613,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        15.ph,
                                        RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "Address: ",
                                                style:
                                                    CCustomTextStyles.black613,
                                              ),
                                              TextSpan(
                                                text: "",
                                                style:
                                                    CCustomTextStyles.black613,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        15.ph,
                                        RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "Subscriber: ",
                                                style:
                                                    CCustomTextStyles.black613,
                                              ),
                                              TextSpan(
                                                text: "",
                                                style:
                                                    CCustomTextStyles.black613,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                30.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Date: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Time: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Booking value: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Assigned Gardener: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Hours: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Access to site: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Service number: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Frequency: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    DataDisplayOnlyTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      width: 210,
                                      height: 30,
                                      enabled: false,
                                    ),
                                  ],
                                ),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Services: ",
                                      style: CCustomTextStyles.black613,
                                    ),
                                    Container(
                                      width: 300,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: CColors.imagePlaceHolderColor,
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      child: Wrap(
                                        runSpacing: 10,
                                        spacing: 10,
                                        children: [
                                          for (int i = 0;
                                              i <
                                                  ConstantLists
                                                      .servicesNamesList.length;
                                              i++) ...[
                                            ServicesContainer(
                                              serviceName: ConstantLists
                                                  .servicesNamesList[i]
                                                  .serviceName,
                                              containerColor: ConstantLists
                                                  .servicesNamesList[i]
                                                  .containerColor,
                                            )
                                          ]
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                10.ph,
                              ],
                            ),
                          ),
                          10.pw,
                          const VerticalDivider(
                            thickness: 3,
                            color: CColors.primaryColor,
                          ),
                          10.pw,
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Garden Profile",
                                  style: CCustomTextStyles.black618,
                                ),
                                20.ph,
                                Wrap(
                                  runSpacing: 10,
                                  spacing: 10,
                                  children: [
                                    for (int i = 0; i < 3; i++) ...[
                                      const ImageContainer(
                                        height: 90,
                                        width: 90,
                                      )
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ServicesContainer extends StatelessWidget {
  final String serviceName;
  final Color containerColor;

  const ServicesContainer({
    super.key,
    required this.serviceName,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: containerColor,
      ),
      child: Text(
        serviceName,
        style: CCustomTextStyles.white610,
      ),
    );
  }
}
