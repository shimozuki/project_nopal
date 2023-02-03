import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/main.dart';
import 'package:flutter_quran/var.dart';
import 'hadza.dart';
import 'Mahalull.dart';

// main method with runapp runs the class Lamma

class Lamma extends StatefulWidget {
  Lamma({Key? key}) : super(key: key);

  @override
  LammaState createState() => LammaState();
}

class LammaState extends State<Lamma> {
  // list of images
  List imgList = [
    Image.asset('assets/C1.jpg'),
    Image.asset('assets/C2.jpg'),
    Image.asset('assets/C3.jpg'),
    Image.asset('assets/C4.jpg'),
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
                MaterialPageRoute(builder: (context) => Hadza()),
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
                "Lamma",
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
                  MaterialPageRoute(builder: (context) => Mahalull()),
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
