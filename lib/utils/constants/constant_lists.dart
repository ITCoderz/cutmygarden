import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/all_enquiries_model.dart';
import '../../models/all_gardeners_model.dart';
import '../../models/bookings_model.dart';
import '../../models/client_model.dart';
import '../../models/communication_model.dart';
import '../../models/data_model.dart';
import '../../models/gardeners_model.dart';
import '../../models/offline_enquires.dart';
import '../../models/review_model.dart';
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
  static List<DataModel> revenueDataList = [
    DataModel(
      dataType: "Daily Revenue",
      dataValue: "£3000",
    ),
    DataModel(
      dataType: "Weekly Revenue",
      dataValue: "£21,000",
    ),
    DataModel(
      dataType: "Monthly Revenue",
      dataValue: "£84,000",
    ),
    DataModel(
      dataType: "Eskrow",
      dataValue: "£10,000",
    ),
    DataModel(
      dataType: "Clients",
      dataValue: "1,000,000",
    ),
    DataModel(
      dataType: "Subscribed",
      dataValue: "9,000,00",
    ),
    DataModel(
      dataType: "Life Time Value",
      dataValue: "£3000",
    ),
    DataModel(
      dataType: "CPA",
      dataValue: "£3000",
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
  static List<GardenerReviewModel> gardenerReviewList = [
    GardenerReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      rating: 3.5,
    ),
    GardenerReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      rating: 4.3,
    ),
    GardenerReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      rating: 4.7,
    ),
    GardenerReviewModel(
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

  static List<ClientModel> clientList = [
    ClientModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      frequency: "Weekly",
      estValue: "£55",
      gardener: "Clive Sailsman",
    ),
    ClientModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      frequency: "Weekly",
      estValue: "£55",
      gardener: "Clive Sailsman",
    ),
    ClientModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      address: "1 Fieldhouse Road",
      postCode: "WV4 7ST",
      city: "Wolverhampton",
      frequency: "Weekly",
      estValue: "£55",
      gardener: "Clive Sailsman",
    ),
  ];
  static List<ReviewModel> reviewList = [
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 5,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 4,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 3,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 5,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 4,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 5,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 2,
    ),
    ReviewModel(
      name: "Theodore Hoffman",
      date: "01/01/01",
      time: "12:00pm",
      city: "Wolverhampton",
      gardener: "Clive Sailsman",
      rating: 3,
    ),
  ];
  static List<CommentModel> commentReviewList = [
    CommentModel(
      reviewerName: "Theodore Hoffman",
      date: "01/01/23 ",
      time: "00:00",
      comment:
          "Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by",
      rating: 5,
    ),
    CommentModel(
      reviewerName: "Theodore Hoffman",
      date: "01/01/23 ",
      time: "00:00",
      comment:
          "Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by",
      rating: 3,
    ),
    CommentModel(
      reviewerName: "Theodore Hoffman",
      date: "01/01/23 ",
      time: "00:00",
      comment:
          "Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by",
      rating: 4,
    ),
    CommentModel(
      reviewerName: "Theodore Hoffman",
      date: "01/01/23 ",
      time: "00:00",
      comment:
          "Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by Amazing service every time they come by",
      rating: 2,
    ),
  ];

  static List<ChatsModel> chatsCategoryList = [
    ChatsModel(
      chatTypeName: "Reviews",
      noOfChats: 10,
    ),
    ChatsModel(
      chatTypeName: "FAQ",
      noOfChats: 30,
    ),
    ChatsModel(
      chatTypeName: "Dispute",
      noOfChats: 5,
    ),
    ChatsModel(
      chatTypeName: "Fuzey",
      noOfChats: 1,
    ),
  ];
  static List<ChartData> monthlyRevenueData = [
    ChartData(
      'Jan',
      5,
    ),
    ChartData(
      'Feb',
      6,
    ),
    ChartData(
      'Mar',
      7,
    ),
    ChartData(
      'Apr',
      8,
    ),
    ChartData(
      'May',
      9,
    ),
    ChartData(
      'Jun',
      9,
    ),
    ChartData(
      'Jul',
      9,
    ),
    ChartData(
      'Aug',
      9,
    ),
    ChartData(
      'Sep',
      9,
    ),
    ChartData(
      'Oct',
      9,
    ),
    ChartData(
      'Nov',
      8,
    ),
    ChartData(
      'Dec',
      7,
    ),
  ];
  static List<ChartData> clientFrequencyData = [
    ChartData(
      'Weekly',
      6,
    ),
    ChartData(
      'Fortnightly',
      7,
    ),
    ChartData(
      'Monthy',
      7,
    ),
    ChartData(
      'One Off',
      8,
    ),
  ];
  static List<ChartData> revenuePerformanceData = [
    ChartData(
      'Wolverhampton',
      6,
    ),
    ChartData(
      'Birmingham',
      7,
    ),
    ChartData(
      'Manchester',
      7,
    ),
    ChartData(
      'London',
      8,
    ),
  ];
  static List<ChartData> topServicesData = [
    ChartData(
      'Lawn mowing',
      0.9,
    ),
    ChartData(
      'Weeding',
      0.8,
    ),
    ChartData(
      'Hedge cutting ',
      0.4,
    ),
    ChartData(
      'Waste removal',
      0.4,
    ),
    ChartData(
      'Edging ',
      0.5,
    ),
    ChartData(
      'Reseeding',
      0.7,
    ),
  ];
}
