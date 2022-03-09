enum TopBarMenuItemEnum {
  fastDelivery,
  location,
  account,
  bag,
}

extension ParseToString on TopBarMenuItemEnum {
  String toShortString() {
    return toString().split('.').last;
  }
}

extension ParseFromString on String {
  TopBarMenuItemEnum toBarcodeScannerSettingInfo() {
    return TopBarMenuItemEnum.values.firstWhere(
      (e) => e.toShortString() == this,
      orElse: () => TopBarMenuItemEnum.fastDelivery,
    );
  }
}
