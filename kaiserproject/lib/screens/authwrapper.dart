import 'package:flutter/material.dart';
import 'package:kaiserproject/models/user.dart';
import 'package:kaiserproject/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'home/portal.dart';

class AuthWrapper extends StatefulWidget {
  @override
  _AuthWrapperState createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
  print("CHECKING AUTHENTICATION");

    //Allows wrapper to collect user information from Firebase stream
    final user = Provider.of<User>(context); //If you want to temp disable the anon login comment this line and uncomment the next
    //final user = null;
    print(user);

    //print(user);
    //print(user == null);
    //print("^predict outcome - if false then it should redirect to general");
    //print(context);

    //Want to return HOME (authentication screen) or GENERAL (functionality) widget
    if (user == null) {
      print("SENDING TO LOGIN SCREEN");
      return Home();
    } else {
      print("SENDING TO GENERAL WITH ID");
      print(user.uid);
      return Portal();
    }
  }
}
