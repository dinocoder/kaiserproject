import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/shared/shared_elements.dart';
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
        //home: AuthWrapper(), //idk whether to use this or what comes below it
        initialRoute: '/wrapper',
        routes: routes,
      ),
    );
  }
}

