enum CategoryMenuEnum {
  jackets,
  fleece,
  sweatShirtsAndHoodies,
  sweaters,
  shirts,
  tShirts,
  pantsAndJeans,
}

extension ParseToString on CategoryMenuEnum {
  String toShortString() {
    return toString().split('.').last;
  }
}

extension ParseFromString on String {
  CategoryMenuEnum toBarcodeScannerSettingInfo() {
    return CategoryMenuEnum.values.firstWhere(
      (e) => e.toShortString() == this,
      orElse: () => CategoryMenuEnum.jackets,
    );
  }
}
