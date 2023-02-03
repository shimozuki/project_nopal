import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/main.dart';
import 'package:flutter_quran/var.dart';
import 'package:flutter_quran/dashboard/alhamdulillahiladzi.dart';
import 'package:flutter_quran/dashboard/hadza.dart';

// main method with runapp runs the class nabbanallahu

class Nabbanallahu extends StatefulWidget {
  Nabbanallahu({Key? key}) : super(key: key);

  @override
  NabbanallahuState createState() => NabbanallahuState();
}

class NabbanallahuState extends State<Nabbanallahu> {
  // list of images
  List imgList = [
    Image.asset('assets/A1.jpg'),
    Image.asset('assets/A2.jpg'),
    Image.asset('assets/A3.jpg'),
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
                MaterialPageRoute(builder: (context) => A4Run()),
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
                "nabbanallahu",
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
                  MaterialPageRoute(builder: (context) => Hadza()),
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
