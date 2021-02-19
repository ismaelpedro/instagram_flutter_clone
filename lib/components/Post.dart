import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final photo;
  final user;

  Post({
    this.photo,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.65,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            title: Text('$user'),
            trailing: Icon(Icons.menu),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.51,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/images/$photo.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 4),
          ListTile(
            leading: Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
