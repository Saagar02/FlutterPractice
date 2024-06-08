import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashScreen1 extends StatelessWidget {
  const FlashScreen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/Images/PawFlashScreeen.png")),
            const SizedBox(
              height: 25,
            ),
            Text(
              "PetGuardian",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 32,
                      fontWeight: FontWeight.w600)),
            ),
            Text(
              "Your Pets'Lifelong Protector",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
