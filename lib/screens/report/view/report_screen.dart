import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../components/report_screen_components.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 1,
      width: context.width * 1,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            10.ph,
            SearchField(
              height: 45,
              width: context.width * 0.37,
              textEditingController: TextEditingController(),
            ),
            20.ph,
            const Text(
              "Report",
              style: CCustomTextStyles.black630,
            ).alignWidget(
              alignment: Alignment.centerLeft,
            ),
            20.ph,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int index = 0;
                    index < ConstantLists.reportDataList.length - 1;
                    index++) ...[
                  ReportCardWidget(
                    reportType: ConstantLists.reportDataList[index].dataType,
                    value: ConstantLists.reportDataList[index].dataValue,
                  )
                ]
              ],
            ).alignWidget(
              alignment: Alignment.centerLeft,
            )
          ],
        ),
      ),
    );
  }
}
