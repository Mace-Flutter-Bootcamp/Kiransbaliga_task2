import 'package:carpool/Screens/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:carpool/components/data.dart';

class InfoScreen extends StatefulWidget {
  static String id = "infoscreen";

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  String name="Joy", phone="8533224422", dest="TVM";
  void setresult() {
    if (getorneed == 0) {
      for (NeedRide i in nr) {
        if (i.dest == s) {
          name = i.name;
          phone = i.phone;
          dest = i.dest;
        }
      }
    } else {
      for (GetRide i in gr) {
        if (i.dest == s) {
          name = i.name;
          phone = i.phone;
          dest = i.dest;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  getorneed == 0 ? 'You get ride from !' : 'You give ride to !',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 45.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  '$name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  '📱: $phone',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  '$dest',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, WelcomeScreen.id);
                    },
                    child: Text('Go Home!'),
                    color: Colors.lightBlue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
