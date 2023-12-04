import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lighttheme(context),

      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeroute,

      routes: {
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
      },
    );
  }

  void bringvegtables({bool thaila = false, int ruppes = 100}) {
    print("The value of thaila is $thaila and you will give me $ruppes rs");
  }
}
