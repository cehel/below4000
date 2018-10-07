import 'package:below4000/models/Peak.dart';
import 'package:flutter/material.dart';

class PeakDetailDescription extends StatelessWidget {
  final Peak _peak;

  PeakDetailDescription(this._peak);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        margin: const EdgeInsets.all(6.0),
        child: new Container(
            padding: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(
                    const Radius.circular(8.0))
            ),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Text("Difficulty: ",
                        style: new TextStyle(fontWeight: FontWeight.w700)),
                    new Text(this._peak.difficulty)
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Text("Time up: ",
                        style: new TextStyle(fontWeight: FontWeight.w700)),
                    new Text(this._peak.timeUpMinutes.toString()+" min")
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Text("Time down: ",
                        style: new TextStyle(fontWeight: FontWeight.w700)),
                    new Text(this._peak.timeDownMinutes.toString()+" min")
                  ],
                ), new Row(
                  children: <Widget>[
                    new Text("Climb level: ",
                        style: new TextStyle(fontWeight: FontWeight.w700)),
                    new Text(this._peak.climbLevel)
                  ],
                ), new Container(
                  padding: EdgeInsets.only(bottom: 6.0, top: 6.0),
                  child: new Text(_peak.tourDescription),
                )
              ],
            )
        )
    );
  }

}