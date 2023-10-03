import 'package:exam/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  static const String routeName = "Screen2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(
          'assets/images/Ellipse 10.png',
        ),
        title: Row(
          children: [
            SizedBox(width: 10),
            Text(
              'Hello, Jade\n'
              'Ready to workout?',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(width: 50),
            Badge(
              child: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Frame 3466506.png'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Workout Programs",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ChoiceChip(
                  label: Text(
                    'All Type',
                    style: TextStyle(color: Colors.purple),
                  ),
                  selected: true,
                ),
                SizedBox(
                  width: 5,
                ),
                ChoiceChip(
                  label: Text(
                    'Full Body',
                    style: TextStyle(color: Colors.purple),
                  ),
                  selected: false,
                ),
                SizedBox(
                  width: 5,
                ),
                ChoiceChip(
                  label: Text(
                    'Upper',
                    style: TextStyle(color: Colors.purple),
                  ),
                  selected: false,
                ),
                SizedBox(
                  width: 5,
                ),
                ChoiceChip(
                  label: Text(
                    'Lower',
                    style: TextStyle(color: Colors.purple),
                  ),
                  selected: false,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ChoiceChip(
                            label: Text("7 Days"),
                            selected: false,
                          ),
                          SizedBox(height: 5),
                          Text('Morning Yoga\n'
                              'Improve mental focus\n'
                              '30 mins'),
                        ],
                      ),
                      SizedBox(width: 40),
                      Image.asset("assets/images/[removal 2.png"),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 5,
                  endIndent: 5,
                  thickness: 2,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ChoiceChip(
                            label: Text("3 Days"),
                            selected: false,
                          ),
                          SizedBox(height: 5),
                          Text('Plank Exercise\n''Improve posture and\n stability.\n''30 mins'),
                        ],
                      ),
                      Image.asset("assets/images/pngwing 1.png"),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 5,
                  endIndent: 5,
                  thickness: 2,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Screen3();
                    }));
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Go To Screen 3',style: TextStyle( color: Colors.pink,),),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/navigation-pointer-01.png'),
              label: 'Pointer'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/bar-chart-07.png'),
              label: 'Bar Chart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],
      ),
    );
  }
}
