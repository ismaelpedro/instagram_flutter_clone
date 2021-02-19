import 'package:flutter/material.dart';

final List<Icon> iconsBottomBar = [
  Icon(Icons.home_outlined),
  Icon(Icons.search),
  Icon(Icons.shop_outlined),
  Icon(Icons.shopping_bag_outlined),
  Icon(Icons.account_circle_outlined),
];

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 75 * MediaQuery.of(context).textScaleFactor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: iconsBottomBar.map((icone) {
            return IconButton(
              icon: icone,
              color: Colors.black,
              onPressed: () {},
              iconSize: 30,
            );
          }).toList(),
        ),
      ),
    );
  }
}
