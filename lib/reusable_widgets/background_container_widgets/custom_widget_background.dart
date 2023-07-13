import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';

class CustomWidgetBackground extends StatelessWidget {
  final Widget widget;
  final AlignmentGeometry? alignment;
  final double? height, width;

  const CustomWidgetBackground({
    super.key,
    required this.widget,
    this.alignment,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
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
            color: CColors.blackColor.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(-1, 8), // Shadow position
          ),
        ],
        color: CColors.whiteAccent,
      ),
      child: widget,
    );
  }
}
