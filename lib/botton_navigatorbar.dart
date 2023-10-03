import 'package:exam/screen2.dart';
import 'package:exam/screen3.dart';
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
    Screen3(),
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
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/grid-01.png'),
            label: 'Grid'),
        //here i am create this as a navigator to go second screen....
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/calendar.png'),
            label: 'Calender'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
      ],
    );
  }
}
