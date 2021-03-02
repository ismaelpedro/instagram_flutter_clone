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
      DeviceOrientation.portraitDown,
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
    AppBar appBar = AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromRGBO(250, 250, 250, 0),
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.add_circle_outline_outlined),
          onPressed: () {},
          iconSize: 28,
        ),
        title: SvgPicture.asset(
          'assets/images/Instagram_logo.svg',
          height: 50,
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
            iconSize: 28,
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.send_outlined),
            onPressed: () {},
            iconSize: 28,
          ),
        ]);

    double avaliableHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            height: avaliableHeight * .16,
            child: LateralBar(
              listOfPhotosAndUsers: accounts,
            ),
          ),
          Divider(height: 0),
          Container(
            height: avaliableHeight * .74,
            width: double.infinity,
            child: ListView.builder(
              itemCount: accounts.length,
              itemBuilder: (context, index) {
                return Post(
                  photo: accounts[index]['photo'],
                  user: accounts[index]['user'],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: avaliableHeight * .10,
        child: BottomBar(
          iconsBottomBar: iconsBottomBar,
        ),
      ),
    );
  }
}
