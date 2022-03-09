mixin Assets {
  static AssetIcons get icons => AssetIcons();
  static AssetImages get images => AssetImages();
  static AssetJson get json => AssetJson();
}

class AssetIcons {
  String location = 'assets/icons';
  String get plus => '$location/plus.svg';
  String get bag => '$location/bag.svg';
  String get bicycle => '$location/bicycle.svg';
  String get grid => '$location/grid.svg';
  String get minus => '$location/minus.svg';
  String get menuTile => '$location/menu_tile.svg';
  String get arrowBack => '$location/arrow-left.svg';
  String get locator => '$location/location.svg';
  String get pinLocation => '$location/pin_location.svg';
  String get person => '$location/person.svg';
  String get search => '$location/search.svg';
  String get navigation => '$location/navigation.svg';
}

class AssetFileIcons {
  String location = 'assets/file_icons';
  String get doc => '$location/DOC.svg';
}

class AssetImages {
  String location = 'assets/images';

  String get logo => '$location/logo.png';
  String get pinLocation => '$location/pin_location.png';
}

class AssetJson {
  String location = 'assets/json';
  String get lock => '$location/lock.json';
}
