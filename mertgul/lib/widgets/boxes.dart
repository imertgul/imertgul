import 'dart:html';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:mertgul/utilities/constant.dart';
import '../widgets/repositories.dart';

Widget buildProfile() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
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
                onTap: () => window.open("https://github.com/imertgul", 'Link'),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    AntDesign.github,
                    color: Renkler.darkL,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    window.open("https://tr.linkedin.com/in/imertgul", 'Link'),
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
        ],
      ),
    ),
  );
}

Widget buildContact() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 2),
          Text(
            "Contact",
            style: styleBaslik,
          ),
          Divider(thickness: 2),
          _buildContactRow(AntDesign.home, "Ankara, Turkey"),
          Divider(thickness: 2),
          _buildContactRow(AntDesign.mail, "ibrahimmertgul@gmail.com"),
          Divider(thickness: 2),
          _buildContactRow(FontAwesome.desktop, "www.mertgul.com.tr"),
          Divider(thickness: 2),
          // _buildContactRow(AntDesign.phone, "Phone Number"),
          // Divider(thickness: 2),
        ],
      ),
    ),
  );
}

Widget buildExperience() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 2),
          Text(
            "Experience",
            style: styleBaslik,
          ),
          Divider(thickness: 2),

          // _buildContactRow(AntDesign.phone, "Phone Number"),
          // Divider(thickness: 2),
        ],
      ),
    ),
  );
}

Widget buildRepo() {
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

Widget buildFooter() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        "Made with Flutter by İbrahim Mert Gül",
        style: styleLight,
      ),
    ),
  );
}

Widget _buildContactRow(IconData icon, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Renkler.darkL,
        ),
      ),
      Container(height: 30, child: VerticalDivider(color: Renkler.dark)),
      Expanded(
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            text,
            style: styleLight,
          ),
        ),
      ),
    ],
  );
}
