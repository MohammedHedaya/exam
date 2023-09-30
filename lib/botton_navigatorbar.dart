import 'package:exam/screen2.dart';
import 'package:flutter/material.dart';

class BottonNavigator extends StatefulWidget {
  BottonNavigator({Key? key}) : super(key: key);

  @override
  _BottonNavigatorState createState() => _BottonNavigatorState();
}

class _BottonNavigatorState extends State<BottonNavigator> {
  int index = 0;

  final List<Widget> pages = [
    Screen2(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      onTap: (value) {
        setState(() {
          index = value;
        });

        if (index == 1) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Screen2(),
          ));
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Go 2'),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'DashBoard'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
      ],
    );
  }
}
