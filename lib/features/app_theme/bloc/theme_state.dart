import 'package:flutter/material.dart';
import 'package:flutter_assessment/config/theme/dark_theme.dart';
import 'package:flutter_assessment/config/theme/light_theme.dart';

class ThemeState {
  final ThemeData themeData;

  ThemeState(this.themeData);

  static ThemeState get darkTheme => ThemeState(dark);

  static ThemeState get lightTheme => ThemeState(light);
}