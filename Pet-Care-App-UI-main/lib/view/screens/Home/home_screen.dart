import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petcareapp/constants/data/dummy_data.dart';
import 'package:petcareapp/constants/style/colors.dart';
import 'package:petcareapp/constants/style/fonts.dart';
import 'package:petcareapp/constants/style/shadow.dart';
import 'package:petcareapp/utils/bootons.dart';
import 'package:petcareapp/utils/builds.dart';
import 'package:petcareapp/utils/textformfields.dart';
import 'package:petcareapp/view/screens/Home/notefication_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      // radius: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                            // height: 80,
                            // width: 80,
                            fit: BoxFit.cover,
                            "lib/assets/img/tejas dp.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ram Ram, Tejas",
                            style: AppFonts.h3Medium(Colors.black),
                          ),
                          Text(
                            "Good Morning!",
                            style: AppFonts.h3Regular(Colors.black54),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(

                          MaterialPageRoute(builder: (context)=>const NoteficationScreen())
                        );
                      },
                      child: SvgPicture.asset("lib/assets/svg/fi_bell.svg"))
                  ],
                ),
              ),
              buildTextFormFuild(
                  hint: "search",
                  onTap: () {},
                  sufixSvgUrl: "lib/assets/svg/fi_search.svg"),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 99,
                width: double.infinity,
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
                        Text(
                          "In Love With Pets?",
                          style: AppFonts.h3SemiBolod(Colors.black),
                        ),
                        Text(
                          "Get all what you need for them?",
                          style: AppFonts.h3Medium(AppColor.mainColor),
                        )
                      ],
                    ),
                    Container(
                      height: 71,
                      width: 67,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(

                                  // "lib/assets/img/getallneedforthem.png"
                                  "lib/assets/img/need.png"))),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buildHorisontalSeeAll(titale: "Category", seeAll: "See All"),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: 90,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryHomePageListData.length,
                    itemBuilder: (context, index) =>
                        buildCategoryCircularCard(index: index)),
              ),
              buildHorisontalSeeAll(titale: "Event", seeAll: ''),
              Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 10),
                  // width: double.infinity,
                  // color: Colors.red,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => buildEventCard(
                            index: index,context: context
                          ))),
              buildHorisontalSeeAll(titale: "Community", seeAll: ''),
               Container(
                  height: 150,
                  // width: double.infinity,
                  // color: Colors.red,
                  child: ListView.builder(
                      // scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => buildCommunityCard(
                            index: index,
                          ))),
            ],
          ),
        ),
      ),
      // bottomSheet:,
      bottomNavigationBar:Stack(
        children: [
          BottomNavigationBar(
            unselectedLabelStyle:AppFonts.h4Medium(Colors.black45),
            selectedItemColor: AppColor.mainColor,
            unselectedItemColor: Colors.black45,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: SvgPicture.asset(
                  "lib/assets/svg/NavigationBar/fi_home.svg"
                ),
              ),
              BottomNavigationBarItem(
                label: "Service",
                icon: SvgPicture.asset(
                  "lib/assets/svg/NavigationBar/fi_heart.svg"
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                  // "lib/assets/svg/NavigationBar/fi_heart.svg"
                  ""
                ),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: SvgPicture.asset(
                  "lib/assets/svg/NavigationBar/fi_clock.svg"
                ),
              ),
              BottomNavigationBarItem(
                label: "Service",
                icon: SvgPicture.asset(
                  "lib/assets/svg/NavigationBar/fi_heart.svg"
                ),
              ),
            ],
          ),
         
        ],
      ),
     floatingActionButton:   Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(50)
        ),
        margin: EdgeInsets.only(top: 5,left: 30), 
        child: FittedBox(
          child: FloatingActionButton(
          
          shape:CircleBorder(),  
            backgroundColor: AppColor.mainColor,
            onPressed: () {
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "lib/assets/svg/NavigationBar/fi_shopping-cart.svg",


                ),
                Text(
                  "Shop",
                  style:AppFonts.h4Medium(Colors.white)
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
