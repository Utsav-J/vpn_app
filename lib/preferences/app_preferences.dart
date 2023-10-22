import 'package:hive_flutter/hive_flutter.dart';

class AppPreferences {
  static late Box dataBox;
  static Future<void> initHive() async {
    await Hive.initFlutter();
    dataBox = await Hive.openBox('data');
  }

  static bool get isDarkMode => dataBox.get('isDarkMode') ?? false;
  static set isDarkMode(bool darkValue) => dataBox.put('isDarkMode', darkValue);
}
