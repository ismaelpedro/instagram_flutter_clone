import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final String user;
  final String photo;

  CircularAvatar({
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
            radius: 47,
            child: CircleAvatar(
              radius: 43,
              backgroundImage: AssetImage('assets/images/$photo.jpeg'),
            ),
          ),
          SizedBox(height: 5),
          Text('$user'),
        ],
      ),
    );
  }
}
