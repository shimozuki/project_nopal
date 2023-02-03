import 'package:flutter/material.dart';
import 'setting.dart';
import 'var.dart';
import 'page.dart';
import 'package:flutter_quran/dashboard/alhamdulillahiladzi.dart';
import 'package:flutter_quran/dashboard/intro.dart';
import 'package:flutter_quran/dashboard/nabbanallah.dart';
import 'package:flutter_quran/dashboard/hadza.dart';
import 'package:flutter_quran/dashboard/Lamma.dart';
import 'package:flutter_quran/dashboard/Mahalull.dart';
import 'package:flutter_quran/dashboard/dasboard.dart';

class Sholawatnabi extends StatefulWidget {
  const Sholawatnabi({Key? key}) : super(key: key);

  @override
  State<Sholawatnabi> createState() => _SholawatnabiState();
}

class _SholawatnabiState extends State<Sholawatnabi> {
  final myController = TextEditingController();
  DateTime timeBackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: bgcolor,
          //top bar
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.amber),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            // bottom: const TabBar(
            //   tabs: [
            //     Tab(text: 'Sholawat'),
            //     Tab(text: 'Terjemahan'),
            //   ],
            // ),
            toolbarHeight: 60.0,
            title: Text(
              'Assalam Sholawat',
              style: TextStyle(
                letterSpacing: 4.0,
                fontFamily: 'Anton',
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0.0,
            actions: [
              IconButton(
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Setting()),
                  );
                },
                icon: Icon(
                  Icons.settings,
                ),
              ),
            ],
          ),

          body: TabBarView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.amber,
                          width: 5,
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Center(
                          child: Text(
                            'Sholawat Maulid',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Anton',
                              letterSpacing: 7,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    surah(
                      text: "اين فتاحنة",
                      text2: "inna fatahna",
                      num: '1',
                      number: '١',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Pembukaan()));
                      },
                    ),
                    surah(
                      text: "اَلْحَمْدُ لِلّهِ الَّذِي هَدَ انَا",
                      text2: "Alhamdulillahiladzi",
                      num: '2',
                      number: '٢',
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => A4Run()));
                      },
                    ),
                    surah(
                      text: "نبان الله قولا",
                      text2: "nabbanallah",
                      num: '3',
                      number: '٣',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Nabbanallahu()));
                      },
                    ),
                    surah(
                      text: 'هزاع وقاد ناسارو',
                      text2: "hadza waqad nasyaro",
                      num: '4',
                      number: '٤',
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Hadza()));
                      },
                    ),
                    surah(
                      text: 'لما دانا',
                      text2: "Lamma dana",
                      num: '5',
                      number: '٥',
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Lamma()));
                      },
                    ),
                    surah(
                      text: 'محلل قيام',
                      text2: "Mahalull qiyam",
                      num: '6',
                      number: '٦',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Mahalull()));
                      },
                    ),
                    // surah(
                    //   text: 'Surah Al-Buruj',
                    //   text2: "Mekah-22 verses",
                    //   num: '8',
                    //   number: '590',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(8),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah At-Tariq',
                    //   text2: "Mekah-17 verses",
                    //   num: '9',
                    //   number: '591',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(9),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: "Surah Al-A'la",
                    //   text2: "Mekah-19 verses",
                    //   num: '10',
                    //   number: '591',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(9),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Ghashiyah',
                    //   text2: "Mekah-26 verses",
                    //   num: '11',
                    //   number: '592',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(10),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Fajr',
                    //   text2: "Mekah-30 verses",
                    //   num: '12',
                    //   number: '593',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(11),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Balad',
                    //   text2: "Mekah-20 verses",
                    //   num: '13',
                    //   number: '594',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(12),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Ash-Shams',
                    //   text2: "Mekah-15 verses",
                    //   num: '14',
                    //   number: '595',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(13),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Layl',
                    //   text2: "Mekah-21 verses",
                    //   num: '15',
                    //   number: '595',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(13),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Ad-Dhuha',
                    //   text2: "Mekah-11 verses",
                    //   num: '16',
                    //   number: '596',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(14),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Sharh',
                    //   text2: "Mekah-8 verses",
                    //   num: '17',
                    //   number: '596',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(14),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah At-Tin',
                    //   text2: "Mekah-8 verses",
                    //   num: '18',
                    //   number: '597',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(15),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Alaq',
                    //   text2: "Mekah-19 verses",
                    //   num: '19',
                    //   number: '597',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(15),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Qadr',
                    //   text2: "Mekah-5 verses",
                    //   num: '20',
                    //   number: '598',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(16),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Bayyinah',
                    //   text2: "Mekah-8 verses",
                    //   num: '21',
                    //   number: '598',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(16),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Az-Zalzalah',
                    //   text2: "Mekah-8 verses",
                    //   num: '22',
                    //   number: '599',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(17),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Adiyat',
                    //   text2: "Mekah-11 verses",
                    //   num: '23',
                    //   number: '599',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(17),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: "Surah Al-Qari'ah",
                    //   text2: "Mekah-11 verses",
                    //   num: '24',
                    //   number: '600',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(18),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah At-Takathur',
                    //   text2: "Mekah-8 verses",
                    //   num: '25',
                    //   number: '600',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(18),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Asr',
                    //   text2: "Mekah-3 verses",
                    //   num: '26',
                    //   number: '601',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(19),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Humazah',
                    //   text2: "Mekah-9 verses",
                    //   num: '27',
                    //   number: '601',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(19),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Fil',
                    //   text2: "Mekah-5 verses",
                    //   num: '28',
                    //   number: '601',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(19),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Quraysh',
                    //   text2: "Mekah-4 verses",
                    //   num: '29',
                    //   number: '602',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(20),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: "Surah Al-Ma'un",
                    //   text2: "Mekah-7 verses",
                    //   num: '30',
                    //   number: '602',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(20),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Kawthar',
                    //   text2: "Mekah-3 verses",
                    //   num: '31',
                    //   number: '602',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(20),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Kafirun',
                    //   text2: "Mekah-6 verses",
                    //   num: '32',
                    //   number: '603',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(21),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah An-Nasr',
                    //   text2: "Mekah-3 verses",
                    //   num: '33',
                    //   number: '603',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(21),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Masad',
                    //   text2: "Mekah-5 verses",
                    //   num: '34',
                    //   number: '603',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(21),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Ikhlas',
                    //   text2: "Mekah-4 verses",
                    //   num: '35',
                    //   number: '604',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(22),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah Al-Falaq',
                    //   text2: "Mekah-5 verses",
                    //   num: '36',
                    //   number: '604',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(22),
                    //     );
                    //   },
                    // ),
                    // surah(
                    //   text: 'Surah An-Nas',
                    //   text2: "Mekah-6 verses",
                    //   num: '37',
                    //   number: '604',
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //       context,
                    //       Pages.routeName,
                    //       arguments: ScreenArguments(22),
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    juzuk(
                      text: "Sholawat",
                      number: '582',
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Pages.routeName,
                          arguments: ScreenArguments(0),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onPressed,
}) {
  const iconcolor = Colors.amber;
  var textcolor = commontext;

  return ListTile(
    leading: Icon(
      icon,
      color: iconcolor,
    ),
    title: Text(
      text,
      style: TextStyle(color: textcolor),
    ),
    onTap: onPressed,
  );
}

Widget surah({
  required String text,
  required String text2,
  required String num,
  required String number,
  VoidCallback? onPressed,
}) {
  return Card(
    color: Colors.grey[700],
    child: ListTile(
      leading: Text(
        num,
        style:
            TextStyle(fontFamily: 'Anton', fontSize: 30.0, color: Colors.amber),
      ),
      title: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(text2, style: TextStyle(color: Colors.grey, letterSpacing: 2)),
        ],
      ),
      trailing: Text(number,
          style: TextStyle(
            color: Colors.amber,
          )),
      onTap: onPressed,
    ),
  );
}

Widget juzuk({
  required String text,
  required String number,
  VoidCallback? onPressed,
}) {
  return Card(
    color: Colors.grey[700],
    child: ListTile(
      title: Padding(
        padding: EdgeInsets.fromLTRB(10, 0.0, 0.0, 0.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 5,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      trailing: Text(
        number,
        style: TextStyle(
          color: Colors.amber,
        ),
      ),
      onTap: onPressed,
    ),
  );
}
