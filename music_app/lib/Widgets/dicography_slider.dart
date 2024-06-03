import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DiscographySlider extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final String imageYear;
  const DiscographySlider(
      {super.key,
      required this.imagePath,
      required this.imageName,
      required this.imageYear});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: 119,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image(image: AssetImage(imagePath), fit: BoxFit.fill),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              imageName,
              style: const TextStyle(
                  color: Color.fromRGBO(203, 200, 200, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              imageYear,
              style: const TextStyle(
                  color: Color.fromRGBO(132, 125, 125, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
