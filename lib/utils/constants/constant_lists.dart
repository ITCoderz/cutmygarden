import '../../models/bookings_model.dart';
import '../../models/data_model.dart';
import '../../models/gardeneers_model.dart';
import '../../models/offline_enquires.dart';

class ConstantLists {
  ConstantLists._();

  static List<DataModel> dataList = [
    DataModel(
      dataType: "Bookings",
      dataValue: "721",
    ),
    DataModel(
      dataType: "Revenue",
      dataValue: "£3.000,000",
    ),
    DataModel(
      dataType: "Enquires",
      dataValue: "120",
    ),
    DataModel(
      dataType: "Dispute",
      dataValue: "2",
    ),
  ];
  static List<GardenersModel> gardenersList = [
    GardenersModel(
        gardener: "Clive Sailsman",
        location: "Manchester",
        availability: "Mon - Sat",
        compliance: "Complete"),
    GardenersModel(
        gardener: "Clive Sailsman",
        location: "Manchester",
        availability: "Mon - Sat",
        compliance: "Complete"),
    GardenersModel(
        gardener: "Clive Sailsman",
        location: "Manchester",
        availability: "Mon - Sat",
        compliance: "Complete"),
  ];
  static List<BookingModel> bookingList = [
    BookingModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        city: "Wolverhampton",
        gardener: "Clive Sailsman",
        status: "complete"),
    BookingModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        city: "Wolverhampton",
        gardener: "Clive Sailsman",
        status: "pending"),
    BookingModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        city: "Wolverhampton",
        gardener: "Clive Sailsman",
        status: "waiting"),
    BookingModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        city: "Wolverhampton",
        gardener: "Clive Sailsman",
        status: "complete"),
    BookingModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        city: "Wolverhampton",
        gardener: "Clive Sailsman",
        status: "pending"),
    BookingModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        city: "Wolverhampton",
        gardener: "Clive Sailsman",
        status: "complete"),
    BookingModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        city: "Wolverhampton",
        gardener: "Clive Sailsman",
        status: "pending"),
  ];

  static List<OfflineEnquiresModel> offlineEnquiresList = [
    OfflineEnquiresModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        location: "Birmingham"),
    OfflineEnquiresModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        location: "Birmingham"),
    OfflineEnquiresModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        location: "Birmingham"),
    OfflineEnquiresModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        location: "Birmingham"),
    OfflineEnquiresModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        location: "Birmingham"),
    OfflineEnquiresModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        location: "Birmingham"),
    OfflineEnquiresModel(
        name: "Theodore Hoffman",
        date: "01/01/01",
        time: "12:00pm",
        location: "Birmingham"),
  ];
}
