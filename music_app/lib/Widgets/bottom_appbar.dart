import 'package:flutter/material.dart';
import 'package:music_app/screens/cart_screen.dart';
import 'package:music_app/screens/favourite_screen.dart';
import 'package:music_app/screens/profile_screen.dart';
import 'package:music_app/screens/search_screen.dart';
import 'package:music_app/screens/gallery_screen.dart';

class BottomAppbar extends StatefulWidget {
  const BottomAppbar({super.key});
  @override
  State createState() => _BottomAppbar();
}

class _BottomAppbar extends State<BottomAppBar> {
  int _selectedIndex = 1;
  final List<Widget> _pages = [
    const GalleryScreen(),
    const Search(),
    const Favourite(),
    const Cart(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          MaterialPageRoute(builder: (context) {
            return _pages[_selectedIndex];
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.heat_pump_outlined), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_off_outlined), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_max_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_off_outlined), label: 'Profile'),
        ]);
  }
}
