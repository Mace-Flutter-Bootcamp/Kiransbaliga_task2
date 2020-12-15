import 'package:carpool/Screens/infoscreen.dart';
import 'package:carpool/Screens/loginscreen.dart';
import 'package:carpool/Screens/registerscreen.dart';
import 'package:flutter/material.dart';

import 'Screens/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute:WelcomeScreen.id,
      routes:{
          WelcomeScreen.id:(context)=> WelcomeScreen(),
          LoginScreen.id:(context)=> WelcomeScreen(),
          RegistrationScreen.id:(context)=> WelcomeScreen(),
          InfoScreen.id:(context)=> WelcomeScreen(),

      },
    );
  }
}
