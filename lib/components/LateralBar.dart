import 'package:flutter/material.dart';
import 'CircularAvatar.dart';

class LateralBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = [
      {'photo': 'ismael', 'user': 'ismaelpdro'},
      {'photo': 'yasmin', 'user': 'yasmind_p'},
      {'photo': 'marcello', 'user': 'marcello_eliias'},
      {'photo': 'madelon', 'user': 'mmadelon_'},
      {'photo': 'random', 'user': 'joao_antonio'},
      {'photo': 'katara', 'user': 'katara_water'},
      {'photo': 'dory', 'user': 'dory'},
      {'photo': 'yes', 'user': 'yes'},
    ];
    final cloneUsers = []..addAll(users);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: cloneUsers.map((user) {
            return CircularAvatar(
              photo: user['photo'],
              user: user['user'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
