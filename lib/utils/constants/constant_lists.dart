import '../../models/all_enquiries_model.dart';
import '../../models/bookings_model.dart';
import '../../models/data_model.dart';
import '../../models/gardeneers_model.dart';
import '../../models/offline_enquires.dart';
import '../../models/services_names_model.dart';
import '../colors/app_colors.dart';

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
  static List<AllEnquiriesModel> allEnquiresList = [
    AllEnquiriesModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      serviceOne: "Lawn cutting",
      serviceTwo: "Weeding",
      estValue: "£55",
      areaManager: "Clive Sailsman",
      status: "complete",
    ),
    AllEnquiriesModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      serviceOne: "Lawn cutting",
      serviceTwo: "Weeding",
      estValue: "£55",
      areaManager: "Clive Sailsman",
      status: "waiting",
    ),
    AllEnquiriesModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      serviceOne: "Lawn cutting",
      serviceTwo: "Weeding",
      estValue: "£55",
      areaManager: "Clive Sailsman",
      status: "pending",
    ),
    AllEnquiriesModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      serviceOne: "Lawn cutting",
      serviceTwo: "Weeding",
      estValue: "£55",
      areaManager: "Clive Sailsman",
      status: "complete",
    ),
    AllEnquiriesModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      serviceOne: "Lawn cutting",
      serviceTwo: "Weeding",
      estValue: "£55",
      areaManager: "Clive Sailsman",
      status: "waiting",
    ),
    AllEnquiriesModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      serviceOne: "Lawn cutting",
      serviceTwo: "Weeding",
      estValue: "£55",
      areaManager: "Clive Sailsman",
      status: "pending",
    ),
  ];
  static List<ServicesNames> servicesNamesList = [
    ServicesNames(
      serviceName: "Lawn Cutting",
      containerColor: CColors.greenAccentTwo,
    ),
    ServicesNames(
      serviceName: "Weeding",
      containerColor: CColors.yellowAccentTwo,
    ),
    ServicesNames(
      serviceName: "Waste Removal",
      containerColor: CColors.redAccentColor,
    ),
    ServicesNames(
      serviceName: "Hedge Cutting",
      containerColor: CColors.purpleColor,
    ),
    ServicesNames(
      serviceName: "Jet Washing",
      containerColor: CColors.blueColor,
    ),
    ServicesNames(
      serviceName: "Edging",
      containerColor: CColors.brownColor,
    ),
  ];
}
