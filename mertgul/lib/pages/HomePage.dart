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
  double screenWidth = 0;
  double unit = 0;
  static const double horizontalPadding = 20;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    unit = screenWidth / 100;
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
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Renkler.beyaz,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image(
                image: AssetImage('./images/profile.jpg'),
                height: 150,
                width: 150,
              ),
            ),
            Text(
              "İbrahim Mert Gül",
              style: styleBaslik,
            ),
            Text(
              "Computer Engineer, Flutter Developer",
              style: styleLight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () =>
                      window.open("https://github.com/imertgul", 'Link'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      AntDesign.github,
                      color: Renkler.darkL,
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
                      color: Renkler.darkL,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel faucibus urna. Morbi luctus tellus nisl, nec vehicula tellus elementum in. Proin varius vehicula placerat. Duis imperdiet felis eget augue sagittis, eget ullamcorper turpis fringilla. Aliquam ut convallis enim. Nulla ex orci, luctus non dictum et, pretium nec orci. Suspendisse malesuada diam a ex bibendum, sit amet finibus augue vulputate. Mauris luctus, odio non tempor ultricies, lectus felis luctus tellus, a facilisis ante massa at augue. Mauris tempus dolor et felis rhoncus bibendum. Nam interdum turpis in pharetra consequat. Sed eu consectetur mi. Nunc luctus mi vitae diam egestas, a volutpat massa rhoncus. Cras et fermentum elit. Fusce et varius velit. Morbi finibus varius diam, a lobortis justo eleifend nec. Duis vitae sollicitudin mauris, non aliquam augue. ",
                    style: styleLight,
                  ),
                ),
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
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Renkler.beyaz,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Experiences",
              style: styleBaslik,
            ),
            Text(
              "Detailed information about my experiences",
              style: styleLight,
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
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Renkler.beyaz,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Repositories",
              style: styleBaslik,
            ),
            Text(
              "Detailed information about open source projects",
              style: styleLight,
            ),
            Divider(),
            Container(height: 500, child: buildRepos())
          ],
        ),
      ),
    ),
  );
}
