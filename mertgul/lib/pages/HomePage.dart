// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:mertgul/utilities/constant.dart';
import '../widgets/boxes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var screenWidth;
  var unit;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    unit = screenWidth / 100;
    if (screenWidth > 900) {
      return _desktop(unit);
    }
    return _mobile();
  }
}

Widget _mobile() {
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
  );
}

Widget _desktop(unit) {
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
  );
}
