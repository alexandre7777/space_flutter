import 'package:alexandrespace/planet.dart';
import 'package:flutter/material.dart';

class PlanetItemWidget extends StatelessWidget {
  final Planet planet;

  PlanetItemWidget(this.planet);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: Colors.black,
        child: Column(children: <Widget>[
          Image.asset(planet.img.img, height: 300, width: 300),
          Flexible(
            child: Text('${planet.name}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
          Flexible(
            child : Text('${planet.img.name}', style: TextStyle(color: Colors.white)))
        ]));
  }
}
