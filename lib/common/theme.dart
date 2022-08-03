import 'package:flutter/material.dart';

//主题
class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
        textTheme: const TextTheme(
            labelMedium: TextStyle(fontSize: 16, color: Color(0xff999999)), titleLarge: TextStyle(fontSize: 40, color: Color(0xffFFFFFF))));
  }
}


extension DoubleExt on double {

}