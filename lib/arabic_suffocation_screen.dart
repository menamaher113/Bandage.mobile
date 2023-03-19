import 'package:bandage/animal_bites_screen.dart';
import 'package:bandage/arabic_category_screen.dart';
import 'package:bandage/broken_bones_screen.dart';
import 'package:bandage/burn_screen.dart';
import 'package:bandage/dizzy_screen.dart';
import 'package:bandage/epilepsy_screen.dart';
import 'package:bandage/fainted_screen.dart';
import 'package:bandage/bleeding_screen.dart';
import 'package:bandage/poisoning_screen.dart';
import 'package:bandage/suffocation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'models/floatclassAR.dart';

class ArabicSuffocationScreen extends StatefulWidget {
  const ArabicSuffocationScreen({Key? key}) : super(key: key);

  @override
  State<ArabicSuffocationScreen> createState() => _ArabicSuffocationScreenState();
}

class _ArabicSuffocationScreenState extends State<ArabicSuffocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatAppAR.floatactionAR(context: context),  backgroundColor: Color(0xFFFFE9B1),
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
              child: Column(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 1,
                          right: 1,
                        ),
                        child: Container(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0,),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.6),
                                                spreadRadius: 1,
                                                blurRadius: 6,
                                                offset: Offset(8, 8),
                                              )
                                            ]),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              width: 200,
                                              height: 240,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    "assets/images/Suffocation.png",
                                                    width: 200,
                                                    height: 190,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 200,
                                                  height: 50,
                                                  child: Text(
                                                    "الأختناق",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 30.0,
                                                      fontFamily: 'Tajawal',
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      // Expanded(
                                      //   child: Container(
                                      //     decoration: BoxDecoration(
                                      //         borderRadius: BorderRadius.circular(30),
                                      //         boxShadow: [
                                      //           BoxShadow(
                                      //             color: Colors.black.withOpacity(0.6),
                                      //             spreadRadius: 1,
                                      //             blurRadius: 6,
                                      //             offset: Offset(8, 8),
                                      //           )
                                      //         ]),
                                      //     child: Bounceable(
                                      //       onTap: () {
                                      //         Navigator.push(
                                      //             context,
                                      //             MaterialPageRoute(
                                      //                 builder: (Context) =>
                                      //                     BleedingScreen()));
                                      //       },
                                      //       child: Stack(
                                      //         alignment: Alignment.bottomCenter,
                                      //         children: [
                                      //           Container(
                                      //             decoration: BoxDecoration(
                                      //               color: Colors.white,
                                      //               borderRadius: BorderRadius.circular(30),
                                      //             ),
                                      //             width: double.infinity,
                                      //             height: 240,
                                      //           ),
                                      //           Column(
                                      //             children: [
                                      //               Container(
                                      //                 child: Image.asset(
                                      //                   "assets/images/Bleeding.png",
                                      //                   width: double.infinity,
                                      //                   height: 180,
                                      //                 ),
                                      //                 alignment: Alignment.center,
                                      //               ),
                                      //               Container(
                                      //                 alignment: Alignment.center,
                                      //                 width: double.infinity,
                                      //                 height: 50,
                                      //                 child: Text(
                                      //                   "Bleeding",
                                      //                   textAlign: TextAlign.center,
                                      //                   style: TextStyle(
                                      //                     fontWeight: FontWeight.bold,
                                      //                     fontSize: 30.0,
                                      //                   ),
                                      //                 ),
                                      //                 decoration: BoxDecoration(
                                      //                   color: Colors.white,
                                      //                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                                      //                 ),
                                      //               ),
                                      //             ],
                                      //           ),
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
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
