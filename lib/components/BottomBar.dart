import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final List<Icon> iconsBottomBar;

  BottomBar({@required this.iconsBottomBar});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 75,
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
