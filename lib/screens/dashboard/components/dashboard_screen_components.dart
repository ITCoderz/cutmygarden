import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:cut_my_garden/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../reusable_widgets/circular_container.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constant_lists.dart';

class AmountCard extends StatelessWidget {
  final String valueType, value;

  const AmountCard({
    super.key,
    required this.valueType,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: 250,
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
            valueType,
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

class TableBackground extends StatelessWidget {
  final Widget widget;

  const TableBackground({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        boxShadow: [
          BoxShadow(
            color: CColors.blackColor.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(-1, 8), // Shadow position
          ),
        ],
        color: CColors.whiteAccent,
      ),
      child: widget,
    );
  }
}

class GardenerBackground extends StatelessWidget {
  final Widget widget;

  const GardenerBackground({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
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
      child: widget,
    );
  }
}

class GardenerInfoTiles extends StatelessWidget {
  final String gardener, location, availability, compliance;

  const GardenerInfoTiles({
    super.key,
    required this.gardener,
    required this.location,
    required this.availability,
    required this.compliance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: CColors.whiteColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 85,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              color: CColors.imagePlaceHolderColor,
            ),
          ),
          10.pw,
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const FittedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gardener",
                        style: CCustomTextStyles.black609,
                      ),
                      Text(
                        "Location",
                        style: CCustomTextStyles.black609,
                      ),
                      Text(
                        "Availability",
                        style: CCustomTextStyles.black609,
                      ),
                      Text(
                        "Compliance",
                        style: CCustomTextStyles.black609,
                      ),
                    ],
                  ),
                ),
                10.pw,
                FittedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        gardener,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        location,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        availability,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        compliance,
                        style: CCustomTextStyles.black409,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///
class BookingTableData extends StatelessWidget {
  const BookingTableData({super.key});

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
      rows: ConstantLists.bookingList
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

///

class OfflineEnquiresDataTableData extends StatelessWidget {
  const OfflineEnquiresDataTableData({super.key});

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
            "Location",
            textAlign: TextAlign.left,
          ),
        ),
      ],
      rows: ConstantLists.offlineEnquiresList
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
                    data.location,
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
