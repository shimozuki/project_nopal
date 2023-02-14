import 'package:flutter/material.dart';
import 'package:flutter_quran/main.dart';
import '../var.dart';
import 'Manana.dart';
import 'hayyulhadi.dart';
import 'package:audioplayers/audioplayers.dart';

class Tabbasam extends StatefulWidget {
  @override
  _TabbasamState createState() => _TabbasamState();
}

class _TabbasamState extends State<Tabbasam> {
  //we will need some variables
  bool playing = false; // at the begining we are not playing any song
  IconData playBtn = Icons.play_arrow; // the main state of the play button icon

  //Now let's start by creating our music player
  //first let's declare some object
  late AudioPlayer _player;
  late AudioCache cache;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  //we will create a custom slider

  Widget slider() {
    return Container(
      width: 250.0,
      child: Slider.adaptive(
          activeColor: Colors.amber,
          inactiveColor: Colors.grey[350],
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  //let's create the seek function that will allow us to go to a certain position of the music
  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  //Now let's initialize our player
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    //now let's handle the audioplayer time

    _player.onDurationChanged.listen((d) {
      setState(() {
        musicLength = d;
      });
    });
    // _player.durationHandler = (d) {
    //   setState(() {
    //     musicLength = d;
    //   });
    // };

    //this function will allow us to move the cursor of the slider while we are playing the song
    _player.onAudioPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      //let's start by creating the main UI of the app
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Hayyulhadi()),
            );
          },
        ),
        title: Column(
          children: const [
            Text(
              "تبسم",
              style: TextStyle(fontFamily: 'Anton', letterSpacing: 4.0),
            ),
            Text(
              "Sholawat Tabassam",
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
                MaterialPageRoute(builder: (context) => Manana()),
              );
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/584.jpeg"),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 48.0,
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Let's add some text title

                //Let's add the music cov
                SizedBox(
                  height: 590.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(34, 33, 33, 0.568),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Let's start by adding the controller
                        //let's add the time indicator text

                        Container(
                          width: 500.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 32.0,
                                color: Colors.amber,
                                onPressed: () {
                                  //here we will add the functionality of the play button
                                  if (!playing) {
                                    //now let's play the song
                                    cache.play("audio/584.mp3");
                                    setState(() {
                                      playBtn = Icons.pause;
                                      playing = true;
                                    });
                                  } else {
                                    _player.pause();
                                    setState(() {
                                      playBtn = Icons.play_arrow;
                                      playing = false;
                                    });
                                  }
                                },
                                icon: Icon(
                                  playBtn,
                                ),
                              ),
                              Text(
                                "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              slider(),
                              Text(
                                "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(100)}",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     IconButton(
                        //       iconSize: 25.0,
                        //       color: Colors.amber,
                        //       onPressed: () {},
                        //       icon: Icon(
                        //         Icons.skip_previous,
                        //       ),
                        //     ),
                        //     IconButton(
                        //       iconSize: 32.0,
                        //       color: Colors.amber,
                        //       onPressed: () {
                        //         //here we will add the functionality of the play button
                        //         if (!playing) {
                        //           //now let's play the song
                        //           cache.play("audio/584.mp3");
                        //           setState(() {
                        //             playBtn = Icons.pause;
                        //             playing = true;
                        //           });
                        //         } else {
                        //           _player.pause();
                        //           setState(() {
                        //             playBtn = Icons.play_arrow;
                        //             playing = false;
                        //           });
                        //         }
                        //       },
                        //       icon: Icon(
                        //         playBtn,
                        //       ),
                        //     ),
                        //     IconButton(
                        //       iconSize: 25.0,
                        //       color: Colors.amber,
                        //       onPressed: () {},
                        //       icon: Icon(
                        //         Icons.skip_next,
                        //       ),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
