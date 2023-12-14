// ignore_for_file: public_member_api_docs, sort_constructors_first
class Stores {
  String addr;
  String code;
  String? createdAt;
  double lat;
  double lng;
  String name;
  String? remainStat;
  String? stockAt;
  String type;
  Stores({
    required this.addr,
    required this.code,
    this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });

  factory Stores.fromJson(Map<String, dynamic> json) {
    return Stores(
      addr: json['addr'] as String,
      code: json['code'] as String,
      createdAt:
          json['created_at'] != null ? json['created_at'] as String : null,
      lat: json['lat'] as double,
      lng: json['lng'] as double,
      name: json['name'] as String,
      remainStat:
          json['remain_stat'] != null ? json['remain_stat'] as String : null,
      stockAt: json['stock_at'] != null ? json['stock_at'] as String : null,
      type: json['type'] as String,
    );
  }
}
