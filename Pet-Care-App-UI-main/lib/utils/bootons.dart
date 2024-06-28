import 'package:flutter/material.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';

Widget buildBotton(
    {required Color bgColor,
    required Color textColor,
    required String text,
    required Function onTap}) {
  return GestureDetector(
    onTap: () => onTap(),
    child: Container(
      alignment: Alignment.center,
      padding:const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(08)),
      child: Text(
        // "LOGIN",
        text,
        style: AppFonts.h3SemiBolod(textColor),
      ),
    ),
  );
}
