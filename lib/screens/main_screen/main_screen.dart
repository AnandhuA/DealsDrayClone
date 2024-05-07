import 'package:deals_dray_clone/screens/demo_screens.dart/cart_screen.dart';
import 'package:deals_dray_clone/screens/demo_screens.dart/categories_screen.dart';
import 'package:deals_dray_clone/screens/demo_screens.dart/deals_screen.dart';
import 'package:deals_dray_clone/screens/demo_screens.dart/profile_screen.dart';
import 'package:deals_dray_clone/screens/homepge/homepage_screen.dart';
import 'package:deals_dray_clone/screens/main_screen/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _pages = [
    const HomePageScreen(),
    const CategoriesScreen(),
    const DealsScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, value, child) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
