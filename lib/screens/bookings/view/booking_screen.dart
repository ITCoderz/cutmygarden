import 'package:cut_my_garden/reusable_widgets/circular_container.dart';
import 'package:cut_my_garden/reusable_widgets/tables/bookings/booking_dashboard/dashboard_booking_table.dart';
import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/constants/constant_lists.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/sizes/screen_sizes.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../models/bookings_model.dart';
import '../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../reusable_widgets/tables/bookings/booking_paginated/paginated_booking_table.dart';
import '../../../reusable_widgets/text_fields/search_field.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/sizes/platform_sizes.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  PaginatorController? paginationController = PaginatorController();

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
                CustomTextField(
                  height: 45,
                  width: context.width * 0.37,
                  textEditingController: TextEditingController(),
                ),
                20.ph,
                const Text(
                  "Bookings",
                  style: CCustomTextStyles.black630,
                ),
                CustomWidgetBackground(
                  alignment: Alignment.center,
                  widget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "All Bookings",
                        style: CCustomTextStyles.black615,
                      ).alignWidget(alignment: Alignment.centerLeft),
                      SizedBox(
                        height: 540,
                        child: PaginatedBookingTable(
                          paginationController: paginationController,
                          dataList: ConstantLists.bookingList,
                        ),
                      ),
                    ],
                  ),
                ),
                20.ph,
                CustomWidgetBackground(
                  alignment: Alignment.center,
                  widget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Client Name Bookings",
                        style: CCustomTextStyles.black615,
                      ).alignWidget(alignment: Alignment.centerLeft),
                      SizedBox(
                        height: 400,
                        child: PaginatedBookingTable(
                          paginationController: paginationController,
                          dataList: ConstantLists.bookingList,
                        ),
                      ),
                    ],
                  ),
                ),

                ///Table Primary Display for Big Screen.
                // constraint.maxWidth >= PlatformSizes.minMediumScreenWidth
              ],
            );
          },
        ),
      ),
    );
  }
}
