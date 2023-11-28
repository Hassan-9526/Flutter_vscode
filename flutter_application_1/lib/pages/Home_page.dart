import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "hassan";
  @override
  Widget build(BuildContext context) {
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
      drawer: const Drawer(
        backgroundColor: Colors.red,
        child: Text("For more queries contact us:03069820579"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        height: 100,
        child: Center(
            child: Container(
                child: Text(
          "For more queries contact us :03069820579",
        ))),
      ),
    );
  }
}
