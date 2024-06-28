import 'package:flutter/material.dart';

class AppShadow {
 static BoxShadow getShadow1() {
    return const BoxShadow(
        color: Color.fromRGBO(22, 34, 51, 0.08),
        offset: Offset(0, 8),
        blurRadius: 16);
  }
}
