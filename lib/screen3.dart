import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  static const String routeName = "Screen3";

  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen3",style: TextStyle(
        color: Colors.yellow,
      ),)),
    );
  }
}
