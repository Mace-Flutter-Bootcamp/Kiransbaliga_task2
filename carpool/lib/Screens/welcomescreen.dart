import 'package:carpool/Screens/loginscreen.dart';
import 'package:carpool/Screens/registerscreen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white12,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Carpool!',
                  style: TextStyle(
                    fontSize:88,
                    fontWeight: FontWeight.w900,
                    color: Colors.amber,
                  ),
                ),
              ),
              SizedBox(
                height: 98.0,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                child: Text(
                  'Need Ride!',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                child: Text(
                  'Start Ride!',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
