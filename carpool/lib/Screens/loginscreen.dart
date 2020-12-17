import 'package:carpool/Screens/infoscreen.dart';
import 'package:carpool/components/txtfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Start point!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Txtfield(
                    hinttext: 'Enter Starting point',
                    b: false,
                    onchanged: (value) {
                      print("value");
                    }),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Destination point!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Txtfield(
                    hinttext: 'Enter destination',
                    b: false,
                    onchanged: (value) {
                      print("value");
                    }),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Enter name',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Txtfield(
                    hinttext: 'your name',
                    b: false,
                    onchanged: (value) {
                      print("value");
                    }),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'phone number',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Txtfield(
                    hinttext: 'Enter contact number',
                    b: false,
                    onchanged: (value) {
                      print("value");
                    }),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context,InfoScreen.id);
                  },
                  color: Colors.lightBlue,
                  child: Text(
                    'Request ride',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
