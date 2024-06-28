

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';

Widget buildTextFormFuild({required String hint ,required String  sufixSvgUrl ,required Function onTap}){

  return  Container(
    margin: EdgeInsets.only(bottom: 10,top:3 ),
                    height: 40,
                    child: TextFormField( 
                      // cursorHeight: 10,

                      scrollPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      cursorColor: AppColor.mainColor,
                      
                      decoration: InputDecoration( 
                        
                        hintText: hint,
                        
                        hintStyle:AppFonts.h4Regular(Colors.black45),
                        contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        border: InputBorder.none,
                        suffixIcon:
                        sufixSvgUrl.isNotEmpty?
                        GestureDetector(
                          onTap: onTap(),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              sufixSvgUrl
                              // "lib/assets/svg/fi_eye-off.svg"
                            ),
                          ),
                        ):
                        null
                        ,
                        
                        enabledBorder: OutlineInputBorder(
                          
                          borderSide: BorderSide(color: AppColor.mainColorLight,
                            width: 3
                          ), 
                          borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.mainColor), 
                          borderRadius: BorderRadius.circular(8))
                      ),
                    ),
                  );
}