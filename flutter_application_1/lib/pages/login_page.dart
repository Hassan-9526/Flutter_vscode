import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "hassan";
  bool changeButton = false;
  final _keyname = GlobalKey<FormState>();

  movetonext(BuildContext context) async {
    if (_keyname.currentState!.validate()) {
      setState(() => {
            changeButton = true,
          });
      await Future.delayed(Duration(seconds: 3));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() => {
            changeButton = false,
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // borderRadius: BorderRadius.circular(2300),
      // ignore: prefer_const_constructors
      child: SingleChildScrollView(
        child: Form(
          key: _keyname,
          child: Column(children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.contain),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Welcome to login page $name",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(
            //   height: 20.0,
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 36.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username should not empty";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "password should not be empty";
                    } else if (value.length < 6) {
                      return "minimum length of password should be 6";
                    } else {
                      return null;
                    }
                  },
                  cursorColor: Colors.cyan,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Material(
                  borderRadius: BorderRadius.circular(100.9),
                  color: Colors.tealAccent,
                  child: InkWell(
                      mouseCursor: MaterialStateMouseCursor.textable,
                      highlightColor: Colors.amberAccent,
                      splashColor: Colors.deepPurple,
                      focusColor: Colors.indigoAccent,
                      enableFeedback: true,
                      onTap: () => movetonext(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: changeButton ? 150 : 300,
                        height: 70,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 29,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                      )),
                )
                //               ElevatedButton(
                //                   child: Text(
                //                     "Login",
                //                   ),
                //                   style: TextButton.styleFrom(
                //                     foregroundColor: Colors.black,
                //                     minimumSize: Size(300.0, 50.0),
                //                   ),
                //                   onPressed: () => {
                //                         // Navigator.push(context,
                //                         //     MaterialPageRoute(builder: (context) => HomePage())),
                //                         Navigator.pushNamed(context, MyRoutes.homeroute),
                //                         AnimatedBuilder(animation: animation, builder: builder)
                //                       },
                // )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
