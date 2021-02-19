import 'package:flutter/material.dart';
import 'Avatar.dart';

class LateralBar extends StatelessWidget {
  final List listOfPhotosAndUsers;

  LateralBar({@required this.listOfPhotosAndUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: listOfPhotosAndUsers
              .map(
                (avatar) => Avatar(
                  photo: avatar['photo'],
                  user: avatar['user'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
