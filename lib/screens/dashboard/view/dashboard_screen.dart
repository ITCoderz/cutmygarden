import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/platform_sizes.dart';
import 'package:cut_my_garden/utils/sizes/screen_sizes.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/enums/screen_enums.dart';
import '../components/dashboard_screen_components.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

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
                CustomTextField(
                  height: 45,
                  width: context.width*0.37,
                  textEditingController: TextEditingController(),
                ),
                20.ph,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 95,
                      crossAxisCount:
                          PlatformSizes.screenType(constraint: constraint) ==
                                  TargetPlatformEnum.web
                              ? 4
                              : 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    return const AmountCard(
                      value: "2",
                      valueType: "Dispute",
                    );
                  },
                ),
                20.ph,
                GardenerBackground(
                  widget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Gardeners",
                          style: CCustomTextStyles.black615,
                        ),
                      ),
                      20.ph,
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 95,
                            crossAxisCount: PlatformSizes.screenType(
                                        constraint: constraint) ==
                                    TargetPlatformEnum.web
                                ? 4
                                : 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0),
                        itemBuilder: (BuildContext context, int index) {
                          return const GardenerInfoTiles(
                            gardener: "Clive Sailsman",
                            location: "Birmingham",
                            availability: "Mon - Sat",
                            compliance: "Complete",
                          );
                        },
                      ),
                    ],
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
