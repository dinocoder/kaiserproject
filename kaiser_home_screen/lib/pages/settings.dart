import 'dart:ui';

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-1,-0.35),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.settings),
                iconSize: 100,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.95,-0.95),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: (){},
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.95,0.25),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                onPressed: (){},
                backgroundColor: Colors.red,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-1,0.8),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: IconButton(
                icon: Icon(Icons.mail),
                iconSize: 100,
                onPressed: (){},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150,35,30,30),
            child: Container(
              child: Text(
                'Location',
                style: TextStyle(
                  fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150,110,30,30),
            child: Container(
              child: Text(
                'Notification',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150,185,30,30),
            child: Container(
              child: Text(
                'Privacy',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150,255,30,30),
            child: Container(
              child: Text(
                'Help Find',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160,540,30,30),
            child: Container(
              child: Text(
                'Log Out',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          VerticalDivider(
            width: 250,
            thickness: 2,
            color: Colors.black,
          ),
          Divider(
            height: 2,
            thickness: 2,
            color: Colors.black,
            indent: 125,
          ),
        ],
      ),
    );
  }
}

