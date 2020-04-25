import 'dart:ui';
import 'package:kaiserhomescreen/main.dart';
import 'package:flutter/material.dart';
import 'package:kaiserhomescreen/pages/settings.dart';

class KaiserHomeScreen extends StatefulWidget {
  @override
  _KaiserHomeScreenState createState() => _KaiserHomeScreenState();
}

class _KaiserHomeScreenState extends State<KaiserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: Text('App Name'),
        centerTitle: true,
        backgroundColor: Colors.grey[350],
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0,-0.55),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                onPressed: (){},
                child: Center(
                  child: Text(
                    'All About You',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.85,0),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                onPressed: (){},
                child: Center(
                  child: Text(
                    'General',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.55,0.55),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                onPressed: (){},
                child: Center(
                  child: Text(
                    'Group Forums',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.55,0.55),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                onPressed: (){},
                child: Center(
                  child: Text(
                    'How Was Your Day?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.85,0),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                onPressed: (){},
                child: Center(
                  child: Text(
                    'Resources',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,0),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: FloatingActionButton(
                onPressed: (){},
                child: Center(
                  child: Text(
                    'Search',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-1,-1),
            child: Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/ProfileScreen');
                },
                child: Center(
                  child: Text(
                    'Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1,-1),
            child: Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/ContactUs');
                },
                child: Center(
                  child: Text(
                    'Contact Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

