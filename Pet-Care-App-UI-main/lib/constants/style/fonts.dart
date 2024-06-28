


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts{

  static TextStyle h1Bold(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 32,
              fontWeight:FontWeight.w700,
            );
  }
   static TextStyle h1SemiBold(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 32,
              fontWeight:FontWeight.w600,
            );
  }

  static TextStyle h2Medium(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 24,
              fontWeight:FontWeight.w500,
            );
  }
  static TextStyle h2SemiBolod(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 24,
              fontWeight:FontWeight.w700,
            );
  }

  static TextStyle h2Regular(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 24,
              fontWeight:FontWeight.w400,
            );
  }


  static TextStyle h3Medium(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 16,
              fontWeight:FontWeight.w500,
            );
  }
  static TextStyle h3SemiBolod(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 14,
              fontWeight:FontWeight.w700,
            );
  }

  static TextStyle h3Regular(Color color){
    return GoogleFonts.poppins( 
              color:color,
              fontSize: 14,
              fontWeight:FontWeight.w400,
            );
  }



  static TextStyle h4Regular(Color color){
    return  GoogleFonts.poppins(

                          fontSize:12,
                          fontWeight:FontWeight.w400,
                          color:color
                        );
  }

   static TextStyle h4Medium(Color color){
    return  GoogleFonts.poppins(

                          fontSize:12,
                          fontWeight:FontWeight.w500,
                          color:color
                        );
  }
  
  
}