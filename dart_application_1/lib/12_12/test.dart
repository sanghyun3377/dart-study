class Data {
  List<CollectionChartDataList>? _collectionChartDataList;

  Data({List<CollectionChartDataList>? collectionChartDataList}) {
    if (collectionChartDataList != null) {
      this._collectionChartDataList = collectionChartDataList;
    }
  }

  List<CollectionChartDataList>? get collectionChartDataList =>
      _collectionChartDataList;
  set collectionChartDataList(
          List<CollectionChartDataList>? collectionChartDataList) =>
      _collectionChartDataList = collectionChartDataList;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['collectionChartDataList'] != null) {
      _collectionChartDataList = <CollectionChartDataList>[];
      json['collectionChartDataList'].forEach((v) {
        _collectionChartDataList!.add(new CollectionChartDataList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._collectionChartDataList != null) {
      data['collectionChartDataList'] =
          this._collectionChartDataList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CollectionChartDataList {
  String? _collectionName;
  List<CollectionSalePrice>? _collectionSalePrice;

  CollectionChartDataList(
      {String? collectionName,
      List<CollectionSalePrice>? collectionSalePrice}) {
    if (collectionName != null) {
      this._collectionName = collectionName;
    }
    if (collectionSalePrice != null) {
      this._collectionSalePrice = collectionSalePrice;
    }
  }

  String? get collectionName => _collectionName;
  set collectionName(String? collectionName) =>
      _collectionName = collectionName;
  List<CollectionSalePrice>? get collectionSalePrice => _collectionSalePrice;
  set collectionSalePrice(List<CollectionSalePrice>? collectionSalePrice) =>
      _collectionSalePrice = collectionSalePrice;

  CollectionChartDataList.fromJson(Map<String, dynamic> json) {
    _collectionName = json['collectionName'];
    if (json['collectionSalePrice'] != null) {
      _collectionSalePrice = <CollectionSalePrice>[];
      json['collectionSalePrice'].forEach((v) {
        _collectionSalePrice!.add(new CollectionSalePrice.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['collectionName'] = this._collectionName;
    if (this._collectionSalePrice != null) {
      data['collectionSalePrice'] =
          this._collectionSalePrice!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CollectionSalePrice {
  double? _price;
  String? _cvtDatetime;

  CollectionSalePrice({double? price, String? cvtDatetime}) {
    if (price != null) {
      this._price = price;
    }
    if (cvtDatetime != null) {
      this._cvtDatetime = cvtDatetime;
    }
  }

  double? get price => _price;
  set price(double? price) => _price = price;
  String? get cvtDatetime => _cvtDatetime;
  set cvtDatetime(String? cvtDatetime) => _cvtDatetime = cvtDatetime;

  CollectionSalePrice.fromJson(Map<String, dynamic> json) {
    _price = json['price'];
    _cvtDatetime = json['cvtDatetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this._price;
    data['cvtDatetime'] = this._cvtDatetime;
    return data;
  }
}
