import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:permission_handler/permission_handler.dart';

import '../../feature/google_map.dart';

class AppPermission {
  static void permissionloc({required BuildContext context}) {
    Permission.location.request().then((value) {
      if (value.isPermanentlyDenied) {
      } else if (value.isGranted) {
        Geolocator.isLocationServiceEnabled().then((value) {
          if (value == false) {
            Geolocator.openLocationSettings();
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GoogleMapScreen(),
                ));
          }
        }).catchError((error) {});
      }
    }).catchError((error) {});
  }
}
