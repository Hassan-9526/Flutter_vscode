import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login page",
            style: TextStyle(
                fontSize: 40,
                color: Colors.blueGrey,
                backgroundColor: Colors.white60,
                fontWeight: FontWeight.w900,
                letterSpacing: 3)),
      ),
    );
  }
}
