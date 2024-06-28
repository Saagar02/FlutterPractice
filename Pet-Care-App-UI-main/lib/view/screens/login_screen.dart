

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';
import 'package:petcareapp/utils/bootons.dart';
import 'package:petcareapp/utils/imges.dart';
import 'package:petcareapp/utils/textformfields.dart';
import 'package:petcareapp/view/screens/Home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      body: SingleChildScrollView( 

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [ 
              Text("Login",
                style: AppFonts.h1Bold(AppColor.mainColor),
              ),

              buildAssetLogoImg("lib/assets/img/logoMainColor.png"),

              Form(child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                Text("Email",
                style: AppFonts.h4Regular(Colors.black54),
                ),
                 buildTextFormFuild(hint: "Eneter Email" ,sufixSvgUrl: "",onTap: (){}),
                  Text("Password",
                style: AppFonts.h4Regular(Colors.black54),
                ),
                 buildTextFormFuild(hint: "Enter Password" ,sufixSvgUrl: "lib/assets/svg/fi_eye-off.svg",onTap: (){

                 }),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Forgot Password ? ",
                      style: AppFonts.h4Regular(Colors.black),
                      
                     ),
                     Text("Click Here",
                      style: AppFonts.h4Medium(Colors.black),
                     )
                   ],
                 )
                ],
              )),
              SizedBox(height: 20,),
              buildBotton(bgColor: AppColor.mainColor, textColor: Colors.white, text: "Login", onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_)=>const HomeScreen())
                );
              }),
              SizedBox(height: 20,),
              Divider(
                color: AppColor.mainColor,
              ),
              SizedBox(height: 20,),

              buildBotton(bgColor: AppColor.mainColor, textColor: Colors.white, text: "LOGIN WITH EMAIL", onTap: (){}),
              SizedBox(height: 10,),

              buildBotton(bgColor: AppColor.mainColor, textColor: Colors.white, text: "LOGIN WITH FACEBOOK", onTap: (){}),
              const SizedBox(height: 20,),
              Text(
                textAlign: TextAlign.center,
                "By continue you agree to our\nTerms & Privacy Policy",
                style: AppFonts.h3Regular(Colors.black),

              )


            ],
          ),
        ),
      ),
    );
  }
}