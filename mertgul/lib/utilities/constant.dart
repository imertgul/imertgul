import 'package:flutter/material.dart';
import 'package:coolors_palette/coolors_palette.dart';

final myColors =
    CoolorsPalette("https://coolors.co/0355b1-035dc3-0366d6-383c3f-ffffff");

class Renkler {
  static Color blueD = myColors.palette[0];
  static Color blue = myColors.palette[1];
  static Color blueL = myColors.palette[2];
  static Color dark = myColors.palette[3];
  static Color beyaz = myColors.palette[4];
  static Color beyaz10 = Colors.white10;
  static Color beyaz24 = Colors.white24;
  static Color beyaz54 = Colors.white54;
  static Color beyaz70 = Colors.white70;
}

TextStyle styleBaslik = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: Renkler.dark,
);
TextStyle styleAltBaslik = new TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 15,
  color: Renkler.dark,
);

TextStyle styleLight = new TextStyle(
  fontWeight: FontWeight.w200,
  fontSize: 15,
  color: Renkler.dark,
);
