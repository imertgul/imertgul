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
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildProfile(),
                _buildExperience(),
                _buildRepo(),
              ],
            ),
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
              children: [
                Text(
                  "Profile",
                  style: styleBaslik,
                ),
                Text(
                  "detailed",
                  style: styleLight,
                )
              ],
            ),
            Divider(),
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
              children: [
                Text(
                  "Experience",
                  style: styleBaslik,
                ),
                Text(
                  "detailed",
                  style: styleLight,
                )
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
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Detailed information about open source projects",
                      style: styleLight,
                    ),
                  ),
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
