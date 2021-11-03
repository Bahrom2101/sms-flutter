import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "SMS\nSHE'RLAR",
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'assets/fonts/regular.OTF',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xfff8C500),
                        elevation: 10,
                        shadowColor: const Color(0xfff8C500),
                        margin: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: SvgPicture.asset(
                                          'assets/svg/ic_news_pack.svg',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Yangilar",
                                      style: TextStyle(
                                          color: Color(0xffB99303),
                                          fontSize: 18,
                                          fontFamily:
                                              'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '122',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily:
                                              'assets/fonts/SFProDisplay.ttf'),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'ta',
                                      style: TextStyle(
                                          color: Color(0xffB99303),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily:
                                              'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                )
                              ],
                            ),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x99f8c500),
                                  blurRadius: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffea1655),
                        elevation: 5,
                        shadowColor: const Color(0xffea1655),
                        margin: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: SvgPicture.asset(
                                          'assets/svg/ic_liked_pack.svg',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Saqlanganlar",
                                      style: TextStyle(
                                          color: Color(0xffFFA6B6),
                                          fontSize: 18,
                                          fontFamily:
                                          'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily:
                                          'assets/fonts/SFProDisplay.ttf'),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'ta',
                                      style: TextStyle(
                                          color: Color(0xffFFA6B6),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily:
                                          'assets/fonts/SFProDisplay.ttf'),
                                    )
                                  ],
                                )
                              ],
                            ),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x8bea1655),
                                  blurRadius: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffffffff),
                        elevation: 0.0,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  'assets/png/ic_lovely.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Sevgi she'rlari",
                              style: TextStyle(
                                  color: Color(0xff6a6a6a),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontFamily: 'assets/fonts/SFProDisplay.ttf'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffffffff),
                        elevation: 0.0,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  'assets/png/ic_miss.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Sog'inch armon",
                              style: TextStyle(
                                  color: Color(0xff6a6a6a),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontFamily: 'assets/fonts/SFProDisplay.ttf'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffffffff),
                        elevation: 0.0,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  'assets/png/ic_congratulations.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Tabrik she'rlari",
                              style: TextStyle(
                                  color: Color(0xff6a6a6a),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontFamily: 'assets/fonts/SFProDisplay.ttf'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffffffff),
                        elevation: 0.0,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  'assets/png/ic_parents.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Ota-ona haqida",
                              style: TextStyle(
                                  color: Color(0xff6a6a6a),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontFamily: 'assets/fonts/SFProDisplay.ttf'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffffffff),
                        elevation: 0.0,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  'assets/png/ic_friendship.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Do'stlik she'rlari",
                              style: TextStyle(
                                  color: Color(0xff6a6a6a),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontFamily: 'assets/fonts/SFProDisplay.ttf'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        color: const Color(0xffffffff),
                        elevation: 0.0,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  'assets/png/ic_joke.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Hazil she'rlar",
                              style: TextStyle(
                                  color: Color(0xff6a6a6a),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontFamily: 'assets/fonts/SFProDisplay.ttf'),
                            )
                          ],
                        ),
                      ),
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
