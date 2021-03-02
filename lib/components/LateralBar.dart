import 'package:flutter/material.dart';
import 'Avatar.dart';

class LateralBar extends StatelessWidget {
  final List listOfPhotosAndUsers;

  LateralBar({@required this.listOfPhotosAndUsers});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listOfPhotosAndUsers.length,
      itemBuilder: (context, index) {
        return Avatar(
          photo: listOfPhotosAndUsers[index]['photo'],
          user: listOfPhotosAndUsers[index]['user'],
        );
      },
    );
  }
}
