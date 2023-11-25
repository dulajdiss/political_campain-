import 'dart:ui';

import 'package:flutter/material.dart';

class SMColors {
  static const sm_cab_sav = Color(0xFF590A10);
  static const sm_cardinal = Color(0xFFBF2431);
  static const sm_ripe_lemon = Color(0xFFF2CC0F);
  static const sm_jaffa = Color(0xFFF28B30);
  static const sm_pomegranate = Color(0xFFF23827);
  static const sm_orange = Color(0xFFF47F18);
  static const sm_white = Color(0xFFFBFBFB);
  static const sm_black = Color(0xFF000000);
  static const sm_gray = Color(0xFFCACFD6);
  static const sm_platinum = Color(0xFFE9E3E6);
  static const sm_isabelline = Color(0xFFF9F7F3);
  static const background = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      SMColors.sm_cardinal,
      SMColors.sm_jaffa,
      SMColors.sm_cardinal,
    ],
    stops: [
      0.6,
      0.8,
      1.0,
    ],
  );
}
