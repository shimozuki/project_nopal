import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/main.dart';
import 'package:flutter_quran/var.dart';
import 'package:flutter_quran/sholawatnabi.dart';
import 'Lamma.dart';
import 'nabbanallah.dart';

// main method with runapp runs the class Hadza

class Hadza extends StatefulWidget {
  Hadza({Key? key}) : super(key: key);

  @override
  HadzaState createState() => HadzaState();
}

class HadzaState extends State<Hadza> {
  // list of images
  List imgList = [
    Image.asset('assets/B1.jpg'),
    Image.asset('assets/B2.jpg'),
    Image.asset('assets/B3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    // count of the list of image
    var ImgCount = imgList.length;

    // MaterialApp with debugShowCheckedModeBanner false
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Nabbanallahu()),
              );
            },
          ),
          title: Column(
            children: const [
              Text(
                "نبان الله قولا",
                style: TextStyle(
                  fontFamily: 'Anton',
                  letterSpacing: 4.0,
                ),
              ),
              Text(
                "Hadza",
                style: TextStyle(
                  letterSpacing: 4.0,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.grey[850],
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lamma()),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(0.0),
          // list view to show images and list count
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // showing list of images
              for (var item in imgList)
                Center(
                  child: Container(child: item),
                )
            ],
          ),
        ),
      ),
    );
  }
}
