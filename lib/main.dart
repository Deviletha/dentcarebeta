import 'package:dentcarebeta/theme/colors.dart';
import 'package:dentcarebeta/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DentCare',
      theme: _buildTheme(Brightness.light),
      home: SplashScreen(),
    );
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
      textTheme: GoogleFonts.robotoTextTheme(baseTheme.textTheme),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(ColorT.themeColor),
        elevation: 0,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(ColorT.themeColor),
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
      ),
      drawerTheme: DrawerThemeData(),
      focusColor: Color(ColorT.themeColor),
      primaryColor: Color(ColorT.themeColor));
}
