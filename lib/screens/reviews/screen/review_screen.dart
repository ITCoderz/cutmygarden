import 'package:cut_my_garden/reusable_widgets/tables/reviews/reviews_paginated_table.dart';
import 'package:cut_my_garden/screens/reviews/components/reviews_components.dart';
import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../../../reusable_widgets/text_fields/search_field.dart';
import '../../../../utils/constants/constant_lists.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../../../utils/enums/screen_enums.dart';
import '../../../utils/sizes/platform_sizes.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  PaginatorController? reviewPaginationController = PaginatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
        return Row(
          children: [
            CustomMenuBar(
              maxWidth: constraint.maxWidth,
              selectedIndex: 7,
            ),
            Expanded(
              child: Container(
                height: context.height * 1,
                width: context.width * 1,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
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
                        "Reviews",
                        style: CCustomTextStyles.black630,
                      ).alignWidget(
                        alignment: Alignment.centerLeft,
                      ),
                      20.ph,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 600,
                              child: CustomWidgetBackground(
                                alignment: Alignment.center,
                                widget: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      "Reviews",
                                      style: CCustomTextStyles.black617,
                                    ).alignWidget(
                                      alignment: Alignment.centerLeft,
                                    ),
                                    Expanded(
                                      child: PaginatedReviewTableWidget(
                                        paginationController:
                                            reviewPaginationController,
                                        dataList: ConstantLists.reviewList,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          20.pw,
                          constraint.maxWidth >
                                  PlatformSizes.minMediumScreenWidth
                              ? Expanded(
                                  child: GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        ConstantLists.commentReviewList.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 250,
                                      crossAxisCount: PlatformSizes.screenType(
                                                  constraint: constraint) ==
                                              TargetPlatformEnum.web
                                          ? 2
                                          : 1,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return ReviewCommentWidget(
                                        commentModel: ConstantLists
                                            .commentReviewList[index],
                                      );
                                    },
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                      20.ph,
                      constraint.maxWidth > PlatformSizes.minMediumScreenWidth
                          ? const SizedBox.shrink()
                          : GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: ConstantLists.commentReviewList.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 250,
                                crossAxisCount: PlatformSizes.screenType(
                                            constraint: constraint) ==
                                        TargetPlatformEnum.web
                                    ? 2
                                    : 1,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return ReviewCommentWidget(
                                  commentModel:
                                      ConstantLists.commentReviewList[index],
                                );
                              },
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
