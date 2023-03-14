import 'dart:convert';

import 'package:http/http.dart' as http;

class LocationService {
  final String key = 'AIzaSyBIh3A205_15Lcsih_EPwCLiqa0wqDmqa4';
  Future<String> getplacedid(String search) async {
    final String url =
        "https://maps.googleapis.com/maps/api/place/findplacefrmtext/json?input=$search&inputtype=textquery&key=$key";
    var response = await http.get(Uri.parse(url));
    var pdfText = await json.decode(json.encode(response.body));

    return pdfText;
  }

  Future<Map<String, dynamic>> getplace(String search) async {
    final placeid = await getplacedid(search);
    final String url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeid&key=$key';
    var respon = await http.get(Uri.parse(url));
    var pdfText = await json.decode(json.encode(respon.body));
    var results = pdfText['result'] as Map<String, dynamic>;
    print(results.toString());
    return results;
  }
}
