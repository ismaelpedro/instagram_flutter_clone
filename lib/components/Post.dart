import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final photo;
  final user;

  final List<Icon> iconsPost = [
    Icon(
      Icons.favorite,
      color: Colors.red,
    ),
    Icon(Icons.chat_bubble_outline_outlined),
    Icon(Icons.send_outlined),
  ];

  Post({
    this.photo,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
          title: Text('$user'),
          trailing: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.black,
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$photo.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: Row(
            children: iconsPost.map((icone) {
              return IconButton(
                icon: icone,
                color: Colors.black,
                onPressed: () {},
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
