import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:flutter/material.dart';

import '../../../../models/bookings_model.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../../../circular_container.dart';

class DashBoardBookingTableData extends StatelessWidget {
  final List<BookingModel> bookingList;

  const DashBoardBookingTableData({
    super.key,
    required this.bookingList,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 30,
      border: const TableBorder(
        horizontalInside: BorderSide(
          width: 1,
          color: CColors.primaryColor,
        ),
      ),
      headingTextStyle: CCustomTextStyles.black610,
      dataTextStyle: CCustomTextStyles.black410,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            "Name",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Date",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Time",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "City",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Gardener",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Status",
            textAlign: TextAlign.center,
          ),
        ),
      ],
      rows: bookingList
          .map(
            (data) => DataRow(
              cells: [
                DataCell(
                  Text(
                    data.name,
                  ),
                ),
                DataCell(
                  Text(
                    data.date,
                  ),
                ),
                DataCell(
                  Text(
                    data.time,
                  ),
                ),
                DataCell(
                  Text(
                    data.city,
                  ),
                ),
                DataCell(
                  Text(
                    data.gardener,
                  ),
                ),
                DataCell(
                  CircularContainer(
                    height: 15,
                    width: 15,
                    backgroundColor: data.status == "complete"
                        ? CColors.greenAccent
                        : data.status == "pending"
                            ? CColors.yellowAccent
                            : CColors.pinkAccent,
                  ).alignWidget(
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
