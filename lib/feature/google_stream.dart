import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleStream extends StatefulWidget {
  @override
  State<GoogleStream> createState() => _GoogleStreamState();
}

class _GoogleStreamState extends State<GoogleStream> {
  bool isloading = false;
  LatLng? latLng;
  getlatandlong() {
    Geolocator.getCurrentPosition().then((value) {
      latLng = LatLng(value.latitude, value.longitude);
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<LatLng>(
        stream: getlatandlong(),
        builder: (context, snapshot) {
          Set<Marker> createMarker() {
            return {
              Marker(
                markerId: MarkerId("1"),
                position: latLng!,
              ),
            };
          }

          return GoogleMap(
            markers: createMarker(),
            initialCameraPosition: CameraPosition(
              target: latLng!,
              zoom: 14,
            ),
          );
        },
      ),
    );
  }
}
