import 'package:bandage/feature/google_stream.dart';
import 'package:bandage/shared/components/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  bool isloading = false;
  LatLng? latLng;
  MapType mapType = MapType.normal;
  TextEditingController searchcontroller = TextEditingController();
  void getlatandlong() {
    isloading = true;
    Geolocator.getCurrentPosition().then((value) {
      latLng = LatLng(value.latitude, value.longitude);
      setState(() {
        isloading = false;
      });
    });
  }

  Set<Marker> createMarker() {
    return {
      Marker(
        markerId: MarkerId("1"),
        position: latLng!,
      ),

      Marker(
        markerId: MarkerId("2"),
        position: LatLng(29.98796203115496, 31.277268168347497),
      ), Marker(
        markerId: MarkerId("3"),
        position: LatLng(29.984077660385548, 31.278126475238203),
      ),
    };
  }

  @override
  void initState() {
    getlatandlong();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isloading == true
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7.5)),
                      child: TextFormField(
                        controller: searchcontroller,
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          suffix: IconButton(
                            onPressed: () => LocationService()
                                .getplace(searchcontroller.text),
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        GoogleMap(
                          myLocationEnabled: true,
                          mapType: mapType,
                          markers: createMarker(),
                          onTap: (argument) {
                            setState(() {
                              latLng = argument;
                            });
                          },
                          initialCameraPosition: CameraPosition(
                            target: latLng!,
                            zoom: 19,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      if (mapType == MapType.normal) {
                                        setState(() {
                                          mapType = MapType.satellite;
                                        });
                                      } else {
                                        setState(() {
                                          mapType = MapType.normal;
                                        });
                                      }
                                    },
                                    icon: Icon(
                                      Icons.map_outlined,
                                      color: Colors.red,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                GoogleStream(),
                                          ));
                                    },
                                    icon: Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.red,
                                    )),  IconButton(
                                    onPressed: () {
                                      FlutterShare.share(title: "My Location",linkUrl:"https://www.google.com/maps/search/?api=1&query=${latLng!.latitude},${latLng!.longitude}");
                                    },
                                    icon: Icon(
                                      Icons.share,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
