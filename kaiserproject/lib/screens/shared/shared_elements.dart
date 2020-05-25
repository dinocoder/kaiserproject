import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:kaiserproject/screens/authenticate/sign_in.dart';
import 'package:kaiserproject/screens/authenticate/sign_up.dart';
import 'package:kaiserproject/screens/functionality/all_about_you.dart';
import 'package:kaiserproject/screens/functionality/contact_us.dart';
import 'package:kaiserproject/screens/functionality/personalized_suggestions.dart';
import 'package:kaiserproject/screens/functionality/new_chat.dart';
import 'package:kaiserproject/screens/functionality/open_chats.dart';
import 'package:kaiserproject/screens/functionality/resources.dart';
import 'package:kaiserproject/screens/functionality/survey.dart';
import 'package:kaiserproject/screens/home/home.dart';
import 'package:kaiserproject/services/auth.dart';

import '../authwrapper.dart';

final AuthService _auth = AuthService();

dynamic routes = {
  '/sign_in': (context) => SignIn(),

  '/sign_up': (context) => SignUp(),

  '/new_chat': (context) => NewChat(),

  '/survey': (context) => Survey(),

  '/contact_us': (context) => ContactUs(),

  '/open_chats': (context) => OpenChats(),

  '/all_about_you': (context) => AllAboutYou(),

  '/resources': (context) => Resources(),

  '/general': (context) => PersonalizedSuggestions(),

  '/wrapper': (context) => AuthWrapper(),

  '/home': (context) => Home()
};

class defaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final bool isPortal;

  const defaultAppBar({this.isPortal = false, Key key, this.appBar})
      : super(key: key);

  @override
  Size get preferredSize => new Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: AppBar(
          leading: this.isPortal ? null : IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Kaiser Project'),
          actions: <Widget>[
            FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('logout'),
                onPressed: () async {
                  await _auth.signOutAccount();
                }
            ),
          ],
        )
    );
  }
}

Widget defaultScreenNameBar(text, color) {
  return Container(
    color: color,
    height: 90,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(125, 0, 0, 0),
              child: Container(
                child: Text(text, style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30.0,
                ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}