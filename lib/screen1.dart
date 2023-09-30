import 'package:exam/botton_navigatorbar.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {

  static const String routeName = "Screen1";

   Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(
          'assets/images/Group.png',
          width: 20,
          height: 20,
        ),
        title: Row(
          children: [
            SizedBox(width: 10),
            Text(
              'Moody',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 150),
            Badge(
              child: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Sara Rose",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "How are you feeling today?",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            alignment: Alignment.topCenter,
            'assets/images/Frame 19.png',
            width: 500,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Feature",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 150,),
                Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                Icon(Icons.arrow_forward,color: Colors.green,),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/Frame 24.png',
                width: 360,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/Frame 34.png",height: 120,width: 300,),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottonNavigator(),
    );
  }
}
