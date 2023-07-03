import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';

class GardenerBackground extends StatelessWidget {
  final Widget widget;

  const GardenerBackground({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
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
            offset: const Offset(
              4,
              8,
            ), // Shadow position
          ),
        ],
        color: CColors.cardColor,
      ),
      child: widget,
    );
  }
}
