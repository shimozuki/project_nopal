import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/main.dart';
import 'package:flutter_quran/var.dart';
import 'Lamma.dart';
import 'package:flutter_quran/sholawatnabi.dart';

// main method with runapp runs the class Lamma

class Mahalull extends StatefulWidget {
  Mahalull({Key? key}) : super(key: key);

  @override
  MahalullState createState() => MahalullState();
}

class MahalullState extends State<Mahalull> {
  // list of images
  List imgList = [
    Image.asset('assets/D1.jpg'),
    Image.asset('assets/D2.jpg'),
    Image.asset('assets/D3.jpg'),
    Image.asset('assets/D4.jpg'),
    Image.asset('assets/D5.jpg'),
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
                MaterialPageRoute(builder: (context) => Lamma()),
              );
            },
          ),
          title: Column(
            children: const [
              Text(
                "محلل قيام",
                style: TextStyle(
                  fontFamily: 'Anton',
                  letterSpacing: 4.0,
                ),
              ),
              Text(
                "Mahalull qiyam",
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
              icon: Icon(Icons.close_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sholawatnabi()),
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
