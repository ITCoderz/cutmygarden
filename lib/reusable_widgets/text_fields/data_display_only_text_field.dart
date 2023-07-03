import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class DataDisplayOnlyTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final TextEditingController textEditingController;
  final Color fillColor;
  final double width, height;
  final bool enabled;
  final Function(String)? onChangedFunction;

  const DataDisplayOnlyTextField({
    Key? key,
    this.fillColor = CColors.imagePlaceHolderColor,
    this.width = 250,
    this.height = 35,
    this.enabled=true,
    this.onChangedFunction,
    this.validatorFunction,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        enabled: enabled,
        controller: textEditingController,
        textAlignVertical: TextAlignVertical.center,
        style: CCustomTextStyles.black615,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          filled: true,
          fillColor: fillColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
        onChanged: onChangedFunction,
        validator: validatorFunction,
      ),
    );
  }
}
