import 'package:cut_my_garden/reusable_widgets/text_fields/custom_textfield.dart';
import 'package:cut_my_garden/screens/communication/component/communication_screen_components.dart';
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
import '../../../utils/colors/app_colors.dart';
import '../../../utils/sizes/platform_sizes.dart';

class CommunicationScreen extends StatefulWidget {
  const CommunicationScreen({super.key});

  @override
  State<CommunicationScreen> createState() => _CommunicationScreenState();
}

class _CommunicationScreenState extends State<CommunicationScreen> {
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
              selectedIndex: 6,
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
                        "Communication",
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
                            child: Container(
                              height: 600,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "Chats",
                                    style: CCustomTextStyles.black630,
                                  ).alignWidget(
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        for (int index = 0;
                                            index <
                                                ConstantLists
                                                    .chatsCategoryList.length;
                                            index++) ...[
                                          ChatsCategoryWidget(
                                            chatCategoryTitle: ConstantLists
                                                .chatsCategoryList[index]
                                                .chatTypeName,
                                            noOfChats: ConstantLists
                                                .chatsCategoryList[index]
                                                .noOfChats,
                                            onTapFunction: () {},
                                          ),
                                        ]
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          20.pw,
                          constraint.maxWidth >
                                  PlatformSizes.maxMediumScreenWidth
                              ? Expanded(
                                  flex: 3,
                                  child: CustomWidgetBackground(
                                    alignment: Alignment.center,
                                    widget: SizedBox(
                                      height: 600,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          30.ph,
                                          const Text(
                                            "Reviews",
                                            style: CCustomTextStyles.black617,
                                          ).alignWidget(
                                            alignment: Alignment.centerLeft,
                                          ),
                                          10.ph,
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SearchField(
                                                        height: 40,
                                                        width:
                                                            context.width * 1,
                                                        textEditingController:
                                                            TextEditingController(),
                                                      ),
                                                      30.ph,
                                                      Expanded(
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              for (int index =
                                                                      0;
                                                                  index < 5;
                                                                  index++) ...[
                                                                ChatsCategoryWidget(
                                                                  chatCategoryTitle:
                                                                      "",
                                                                  noOfChats: null,
                                                                  onTapFunction:
                                                                      () {},
                                                                ),
                                                                10.ph,
                                                              ],
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                20.pw,
                                                Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      20,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10,
                                                      ),
                                                      color: CColors
                                                          .imagePlaceHolderColor,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        const Text(
                                                          "Cometchat API / SDK",
                                                          style:
                                                              CCustomTextStyles
                                                                  .black617,
                                                        ).alignWidget(
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomTextField(
                                                          textEditingController:
                                                              TextEditingController(),
                                                          maxLines: 4,
                                                          height: 95,
                                                          width:
                                                              context.width * 1,
                                                          hintText:
                                                              "Type a message...",
                                                          fillColor: CColors
                                                              .whiteAccent,
                                                        ).alignWidget(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                      20.ph,
                      constraint.maxWidth > PlatformSizes.maxMediumScreenWidth
                          ? const SizedBox.shrink()
                          : CustomWidgetBackground(
                              alignment: Alignment.center,
                              widget: SizedBox(
                                height: 600,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    30.ph,
                                    const Text(
                                      "Reviews",
                                      style: CCustomTextStyles.black617,
                                    ).alignWidget(
                                      alignment: Alignment.centerLeft,
                                    ),
                                    10.ph,
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SearchField(
                                                  height: 40,
                                                  width: context.width * 1,
                                                  textEditingController:
                                                      TextEditingController(),
                                                ),
                                                30.ph,
                                                Expanded(
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        for (int index = 0;
                                                            index < 5;
                                                            index++) ...[
                                                          ChatsCategoryWidget(
                                                            chatCategoryTitle:
                                                                "",
                                                            noOfChats: null,
                                                            onTapFunction:
                                                                () {},
                                                          ),
                                                          10.ph,
                                                        ],
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          20.pw,
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              padding: const EdgeInsets.all(
                                                20,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                color: CColors
                                                    .imagePlaceHolderColor,
                                              ),
                                              child: Stack(
                                                children: [
                                                  const Text(
                                                    "Cometchat API / SDK",
                                                    style: CCustomTextStyles
                                                        .black617,
                                                  ).alignWidget(
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomTextField(
                                                    textEditingController:
                                                        TextEditingController(),
                                                    maxLines: 4,
                                                    height: 95,
                                                    width: context.width * 1,
                                                    hintText:
                                                        "Type a message...",
                                                    fillColor:
                                                        CColors.whiteAccent,
                                                  ).alignWidget(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
