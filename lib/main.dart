import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/BottomBar.dart';
import 'components/LateralBar.dart';
import 'components/Post.dart';

void main() => runApp(InstagramPage());

class InstagramPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

final List accounts = [
  {'photo': 'ismael', 'user': 'ismaelpdro'},
  {'photo': 'yasmin', 'user': 'yasmind_p'},
  {'photo': 'marcello', 'user': 'marcello_eliias'},
  {'photo': 'madelon', 'user': 'mmadelon_'},
  {'photo': 'random', 'user': 'joao_antonio'},
  {'photo': 'katara', 'user': 'katara_water'},
  {'photo': 'bolsonaro', 'user': 'taokey'},
  {'photo': 'lula', 'user': 'companheiro'},
  {'photo': 'dory', 'user': 'dory_fish'},
  {'photo': 'yes', 'user': 'yes_sr'},
];

final List<Icon> iconsAppBar = [
  Icon(Icons.add_circle_outline_rounded),
  Icon(Icons.favorite_outline_rounded),
  Icon(Icons.send_outlined),
];

final List<Icon> iconsBottomBar = [
  Icon(Icons.home_outlined),
  Icon(Icons.search),
  Icon(Icons.shop_outlined),
  Icon(Icons.shopping_bag_outlined),
  Icon(Icons.account_circle_outlined),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 0),
        elevation: 0,
        title: SvgPicture.asset(
          'assets/images/Instagram_logo.svg',
          height: 50 * MediaQuery.of(context).textScaleFactor,
        ),
        actions: iconsAppBar
            .map(
              (icone) => IconButton(
                color: Colors.black,
                icon: icone,
                onPressed: () {},
                iconSize: 28,
              ),
            )
            .toList(),
      ),
      body: LayoutBuilder(
        builder: (_, constrainsts) {
          return Column(
            children: [
              Container(
                height: constrainsts.maxHeight * .22,
                child: LateralBar(
                  listOfPhotosAndUsers: accounts,
                ),
              ),
              Divider(height: 0),
              Container(
                height: constrainsts.maxHeight * .78,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...accounts.map((user) {
                        return Post(
                          photo: user['photo'],
                          user: user['user'],
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomBar(
        iconsBottomBar: iconsBottomBar,
      ),
    );
  }
}
