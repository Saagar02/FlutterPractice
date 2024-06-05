import 'package:flutter/material.dart';
import 'package:music_app/Widgets/bottom_navigationbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomAppbar()//MyBottomSheet(),
    );
  }
}
