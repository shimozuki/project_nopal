import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Horizontal and Vertical Divider"),
            backgroundColor: Colors.deepPurpleAccent),
        body: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Card(
                  child: Container(
                    height: 50,
                    color: Colors.black12,
                  ),
                ),
                Divider(
                  color: Colors.redAccent, //color of divider
                  height: 5, //height spacing of divider
                  thickness: 3, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  endIndent: 25, //spacing at the end of divider
                ),
                Card(
                  child: Container(
                    height: 50,
                    color: Colors.black12,
                  ),
                ),
                IntrinsicHeight(
                    //wrap Row with this, otherwise, vertical divider will not display
                    child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Container(
                          height: 50,
                          color: Colors.black12,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black, //color of divider
                      width: 10, //width space of divider
                      thickness: 3, //thickness of divier line
                      indent: 10, //Spacing at the top of divider.
                      endIndent: 10, //Spacing at the bottom of divider.
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          height: 50,
                          color: Colors.black12,
                        ),
                      ),
                    )
                  ],
                ))
              ],
            )));
  }
}
