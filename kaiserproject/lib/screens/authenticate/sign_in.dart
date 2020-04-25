import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/home/home.dart';
import 'package:kaiserproject/screens/authenticate/sign_in.dart';
import 'package:kaiserproject/screens/authenticate/sign_up.dart';
import 'package:kaiserproject/services/auth.dart';
import 'package:kaiserproject/models/user.dart';
import 'package:kaiserproject/screens/home/start.dart';
import 'package:kaiserproject/screens/authenticate/authenticate.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BaseApp(),
        routes: <String, WidgetBuilder>{
          '/start': (context) => Start(),
//          '/home': (context) => Home(),
        }
    );
  }
}

class BaseApp extends StatefulWidget {
  @override
  _BaseAppState createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {

  final AuthService _auth = AuthService();

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
            FlatButton(
              color: Colors.grey[200],
              onPressed: () {
                Navigator.pushNamed(context, '/start');
              },
              child: Column(
                children: <Widget>[
                  Icon(Icons.arrow_back),
                ],
              ),
            ),
            Center(
              child: Text(
                'sign in',
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
            ),
            Divider(
              height: 60.0,
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
              onChanged: (val) {

              },
            ),
            SizedBox(height:50.0),
            Text(
              'password',
              style:TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.5,
                color: Colors.grey,
              ),
            ),
            TextFormField(
              obscureText: true,
              onChanged: (val) {

              },
            ),


            SizedBox(height:10.0),
            Center(
              child: MaterialButton(
                  child: Text('Sign In', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                  color: Colors.blue[200],
                  elevation: 8,
                  highlightElevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 50.0, right: 50.0),
                  onPressed: () async {
                    //Add normal login (email+pass) here
                  }
                  /*onPressed: () {
                    Navigator.pushNamed(context, '/home');
                    //does something
                  }*/
              ),
            ),
            SizedBox(height:30.0),
            Center(
              child: MaterialButton(
                  child: Text('Sign In Anonymously', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                  color: Colors.blue[200],
                  elevation: 8,
                  highlightElevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 50.0, right: 50.0),
                  onPressed: () async {
                    dynamic result = await _auth.signInAnon();
                    if (result == null) {
                      print('error signing in');
                    } else {
                      print('signed in');
                      print(result.uid);
                    }
                  }
                /*onPressed: () {
                    Navigator.pushNamed(context, '/home');
                    //does something
                  }*/
              ),
            ),
          ],
        ),
      ),
//        ),
    );
  }
}

