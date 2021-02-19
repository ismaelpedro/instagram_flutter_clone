import 'package:flutter/material.dart';

class ImageRounded extends StatelessWidget {
  final String user;
  final String photo;

  ImageRounded({
    this.photo,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            child: CircleAvatar(
              radius: 43,
              backgroundImage: AssetImage('assets/images/$photo.jpeg'),
            ),
          ),
          Text('$user'),
        ],
      ),
    );
  }
}
