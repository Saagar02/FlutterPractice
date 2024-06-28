

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';

AppBar buildAppBar({
  required String title,
  required Color appBarBgColor,
  required Color iconBgColor,
  required Color iconColor,
  required BuildContext context

}){
  return AppBar(
        backgroundColor: appBarBgColor, 
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 7),
              decoration: BoxDecoration(
                color: iconBgColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Icon( 
                Icons.arrow_back_ios,
                size: 15,
                color: iconColor,
              ),
            ),
          ),
        ),
        title: Text(
          title,
          style: AppFonts.h3Medium(Colors.black),
        ),
      );
}