import 'package:below4000/models/ImageFile.dart';
import 'package:quiver/core.dart';

class Peak {

  final String objectId;
  final String name;
  final String difficulty;
  final String ropeLenght;
  final String region;
  final int timeUpMinutes;
  final int timeDownMinutes;
  final String climbLevel;
  final int nbrExpress;
  final bool friends;
  final ImageFile peakImage;
  final String tourDescription;


  Peak({this.objectId, this.name, this.difficulty,
    this.ropeLenght, this.region, this.timeUpMinutes,
    this.timeDownMinutes, this.climbLevel, this.nbrExpress,
    this.friends, this.peakImage, this.tourDescription});

  bool operator ==(o) =>
      o is Peak &&
          objectId == o.objectId &&
          name == o.name;

  int get hashCode =>
      hash4(objectId.hashCode, name.hashCode, difficulty.hashCode,
          region.hashCode);

  factory Peak.fromJson(Map<String, dynamic> json) {
    return Peak(
        objectId: json['objectId'],
        name: json['name'],
        difficulty: json['difficulty'],
        ropeLenght: json['ropeLength'],
        region: json['region'],
        timeUpMinutes: json['timeUpMinutes'],
        timeDownMinutes: json['timeDownMinutes'],
        climbLevel: json['climbLevel'],
        nbrExpress: json['express'],
        friends: json['friends'],
        peakImage: ImageFile.fromJson(json['peakimage']),
        tourDescription: json['description']);
  }
}