// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:papikos/pages/splash_page.dart';
import 'package:papikos/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}
