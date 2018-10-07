import 'package:flutter/material.dart';
import 'package:below4000/loader/PeakLoader.dart';
import 'package:below4000/models/Peak.dart';
import 'package:below4000/widgets/peakList/PeakList.dart';

class PeakListPage extends StatefulWidget {
  PeakListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PeakListPageState createState() => new _PeakListPageState();
}

class _PeakListPageState extends State<PeakListPage> {
  List<Widget> texts = [];
  PeakLoader loader = new PeakLoader();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: FutureBuilder<List<Peak>>(
          future: loader.fetchPeak(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new PeakList(snapshot.data);
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
