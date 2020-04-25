import 'dart:js';
import 'package:flutter/material.dart';
import 'package:kaiserproject/survey.dart';
import 'package:kaiserproject/start.dart';
import 'package:kaiserproject/sign_in.dart';
import 'package:kaiserproject/sign_up.dart';
import 'package:kaiserproject/new_chat.dart';
import 'package:kaiserproject/contact_us.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/sign in',// this is for testing purposes, initial route should be the start file later on
  routes: {
    '/starter':(context) => Start(),
    '/sign in': (context) => SignIn(),
    '/sign up':(context) => SignUp(),
    '/new chat':(context) => NewChat(),
    '/survey':(context)=> Survey(),
    '/contact us':(context) => ContactUs(),
  },
));





