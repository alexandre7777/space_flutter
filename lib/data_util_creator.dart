import 'package:alexandrespace/mission.dart';
import 'package:alexandrespace/planet.dart';
import 'package:alexandrespace/source_image.dart';
import 'package:flutter/material.dart';

createMissionData() {
  return [
    new Mission("Rosetta", 'assets/images/rosetta.png', createChuryumovGerasimenko(), "2 March 2004"),
    new Mission("BepiColombo", 'assets/images/bepicolombo.png', createMercury(), "20 October 2018"),
    new Mission("Cassini", 'assets/images/cassini.jpg', createSaturn(), "15 October 1997")
  ];
}

createPlanet() {
  return <Planet>[
    createMercury(),
    createVenus(),
    createEarth(),
    createMars(),
    createJupiter(),
    createSaturn(),
    createUranus(),
    createNeptune()
  ];
}

createMercury() {
  return new Planet("Mercury", Colors.black54, createMercuryImg());
}

createVenus() {
  return new Planet("Venus", Colors.lightGreen, createVenusImg());
}

createEarth() {
  return new Planet("Earth", Colors.cyan, createEarthImg());
}

createMars() {
  return new Planet("Mars", Colors.orange, createMarsImg());
}

createJupiter() {
  return new Planet("Jupiter", Colors.yellow, createJupiterImg());
}

createSaturn() {
  return new Planet("Saturn", Colors.amber, createSaturnImg());
}

createUranus() {
  return new Planet("Uranus", Colors.lightBlue, createUranusImg());
}

createNeptune() {
  return new Planet("Neptune", Colors.blue, createNeptuneImg());
}

createChuryumovGerasimenko() {
  return new Planet("67P/Churyumov–Gerasimenko", Colors.grey, createChuryumovGerasimenkoImg());
}

createMercuryImg() {
  return new SourceImage("first MESSENGER flyby", 'assets/images/mercury.jpg', "NASA/Johns Hopkins University Applied Physics Laboratory/Carnegie Institution of Washington", "Public Domain", "");
}

createVenusImg() {
  return new SourceImage("Venus from Mariner 10", 'assets/images/venus.jpg', "NASA/JPL-Caltech", "Public Domain", "https://photojournal.jpl.nasa.gov/figures/PIA23791_fig2.jpg");
}

createEarthImg() {
  return new SourceImage("The Blue Marble", 'assets/images/earth.png', "NASA", "Public Domain", "https://www.nasa.gov/multimedia/imagegallery/image_feature_329.html");
}

createMarsImg() {
  return new SourceImage("True-colour image of Mars seen by OSIRIS", 'assets/images/mars.jpg', "ESA & MPS for OSIRIS Team", "CC BY-SA 3.0 IGO", "http://www.esa.int/ESA_Multimedia/Images/2007/02/True-colour_image_of_Mars_seen_by_OSIRIS");
}

createJupiterImg() {
  return new SourceImage("An image of Jupiter taken by NASA's Hubble Space Telescope", 'assets/images/jupiter.jpg', "NASA, ESA, and A. Simon", "Public Domain", "http://hubblesite.org/newscenter/archive/releases/2014/24/image/b/");
}

createSaturnImg() {
  return new SourceImage("This captivating natural color view of the planet Saturn was created from images collected shortly after Cassini began its extended Equinox Mission in July 2008", 'assets/images/saturn.jpg', "NASA / JPL / Space Science Institute", "Public Domain", "https://www.nasa.gov/images/content/365640main_PIA11141_full.jpg");
}

createUranusImg() {
  return new SourceImage("Uranus taken by the spacecraft Voyager 2 in 1986", 'assets/images/uranus.jpg', "NASA/JPL-Caltech", "Public Domain", "https://photojournal.jpl.nasa.gov/catalog/PIA18182");
}

createNeptuneImg() {
  return new SourceImage("Voyager 2 Image of Neptune", 'assets/images/neptune.png', "NASA/JPL", "Public Domain", "https://www.nasa.gov/image-feature/voyager-2-image-of-neptune");
}

createChuryumovGerasimenkoImg() {
  return new SourceImage("Mosaic of four images taken by Rosetta's navigation camera", 'assets/images/churyumovgerasimenko..jpg', "ESA/Rosetta/NAVCAM", "CC BY-SA 3.0-igo", "https://creativecommons.org/licenses/by-sa/3.0/igo/");
}