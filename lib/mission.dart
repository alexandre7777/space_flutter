import 'package:alexandrespace/planet.dart';

class Mission {
  String name;
  String img;
  Planet planet;
  String launch;

  Mission(String name, String img, Planet planet, String launch) {
    this.name = name;
    this.img = img;
    this.planet = planet;
    this.launch = launch;
  }
}