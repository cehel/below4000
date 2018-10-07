import 'package:below4000/models/Peak.dart';
import 'package:flutter/material.dart';
import 'package:below4000/widgets/peakDetail/peakDetailDescription.dart';

class PeakDetail extends StatelessWidget {
  // Movie object to handle.
  Peak peak;

  // Constructor for the class.
  PeakDetail(this.peak);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        appBar: new AppBar(
          title: new Text(peak.name),
        ),
        body: new Container(
          color: Color.fromRGBO(230, 230, 230, 1.0),
          child: new ListView(

              children: <Widget>[
                new Image.network(peak.peakImage.url),
                Container(
                  color: Colors.transparent,
                  margin: const EdgeInsets.all(6.0),
                  child: new Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                            const Radius.circular(8.0))
                    ),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                            child:
                            new Column(
                              children: <Widget>[
                                new ImageIcon(
                                    new AssetImage('assets/express_full.png')),
                                new Text(peak.nbrExpress.toString(),
                                    style: new TextStyle(fontSize: 12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"))

                              ],
                            )),
                        new Expanded(child:
                        new Column(
                          children: <Widget>[
                            new ImageIcon(new AssetImage('assets/rope.png')),
                            new Text(peak.ropeLenght,
                                style: new TextStyle(fontSize: 12.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"))

                          ],
                        ),
                        ),
                        new Expanded(child:
                        new Column(
                          children: <Widget>[
                            new ImageIcon(new AssetImage('assets/cam2.png')),
                            new Text((peak.friends) ? "ja" : "nein",
                                style: new TextStyle(fontSize: 12.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"))

                          ],
                        ))
                      ],
                    ),
                  ),
                ),new PeakDetailDescription(peak)
              ]
          ),
        )

    );
  }
}