import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_app/preferences/app_preferences.dart';
// import 'package:vpn_app/screens/bottom_navbar.dart';
import 'package:vpn_app/utils/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  locationSelectorBar(context) {
    return SafeArea(
      child: Semantics(
        button: true,
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Theme.of(context).colorScheme.onSurface,
            padding: EdgeInsets.symmetric(horizontal: 4.0.wp),
            height: 10.0.hp,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.flag,
                    color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                    size: 20.0.sp,
                  ),
                ),
                SizedBox(
                  width: 10.0.wp,
                ),
                Text(
                  "Select Region",
                  style: GoogleFonts.lato(
                      fontSize: 18.0.sp,
                      color:
                          Theme.of(context).appBarTheme.titleTextStyle!.color),
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                  size: 20.0.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "utsaVPN",
          style: TextStyle(fontSize: 14.0.sp),
        ),
        // backgroundColor: Palette.materialWhite,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.perm_device_info),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(
                  AppPreferences.isDarkMode ? ThemeMode.light : ThemeMode.dark);
              AppPreferences.isDarkMode = !AppPreferences.isDarkMode;
            },
            icon: const Icon(Icons.brightness_2_outlined),
          )
        ],
      ),
      bottomNavigationBar: locationSelectorBar(context),
    );
  }
}

extension AppTheme on ThemeData {
  Color get lightTextColor =>
      AppPreferences.isDarkMode ? Colors.white70 : Colors.black;
  Color get bottomNavigationColor =>
      AppPreferences.isDarkMode ? Colors.white12 : Colors.greenAccent;
}
