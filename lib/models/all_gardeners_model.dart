class AllGardenerDisplayModel {
  String cityName;

  List<AllGardenersAttributesListModel> allGardenersList;

  AllGardenerDisplayModel({
    required this.cityName,
    required this.allGardenersList,
  });
}

class AllGardenersAttributesListModel {
  String gardenerName;
  bool setUp,
      training,
      cmgApp,
      van,
      vanDecals,
      equipment,
      insurance,
      dbs,
      uniform,
      flyers,
      livePortal;

  AllGardenersAttributesListModel({
    required this.gardenerName,
    required this.setUp,
    required this.training,
    required this.cmgApp,
    required this.van,
    required this.vanDecals,
    required this.equipment,
    required this.insurance,
    required this.dbs,
    required this.uniform,
    required this.flyers,
    required this.livePortal,
  });
}

class ReviewModel {
  String name, date, time;

  double rating;

  ReviewModel({
    required this.name,
    required this.date,
    required this.time,
    required this.rating,
  });
}

class JobStatus {
  List<String> jobOneStatus,
      jobTwoStatus,
      jobThreeStatus,
      jobFourStatus,
      jobFiveStatus,
      jobSixStatus,
      jobSevenStatus,
      jobEightStatus;

  JobStatus({
    required this.jobOneStatus,
    required this.jobTwoStatus,
    required this.jobThreeStatus,
    required this.jobFourStatus,
    required this.jobFiveStatus,
    required this.jobSixStatus,
    required this.jobSevenStatus,
    required this.jobEightStatus,
  });
}
class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}