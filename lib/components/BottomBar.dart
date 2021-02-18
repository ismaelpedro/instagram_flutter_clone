import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_circle_outline_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
