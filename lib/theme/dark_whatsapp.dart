import 'package:flutter/material.dart';

import 'colors.dart';


class AppTheme{
  static ThemeData WhatsappDark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: WhatsNakoColor.backgroundColor,
    dividerColor: Colors.white.withOpacity(0.35)
  );
}