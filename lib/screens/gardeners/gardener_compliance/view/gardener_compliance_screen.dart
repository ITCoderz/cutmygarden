import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../reusable_widgets/dividers.dart';
import '../../../../reusable_widgets/text_fields/search_field.dart';
import '../components/gardener_compliance_components.dart';

class GardenerComplianceScreen extends StatefulWidget {
  const GardenerComplianceScreen({super.key});

  @override
  State<GardenerComplianceScreen> createState() =>
      _GardenerComplianceScreenState();
}

class _GardenerComplianceScreenState extends State<GardenerComplianceScreen> {
  final ScrollController scrollController = ScrollController();

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
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Gardener Compliance",
                  style: CCustomTextStyles.black630,
                ).alignWidget(
                  alignment: Alignment.centerLeft,
                ),
                20.ph,
                Scrollbar(
                  trackVisibility: true,
                  thumbVisibility: true,
                  interactive: true,
                  controller: scrollController,
                  radius: const Radius.circular(20),
                  child: SizedBox(
                    height: 620,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            20.pw,
                            const NameColumn(),
                            20.pw,
                            const CustomVerticalDivider(),
                            20.pw,
                            const BusinessInformationColumn(),
                            20.pw,
                            const CustomVerticalDivider(),
                            20.pw,
                            const VanDetailsColumn(),
                            20.pw,
                            const CustomVerticalDivider(),
                            20.pw,
                            const InsuranceDetailsColumn(),
                            20.pw,
                            const CustomVerticalDivider(),
                            20.pw,
                            const DbsDetailsColumn(),
                            20.pw,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                20.ph,
                const CustomHorizontalDivider(),
                20.ph,
                Scrollbar(
                  trackVisibility: true,
                  thumbVisibility: true,
                  interactive: true,
                  controller: scrollController,
                  radius: const Radius.circular(20),
                  child: SizedBox(
                    height: 620,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            20.pw,
                            const UniformDetailsColumn(),
                            20.pw,
                            const CustomVerticalDivider(),
                            20.pw,
                            const StaffingComplianceColumn(),
                            20.pw,
                            const CustomVerticalDivider(),
                            20.pw,
                            const LivePortalColumn(),
                            20.pw,
                            const CustomVerticalDivider(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                20.ph,
              ],
            );
          },
        ),
      ),
    );
  }
}
