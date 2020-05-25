import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/shared/loading.dart';
import 'package:kaiserproject/screens/shared/shared_elements.dart';
import 'package:kaiserproject/services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BaseApp(),
    );
  }
}

class BaseApp extends StatefulWidget {
  @override
  _BaseAppState createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state
  String username = '';
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
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
                Navigator.pushNamed(context, '/home');
              },
              child: Column(
                children: <Widget>[
                  Icon(Icons.arrow_back),
                ],
              ),
            ),

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

            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'username',
                    style:TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                  TextFormField(
                    validator: (val) => val.isEmpty ? 'Enter a username' : null,
                    onChanged: (val) {
                      setState(() => username = val);
                    },
//                    decoration: InputDecoration(
//                        labelText: 'Enter your username'
//                    ),
                  ),
                  SizedBox(height:20.0),
                  Text(
                    'email',
                    style:TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                  TextFormField(
                    validator: (val) => val.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
//                    decoration: InputDecoration(
//                        labelText: 'Enter your username'
//                    ),
                  ),
                  Divider(
                    height: 20.0,
                  ),
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
                    validator: (val) => val.isEmpty ? 'Enter a password' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
//                    decoration: InputDecoration(
//                        labelText: 'Enter your username'
//                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height:30),
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
                  onPressed: () async {
                    //Add normal login (email+pass) here

                    if (_formKey.currentState.validate()) {
                      print(username);
                      print(email);
                      print(password);

                      setState(() => loading = true);

                      dynamic result = await _auth.registerWithEmailAndPassword(username, email, password);
                      print(result);
                      if (result == null) {
                        setState(() {
                          error = 'Please supply a valid email.';
                          loading = false;
                        });
                      } else {
                        print("Trying to push");
                        Navigator.pushNamed(context, '/wrapper');
                      }
                    }
                  }
              ),

),
            SizedBox(height: 40.0),
            Center(
              child: Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14)
              ),
            )
],
),
),
);
}}

