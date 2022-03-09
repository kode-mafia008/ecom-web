enum TopNavMenuEnum {
  fastDelivery,
  flowerBouquets,
  cakes,
  giftBundles,
  personalized,
  createYourOwn,
}

extension ParseToString on TopNavMenuEnum {
  String toShortString() {
    return toString().split('.').last;
  }
}

extension ParseFromString on String {
  TopNavMenuEnum toBarcodeScannerSettingInfo() {
    return TopNavMenuEnum.values.firstWhere(
      (e) => e.toShortString() == this,
      orElse: () => TopNavMenuEnum.fastDelivery,
    );
  }
}