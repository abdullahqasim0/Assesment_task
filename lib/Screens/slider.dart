import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List image =[
    {"id": 1,"image_path": 'images/image1.jpg'},
    {"id": 2,"image_path": 'images/image1.jpg'},
    {"id": 3,"image_path": 'images/image1.jpg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: (){
                  print(currentIndex);
                },
                child:CarouselSlider(
                  items: image.map((item) =>
                      Container(
                        width: 340, // Set the width to the screen width
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black, // You can change the border color here
                            width: 0, // You can change the border width here
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2), // Adjust this value for rounded corners
                          child: Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ).toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 0,
                    viewportFraction: 1,
                    height: 460, // Set the desired height here
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                )
              ),
              Positioned(
                  top: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: image.asMap().entries.map((entry){
                      print(entry);
                      print(entry.key);
                      return GestureDetector(
                        onTap: ()=> carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 40 :40,
                          height: 7.0,
                          margin: EdgeInsets.symmetric(
                            horizontal: 2.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                              ? Colors.red
                                : Colors.grey
                          ),
                        ),
                      );
                    }).toList(),
                  )),
            ],
          ),
        ],
      ),



      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.heart_broken),
        backgroundColor: Colors.black,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
