import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/all_enquiries_model.dart';
import '../../models/all_gardeners_model.dart';
import '../../models/bookings_model.dart';
import '../../models/data_model.dart';
import '../../models/gardeneers_model.dart';
import '../../models/offline_enquires.dart';
import '../../models/services_names_model.dart';
import '../../models/side_menu_model.dart';
import '../colors/app_colors.dart';

class ConstantLists {
  ConstantLists._();

  static List<SideMenuModel> menuList = [
    SideMenuModel(
      menuTitle: "Dashboard",
      iconData: Icons.grid_view_outlined,
    ),
    SideMenuModel(
      menuTitle: "Booking",
      iconData: FontAwesomeIcons.calendar,
    ),
    SideMenuModel(
      menuTitle: "Enquiries",
      iconData: FontAwesomeIcons.phoneVolume,
    ),
    SideMenuModel(
      menuTitle: "Gardeners",
      iconData: FontAwesomeIcons.userCheck,
    ),
    SideMenuModel(
      menuTitle: "Clients",
      iconData: FontAwesomeIcons.userGroup,
    ),
    SideMenuModel(
      menuTitle: "Revenue",
      iconData: FontAwesomeIcons.arrowTrendUp,
    ),
    SideMenuModel(
      menuTitle: "Communication",
      iconData: FontAwesomeIcons.message,
    ),
    SideMenuModel(
      menuTitle: "Reviews",
      iconData: FontAwesomeIcons.star,
    ),
    SideMenuModel(
      menuTitle: "Report",
      iconData: FontAwesomeIcons.globe,
    ),
    SideMenuModel(
      menuTitle: "Settings",
      iconData: FontAwesomeIcons.gear,
    ),
  ];

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
  static List<DataModel> reportDataList = [
    DataModel(
      dataType: "Downloads",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "Website Visits",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "Users in database ",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "Gardeners",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "Instagram",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "Facebook",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "YouTube",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "TikTok",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "TikTok",
      dataValue: "1,000,000",
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
  static List<AllGardenerDisplayModel> allGardenersList = [
    AllGardenerDisplayModel(
      cityName: "Wolverhampton",
      allGardenersList: [
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: true,
          flyers: true,
          livePortal: true,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: false,
          vanDecals: false,
          equipment: false,
          insurance: false,
          dbs: false,
          uniform: false,
          flyers: false,
          livePortal: false,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: false,
          flyers: false,
          livePortal: true,
        ),
      ],
    ),
    AllGardenerDisplayModel(
      cityName: "Birmingham",
      allGardenersList: [
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: true,
          flyers: true,
          livePortal: true,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: false,
          vanDecals: false,
          equipment: false,
          insurance: false,
          dbs: false,
          uniform: false,
          flyers: false,
          livePortal: false,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: false,
          flyers: false,
          livePortal: true,
        ),
      ],
    ),
    AllGardenerDisplayModel(
      cityName: "London",
      allGardenersList: [
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: true,
          flyers: true,
          livePortal: true,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: false,
          vanDecals: false,
          equipment: false,
          insurance: false,
          dbs: false,
          uniform: false,
          flyers: false,
          livePortal: false,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: false,
          flyers: false,
          livePortal: true,
        ),
      ],
    ),
    AllGardenerDisplayModel(
      cityName: "Manchester",
      allGardenersList: [
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: true,
          flyers: true,
          livePortal: true,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: false,
          vanDecals: false,
          equipment: false,
          insurance: false,
          dbs: false,
          uniform: false,
          flyers: false,
          livePortal: false,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: false,
          flyers: false,
          livePortal: true,
        ),
      ],
    ),
    AllGardenerDisplayModel(
      cityName: "Bradford",
      allGardenersList: [
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: true,
          flyers: true,
          livePortal: true,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: false,
          vanDecals: false,
          equipment: false,
          insurance: false,
          dbs: false,
          uniform: false,
          flyers: false,
          livePortal: false,
        ),
        AllGardenersAttributesListModel(
          gardenerName: "Theodore Hoffman",
          setUp: true,
          training: true,
          cmgApp: true,
          van: true,
          vanDecals: true,
          equipment: true,
          insurance: true,
          dbs: true,
          uniform: false,
          flyers: false,
          livePortal: true,
        ),
      ],
    ),
  ];
  static List<ReviewModel> gardenerReviewList = [
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      rating: 3.5,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      rating: 4.3,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      rating: 4.7,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      rating: 4.5,
    ),
  ];

  static List<String> weekDaysList = [
    "",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  static List<JobStatus> jobStatus = [
    JobStatus(jobOneStatus: [
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Canceled",
      "Job Complete",
      "Job Complete",
    ], jobTwoStatus: [
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Canceled",
      "Job Complete",
      "Job Complete",
      "Job Complete",
    ], jobThreeStatus: [
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Complete",
    ], jobFourStatus: [
      "Standard Availability",
      "Job Complete",
      "Job Complete",
      "Job Complete",
      "Job Canceled",
      "Job Complete",
      "Standard Availability",
    ], jobFiveStatus: [
      "Great Availability",
      "Great Availability",
      "Job Complete",
      "Job Canceled",
      "Job Complete",
      "Job Complete",
      "Great Availability",
    ], jobSixStatus: [
      "Great Availability",
      "Great Availability",
      "Great Availability",
      "Job Complete",
      "Job Complete",
      "Job Canceled",
      "Great Availability",
    ], jobSevenStatus: [
      "Top Availability",
      "Top Availability",
      "Top Availability",
      "Top Availability",
      "Job Canceled",
      "Job Complete",
      "Top Availability",
    ], jobEightStatus: [
      "Top Availability",
      "Top Availability",
      "Top Availability",
      "Top Availability",
      "Top Availability",
      "Job Canceled",
      "Top Availability",
    ])
  ];

  static List<String> statusStringsList = [
    "Standard Availability",
    "Great Availability",
    "Top Availability",
    "Job Complete",
    "Job Canceled",
  ];
  static List<ChartData> revenueData = [
    ChartData('Mon', 180),
    ChartData('Tue', 190),
    ChartData('Wed', 220),
    ChartData('Thu', 310),
    ChartData('Fri', 320),
    ChartData('Sat', 310),
    ChartData('Sun', 170),
  ];
}
