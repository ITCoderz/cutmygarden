import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';

class AmountCard extends StatelessWidget {
  final String valueType, value;

  const AmountCard({
    super.key,
    required this.valueType,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: 250,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        boxShadow: [
          BoxShadow(
            color: CColors.blackColor.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(4, 8), // Shadow position
          ),
        ],
        color: CColors.cardColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            valueType,
            style: CCustomTextStyles.black610,
          ),
          5.ph,
          Text(
            value,
            style: CCustomTextStyles.black620,
          ),
        ],
      ),
    );
  }
}

class GardenerInfoTiles extends StatelessWidget {
  final String gardener, location, availability, compliance;

  const GardenerInfoTiles({
    super.key,
    required this.gardener,
    required this.location,
    required this.availability,
    required this.compliance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: CColors.whiteColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 85,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              color: CColors.imagePlaceHolderColor,
            ),
          ),
          10.pw,
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const FittedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gardener",
                        style: CCustomTextStyles.black609,
                      ),
                      Text(
                        "Location",
                        style: CCustomTextStyles.black609,
                      ),
                      Text(
                        "Availability",
                        style: CCustomTextStyles.black609,
                      ),
                      Text(
                        "Compliance",
                        style: CCustomTextStyles.black609,
                      ),
                    ],
                  ),
                ),
                10.pw,
                FittedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        gardener,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        location,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        availability,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        compliance,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
