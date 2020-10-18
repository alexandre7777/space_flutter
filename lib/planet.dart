import 'package:alexandrespace/source_image.dart';
import 'package:flutter/material.dart';

class Planet {
  String name;
  Color color;
  SourceImage img;

  Planet(String name, Color color, SourceImage img) {
    this.name = name;
    this.color = color;
    this.img = img;
  }
}