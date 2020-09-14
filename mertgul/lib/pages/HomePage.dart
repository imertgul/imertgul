// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:mertgul/utilities/constant.dart';
import '../widgets/repositories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              _buildProfile(),
              _buildExperience(),
              _buildRepo(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "Made with Flutter by İbrahim Mert Gül",
                    style: styleLight,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildProfile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Renkler.beyaz70,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "İbrahim Mert Gül",
                  style: styleBaslik,
                ),
                GestureDetector(
                  onTap: () =>
                      window.open("https://github.com/imertgul", 'Link'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      AntDesign.github,
                      color: Renkler.dark,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => window.open(
                      "https://tr.linkedin.com/in/imertgul", 'Link'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      AntDesign.linkedin_square,
                      color: Renkler.dark,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Computer Engineer, Flutter Developer",
                    style: styleLight,
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Renkler.red),
                  // child: Image(
                  //   image: AssetImage("images/profile.jpg"),
                  // ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget _buildExperience() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Renkler.beyaz70,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Experiences",
                  style: styleBaslik,
                ),
                Text(
                  "Detailed information about my experiences",
                  style: styleLight,
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    ),
  );
}

Widget _buildRepo() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Renkler.beyaz70,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Repositories",
                  style: styleBaslik,
                ),
                Text(
                  "Detailed information about open source projects",
                  style: styleLight,
                ),
              ],
            ),
            Divider(),
            Container(height: 500, child: buildRepos())
          ],
        ),
      ),
    ),
  );
}
