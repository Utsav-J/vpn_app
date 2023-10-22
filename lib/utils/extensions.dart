import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpn_app/preferences/app_preferences.dart';

extension AppTheme on ThemeData {
  Color get lightTextColor =>
      AppPreferences.isDarkMode ? Colors.white70 : Colors.black;
  Color get bottomNavigationColor =>
      AppPreferences.isDarkMode ? Colors.white12 : Colors.greenAccent;
}

extension PercentSized on double {
  double get hp => (Get.height * (this / 100));
  double get wp => (Get.width * (this / 100));
}

extension ResponsiveText on double {
  double get sp => (Get.width / 100) * (this / 3);
}

class Palette {
  static Color materialWhite = const Color.fromRGBO(232, 241, 242, 1);
  static Color green10 = const Color.fromRGBO(179, 239, 178, 1);
  static Color green30 = const Color.fromRGBO(122, 158, 126, 1);
  static Color green60 = const Color.fromRGBO(49, 73, 60, 1);
  static Color materialBlack = const Color.fromRGBO(0, 26, 35, 1);
}
