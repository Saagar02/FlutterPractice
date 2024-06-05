import 'package:flutter/material.dart';
import 'package:music_app/Widgets/bottom_navigationbar.dart';

class favouriteScreen extends StatelessWidget{
  const favouriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomAppbar(),
    );
  }
}