import 'package:flutter/material.dart';
import 'package:kaiserproject/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Divider(height: 170.0),
          Center(
            child: Text(
              'Kaiser Project',
              style:TextStyle(
                fontSize: 50.0,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height:70.0),
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
          SizedBox(height: 30.0),
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
                    Navigator.pushNamed(context, '/wrapper');
                  }
                }
              /*onPressed: () {
                    Navigator.pushNamed(context, '/home');
                    //does something
                  }*/
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
    );
  }
}

