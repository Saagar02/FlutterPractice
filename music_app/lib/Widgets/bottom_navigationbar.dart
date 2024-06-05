import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/screens/cart_screen.dart';
import 'package:music_app/screens/favourite_screen.dart';
import 'package:music_app/screens/profile_screen.dart';
import 'package:music_app/screens/search_screen.dart';

class MyBottomAppbar extends StatefulWidget {
  const MyBottomAppbar({super.key});
  @override
  State createState() => _MyBottomAppbar();
}

class _MyBottomAppbar extends State<MyBottomAppbar> {
  int _selectedIndex = 4;
  final List<Widget> _pages = [
    const ProfileScreen(),
    const SearchScreen(),
    const favouriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     color: Colors.black,
  //     child: BottomNavigationBar(
  //         backgroundColor: Colors.black,
  //         selectedItemColor: Colors.red,
  //         unselectedItemColor: Colors.amber,
  //         currentIndex: _selectedIndex,
  //         onTap: (index) {
  //           setState(() {
  //             _selectedIndex = index;
  //           });
  //           MaterialPageRoute(builder: (context) {
  //             return _pages[index];
  //           });
  //         },
  //         items: const [
  //           BottomNavigationBarItem(
  //               icon: Icon(CupertinoIcons.heart), label: 'Favourite'),
  //           BottomNavigationBarItem(
  //               icon: Icon(CupertinoIcons.search), label: 'Search'),
  //           BottomNavigationBarItem(
  //               icon: Icon(CupertinoIcons.home), label: 'Home'),
  //           BottomNavigationBarItem(
  //               icon: Icon(CupertinoIcons.cart), label: 'Cart'),
  //           BottomNavigationBarItem(
  //               icon: Icon(CupertinoIcons.person), label: 'Profile'),
  //         ]),
  //   );
  // }

  Widget customIcons(Icon icons, Text text, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 5, bottom: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Column(
          children: [
            icons,
            const SizedBox(
              height: 5,
            ),
            text
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 428,
      color: const Color.fromRGBO(19, 19, 19, 1),
      child: Row(
        children: [
          customIcons(
              Icon(
                CupertinoIcons.heart,
                color: _selectedIndex == 0
                    ? const Color.fromRGBO(230, 154, 21, 1)
                    : const Color.fromRGBO(157, 178, 206, 1),
              ),
              Text(
                "Favourite",
                style: TextStyle(
                  color: _selectedIndex == 0
                      ? const Color.fromRGBO(230, 154, 21, 1)
                      : const Color.fromRGBO(157, 178, 206, 1),
                ),
              ),
              0),
          customIcons(
              Icon(
                CupertinoIcons.search,
                color: _selectedIndex == 1
                    ? const Color.fromRGBO(230, 154, 21, 1)
                    : const Color.fromRGBO(157, 178, 206, 1),
              ),
              Text(
                "Search",
                style: TextStyle(
                  color: _selectedIndex == 1
                      ? const Color.fromRGBO(230, 154, 21, 1)
                      : const Color.fromRGBO(157, 178, 206, 1),
                ),
              ),
              1),
          customIcons(
              Icon(
                CupertinoIcons.home,
                color: _selectedIndex == 2
                    ? const Color.fromRGBO(230, 154, 21, 1)
                    : const Color.fromRGBO(157, 178, 206, 1),
              ),
              Text(
                "Home",
                style: TextStyle(
                  color: _selectedIndex == 2
                      ? const Color.fromRGBO(230, 154, 21, 1)
                      : const Color.fromRGBO(157, 178, 206, 1),
                ),
              ),
              2),
          customIcons(
              Icon(
                CupertinoIcons.cart,
                color: _selectedIndex == 3
                    ? const Color.fromRGBO(230, 154, 21, 1)
                    : const Color.fromRGBO(157, 178, 206, 1),
              ),
              Text(
                "Cart",
                style: TextStyle(
                  color: _selectedIndex == 3
                      ? const Color.fromRGBO(230, 154, 21, 1)
                      : const Color.fromRGBO(157, 178, 206, 1),
                ),
              ),
              3),
          customIcons(
              Icon(
                CupertinoIcons.person,
                color: _selectedIndex == 4
                    ? const Color.fromRGBO(230, 154, 21, 1)
                    : const Color.fromRGBO(157, 178, 206, 1),
              ),
              Text(
                "Profile",
                style: TextStyle(
                  color: _selectedIndex == 4
                      ? const Color.fromRGBO(230, 154, 21, 1)
                      : const Color.fromRGBO(157, 178, 206, 1),
                ),
              ),
              4),
        ],
      ),
    );
  }
}
