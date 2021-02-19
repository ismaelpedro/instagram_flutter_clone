import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String user;
  final String photo;

  Avatar({
    @required this.photo,
    @required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 43,
            backgroundImage: AssetImage('assets/images/$photo.jpeg'),
          ),
          Text('$user'),
        ],
      ),
    );
  }
}
