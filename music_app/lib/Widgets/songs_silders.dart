import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SongsSlider extends StatelessWidget {
  final String? songImage;
  final String? songTitle;
  final VoidCallback? onpress;

  const SongsSlider(
      {super.key,
      required this.songImage,
      required this.songTitle,
      this.onpress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 367,
      child: Stack(
        children: [
          Container(
              height: 367,
              width: 403,
              child: Image.asset(
                songImage!,
                fit: BoxFit.fill,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 20),
            child: Column(
              children: [
                Text(
                  songTitle!,
                  style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 36,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 11,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 37,
                    width: 127,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(19)),
                        color: Color.fromRGBO(255, 46, 0, 1)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Subcribe",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
