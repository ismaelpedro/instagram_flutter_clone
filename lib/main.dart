import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './components/BottomBar.dart';
import './components/LateralBar.dart';
import './components/Post.dart';

void main() => runApp(InstagramClone());

class InstagramClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0,
        title: SvgPicture.asset(
          'assets/images/Instagram_logo.svg',
          height: 50,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline_rounded),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.favorite_outline_rounded),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.send_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LateralBar(),
            Divider(),
            ...users.map((user) {
              return Post(
                photo: user['photo'],
                user: user['user'],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
