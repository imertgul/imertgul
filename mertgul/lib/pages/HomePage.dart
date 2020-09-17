// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mertgul/utilities/constant.dart';
import '../widgets/boxes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

bool isDark = false;
IconData floatIcon = FontAwesome5.moon;

class _HomePageState extends State<HomePage> {
  var screenWidth;
  var unit;
  bool isDark = false;
  void themeToggle() {
    setState(() {
      isDark = !isDark;
      // ThemeMode.dark;
      // Color temp = Renkler.beyaz;
      // Renkler.beyaz = Renkler.dark;
      // Renkler.dark = temp;
      isDark ? floatIcon = FontAwesome5.sun : floatIcon = FontAwesome5.moon;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    unit = screenWidth / 100;
    if (screenWidth > 900) {
      return _desktop(unit, themeToggle);
    }
    return _mobile(themeToggle);
  }
}

Widget _mobile(themeToggle) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          color: Renkler.beyaz,
        ),
        ListView(
          children: <Widget>[
            buildProfile(),
            buildContact(),
            buildEducation(),
            buildExperience(),
            buildProjects(),
            buildRepo('imertgul'),
            buildFooter(),
          ],
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Renkler.dark,
      child: Icon(
        floatIcon,
        color: Renkler.beyaz,
      ),
      onPressed: () => themeToggle(),
    ),
  );
}

Widget _desktop(unit, themeToggle) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          color: Renkler.beyaz,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: unit * 25),
          child: ListView(
            children: <Widget>[
              buildProfile(),
              buildContact(),
              buildEducation(),
              buildExperience(),
              buildProjects(),
              buildRepo('imertgul'),
              buildFooter(),
            ],
          ),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Renkler.dark,
      child: Icon(
        floatIcon,
        color: Renkler.beyaz,
      ),
      onPressed: () => themeToggle(),
    ),
  );
}
