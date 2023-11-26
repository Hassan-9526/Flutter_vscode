import 'package:flutter/material.dart';

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
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        height: 100,
      ),
    );
  }
}
