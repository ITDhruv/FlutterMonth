import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      hintColor: darkBlue,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        // ignore: deprecated_member_use
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      hintColor: Colors.white,
      // buttonColor: lightBluishColor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        // ignore: deprecated_member_use
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.white),
      ));

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBlue = const Color.fromARGB(255, 31, 29, 45);
  static Color lightBluishColor = Vx.indigo400;
}
