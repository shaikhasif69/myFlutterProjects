import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottonNavBar extends StatelessWidget {
  void Function(int)? onTabChanged;
  MyBottonNavBar({super.key, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: GNav(
            color: Colors.grey,
            activeColor: Color.fromARGB(255, 205, 64, 230),
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            tabBorderRadius: 16,
            onTabChange: (value) => onTabChanged!(value),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.shopping_bag_rounded,
                text: "Cart",
              )
            ]),
      ),
    );
  }
}
