class Store {
  final String addr;
  final String code;
  final String createdAt;
  final double lat;
  final double lng;
  final String name;
  final String remainStat;
  final String stockAt;
  final String type;

  Store({
    required this.addr,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });

  Store copyWith({
    String? addr,
    String? code,
    String? createdAt,
    double? lat,
    double? lng,
    String? name,
    String? remainStat,
    String? stockAt,
    String? type,
  }) =>
      Store(
        addr: addr ?? this.addr,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        name: name ?? this.name,
        remainStat: remainStat ?? this.remainStat,
        stockAt: stockAt ?? this.stockAt,
        type: type ?? this.type,
      );

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        addr: json["addr"],
        code: json["code"],
        createdAt: json["created_at"] ?? '',
        lat: json["lat"],
        lng: json["lng"],
        name: json["name"],
        remainStat: json["remain_stat"] ?? '',
        stockAt: json["stock_at"] ?? '',
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "addr": addr,
        "code": code,
        "created_at": createdAt,
        "lat": lat,
        "lng": lng,
        "name": name,
        "remain_stat": remainStat,
        "stock_at": stockAt,
        "type": type,
      };

  @override
  String toString() {
    return 'Store{'
        'addr: $addr, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, remainStat: $remainStat, stockAt: $stockAt, type: $type}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Store &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          code == other.code &&
          createdAt == other.createdAt &&
          lat == other.lat &&
          lng == other.lng &&
          name == other.name &&
          remainStat == other.remainStat &&
          stockAt == other.stockAt &&
          type == other.type;

  @override
  int get hashCode =>
      addr.hashCode ^
      code.hashCode ^
      createdAt.hashCode ^
      lat.hashCode ^
      lng.hashCode ^
      name.hashCode ^
      remainStat.hashCode ^
      stockAt.hashCode ^
      type.hashCode;
}
