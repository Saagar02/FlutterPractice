import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/Widgets/bottom_navigationbar.dart';
import 'package:music_app/Widgets/dicography_slider.dart';
import 'package:music_app/Widgets/songs_silders.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State createState() => _ProfileScreen();
}

final List<Map<String, String>> imageList = [
  {"assets/Images/ALONE.png": "A.L.O.N.E"},
  {"assets/Images/Rockabye.png": "ROCKABYE"},
  {"assets/Images/Faded.jpg": "FADED"},
];

final List<DiscographySlider> discographyList = [
  const DiscographySlider(
      imagePath: "assets/Images/DeadInside.png",
      imageName: "Dead Inside",
      imageYear: "2020"),
  const DiscographySlider(
      imagePath: "assets/Images/alone2.png",
      imageName: "Alone",
      imageYear: "2023"),
  const DiscographySlider(
      imagePath: "assets/Images/HeartLess.png",
      imageName: "Heart Less",
      imageYear: "2023")
];

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomAppbar(),
      body: Container(
        color: const Color.fromRGBO(24, 24, 24, 1),
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, int index, int realIndex) {
                return SongsSlider(
                  songImage: imageList[index].keys.first,
                  songTitle: imageList[index].values.first,
                );
              },
              options: CarouselOptions(viewportFraction: 1, aspectRatio: 1 / 1),
            ),
            const SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Discography",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(255, 46, 0, 1),
                            fontWeight: FontWeight.w600),
                      )),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(248, 162, 69, 1),
                            fontWeight: FontWeight.w600),
                      )),
                  const SizedBox(
                    height: 19,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 198,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: discographyList.length,
                  itemBuilder: (context, int index) {
                    return DiscographySlider(
                      imagePath: discographyList[index].imagePath,
                      imageName: discographyList[index].imageName,
                      imageYear: discographyList[index].imageYear,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Populer Singles",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(203, 200, 200, 1)),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(248, 162, 69, 1)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
