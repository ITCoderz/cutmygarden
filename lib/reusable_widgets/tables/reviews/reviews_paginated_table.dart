import 'package:cut_my_garden/models/review_model.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/text_styles/text_styles.dart';

class PaginatedReviewTableWidget extends StatelessWidget {
  final PaginatorController? paginationController;
  final List<ReviewModel> dataList;

  const PaginatedReviewTableWidget({
    super.key,
    required this.paginationController,
    required this.dataList,
  });

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      horizontalMargin: 20,
      columnSpacing: 5,
      wrapInCard: false,
      renderEmptyRowsInTheEnd: false,
      minWidth: 500,
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
            "City",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Text(
            "Gardener",
            textAlign: TextAlign.left,
            style: CCustomTextStyles.black610,
          ),
        ),
        DataColumn(
          label: Text(
            "Rating",
            textAlign: TextAlign.center,
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
  final List<ReviewModel> dataList;

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
            dataList[index].city,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          Text(
            dataList[index].gardener,
            style: CCustomTextStyles.black410,
          ),
        ),
        DataCell(
          RatingBar(
            initialRating: dataList[index].rating,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 20,
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.star_sharp,
                color: CColors.yellowAccentTwo,
              ),
              half: const Icon(
                Icons.star_half_sharp,
                color: CColors.yellowAccentTwo,
              ),
              empty: const Icon(
                Icons.star_border_sharp,
                color: CColors.yellowAccentTwo,
              ),
            ),
            // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            onRatingUpdate: (rating) {},
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
