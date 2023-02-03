import 'package:flutter/material.dart';
import 'package:flutter_quran/sholawatnabi.dart';
import 'package:flutter_quran/dashboard/alhamdulillahiladzi.dart';

// main method with runapp runs the class Pembukaan

class Pembukaan extends StatefulWidget {
  Pembukaan({Key? key}) : super(key: key);

  @override
  PembukaanState createState() => PembukaanState();
}

class PembukaanState extends State<Pembukaan> {
  // list of images
  List imgList = [
    Image.asset(
      'assets/intro.jpeg',
    ),
    Image.asset('assets/arti_intro.jpeg'),
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
                MaterialPageRoute(builder: (context) => Sholawatnabi()),
              );
            },
          ),
          title: Column(
            children: const [
              Text(
                "اين فتاحنة",
                style: TextStyle(
                  fontFamily: 'Anton',
                  letterSpacing: 4.0,
                ),
              ),
              Text(
                "inna fatahna",
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
                  MaterialPageRoute(builder: (context) => A4Run()),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(0),
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
