import 'dart:async';
import 'dart:convert';

import 'package:below4000/models/Peak.dart';
import 'package:http/http.dart' as http;
import 'package:below4000/models/ImageFile.dart';

class PeakLoader{

  Peak loadPeak(){
    return null;
  }




  /*
  curl -X GET \
-H "X-Parse-Application-Id: mX56zgDlCVbYMgeWphkkYXuHch0Awn7qZD3u1IkQ" \
-H "X-Parse-Master-Key: DgC2qSQGhbRC4sq8nLm9tB1TQC7ynIJMhzLuBRRh" \
-H "X-Parse-Session-Token: r:0a44182646663b4451fc5d0c34a705b8" \
https://parseapi.back4app.com/classes/Peak

curl -X GET \
-H "X-Parse-Application-Id: mX56zgDlCVbYMgeWphkkYXuHch0Awn7qZD3u1IkQ" \
-H "X-Parse-Master-Key: DgC2qSQGhbRC4sq8nLm9tB1TQC7ynIJMhzLuBRRh" \
https://parseapi.back4app.com/classes/Peak
   */

  Future<List<Peak>> fetchPeak() async {
    final response =
    await http.get('https://parseapi.back4app.com/classes/Peak',
    headers: {"X-Parse-Application-Id":"mX56zgDlCVbYMgeWphkkYXuHch0Awn7qZD3u1IkQ",
    "X-Parse-Master-Key":"DgC2qSQGhbRC4sq8nLm9tB1TQC7ynIJMhzLuBRRh"}
    );

    var mockPeak = Peak(
        objectId: "1",
        name: "Bietschhorn",
        difficulty: "S",
        ropeLenght: "50m",
        region: "Visp",
        timeUpMinutes: 360,
        timeDownMinutes: 300,
        climbLevel: "4b",
        nbrExpress: 3,
        friends: false,
        peakImage:  ImageFile(name: "someimage", url: "")
    );

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      List<dynamic> peakList = json.decode(response.body)['results'];
      List<Peak> peaks = new List();
      for(var peakJson in peakList){
        peaks.add(Peak.fromJson(peakJson));
      }
      return peaks;
    } else {
      List<Peak> peaks = new List();
      peaks.add(mockPeak);
      return peaks;
      // If that response was not OK, throw an error.
      //throw Exception('Failed to load post');
    }
  }
}