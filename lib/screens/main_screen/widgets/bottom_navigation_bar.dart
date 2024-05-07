import 'package:flutter/material.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (context, value, child) {
        return BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          currentIndex: value,
          onTap: (index) {
            indexNotifier.value = index;
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions),
              label: 'Deals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
