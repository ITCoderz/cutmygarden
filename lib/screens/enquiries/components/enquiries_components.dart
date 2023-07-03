import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';

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
            color: CColors.blackColor.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(4, 8), // Shadow position
          ),
        ],
        color: CColors.cardColor,
      ),
    );
  }
}
