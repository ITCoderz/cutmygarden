import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/screen_sizes.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constant_lists.dart';
import '../../../utils/sizes/platform_sizes.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../../background_container_widgets/custom_widget_background.dart';
import '../../buttons/primary_button.dart';
import '../components/booking_components.dart';

class JobComplianceDialog extends StatelessWidget {
  final BoxConstraints constraint;
  final String name, address, subscriber;
  final TextEditingController dateController,
      timeController,
      bookingValueController,
      assignedGardenerController,
      hoursController,
      accessToSiteController,
      serviceNumberController,
      frequencyController,
      lawnWidthController,
      lawnHeightController,
      growthController,
      binController;
  final Function()? acceptComplianceFunction, declineComplianceFunction;

  const JobComplianceDialog({
    super.key,
    required this.constraint,
    required this.name,
    required this.address,
    required this.subscriber,
    required this.dateController,
    required this.timeController,
    required this.bookingValueController,
    required this.assignedGardenerController,
    required this.hoursController,
    required this.accessToSiteController,
    required this.serviceNumberController,
    required this.frequencyController,
    required this.lawnWidthController,
    required this.lawnHeightController,
    required this.growthController,
    required this.binController,
    required this.acceptComplianceFunction,
    required this.declineComplianceFunction,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      scrollable: true,
      content: Container(
        decoration: BoxDecoration(
          color: CColors.redAccentColor,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          children: [
            10.ph,
            const Text(
              "Job Compliance",
              style: CCustomTextStyles.white725,
            ),
            10.ph,
            CustomWidgetBackground(
              widget: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                width: constraint.maxWidth >=
                        PlatformSizes.minLargeScreenWidth + 100
                    ? context.width * 0.5
                    : context.width * 1,
                child: IntrinsicWidth(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IntrinsicHeight(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                const TextSpan(
                                                  text: "Name: ",
                                                  style: CCustomTextStyles
                                                      .black613,
                                                ),
                                                TextSpan(
                                                  text: name,
                                                  style: CCustomTextStyles
                                                      .black613,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          15.ph,
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                const TextSpan(
                                                  text: "Address: ",
                                                  style: CCustomTextStyles
                                                      .black613,
                                                ),
                                                TextSpan(
                                                  text: address,
                                                  style: CCustomTextStyles
                                                      .black613,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          15.ph,
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                const TextSpan(
                                                  text: "Subscriber: ",
                                                  style: CCustomTextStyles
                                                      .black613,
                                                ),
                                                TextSpan(
                                                  text: subscriber,
                                                  style: CCustomTextStyles
                                                      .black613,
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
                                  DataDisplayTile(
                                    descriptionTitle: "Date",
                                    gap: 98,
                                    textEditingController: dateController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  DataDisplayTile(
                                    descriptionTitle: "Time",
                                    gap: 96,
                                    textEditingController: timeController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  DataDisplayTile(
                                    descriptionTitle: "Booking value",
                                    gap: 37,
                                    textEditingController:
                                        bookingValueController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  DataDisplayTile(
                                    descriptionTitle: "Assigned Gardener",
                                    gap: 3,
                                    textEditingController:
                                        assignedGardenerController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  DataDisplayTile(
                                    descriptionTitle: "Hours",
                                    gap: 89,
                                    textEditingController: hoursController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  DataDisplayTile(
                                    descriptionTitle: "Access to site",
                                    gap: 36,
                                    textEditingController:
                                        accessToSiteController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  DataDisplayTile(
                                    descriptionTitle: "Service number",
                                    gap: 25,
                                    textEditingController:
                                        serviceNumberController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  DataDisplayTile(
                                    descriptionTitle: "Frequency",
                                    gap: 58,
                                    textEditingController: frequencyController,
                                    enabled: true,
                                  ),
                                  10.ph,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Services: ",
                                        style: CCustomTextStyles.black613,
                                      ),
                                      10.pw,
                                      Expanded(
                                        child: Container(
                                          width: 300,
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                                CColors.imagePlaceHolderColor,
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
                                                          .servicesNamesList
                                                          .length;
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
                                      ),
                                    ],
                                  ),
                                  10.ph,
                                ],
                              ),
                            ),
                            10.pw,
                            constraint.maxWidth >
                                    PlatformSizes.maxSmallScreenWidth - 100
                                ? Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const VerticalDivider(
                                          thickness: 3,
                                          color: CColors.primaryColor,
                                        ),
                                        10.pw,
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Before",
                                                style:
                                                    CCustomTextStyles.black618,
                                              ),
                                              10.ph,
                                              Wrap(
                                                runSpacing: 20,
                                                spacing: 20,
                                                children: [
                                                  for (int i = 0;
                                                      i < 5;
                                                      i++) ...[
                                                    AddImageContainer(
                                                      height: 90,
                                                      width: 90,
                                                      addImageFunction: () {},
                                                    )
                                                  ]
                                                ],
                                              ),
                                              10.ph,
                                              const Text(
                                                "After",
                                                style:
                                                    CCustomTextStyles.black618,
                                              ),
                                              10.ph,
                                              Wrap(
                                                runSpacing: 20,
                                                spacing: 20,
                                                children: [
                                                  for (int i = 0;
                                                      i < 5;
                                                      i++) ...[
                                                    AddImageContainer(
                                                      height: 90,
                                                      width: 90,
                                                      addImageFunction: () {},
                                                    )
                                                  ]
                                                ],
                                              ),
                                              10.ph,
                                              const Spacer(),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child: PrimaryButton(
                                                      height: 45,
                                                      text: "Accept Compliance",
                                                      onPressFunction:
                                                          acceptComplianceFunction,
                                                      width: 150,
                                                    ),
                                                  ),
                                                  30.pw,
                                                  Expanded(
                                                    child: PrimaryButton(
                                                      height: 45,
                                                      text:
                                                          "Decline Compliance",
                                                      onPressFunction:
                                                          declineComplianceFunction,
                                                      backgroundColor: CColors
                                                          .redAccentColor,
                                                      width: 150,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                      constraint.maxWidth <
                              PlatformSizes.maxSmallScreenWidth - 100
                          ? Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(
                                  thickness: 3,
                                  color: CColors.primaryColor,
                                ),
                                10.pw,
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Before",
                                      style: CCustomTextStyles.black618,
                                    ),
                                    10.ph,
                                    Wrap(
                                      runSpacing: 20,
                                      spacing: 20,
                                      children: [
                                        for (int i = 0; i < 5; i++) ...[
                                          const ImageContainer(
                                            height: 90,
                                            width: 90,
                                          )
                                        ]
                                      ],
                                    ),
                                    10.ph,
                                    const Text(
                                      "After",
                                      style: CCustomTextStyles.black618,
                                    ),
                                    10.ph,
                                    Wrap(
                                      runSpacing: 20,
                                      spacing: 20,
                                      children: [
                                        for (int i = 0; i < 5; i++) ...[
                                          const ImageContainer(
                                            height: 90,
                                            width: 90,
                                          )
                                        ]
                                      ],
                                    ),
                                    30.ph,
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: PrimaryButton(
                                            height: 45,
                                            text: "Accept Compliance",
                                            onPressFunction:
                                                acceptComplianceFunction,
                                            width: 150,
                                          ),
                                        ),
                                        30.pw,
                                        Expanded(
                                          child: PrimaryButton(
                                            height: 45,
                                            text: "Decline Compliance",
                                            onPressFunction:
                                                declineComplianceFunction,
                                            backgroundColor:
                                                CColors.redAccentColor,
                                            width: 150,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
