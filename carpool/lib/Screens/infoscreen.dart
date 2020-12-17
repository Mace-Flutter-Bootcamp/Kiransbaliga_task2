import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  static String id = "infoscreen";

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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
                  'You get ride from!',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 45.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  '📱: 965433822',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Destination',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
