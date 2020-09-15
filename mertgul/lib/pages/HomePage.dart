// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:mertgul/utilities/constant.dart';
import '../widgets/boxes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double screenWidth = 0;
  double unit = 0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    unit = screenWidth / 100;
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
              // buildExperience(),
              // buildEducation(),
              buildRepo(),
              buildFooter(),
            ],
          ),
        ],
      ),
    );
  }
}
