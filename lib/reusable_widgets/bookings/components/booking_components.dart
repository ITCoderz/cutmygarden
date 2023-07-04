import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../../text_fields/custom_textfield.dart';

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

class DataDisplayTile extends StatelessWidget {
  final String descriptionTitle;
  final TextEditingController textEditingController;
  final double gap;
  final bool enabled;
  final Color fillColor;

  const DataDisplayTile({
    super.key,
    required this.descriptionTitle,
    required this.gap,
    required this.textEditingController,
    this.enabled = false,
    this.fillColor = CColors.imagePlaceHolderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$descriptionTitle: ",
          style: CCustomTextStyles.black613,
        ),
        gap.pw,
        Expanded(
          child: CustomTextField(
            textEditingController: textEditingController,
            width: 210,
            height: 30,
            enabled: enabled,
            fillColor: fillColor,
          ),
        ),
      ],
    );
  }
}

class ImageContainer extends StatelessWidget {
  final double height, width;

  const ImageContainer({
    super.key,
    this.width = 90,
    this.height = 90,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        boxShadow: [
          BoxShadow(
            color: CColors.blackColor.withOpacity(
              0.25,
            ),
            blurRadius: 4,
            offset: const Offset(4, 8), // Shadow position
          ),
        ],
        color: CColors.cardColor,
      ),
    );
  }
}
