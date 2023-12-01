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
        title: Text("My First App"),
      ),
      body: Center(
        child: Container(
          color: Colors.deepOrangeAccent,
          child: Text(
            "Welcome to  fultter by $name ",
            style: TextStyle(fontSize: 24.0),
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
      drawerDragStartBehavior: DragStartBehavior.start,
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
