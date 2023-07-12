import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';

import '../../../../models/all_gardeners_model.dart';
import '../../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../../reusable_widgets/tables/gardeners/all_gardeners.dart';
import '../../../../utils/text_styles/text_styles.dart';

class GardenerLandingScreenWidget extends StatelessWidget {
  final AllGardenerDisplayModel allGardenerDisplayModel;

  const GardenerLandingScreenWidget({
    super.key,
    required this.allGardenerDisplayModel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomWidgetBackground(
      widget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            allGardenerDisplayModel.cityName,
            style: CCustomTextStyles.black615,
          ).alignWidget(
            alignment: Alignment.centerLeft,
          ),
          20.ph,
          SizedBox(
            height: allGardenerDisplayModel.allGardenersList.isEmpty
                ? 80
                : allGardenerDisplayModel.allGardenersList.length == 1
                    ? 120
                    : 80.0 * allGardenerDisplayModel.allGardenersList.length,
            child: GardenersAttributesTable(
              allGardenersDisplayList: allGardenerDisplayModel.allGardenersList,
            ),
          ),
        ],
      ),
    );
  }
}
