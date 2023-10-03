import 'package:exam/slider_screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatelessWidget {
  static const String routeName = "Screen3";

  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/imageonscrenn3.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "AliceCare",
              style: GoogleFonts.milonga(),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                labelText: 'Articles, Video, Audio and More,...',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceChip(
                    label: Text(
                      'Discover',
                      style: TextStyle(color: Colors.purple),
                    ),
                    selected: true,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ChoiceChip(
                    label: Text(
                      'News',
                      style: TextStyle(color: Colors.purple),
                    ),
                    selected: false,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ChoiceChip(
                    label: Text(
                      'Most Viewed',
                      style: TextStyle(color: Colors.purple),
                    ),
                    selected: false,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ChoiceChip(
                    label: Text(
                      'Saved',
                      style: TextStyle(color: Colors.purple),
                    ),
                    selected: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot topics",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.purple,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: SliderScreen(),
            ),
            Row(children: [
              Text(
                'Get Tips',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Frame dpc.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cycle Phases and Period",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.today_outlined), label: 'Today'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Icon.png'), label: 'Insights'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_outlined), label: 'Chat'),
        ],
      ),
    );
  }
}
