import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFFFEE0C0)),
                accountName: Text('Hesham'),
                accountEmail: Text('Heshamgamal889@gmail.com'))
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Color(0xFFFEE0C0),
        elevation: 15.00,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40.00,
              height: 40.00,
              child: Image.asset(
                "assets/images/Bandage App2.png",
              ),
            ),
            SizedBox(
              width: 5.00,
            ),
            Text(
              "Bandage",
              style: TextStyle(
                color: Color(0xFFeb1d36),
              ),
            ),
            Flexible(
                child:SizedBox(
                  width: 2000.00,
                )
            ),
            IconButton(
              onPressed: ()
              {
                print('Search Clicked');
              },
              icon: (
                  Icon(
                    Icons.search,
                    color: Colors.red,
                  )
              ),
            ),
          ],
        ),

      ),
    );
  }
}
