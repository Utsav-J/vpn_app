import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_app/preferences/app_preferences.dart';
import 'package:vpn_app/screens/home_screen.dart';
import 'package:vpn_app/utils/extensions.dart';
// import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'utsaVPN',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
            onSurface: Palette.green10, background: Palette.materialWhite),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Palette.materialBlack),
          titleTextStyle: GoogleFonts.lato(color: Palette.materialBlack),
          color: Palette.green10,
          centerTitle: true,
          elevation: 3,
        ),
        textTheme: TextTheme(
          titleMedium: GoogleFonts.lato(
            fontSize: 12.0.sp,
            color: Palette.green60,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: GoogleFonts.lato(
            fontSize: 11.0.sp,
            color: Palette.green60,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      themeMode: AppPreferences.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            onSurface: Palette.green60, background: Palette.materialBlack),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Palette.materialWhite),
          titleTextStyle: GoogleFonts.lato(color: Palette.materialWhite),
          color: Palette.green60,
          centerTitle: true,
          elevation: 3,
        ),
        textTheme: TextTheme(
          titleMedium: GoogleFonts.lato(
            fontSize: 12.0.sp,
            color: Palette.green10,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: GoogleFonts.lato(
            fontSize: 11.0.sp,
            color: Palette.green10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
