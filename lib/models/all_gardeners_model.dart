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
