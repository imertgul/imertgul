import 'package:flutter/material.dart';
import 'package:coolors_palette/coolors_palette.dart';

final myColors = CoolorsPalette(
    "https://coolors.co/055f3d-066943-07744a-313131-383c3f-34454d-d2433b-b13126-97190b-d10a10");

class Renkler {
  static Color greenD = myColors.palette[0];
  static Color green = myColors.palette[1];
  static Color greenL = myColors.palette[2];
  static Color darkD = myColors.palette[3];
  static Color dark = myColors.palette[4];
  static Color darkL = myColors.palette[5];
  static Color redL = myColors.palette[6];
  static Color red = myColors.palette[7];
  static Color redD = myColors.palette[8];
  static Color primary = myColors.palette[9];
  static Color beyaz = Color(0xfffdfffc);
  static Color beyaz10 = Colors.white10;
  static Color beyaz24 = Colors.white24;
  static Color beyaz54 = Colors.white54;
  static Color beyaz70 = Colors.white70;
}

TextStyle yaziStili =
    new TextStyle(fontWeight: FontWeight.bold, color: Renkler.dark);

TextStyle styleBaslik = new TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: Renkler.dark,
);
TextStyle styleLight = new TextStyle(
  fontWeight: FontWeight.w200,
  fontSize: 15,
  color: Renkler.dark,
);
