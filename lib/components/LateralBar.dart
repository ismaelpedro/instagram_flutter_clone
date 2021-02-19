import 'package:flutter/material.dart';
import 'ImageRounded.dart';

class LateralBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List users = [
      {'photo': 'ismael', 'user': 'ismaelpdro'},
      {'photo': 'yasmin', 'user': 'yasmind_p'},
      {'photo': 'marcello', 'user': 'marcello_eliias'},
      {'photo': 'madelon', 'user': 'mmadelon_'},
      {'photo': 'random', 'user': 'joao_antonio'},
      {'photo': 'katara', 'user': 'katara_water'},
      {'photo': 'dory', 'user': 'dory'},
      {'photo': 'yes', 'user': 'yes'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users
            .map((user) => ImageRounded(
                  photo: user['photo'],
                  user: user['user'],
                ))
            .toList(),
      ),
    );
  }
}
