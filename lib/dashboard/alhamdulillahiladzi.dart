import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/main.dart';
import 'package:flutter_quran/var.dart';
import 'package:flutter_quran/sholawatnabi.dart';
import 'package:flutter_quran/dashboard/intro.dart';
import 'package:flutter_quran/dashboard/nabbanallah.dart';

// main method with runapp runs the class A4Run

class A4Run extends StatefulWidget {
  A4Run({Key? key}) : super(key: key);

  @override
  A4RunState createState() => A4RunState();
}

class A4RunState extends State<A4Run> {
  // list of images
  List imgList = [
    Image.asset('assets/1.jpg'),
    Image.asset('assets/2.jpg'),
    Image.asset('assets/3.jpg'),
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
                MaterialPageRoute(builder: (context) => Pembukaan()),
              );
            },
          ),
          title: Column(
            children: const [
              Text(
                "اَلْحَمْدُ لِلّهِ الَّذِي",
                style: TextStyle(
                  fontFamily: 'Anton',
                  letterSpacing: 4.0,
                ),
              ),
              Text(
                "Alhamdulillahiladzi",
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
                  MaterialPageRoute(builder: (context) => Nabbanallahu()),
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
