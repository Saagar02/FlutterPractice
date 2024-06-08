import 'package:flutter/material.dart';
import 'package:pet_care_app/screens/flash_screen.dart';
import 'package:pet_care_app/screens/login_screeen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color.fromRGBO(245, 146, 69, 1),
            colorScheme: ColorScheme.fromSwatch().copyWith(
                secondary: const Color.fromRGBO(255, 255, 255, 1),
                background: const Color.fromRGBO(255, 255, 255, 1))),
        home: const LoginScreen());
  }
}
