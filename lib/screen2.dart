import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  static const String routeName = "Screen2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/mohamed.jpg"),
            )
          ],
        ),
        actions: [
          Badge(child: Icon(Icons.notification_add),alignment: Alignment.topCenter,)
        ],
      ),
    );
  }
}
