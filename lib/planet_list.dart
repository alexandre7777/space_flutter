import 'package:alexandrespace/planet.dart';
import 'package:flutter/material.dart';
import 'package:alexandrespace/planet_item.dart';
import 'package:alexandrespace/data_util_creator.dart';

class PlanetListWidget extends StatelessWidget {
  final List<Planet> entries = createPlanet();

  PlanetListWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 400,
          child: PlanetItemWidget(entries[index]),
        );
      },
    );
  }
}
