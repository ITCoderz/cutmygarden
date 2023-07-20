import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingsController extends GetxController{
  PaginatorController? paginationController = PaginatorController();
  //Assign Gardener
  TextEditingController locationController = TextEditingController();
  TextEditingController assignGardenerController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  // Show Details
  TextEditingController dateDetailsController = TextEditingController();
  TextEditingController timeDetailsController = TextEditingController();
  TextEditingController bookingValueDetailsController = TextEditingController();
  TextEditingController assignedGardenerDetailsController =
  TextEditingController();
  TextEditingController hoursDetailsController = TextEditingController();
  TextEditingController accessToSiteDetailsController = TextEditingController();
  TextEditingController serviceNumberDetailsController =
  TextEditingController();
  TextEditingController frequencyDetailsController = TextEditingController();
  TextEditingController lawnWidthDetailsController = TextEditingController();
  TextEditingController lawnHeightDetailsController = TextEditingController();
  TextEditingController growthDetailsController = TextEditingController();
  TextEditingController binDetailsController = TextEditingController();

  // Edit Details
  TextEditingController dateEditController = TextEditingController();
  TextEditingController timeEditController = TextEditingController();
  TextEditingController bookingValueEditController = TextEditingController();
  TextEditingController assignedGardenerEditController =
  TextEditingController();
  TextEditingController hoursEditController = TextEditingController();
  TextEditingController accessToSiteEditController = TextEditingController();
  TextEditingController serviceNumberEditController = TextEditingController();
  TextEditingController frequencyEditController = TextEditingController();
  TextEditingController lawnWidthEditController = TextEditingController();
  TextEditingController lawnHeightEditController = TextEditingController();
  TextEditingController growthEditController = TextEditingController();
  TextEditingController binEditController = TextEditingController();

  //Job Compliance
  TextEditingController dateComplianceController = TextEditingController();
  TextEditingController timeComplianceController = TextEditingController();
  TextEditingController bookingValueComplianceController =
  TextEditingController();
  TextEditingController assignedGardenerComplianceController =
  TextEditingController();
  TextEditingController hoursComplianceController = TextEditingController();
  TextEditingController accessToSiteComplianceController =
  TextEditingController();
  TextEditingController serviceNumberComplianceController =
  TextEditingController();
  TextEditingController frequencyComplianceController = TextEditingController();
  TextEditingController lawnWidthComplianceController = TextEditingController();
  TextEditingController lawnHeightComplianceController =
  TextEditingController();
  TextEditingController growthComplianceController = TextEditingController();
  TextEditingController binComplianceController = TextEditingController();
}