import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(

      child:Center(
        child: Container(
          color: Colors.amberAccent,
          child: const Text("Welcome to 30 days of fultter"),
          ),
      )
      ),
    );
  }
} 