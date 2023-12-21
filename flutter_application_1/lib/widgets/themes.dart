import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
          color: Color.fromRGBO(33, 150, 243, 1),
          centerTitle: true,
          shadowColor: Colors.blueGrey,
          iconTheme: IconThemeData(color: Colors.white)),
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.balooBhai2().fontFamily,
      scrollbarTheme: ScrollbarThemeData(
        trackBorderColor: MaterialStateProperty.all(Colors.blueAccent),
      ));
  static darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.purple,
      appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
      scrollbarTheme: ScrollbarThemeData(
          trackBorderColor: MaterialStatePropertyAll(Colors.blue)));
  static Color cream = Color(0xfff5f5f5);
  static Color darkblue = Color.fromARGB(255, 103, 93, 127);
}
