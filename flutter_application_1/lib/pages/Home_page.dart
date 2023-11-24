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
          child: Text("Welcome to $days days of fultter by $name "),
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
