import 'package:flutter/material.dart';

import '../../../../models/offline_enquires.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class OfflineEnquiresDataTableData extends StatelessWidget {
  final List<OfflineEnquiresModel> offlineEnquiresList;

  const OfflineEnquiresDataTableData({
    super.key,
    required this.offlineEnquiresList,
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
            "Location",
            textAlign: TextAlign.left,
          ),
        ),
      ],
      rows: offlineEnquiresList
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
