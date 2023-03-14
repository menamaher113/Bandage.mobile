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

class ArabicDizzyScreen extends StatefulWidget {
  const ArabicDizzyScreen({Key? key}) : super(key: key);

  @override
  State<ArabicDizzyScreen> createState() => _ArabicDizzyScreenState();
}

class _ArabicDizzyScreenState extends State<ArabicDizzyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 8,
                blurRadius: 14,
                offset: Offset(2, 2),
              )
            ]),
        child: SpeedDial( //Speed dial menu
          icon: Icons.menu, //icon on Floating action button
          activeIcon: Icons.close, //icon when menu is expanded on button
          backgroundColor: Color(0xFFB40000), //background color of button
          foregroundColor: Colors.white, //font color, icon color in button
          activeBackgroundColor: Colors.deepPurpleAccent, //background color when menu is expanded
          activeForegroundColor: Colors.white,
          visible: true,
          closeManually: false,
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.7,
          onOpen: () => print('OPENING DIAL'), // action when menu opens
          onClose: () => print('DIAL CLOSED'), //action when menu closes
          elevation: 8.0, //shadow elevation of button
          shape: CircleBorder(),
          spacing: 10,//shape of button
          spaceBetweenChildren: 5,
          children: [
            SpeedDialChild(
              child: AboutListTile(
                  applicationIcon: Icon(
                    Icons.local_play,
                  ),
                  applicationName: 'Bandage App',
                  applicationVersion: '1.0.0',
                  applicationLegalese: '© 2023 Company',
                  child: Icon(Icons.info_outline)),
              backgroundColor: Colors.white,
              label: 'About App',
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.black.withOpacity(0.6)),
              onTap: () => print('FOURTH CHILD'),
              onLongPress: () => print('FOURTH CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.translate),
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              label: 'English',
              labelBackgroundColor: Colors.orange,
              labelStyle: TextStyle(fontSize: 18.0, fontFamily: 'Tajawal',color: Colors.white),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (Context) => DizzyScreen()));
              },
              onLongPress: () => print('FIFTH CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.dark_mode),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              label: 'Dark Mode',
              labelBackgroundColor: Colors.black,
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
              onTap: () => print('THIRD CHILD'),
              onLongPress: () => print('THIRD CHILD LONG PRESS'),
            ),
            SpeedDialChild( //speed dial child
              child: Icon(Icons.emergency),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'Emergency',
              labelBackgroundColor: Colors.red,
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
              onTap: () => print('FIRST CHILD'),
              onLongPress: () => print('FIRST CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.chat),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              label: 'ChatBot',
              labelBackgroundColor: Colors.blue,
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
              onTap: () => print('SECOND CHILD'),
              onLongPress: () => print('SECOND CHILD LONG PRESS'),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFFE9B1),
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
                                                    "assets/images/Dizzy.png",
                                                    width: 200,
                                                    height: 180,
                                                  ),
                                                  alignment: Alignment.bottomCenter,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 200,
                                                  height: 60,
                                                  child: Text(
                                                    "دوار",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 30.0,
                                                      fontFamily: 'Cairo',
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
