import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
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
                'Name:',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150,65,30,30),
            child: Container(
              child: Text(
                'Display Name:',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150,165,30,30),
            child: Container(
              child: Text(
                'Phone Number:',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150,195,30,30),
            child: Container(
              child: Text(
                'Email:',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160,305,30,30),
            child: Container(
              child: Text(
                'More Information:',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160,340,30,30),
            child: Container(
              child: Text(
                'Show Information:',
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
            height: 2000,
            thickness: 2,
            color: Colors.black,
            indent: 125,
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

