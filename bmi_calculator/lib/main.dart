// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/home.dart';
// ignore: unused_import
import 'package:bmi_calculator/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
    ),
    home: home(),
  ));
}
