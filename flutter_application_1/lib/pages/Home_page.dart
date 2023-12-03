import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;

  final String name = "hassan";
  @override
  Widget build(BuildContext context) {
    bool theme = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      // body: Center(
      //   child: Container(
      //     child: Text(
      //       "Welcome to  fultter by $name ",
      //       style: TextStyle(fontSize: 24.0),
      //     ),
      //   ),
      // ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              SizedBox(
                width: 90,
              ),
              Column(
                children: [
                  Icon(CupertinoIcons.phone),
                  Container(child: Text("phone"))
                ],
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Column(
                children: [
                  Icon(CupertinoIcons.location),
                  Container(child: Text("location"))
                ],
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Column(
                children: [
                  Icon(CupertinoIcons.share),
                  Container(child: Text("Share"))
                ],
              )
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Text("back"),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.loginroute);
        },
      ),
      drawer: Mydrawer(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.greenAccent,
        height: 30,
        child: Center(
            child: Container(
                child: Text(
          "For more queries contact us :03069820579",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ))),
      ),
    );
  }
}
