import 'package:bandage/animal_bites_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'models/floatclassAR.dart';

class ArabicAnimalBitesScreen extends StatefulWidget {
  const ArabicAnimalBitesScreen({Key? key}) : super(key: key);

  @override
  State<ArabicAnimalBitesScreen> createState() =>
      _ArabicAnimalBitesScreenState();
}

class _ArabicAnimalBitesScreenState extends State<ArabicAnimalBitesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   floatingActionButton: FloatAppAR.floatactionAR(context: context),     backgroundColor: Color(0xFFFFE9B1),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 42.00,
                  child: Image.asset(
                    "assets/images/Bandage App2.png",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Bandage",
                  style: TextStyle(
                    color: Color(0xFF880000),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Flexible(
              child: Column(children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 1,
                      right: 1,
                    ),
                    child: Container(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            bottom: 10.0,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: Offset(8, 8),
                                            )
                                          ]),
                                      child: Bounceable(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (Context) =>
                                          //             DizzyScreen()));
                                        },
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              width: double.infinity,
                                              height: 240,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    "assets/images/DogBite.png",
                                                    width: double.infinity,
                                                    height: 160,
                                                  ),
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: double.infinity,
                                                  height: 70,
                                                  child: Text(
                                                    "عضة الكلب",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22.0,
                                                      fontFamily: 'Tajawal',
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(30),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: Offset(8, 8),
                                            )
                                          ]),
                                      child: Bounceable(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (Context) =>
                                          //             BleedingScreen()));
                                        },
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              width: double.infinity,
                                              height: 240,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    "assets/images/ScorpionSting.png",
                                                    width: double.infinity,
                                                    height: 170,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: double.infinity,
                                                  height: 70,
                                                  child: Text(
                                                    "لدغة العقارب",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22.0,
                                                      fontFamily: 'Tajawal',
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(30),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.00,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: Offset(8, 8),
                                            )
                                          ]),
                                      child: Bounceable(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (Context) =>
                                          //             SuffocationScreen()));
                                        },
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              width: double.infinity,
                                              height: 240,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    "assets/images/InsectBite.png",
                                                    width: double.infinity,
                                                    height: 170,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: double.infinity,
                                                  height: 60,
                                                  child: Text(
                                                    "لسعة الحشرات",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22.0,
                                                      fontFamily: 'Tajawal',
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(30),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: Offset(8, 8),
                                            )
                                          ]),
                                      child: Bounceable(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (Context) =>
                                          //             PoisoningScreen()));
                                        },
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              width: double.infinity,
                                              height: 240,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    "assets/images/SnakeBite.png",
                                                    width: double.infinity,
                                                    height: 170,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: double.infinity,
                                                  height: 60,
                                                  child: Text(
                                                    "عضة الثعبان",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22.0,
                                                      fontFamily: 'Tajawal',
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(30),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
