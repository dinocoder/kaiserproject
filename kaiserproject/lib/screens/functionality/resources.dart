import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/shared/shared_elements.dart';

class Resources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//        body: Padding(
//          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.purple[200],
            height: 80,
            width: 420,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(130, 15, 140, 50),
                    child: Text('Resources',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 30.0,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 70, 40, 0),
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.purple[200],
                  child: Text(
                    'Closest Clinics',
                    style: TextStyle(fontSize: 30.0),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 40.0, right: 40.0),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(50.0, 200.0, 40.0, 100.0),
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.purple[200],
                  child: Text(
                    'Prevention Hotlines',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 40.0, right: 40.0),
                ),
              ),
            ],
          ),
        ],
      ),
        appBar: defaultAppBar()
    );
  }
}

