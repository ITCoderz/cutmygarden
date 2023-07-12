import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../reusable_widgets/text_fields/search_field.dart';
import '../component/gardeners_landing_page_components.dart';

class GardenersLandingScreen extends StatefulWidget {
  const GardenersLandingScreen({super.key});

  @override
  State<GardenersLandingScreen> createState() => _GardenersLandingScreenState();
}

class _GardenersLandingScreenState extends State<GardenersLandingScreen> {
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
                SearchField(
                  height: 45,
                  width: context.width * 0.37,
                  textEditingController: TextEditingController(),
                ),
                20.ph,
                Flexible(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ConstantLists.allGardenersList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        30.ph,
                    itemBuilder: (BuildContext context, int index) {
                      return GardenerLandingScreenWidget(
                        allGardenerDisplayModel:
                            ConstantLists.allGardenersList[index],
                      );
                    },
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
