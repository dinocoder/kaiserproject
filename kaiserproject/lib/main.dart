//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/authenticate/authenticate.dart';
import 'package:kaiserproject/screens/authenticate/sign_in.dart';
import 'package:kaiserproject/screens/authenticate/sign_up.dart';
import 'package:kaiserproject/screens/functionality/all_about_you.dart';
import 'package:kaiserproject/screens/functionality/contact_us.dart';
import 'package:kaiserproject/screens/functionality/new_chat.dart';
import 'package:kaiserproject/screens/functionality/open_chats.dart';
import 'package:kaiserproject/screens/functionality/resources.dart';
import 'package:kaiserproject/screens/functionality/survey.dart';
import 'package:kaiserproject/screens/home/general.dart';
import 'package:kaiserproject/screens/home/home.dart';
import 'package:kaiserproject/screens/home/start.dart';
import 'package:kaiserproject/screens/authwrapper.dart';
import 'package:kaiserproject/services/auth.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Allows for the app to collect information from streams directly from Firebase using the Provider package
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: AuthWrapper(), //idk whether to use this or what comes below it
        //initialRoute: '/wrapper',
        routes: {
          '/starter': (context) => Start(),

          '/sign_in': (context) => SignIn(),

          '/sign_up': (context) => SignUp(),

          '/new_chat': (context) => NewChat(),

          '/survey': (context) => Survey(),

          '/contact_us': (context) => ContactUs(),

          '/open_chats': (context) => OpenChats(),

          '/all_about_you': (context) => AllAboutYou(),

          '/resources': (context) => Resources(),

          '/general': (context) => General(),

          '/wrapper': (context) => AuthWrapper(),

          '/home': (context) => Home()
        },

      ),
    );
  }
}

