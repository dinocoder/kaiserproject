import 'package:flutter/material.dart';
import 'package:kaiserproject/models/user.dart';
import 'package:kaiserproject/screens/authenticate/sign_in.dart';
import 'package:kaiserproject/screens/authenticate/sign_up.dart';
import 'package:kaiserproject/screens/functionality/all_about_you.dart';
import 'package:kaiserproject/screens/functionality/open_chats.dart';
import 'package:kaiserproject/screens/functionality/resources.dart';
import 'package:kaiserproject/screens/functionality/survey.dart';
import 'package:kaiserproject/screens/home/home.dart';

import 'package:kaiserproject/screens/authenticate/authenticate.dart';
import 'package:kaiserproject/screens/functionality/new_chat.dart';
import 'package:provider/provider.dart';

import 'home/general.dart';
import 'home/start.dart';

class AuthWrapper extends StatelessWidget {
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
      return General();
    };
  }
}
