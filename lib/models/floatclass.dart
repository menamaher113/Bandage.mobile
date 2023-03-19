import 'package:bandage/arabic_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../feature/Chatpage/view.dart';
import '../shared/components/permission_app.dart';

class FloatApp{

  static float({required BuildContext context}){
    return    Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 8,
            blurRadius: 14,
            offset: Offset(2, 2),
          )
        ]),
        child: SpeedDial(
          //Speed dial menu
          icon: Icons.menu, //icon on Floating action button
          activeIcon: Icons.close, //icon when menu is expanded on button
          backgroundColor: Color(0xFFB40000), //background color of button
          foregroundColor: Colors.white, //font color, icon color in button
          activeBackgroundColor:
              Colors.deepPurpleAccent, //background color when menu is expanded
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
          spacing: 10, //shape of button
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
              labelStyle: TextStyle(
                  fontSize: 18.0, color: Colors.black.withOpacity(0.6)),
              onTap: () => print('FOURTH CHILD'),
              onLongPress: () => print('FOURTH CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.translate),
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              label: 'العربية',
              labelBackgroundColor: Colors.orange,
              labelStyle: TextStyle(
                  fontSize: 18.0, fontFamily: 'Tajawal', color: Colors.white),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (Context) => ArabicCategoryScreen()));
              },
              onLongPress: () => print('FIFTH CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.dark_mode),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              label: 'Dark Mode',
              labelBackgroundColor: Colors.black,
              labelStyle: TextStyle(fontSize: 18.0, color: Colors.white),
              onTap: () => print('THIRD CHILD'),
              onLongPress: () => print('THIRD CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              //speed dial child
              child: Icon(Icons.emergency),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'Emergency',
              labelBackgroundColor: Colors.red,
              labelStyle: TextStyle(fontSize: 18.0, color: Colors.white),
              onTap: () {
                FlutterPhoneDirectCaller.callNumber('123');
              },
              onLongPress: () => print('FIRST CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              //speed dial child
              child: Icon(Icons.map),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'Map',
              labelBackgroundColor: Colors.red,
              labelStyle: TextStyle(fontSize: 18.0, color: Colors.white),
              onTap: () => AppPermission.permissionloc(context: context),
              onLongPress: () => print('FIRST CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.chat),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              label: 'ChatBot',
              labelBackgroundColor: Colors.blue,
              labelStyle: TextStyle(fontSize: 18.0, color: Colors.white),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatBotScreen(),)),
              onLongPress: () => print('SECOND CHILD LONG PRESS'),
            ),
          ],
        ),
      );
  }
}