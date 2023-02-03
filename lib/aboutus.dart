// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'var.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(home: About()));

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  _launchURL(String url) async {
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          title: Text(
            'About',
            style: TextStyle(fontFamily: 'Anton', letterSpacing: 4.0),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.grey[850],
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 200,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'About Me :',
                    style: TextStyle(
                      fontFamily: 'Anton',
                      fontSize: 20,
                      letterSpacing: 5,
                      color: commontext,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nama : Adzan Naufal Azkari \nNim : 1810530241',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 3,
                      color: commontext,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Apps :',
                    style: TextStyle(
                      fontFamily: 'Anton',
                      fontSize: 20,
                      letterSpacing: 5,
                      color: commontext,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "aplikasi ini berguna untuk sebagai media bantu dalam melakukan kegiatan sholawat sehari hari dan bertujuan untuk menyelesaikan studi akhir s1 ilmu computer di unversitas bumigora",
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 3,
                      color: commontext,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Social Media :',
                    style: TextStyle(
                      fontFamily: 'Anton',
                      fontSize: 20,
                      letterSpacing: 5,
                      color: commontext,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 142, 25, 210)),
                        icon: Icon(Icons.camera),
                        label: Text('@NaufalAzkarius'),
                        onPressed: () {
                          _launchURL(
                              "https://www.instagram.com/naufalazkarius/");
                        },
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
