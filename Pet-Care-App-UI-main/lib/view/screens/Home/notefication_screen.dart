import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';
import 'package:petcareapp/constants/style/shadow.dart';
import 'package:petcareapp/utils/appbar.dart';
import 'package:petcareapp/view/screens/Home/utils/notification_single.dart';

class NoteficationScreen extends StatefulWidget {
  const NoteficationScreen({super.key});

  @override
  State<NoteficationScreen> createState() => _NoteficationScreenState();
}

class _NoteficationScreenState extends State<NoteficationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: buildAppBar(
          context: context,
          title: "Notifications",
          appBarBgColor: Colors.transparent,
          iconBgColor: AppColor.mainColor,
          iconColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: AppFonts.h3Medium(Colors.black),
              ),
              Container(
                // color: Colors.orange,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      // height: 110,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [AppShadow.getShadow1()]),
                      child: Column(
                        children: [
                         buildNotifictionShop(),
                         buildNotifictionAccecpted(),
                        ],
                      ),
                    )
                  ],
                ),
              ),





              Text(
                "25 September",
                style: AppFonts.h3Medium(Colors.black),
              ),
              Container(
                // color: Colors.orange,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      // height: 110,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [AppShadow.getShadow1()]),
                      child: Column(
                        children: [
                         buildNotifictionShop(),
                         buildNotifictionAccecpted(),
                         buildNotifictionShop(),


                        ],
                      ),
                    )
                  ],
                ),
              ),





              
              Text(
                "15 September",
                style: AppFonts.h3Medium(Colors.black),
              ),
              Container(
                // color: Colors.orange,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      // height: 110,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [AppShadow.getShadow1()]),
                      child: Column(
                        children: [
                         buildNotifictionShop(),
                         buildNotifictionAccecpted(),
                         buildNotifictionShop(),


                        ],
                      ),
                    )
                  ],
                ),
              ),





              
              Text(
                "28 October",
                style: AppFonts.h3Medium(Colors.black),
              ),
              Container(
                // color: Colors.orange,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      // height: 110,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [AppShadow.getShadow1()]),
                      child: Column(
                        children: [
                         buildNotifictionShop(),
                         buildNotifictionAccecpted(),
                         buildNotifictionShop(),
                         buildNotifictionAccecpted(),

                         buildNotifictionShop(),


                        ],
                      ),
                    )
                  ],
                ),
              ),





                Text(
                "12 October",
                style: AppFonts.h3Medium(Colors.black),
              ),
              Container(
                // color: Colors.orange,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      // height: 110,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [AppShadow.getShadow1()]),
                      child: Column(
                        children: [
                         buildNotifictionShop(),
                         buildNotifictionAccecpted(),
                        ],
                      ),
                    )
                  ],
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
