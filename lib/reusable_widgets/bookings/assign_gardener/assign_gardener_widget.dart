import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/screen_sizes.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/sizes/platform_sizes.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../../background_container_widgets/custom_widget_background.dart';
import '../../buttons/primary_button.dart';
import '../../text_fields/custom_textfield.dart';
import '../components/booking_components.dart';

class AssignGardenerWidget extends StatelessWidget {
  final BoxConstraints constraint;
  final TextEditingController locationController,
      assignGardenerController,
      detailController;

  final Function()? assignGardenerFunction, closeFunction;

  const AssignGardenerWidget({
    super.key,
    required this.constraint,
    required this.locationController,
    required this.assignGardenerController,
    required this.detailController,
    required this.assignGardenerFunction,
    required this.closeFunction,
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
              "Assign Gardener",
              style: CCustomTextStyles.white725,
            ),
            10.ph,
            CustomWidgetBackground(
              widget: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 50,
                ),
                width: constraint.maxWidth >=
                        PlatformSizes.minLargeScreenWidth + 100
                    ? context.width * 0.5
                    : context.width * 1,
                child: constraint.maxWidth < PlatformSizes.minMediumScreenWidth
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          30.ph,
                          const Text(
                            "Location: ",
                            style: CCustomTextStyles.black613,
                          ),
                          CustomTextField(
                            textEditingController: locationController,
                            width: context.width * 1,
                            height: 30,
                            enabled: true,
                            maxLines: 20,
                          ),
                          10.ph,
                          const Text(
                            "Assign Gardener: ",
                            style: CCustomTextStyles.black613,
                          ),
                          CustomTextField(
                            textEditingController: assignGardenerController,
                            width: context.width * 1,
                            height: 30,
                            enabled: true,
                            maxLines: 20,
                          ),
                          30.ph,
                          CustomTextField(
                            textEditingController: detailController,
                            width: context.width * 1,
                            height: 190,
                            enabled: true,
                            maxLines: 20,
                          ),
                          50.ph,
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: PrimaryButton(
                                  height: 45,
                                  text: "Assign Gardener",
                                  onPressFunction: assignGardenerFunction,
                                  width: 150,
                                ),
                              ),
                              30.pw,
                              Expanded(
                                child: PrimaryButton(
                                  height: 45,
                                  text: "Close",
                                  onPressFunction: closeFunction,
                                  backgroundColor: CColors.redAccentColor,
                                  width: 150,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          30.ph,
                          DataDisplayTile(
                            descriptionTitle: "Location",
                            gap: 73,
                            textEditingController: locationController,
                            enabled: true,
                          ),
                          10.ph,
                          DataDisplayTile(
                            descriptionTitle: "Assign Gardener",
                            gap: 20,
                            textEditingController: assignGardenerController,
                            enabled: true,
                          ),
                          10.ph,
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              138.pw,
                              Expanded(
                                child: CustomTextField(
                                  textEditingController: detailController,
                                  width: 210,
                                  height: 190,
                                  enabled: true,
                                  maxLines: 20,
                                ),
                              )
                            ],
                          ),
                          50.ph,
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              138.pw,
                              Expanded(
                                child: PrimaryButton(
                                  height: 45,
                                  text: "Assign Gardener",
                                  onPressFunction: assignGardenerFunction,
                                  width: 150,
                                ),
                              ),
                              30.pw,
                              Expanded(
                                child: PrimaryButton(
                                  height: 45,
                                  text: "Close",
                                  onPressFunction: closeFunction,
                                  backgroundColor: CColors.redAccentColor,
                                  width: 150,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
