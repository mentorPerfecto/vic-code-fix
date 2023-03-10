class SmallRes {
  SmallRes({
    this.success,
    this.data,
    this.message,});

  SmallRes.fromJson(dynamic json) {
    success = json['success'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    message = json['message'];
  }
  bool? success;
  List<Data>? data;
  String? message;
  SmallRes copyWith({  bool? success,
    List<Data>? data,
    String? message,
  }) => SmallRes(  success: success ?? this.success,
    data: data ?? this.data,
    message: message ?? this.message,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['message'] = message;
    return map;
  }

}

/// kpi : {}
/// marketName : "Agriculture"
/// status : "ACTIVE"
/// sectorAvailable : "ALL"
/// slug : "agriculture"
/// deleted : false
/// updatedAt : "2023-03-02T11:39:09.962Z"
/// id : "63ffd3116d780d7ea48f8a17"

class Data {
  Data({
    this.kpi,
    this.marketName,
    this.status,
    this.sectorAvailable,
    this.slug,
    this.deleted,
    this.updatedAt,
    this.id,});

  Data.fromJson(dynamic json) {
    kpi = json['kpi'];
    marketName = json['marketName'];
    status = json['status'];
    sectorAvailable = json['sectorAvailable'];
    slug = json['slug'];
    deleted = json['deleted'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }
  dynamic kpi;
  String? marketName;
  String? status;
  String? sectorAvailable;
  String? slug;
  bool? deleted;
  String? updatedAt;
  String? id;
  Data copyWith({  dynamic kpi,
    String? marketName,
    String? status,
    String? sectorAvailable,
    String? slug,
    bool? deleted,
    String? updatedAt,
    String? id,
  }) => Data(  kpi: kpi ?? this.kpi,
    marketName: marketName ?? this.marketName,
    status: status ?? this.status,
    sectorAvailable: sectorAvailable ?? this.sectorAvailable,
    slug: slug ?? this.slug,
    deleted: deleted ?? this.deleted,
    updatedAt: updatedAt ?? this.updatedAt,
    id: id ?? this.id,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kpi'] = kpi;
    map['marketName'] = marketName;
    map['status'] = status;
    map['sectorAvailable'] = sectorAvailable;
    map['slug'] = slug;
    map['deleted'] = deleted;
    map['updatedAt'] = updatedAt;
    map['id'] = id;
    return map;
  }

}