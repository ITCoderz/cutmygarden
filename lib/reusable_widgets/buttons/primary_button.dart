import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class PrimaryColorButton extends StatelessWidget {
  final double width, height, radius;
  final Function()? onPressFunction;
  final String text;
  final Color backgroundColor;

  const PrimaryColorButton({
    super.key,
    required this.width,
    required this.height,
    required this.onPressFunction,
    required this.text,
    this.backgroundColor = CColors.primaryColor,
    this.radius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
      ),
      child: Text(
        text,
        style: CCustomTextStyles.white613,
      ),
    );
  }
}