import 'package:cut_my_garden/models/client_model.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class PaginatedClientsTableWidget extends StatelessWidget {
  final PaginatorController? paginationController;
  final List<ClientModel> dataList;

  const PaginatedClientsTableWidget({
    super.key,
    required this.paginationController,
    required this.dataList,
  });

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      horizontalMargin: 20,
      columnSpacing: 10,
      wrapInCard: false,
      renderEmptyRowsInTheEnd: false,
      minWidth: 800,
      border: const TableBorder(
        horizontalInside: BorderSide(
          color: CColors.primaryColor,
          width: 1,
        ),
        bottom: BorderSide(
          color: CColors.primaryColor,
          width: 2,
        ),
      ),
      autoRowsToHeight: true,
      sortArrowIcon: Icons.keyboard_arrow_up,
      controller: paginationController,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            "Name",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Text(
            "Date",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Text(
            "Time",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Text(
            "Address",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Text(
            "Post Code",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Text(
            "City",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Center(
            child: Text(
              "Frequency",
              textAlign: TextAlign.left,
              style: CCustomTextStyles.black610,
            ),
          ),
        ),
        DataColumn(
          label: Center(
            child: Text(
              "EST Value",
              textAlign: TextAlign.left,
              style: CCustomTextStyles.black610,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            "Gardener",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
      ],
      empty: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.grey[200],
          child: const Text('No data'),
        ),
      ),
      source: EnquiriesPaginatedTable(
        dataList: dataList,
      ),
    );
  }
}

class EnquiriesPaginatedTable extends DataTableSource {
  final List<ClientModel> dataList;

  EnquiriesPaginatedTable({required this.dataList});

  @override
  DataRow? getRow(int index) {
    return DataRow(
      cells: [
        DataCell(
          Text(
            dataList[index].name,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].date,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].time,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].address,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].postCode,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].city,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].frequency,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].estValue,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].gardener,
            style: CCustomTextStyles.black410,
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => dataList.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
