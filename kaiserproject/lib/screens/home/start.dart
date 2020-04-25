import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/authenticate/sign_in.dart';
import 'package:kaiserproject/screens/authenticate/sign_up.dart';


class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BaseApp(),
        routes: <String, WidgetBuilder> {
          '/sign_in' : (context) => SignIn(),
          '/sign_up' : (context) => SignUp(),
        }
    );
  }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Divider(height: 170.0),
            Center(
              child: Text(
                'app name',
                style:TextStyle(
                  fontSize: 50.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height:170.0),
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
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_in');
                },
              ),
            ),
            Divider(height: 30.0),
            Center(
              child: MaterialButton(
                child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                color: Colors.green[200],
                elevation: 8,
                highlightElevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 50.0, right: 50.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_up');
                },
              ),
            ),
          ],

        ),
      ),
    );
  }
}



