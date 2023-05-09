import 'package:flutter/material.dart';

class Props {
  static Color primary = '#94C43A'.hex();
  static Color light = '#1E2024'.hex();
  static Color white = '#FFFFFF'.hex();
  static Color dark = '#000000'.hex();
  static Color gray = '#636B75'.hex();
  static Color tran_2 = '#EFF3F8'.hex();
  static Color danger = '#C43A3A'.hex();
  static Color transparent = Colors.transparent;
  static Color shadow =
      Color.fromARGB(Color.getAlphaFromOpacity(0.08), 0, 0, 0);

  static double s8 = 8;
  static double s12 = 12;
  static double s14 = 14;
  static double s10 = 10;
  static double s18 = 18;
  static double s20 = 20;
  static double s24 = 24;
  static double s28 = 28;
  static double s30 = 30;

  static double s50 = 50;
  static double s60 = 60;
}

extension StringExtension on String {
  Color hex() {
    return Color(int.parse(replaceAll('#', '0xFF')));
  }
}
