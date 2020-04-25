import 'package:flutter/material.dart';
import 'package:kaiserproject/start.dart';
import 'package:kaiserproject/sign_in.dart';
import 'package:kaiserproject/sign_up.dart';
import 'package:kaiserproject/new_chat.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      body: Padding(
//        padding: EdgeInsets.fromLTRB(100.0, 40.0, 30.0, 10.0),
      body:
      Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'sign up',
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.cyan[50],
            ),  //Divider color is not showing up

            Text(
              'username',
              style:TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.5,
                color: Colors.grey,
              ),
            ),
            TextFormField(
//                    decoration: InputDecoration(
//                        labelText: 'Enter your username'
//                    ),
            ),
            SizedBox(height:30.0),
            Text(
              'password',
              style:TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.5,
                color: Colors.grey,
              ),
            ),
            TextFormField(
//                    decoration: InputDecoration(
//                        labelText: 'Enter your username'
//                    ),
            ),
            Divider(
              height: 30.0,
            ),
            Text(
              'verification pin',
              style:TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.5,
                color: Colors.grey,
              ),
            ),
            TextFormField(
//                    decoration: InputDecoration(
//                        labelText: 'Enter your username'
//                    ),
            ),


            SizedBox(height:100.0),
            Center(
              child: MaterialButton(
                child: Text('Create account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                color: Colors.blue[200],
                elevation: 8,
                highlightElevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 40.0, right: 40.0),
                onPressed: () {
                  //does something
                },
              ),
            ),
          ],
        ),
      ),
//        ),
    );
  }}

