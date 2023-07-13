import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/text_styles/text_styles.dart';

class ReportCardWidget extends StatelessWidget {
  final String reportType, value;

  const ReportCardWidget({
    super.key,
    required this.reportType,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: 160,
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
            reportType,
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
