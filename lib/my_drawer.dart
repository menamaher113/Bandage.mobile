import 'package:bandage/personal_information.dart';
import 'package:flutter/material.dart';

import 'arabic_category_screen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFEE0C0),
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0,bottom: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle,size: 100,),
                  /*Image(image: AssetImage('assets/images/Bandage App2.png'),width: 80,height: 80,),*/
                  /*CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage('assets/images/Bandage App2.png',),
                    backgroundColor: Color(0xFFFEE0C0),
                  ),*/
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Person",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w800,),),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("person@gmail.com",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400,),),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Divider(
              color: Colors.black.withOpacity(0.3),
            ),

          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Personal Information'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (Context) => PersonalInformation()));
            },
          ),
          ListTile(
            leading: Icon(Icons.install_mobile),
            title: const Text('Install Mobile Application'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: () {
            },
          ),
          AboutListTile(
            icon: Icon(
              Icons.info,
            ),
            child: Text('About App'),
            applicationIcon: Icon(
              Icons.local_play,
            ),
            applicationName: 'Bandage App',
            applicationVersion: '1.0.0',
            applicationLegalese: '© 2023 Company',
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (Context) => ArabicCategoryScreen()));
            },
            child: Text(
              'العربية',
              style: TextStyle(
                fontFamily: 'Tajawal',
                color: Color(0xFFEB1D36),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

