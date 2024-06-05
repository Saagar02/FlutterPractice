import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/screens/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    color: Colors.transparent,
                    height: 648,
                    width: 497,
                    child: FittedBox(
                        child: Image.asset('assets/Images/homeScreen.png'))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 420),
                      child: Text(
                        "Dancing between\nThe shadows\nOf rhythm",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const ProfileScreen();
                        }));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 47,
                          width: 261,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 46, 0, 1),
                            borderRadius: BorderRadius.all(Radius.circular(19)),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 47,
                        width: 261,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(255, 61, 0, 1)),
                          color: Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(19)),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Continue with Email",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 61, 0, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      "by continuing you agree to terms\n of services and Privacy policy",
                      style: TextStyle(color: Color.fromRGBO(203, 200, 200, 1)),
                      maxLines: 2,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
