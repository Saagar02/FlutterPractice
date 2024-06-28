import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:petcareapp/constants/data/dummy_data.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';
import 'package:petcareapp/constants/style/shadow.dart';
import 'package:petcareapp/utils/bootons.dart';

Widget buildHorisontalSeeAll({required String titale, required String seeAll}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titale,
          style: AppFonts.h3Medium(Colors.black),
        ),
        Text(
          seeAll.isNotEmpty ? seeAll : "",
          style: AppFonts.h3Medium(Colors.black26),
        ),
      ],
    ),
  );
}

Widget buildCategoryCircularCard({required int index }) {
  return Container(
    height: 90,
    margin: EdgeInsets.only(right: 35),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [
        Container(
          height: 60,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              // "lib/assets/img/homepsgrCatrgry1.png"
              categoryHomePageListData[index]["image"],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          // "Veterinary",
          categoryHomePageListData[index]["title"],

          style: AppFonts.h4Regular(Colors.black),
        )
      ],
    ),
  );
}

Widget buildEventCard({required int index,required BuildContext context}) {
  return Container(
    margin: EdgeInsets.only(right: 10,bottom:15),
    padding: EdgeInsets.all(10),

    width: 370,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [AppShadow.getShadow1()]),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Text(
                "Find and Join in Special Events For Your Pets!",
                style: AppFonts.h3Medium(Colors.black),
              ),
            ),
            Container(
                // height: 5,
                padding: EdgeInsets.only(top: 10),
                width: 100,
                child: buildBotton(
                    bgColor: AppColor.mainColor,
                    textColor: Colors.white,
                    text: "See More",
                    onTap: () {}))
          ],
        ),
        Container(
          height: 96,
          width: 96,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage(

                  // "lib/assets/img/getallneedforthem.png"
                  "lib/assets/img/event.png"))),
        )
      ],
    ),
  );
}


Widget buildCommunityCard({required int index}) {
  return Container(
    margin: EdgeInsets.only(bottom:20),
    padding: EdgeInsets.all(10),

    width: 370,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [AppShadow.getShadow1()]),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Text(
                // "Find and Join in Special Events For Your Pets!",
                "Connect and share with communities! ",
                style: AppFonts.h3Medium(Colors.black),
              ),
            ),
            Container(
                // height: 5,
                padding: EdgeInsets.only(top: 10),
                width: 100,
                child: buildBotton(
                    bgColor: AppColor.mainColor,
                    textColor: Colors.white,
                    text: "Connect",
                    onTap: () {}))
          ],
        ),
        Container(
     height: 96,
          width: 96,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage(

                  // "lib/assets/img/getallneedforthem.png"
                  "lib/assets/img/comunity.png"))),
        )
      ],
    ),
  );
}
