import 'package:get/get.dart';
import 'package:vpn_app/models/vpn_model.dart';
import 'package:vpn_app/preferences/app_preferences.dart';

class HomeController extends GetxController {
  final Rx<VPNModel> vpnInfo = AppPreferences.vpnModelObj.obs;
}
