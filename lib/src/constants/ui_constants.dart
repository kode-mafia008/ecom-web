import 'package:flutter/material.dart';
import 'package:gmap/src/data/enums/category_menu_enum.dart';
import 'package:gmap/src/data/enums/topbar_menu_item_enum.dart';
import 'package:gmap/src/data/models/category_menu_model.dart';
import 'package:gmap/src/data/models/topbar_menu_item_model.dart';
import '../data/enums/top_nav_menu_enum.dart';
import 'assets_constant.dart';

class UIConstant {
  static const Color kWhite = Color(0xFFFFFFFF);
  static const Color kBlue = Color(0xFF2264D1);
  static const Color bgColor = Color(0xFFF6F6F6);
  static const Color iconColor = Color(0xFF787885);
  static const Color searchBack = Color.fromRGBO(250, 104, 84, 1);
  static const Color fontColor = Color(0xff1D1751);
  static const Color topNavDivider = Color(0xffD8CCCC);
  static const Color containerBgColor = Color(0xffE5E5E5);
  static const Color kAvatar = Color(0xffEDB200);
  static const Color selectedCheckBoxColor = Color(0xff111111);
  static const Color kCFont = Color(0xffE5E5E5);
  static const Color checkBoxBgColor = Color(0xffF2F2F2);
  static const Color checkBoxBorderColor = Color(0xffC4C4C4);
  static const Color inputBackground = Color(0xffF5F5F5);
  static const Color inputIconColor = Color(0xffADADAD);
  static const Color avatarBgColor = Color(0xffFFF9E7);
  static const Color selectedAvatarBgColor = Color(0xffEEFFF4);
  static const Color avatarBorderColor = Color(0xffEDB200);
  static const Color selectedAvatarBorderColor = Color(0xff009120);

  //topbar menu
  // Bottom Navigation Menu Pages
  static final Map<TopBarMenuItemEnum, TopbarMenuItemModel> topBarMenuItems = {
    TopBarMenuItemEnum.fastDelivery: TopbarMenuItemModel(
      title: 'Fast Delivery',
      icon: Assets.icons.bicycle,
    ),
    TopBarMenuItemEnum.location: TopbarMenuItemModel(
      title: 'Pune',
      icon: Assets.icons.pinLocation,
    ),
    TopBarMenuItemEnum.account: TopbarMenuItemModel(
      title: 'Account',
      icon: Assets.icons.person,
    ),
    TopBarMenuItemEnum.bag: TopbarMenuItemModel(
      title: 'Bag',
      icon: Assets.icons.bag,
    ),
  };
  static final Map<TopNavMenuEnum, TopbarMenuItemModel> topNavMenuItems = {
    TopNavMenuEnum.fastDelivery: TopbarMenuItemModel(
      title: 'Fast Delivery',
    ),
    TopNavMenuEnum.flowerBouquets: TopbarMenuItemModel(
      title: 'Flower Bouquets',
    ),
    TopNavMenuEnum.cakes: TopbarMenuItemModel(
      title: 'Cakes',
    ),
    TopNavMenuEnum.giftBundles: TopbarMenuItemModel(
      title: 'Gift Bundles',
    ),
    TopNavMenuEnum.personalized: TopbarMenuItemModel(
      title: 'Personalized',
    ),
    TopNavMenuEnum.createYourOwn: TopbarMenuItemModel(
      title: 'Create your own',
    ),
  };
  static final Map<CategoryMenuEnum, CategoryMenuItemModel>
      categoryFilterMenuItems = {
    CategoryMenuEnum.jackets: CategoryMenuItemModel(
      title: 'Jacket',
    ),
    CategoryMenuEnum.fleece: CategoryMenuItemModel(
      title: 'Fleece',
    ),
    CategoryMenuEnum.sweatShirtsAndHoodies: CategoryMenuItemModel(
      title: 'Sweatshirts & Hoodies',
    ),
    CategoryMenuEnum.sweaters: CategoryMenuItemModel(
      title: 'Sweaters',
    ),
    CategoryMenuEnum.shirts: CategoryMenuItemModel(
      title: 'Personalized',
    ),
    CategoryMenuEnum.tShirts: CategoryMenuItemModel(
      title: 'T-Shirts',
    ),
    CategoryMenuEnum.pantsAndJeans: CategoryMenuItemModel(
      title: 'Pants & Jeans',
    ),
  };
  static final Map<String, Color> colorFilterItems = {
    'Blue': Colors.blue,
    'Grey': Colors.grey,
    'Green': Colors.green,
    'Orange': Colors.orange,
    'Pink': Colors.pink,
    'Red': Colors.red,
    'Black': Colors.black,
    'Purple': Colors.purple,
    'Deep Purple': Colors.deepPurple,
    'Deep Orange': Colors.deepOrangeAccent,
  };
}
