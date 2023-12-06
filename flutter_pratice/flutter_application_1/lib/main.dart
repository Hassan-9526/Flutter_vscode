import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  // List <dynamic> pages=[

  // ]
  Widget build(BuildContext context) {
    return ConcentricPageView(
      colors: [Colors.red, Colors.white],
      itemBuilder: (index) {
        return Container();
      },
    );
  }
}
