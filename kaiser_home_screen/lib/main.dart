import 'package:flutter/material.dart';
import 'package:kaiserhomescreen/pages/HomeScreen.dart';
import 'package:kaiserhomescreen/pages/settings.dart';
import 'package:kaiserhomescreen/pages/module.dart';
import 'package:kaiserhomescreen/pages/profile.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/Module',
  routes: {
    '/': (context) => KaiserHomeScreen(),
    '/ProfileScreen': (context) => ProfileScreen(),
    '/Settings': (context)=> Settings(),
    '/Module': (context)=> Module(),
  },
));