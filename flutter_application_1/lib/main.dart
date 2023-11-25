import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringvegtables(thaila: true);
    return MaterialApp(
      // home: HomePage(),

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.balooBhai2().fontFamily,
      ),

      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.grey),
      // initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }

  void bringvegtables({bool thaila = false, int ruppes = 100}) {
    print("The value of thaila is $thaila and you will give me $ruppes rs");
  }
}
