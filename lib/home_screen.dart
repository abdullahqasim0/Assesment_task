import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luvit_app/Screens/slider.dart';

import 'Screens/home.dart';
import 'Screens/location.dart';
import 'Screens/message.dart';
import 'Screens/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;
  final List<Widget> screen = [
    Home(),
    Location(),
    Message(),
    User(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.add_location,color: Colors.grey,), // Change the icon here
              onPressed: () {
              },
            ),
            Text(
              "목이길어슬픈기린님의 새로운 스팟", // Add your custom text here
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.star,color: Colors.red,),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
          Text("323,233",style: TextStyle(color: Colors.grey)),
          IconButton(
            icon: Icon(Icons.notifications,color: Colors.grey,),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 500,
              width: 320,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: SliderScreen(),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 500,
              width: 290,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: SliderScreen(),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 500,
              width: 290,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: SliderScreen(),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 500,
              width: 290,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: SliderScreen(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.star),
        backgroundColor: Colors.black,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 70,
                  onPressed: () {
                    setState(() {
                      currentScreen = Home();
                      current = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: current == 0 ? Colors.red : Colors.grey,
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 140,
                  onPressed: () {
                    setState(() {
                      currentScreen = Location();
                      current = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: current == 1 ? Colors.red : Colors.grey,
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 70,
                  onPressed: () {
                    setState(() {
                      currentScreen = Message();
                      current = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message,
                        color: current == 2 ? Colors.red : Colors.grey,
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 95,
                  onPressed: () {
                    setState(() {
                      currentScreen = User();
                      current = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: current == 3 ? Colors.red : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
