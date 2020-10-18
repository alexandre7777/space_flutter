import 'package:alexandrespace/mission.dart';
import 'package:flutter/material.dart';

class MissionItemWidget extends StatelessWidget {
  final Mission mission;

  MissionItemWidget(this.mission);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: mission.planet.color,
        child: Row(children: <Widget>[
          Image.asset(mission.img, height: 150, width: 150),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: <Widget>[
              Text('${mission.name}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Text('Planet :', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('${mission.planet.name}'),
              Text('Launch date :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('${mission.launch}'),
            ], crossAxisAlignment: CrossAxisAlignment.start),
          )
        ]));
  }
}
