import 'package:flutter/material.dart';
import 'package:flutter_quran/main.dart';
import 'package:flutter_quran/sholawatnabi.dart';
import 'package:flutter_quran/aboutus.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.fromARGB(255, 39, 38, 38),
            width: double.infinity,
            height: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  width: 393,
                  height: 206,
                  child: Image.asset('assets/logo.png')),
              Container(height: 3),
              const Text("Majelis Assalam",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 31,
                      color: Colors.amber)),
              Padding(
                padding: const EdgeInsets.only(top: 43),
                child: SizedBox(
                  width: 305.53,
                  height: 72.37,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sholawatnabi()));
                    },
                    child: const Text(
                      "Sholawat Maulid",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: SizedBox(
                  width: 305.53,
                  height: 72.37,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: const Text(
                      "Sholawat Nabi",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: SizedBox(
                  width: 305.53,
                  height: 72.37,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About()));
                    },
                    child: const Text(
                      "About",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: SizedBox(
                  width: 305.53,
                  height: 72.37,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onPressed: () {
                      SystemNavigator
                          .pop(); //for Android from flutter/services.dart
                      //exit(0) for both Android and iOS
                    },
                    child: const Text(
                      "Exit",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
