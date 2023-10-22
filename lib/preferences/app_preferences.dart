import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:vpn_app/models/vpn_model.dart';

class AppPreferences {
  static late Box dataBox;
  static Future<void> initHive() async {
    await Hive.initFlutter();
    dataBox = await Hive.openBox('data');
  }

  static bool get isDarkMode => dataBox.get('isDarkMode') ?? false;
  static set isDarkMode(bool darkValue) => dataBox.put('isDarkMode', darkValue);

  // storing connection state and info  of single selected vpn
  static VPNModel get vpnModelObj =>
      VPNModel.fromJson(jsonDecode(dataBox.get('vpn') ?? '{}'));
  static set vpnModelObj(VPNModel value) =>
      dataBox.put('vpn', jsonEncode(value));

  // storing all vpn server details
  static List<VPNModel> get vpnList {
    List<VPNModel> tempList = [];

    final vpnData = jsonDecode(dataBox.get('vpnList') ?? '[]');
    for (final data in vpnData) {
      tempList.add(VPNModel.fromJson(data));
    }

    return tempList;
  }

  static set vpnList(List<VPNModel> valueList) =>
      dataBox.put('vpnList', jsonEncode(valueList));
}
