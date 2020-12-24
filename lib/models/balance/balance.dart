import 'package:flutter/foundation.dart';

class Balance {
  Balance({
    @required this.res,
    this.jae,
    this.nesk,
    this.lossInKwt,
    this.lossInPercent,
    this.stationBalanceList,
  });
  final String res;
  final double jae;
  final double nesk;
  final double lossInKwt;
  final double lossInPercent;
  final List<StationBalance> stationBalanceList;
}

class StationBalance {
  StationBalance({
    @required this.substation,
    this.currentKwt,
    this.beginingMonth,
    this.notBalanse,
    this.subStationBalanceList,
  });
  final String substation;
  final double currentKwt;
  final double beginingMonth;
  final double notBalanse;
  final List<SubStationBalance> subStationBalanceList;
}

class SubStationBalance {
  SubStationBalance({
    @required this.substation,
    @required this.pu,
    @required this.ktt,
    this.startCounterReading,
    this.endCounterReading,
    this.consumption,
    this.beginingMonth,
  });
  final String substation;
  final String pu;
  final String ktt;
  final double startCounterReading;
  final double endCounterReading;
  final double consumption;
  final double beginingMonth;
}
