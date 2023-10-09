import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 700,
            width: 400,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black
            ),
            child: Center(
              child: Text("image"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 700,
            width: 400,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black
            ),
            child: Center(
              child: Text("image"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 700,
            width: 400,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black
            ),
            child: Center(
              child: Text("image"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 700,
            width: 400,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black
            ),
            child: Center(
              child: Text("image"),
            ),
          ),
        ],),
      ),
    );
  }
}
