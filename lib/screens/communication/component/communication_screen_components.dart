import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';

class ChatsCategoryWidget extends StatelessWidget {
  final String chatCategoryTitle;
  final int? noOfChats;
  final Function()? onTapFunction;

  const ChatsCategoryWidget({
    super.key,
    required this.chatCategoryTitle,
    required this.noOfChats,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        10,
      ),
      onTap: onTapFunction,
      child: Container(
        height: 75,
        width: 320,
        padding: const EdgeInsets.only(
          left: 10,
          top: 5,
          bottom: 5,
          right: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: CColors.imagePlaceHolderColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              chatCategoryTitle,
              style: CCustomTextStyles.black417,
            ),
            const Spacer(),
            Text(
              noOfChats == null ? "" : noOfChats.toString(),
              style: CCustomTextStyles.black417,
            ),
            5.pw,
            const VerticalDivider(
              color: CColors.pinkAccent,
              thickness: 5,
            )
          ],
        ),
      ),
    );
  }
}
