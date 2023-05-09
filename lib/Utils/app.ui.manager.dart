import 'package:bestform/Utils/props.dart';
import 'package:flutter/material.dart';

class AppUiManager {
  static Color? _color;
  static theme({Color? color}) {
    _color = color ?? Props.gray;
    return ThemeData(primaryColor: Props.dark, textTheme: _textTheme());
  }

  static _textTheme() {
    return TextTheme(
      titleLarge: TextStyle(
          fontSize: Props.s24,
          color: _color,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins'),
      labelSmall: TextStyle(
          fontSize: Props.s10,
          color: _color,
          fontFamily: 'Poppins',
          fontStyle: FontStyle.normal),
      labelMedium:
          TextStyle(fontSize: Props.s14, color: _color, fontFamily: 'Poppins'),
      labelLarge:
          TextStyle(fontSize: Props.s20, color: _color, fontFamily: 'Poppins'),
    );
  }
}
