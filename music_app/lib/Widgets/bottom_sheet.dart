import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:music_app/screens/cart_screen.dart';
import 'package:music_app/screens/favourite_screen.dart';
import 'package:music_app/screens/profile_screen.dart';
import 'package:music_app/screens/search_screen.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 75,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: Colors.black,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: "Favourite",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.search_favorite),
              label: "Favourite",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: "Favourite",
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.cart),
              label: "Favourite",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.profile),
              label: "Favourite",
            )
          ],
        ),
      ),
      //body: controller.screens[controller.selectedIndex.value],
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 1.obs;

  final screens = [
    const ProfileScreen(),
    const SearchScreen(),
    const favouriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
}
