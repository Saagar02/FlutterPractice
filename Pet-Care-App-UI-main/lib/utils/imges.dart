

import 'package:flutter/material.dart';

Widget buildAssetLogoImg(String url){
  return Container( 
            margin: EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            child: Image.asset(
              url
            ),
          );
}