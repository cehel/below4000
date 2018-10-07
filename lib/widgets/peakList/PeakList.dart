import 'package:flutter/material.dart';
import 'package:below4000/models/Peak.dart';
import 'package:below4000/widgets/peakList/PeakListItem.dart';

class PeakList extends StatelessWidget {

  final List<Peak> _peaks;

  PeakList(this._peaks);

  @override
  Widget build(BuildContext context) {
    return new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: _buildPeakList()
    );
  }

  List<PeakListItem> _buildPeakList() {
    return _peaks.map((peak) => new PeakListItem(peak))
        .toList();
  }

}