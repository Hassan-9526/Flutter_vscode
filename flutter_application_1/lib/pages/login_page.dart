import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        // borderRadius: BorderRadius.circular(2300),
        // ignore: prefer_const_constructors
        child: Column(children: [
      Image.asset("assets/images/login_image.png", fit: BoxFit.contain),
      const SizedBox(
        height: 5.0,
      ),
      const Text(
        "Welcome to login page",
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 36.0),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter username", labelText: "Username"),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Password", labelText: "Password"),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            child: Text("Login"),
            // style: TextButton.styleFrom(foregroundColor: Colors.cyan),
            onPressed: () => {print("hello hassan")},
          )
        ]),
      ),
    ]));
  }
}
