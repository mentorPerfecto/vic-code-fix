/// contractSteak : 0
/// projectCount : 5
/// totalContract : 0
/// totalTrade : 0
/// tradeSteak : 0

class KPI {
  KPI({
    this.contractSteak,
    this.projectCount,
    this.totalContract,
    this.totalTrade,
    this.tradeSteak,});

  KPI.fromJson(dynamic json) {
    contractSteak = json['contractSteak'];
    projectCount = json['projectCount'];
    totalContract = json['totalContract'];
    totalTrade = json['totalTrade'];
    tradeSteak = json['tradeSteak'];
  }
  num? contractSteak;
  num? projectCount;
  num? totalContract;
  num? totalTrade;
  num? tradeSteak;
  KPI copyWith({  num? contractSteak,
    num? projectCount,
    num? totalContract,
    num? totalTrade,
    num? tradeSteak,
  }) => KPI(  contractSteak: contractSteak ?? this.contractSteak,
    projectCount: projectCount ?? this.projectCount,
    totalContract: totalContract ?? this.totalContract,
    totalTrade: totalTrade ?? this.totalTrade,
    tradeSteak: tradeSteak ?? this.tradeSteak,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['contractSteak'] = contractSteak;
    map['projectCount'] = projectCount;
    map['totalContract'] = totalContract;
    map['totalTrade'] = totalTrade;
    map['tradeSteak'] = tradeSteak;
    return map;
  }

}