import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.deepPurple.shade300,
          centerTitle: true,
          shadowColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white)),
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.balooBhai2().fontFamily,
      scrollbarTheme: ScrollbarThemeData(
        trackBorderColor: MaterialStateProperty.all(Colors.blueAccent),
      ));
  static darkTheme(BuildContext context) => ThemeData(
      cardColor: Colors.grey,
      canvasColor: Colors.blueGrey,
      brightness: Brightness.dark,
      primarySwatch: Colors.purple,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      scrollbarTheme: ScrollbarThemeData(
          trackBorderColor: MaterialStatePropertyAll(Colors.blue)));
  static Color cream = Colors.deepPurple.shade50;
  // static Color cream = Color(0xfff5f5f5);
  // static Color darkblue = Color.fromARGB(255, 103, 93, 127);
  static Color darkblue = Color(0xff403b58);
}
