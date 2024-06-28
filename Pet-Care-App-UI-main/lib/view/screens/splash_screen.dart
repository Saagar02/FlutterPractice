

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';
import 'package:petcareapp/utils/imges.dart';
import 'package:petcareapp/view/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),(){

      Navigator.of(context).push(
      MaterialPageRoute(builder:(_)=>const  LoginScreen())
    );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColor.mainColor,
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [ 

          buildAssetLogoImg("lib/assets/img/welcome_panja.png"),
          
          Text(
            "PetGuardian",
            style: AppFonts.h1SemiBold(Colors.white)

          ),

          Text(
            "“Your Pets' Lifelong Protector“",

            style: GoogleFonts.poppins( 
              color:Colors.white,
              fontWeight:FontWeight.w500,
              fontSize:16
            ),
          )
        ],
      ),
    );
  }
}