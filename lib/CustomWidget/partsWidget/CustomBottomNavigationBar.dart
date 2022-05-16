import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final _color = Colors.amber.shade500;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: StaticVar.provider(context).index,
        onTap: (index) {
          StaticVar.provider(context, listen: false).changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: CustomIcon(Icons.home_outlined),
            activeIcon: CustomIcon(
              Icons.home,
              color: _color,
            ),
          ),
          BottomNavigationBarItem(
            label: "search",
            icon: CustomIcon(Icons.search),
            activeIcon: CustomIcon(
              Icons.search,
              color: _color,
            ),
          ),
          BottomNavigationBarItem(
            label: "Order",
            icon: CustomIcon(Icons.shopping_bag_outlined),
            activeIcon: CustomIcon(
              Icons.shopping_bag,
              color: _color,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: CustomIcon(Icons.person_outline),
            activeIcon: CustomIcon(
              Icons.person,
              color: _color,
            ),
          ),
        ]);
  }
}
