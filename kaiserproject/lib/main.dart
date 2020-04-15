import 'dart:js';

import 'package:flutter/material.dart';
import 'package:firstpage/starter.dart';
import 'package:firstpage/sign_in.dart';
import 'package:firstpage/sign_up.dart';
import 'package:firstpage/new_chat.dart';

void main() => runApp(MaterialApp(
  home: Start(),
  routes: {
    '/starter':(context) => Start(),
    '/sign in': (context) => SignIn(),
    '/sign up':(context) => SignUp(),
    '/new chat':(context) => NewChat(),
  },
));





