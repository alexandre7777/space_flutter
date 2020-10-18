import 'package:alexandrespace/mission.dart';
import 'package:flutter/material.dart';
import 'package:alexandrespace/mission_item.dart';
import 'package:alexandrespace/data_util_creator.dart';

class MissionListWidget extends StatelessWidget {
  final List<Mission> entries = createMissionData();

  MissionListWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 200,
          child: MissionItemWidget(entries[index]),
        );
      },
    );
  }
}
