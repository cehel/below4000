import 'package:below4000/widgets/peakDetail/peakDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:below4000/models/Peak.dart';

class PeakListItem extends StatelessWidget {
  final Peak _peak;

  PeakListItem(this._peak);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        leading: new CircleAvatar(
            child: new Text(_peak.name[0])
        ),
        title: new Text(_peak.name),
        subtitle: new Text(_peak.region+" "+_peak.difficulty),
        onTap: () {
          Navigator.push(context, new MaterialPageRoute(builder:
              (BuildContext context) => new PeakDetail(_peak)));
        }
    );
  }

}