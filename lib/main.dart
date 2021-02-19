import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './components/BottomBar.dart';
import './components/LateralBar.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined),
          color: Colors.black,
          onPressed: () {},
        ),
        title: SvgPicture.asset(
          'assets/images/Instagram_logo.svg',
          height: 50,
        ),
        actions: [
          Transform.rotate(
            angle: 5.6,
            child: IconButton(
              icon: Icon(Icons.send_outlined),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              LateralBar(),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
