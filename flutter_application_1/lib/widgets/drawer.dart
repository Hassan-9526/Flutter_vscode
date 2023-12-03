import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
  final imageurl =
      "https://unsplash.com/photos/a-person-standing-on-top-of-a-snow-covered-mountain-HHYpIR68Eds";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.purple,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Hassan amir",
                style: TextStyle(
                  fontSize: 23.0,
                ),
              ),
              accountEmail: Text(
                "ha4383731@gmail.com",
                style: TextStyle(fontSize: 23.0),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/login_image.png"),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Login page",
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              iconColor: Colors.cyan,
              // tileColor: Color.fromARGB(23, 54, 78, 178),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginroute);
              },
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              iconColor: Colors.cyan,
              // tileColor: Color.fromARGB(23, 54, 78, 178),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginroute);
              },
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              iconColor: Colors.cyan,
              // tileColor: Color.fromARGB(22, 35, 37, 45),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginroute);
              },
            )
          ],
        )

        // ),
        //   semanticLabel: AutofillHints.birthday,
        //   backgroundColor: Color.fromARGB(255, 41, 53, 59),
        //   child: Text("For more queries contact us:03069820579"),
        //   shape: CircleBorder(
        //       side: BorderSide(
        //           style: BorderStyle.solid,
        //           strokeAlign: BorderSide.strokeAlignCenter,
        //           color: Colors.white,
        //           width: 10)),
        //   elevation: 48.0,
        //   shadowColor: Colors.white38,
        );
  }
}
