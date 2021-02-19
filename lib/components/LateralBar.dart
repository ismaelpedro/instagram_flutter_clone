import 'package:flutter/material.dart';
import 'CircularAvatar.dart';

class LateralBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            CircularAvatar(
              photo: 'ismael',
              user: 'ismaelpdro',
            ),
            CircularAvatar(
              photo: 'yasmin',
              user: 'yasmind_p',
            ),
            CircularAvatar(
              photo: 'marcello',
              user: 'marcello_eliias',
            ),
            CircularAvatar(
              photo: 'madelon',
              user: 'mmadelon_',
            ),
            CircularAvatar(
              photo: 'ismael',
              user: 'ismaelpdro',
            ),
            CircularAvatar(
              photo: 'yasmin',
              user: 'yasmind_p',
            ),
            CircularAvatar(
              photo: 'marcello',
              user: 'marcello_eliias',
            ),
            CircularAvatar(
              photo: 'madelon',
              user: 'mmadelon_',
            ),
          ],
        ),
      ),
    );
  }
}
