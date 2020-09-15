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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailedBox(
                    "Infinia Mühendislik - Computer Engineer",
                    "July 2019 - Current",
                    "Flutter, Electron.js, Express.js, MongoDb"),
                Divider(thickness: 2),
                _buildDetailedBox(
                    "Infinia Mühendislik - Part Time",
                    "Summer 2018 - Summer 2019",
                    "Front-end, Electron.js, Flutter"),
                Divider(thickness: 2),
                _buildDetailedBox("Armi Ambalaj - Accounting", "Summer 2017",
                    "Basic accounting"),
                Divider(thickness: 2),
                _buildDetailedBox("Freelancer", "Feb 2016 - Current",
                    "Flutter, Electron.js, Express.js, MongoDb"),
              ],
            ),
          ),
          Divider(thickness: 2),
        ],
      ),
    ),
  );
}

Widget buildEducation() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 2),
          Text(
            "Education",
            style: styleBaslik,
          ),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailedBox(
                    "Computer Engineering, Cukurova Univesity",
                    "October 2015 - March 2020",
                    "I started university in 2015 with pre-class for english course. Pre-class completed with  %87 success, Graduated with 2.73."),
                Divider(thickness: 2),
                _buildDetailedBox(
                    "Erdem Beyazıt Anatolian High School",
                    "October 2011 - March 2015",
                    "At high school my physics teacher Emrah Akan makes me love electricity and all about physics."),
              ],
            ),
          ),
          Divider(thickness: 2),
        ],
      ),
    ),
  );
}

Widget buildProjects() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 2),
          Text(
            "Projects",
            style: styleBaslik,
          ),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailedBox(
                    "My Quarantine, TDG Coder in Action Award Winner",
                    "2020",
                    "“My Quarantine” is a mobile application that keeps track of the quarantine, keep records of breach reports and scores / reports the quarantine according to these data. Github Avaliable"),
                Divider(thickness: 2),
                _buildDetailedBox("SynTxt ", "2020",
                    "Syntxt is a cloud-enabled, offline-storage Markdown editor. Work with your friend realtimed. Made with Electron.js. Github available."),
                Divider(thickness: 2),
                _buildDetailedBox("Plank Counter ", "2020",
                    "Plank exercise timer and logger. Made with Flutter. Github available."),
                Divider(thickness: 2),
                _buildDetailedBox("SynTxt ", "2020", "Syntxt"),
                Divider(thickness: 2),
                _buildDetailedBox("Coolors_palette ", "2020",
                    "A new Flutter package that helps you to get your color palette from coolors.co to your project"),
                Divider(thickness: 2),
                _buildDetailedBox("FlexHub", "2019",
                    "Screen management software for kolayekran.com(Digital Advertisement).  Coding in Electron.js and released for Linux and Windows."),
                Divider(thickness: 2),
                _buildDetailedBox("Kolay Ekran", "2019",
                    "Admin, Company and Customer panel of Digital advertisement system. Google Map and Full Calendar integration."),
                Divider(thickness: 2),
                _buildDetailedBox("Auto Auction", "2019",
                    "Chrome extension that faster than any human in auctions. Specifically developed for second hand car auctions."),
                Divider(thickness: 2),
                _buildDetailedBox("Make your team", "2018",
                    "A web tool with P5.js. Dream team tool app for football."),
                Divider(thickness: 2),
                _buildDetailedBox(
                    "Robotic Arm YA 4.0, Tubitak Award Winner",
                    "2017",
                    "3D printed, remote control autonomous robotic arm with the real time web connection and reporting. Awarded by TUBİTAK. Made with Team Yazılım Ağı. Assignment; Project management,3D print and assemble, implementation of  coordinate systems, real time report."),
                Divider(thickness: 2),
                _buildDetailedBox("Air Hockey Game ", "2016",
                    "2D game. Coded with C++ and Allegro. 2D physics created. Github available."),
              ],
            ),
          ),
          Divider(thickness: 2),
        ],
      ),
    ),
  );
}

Widget buildRepo() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 2),
          Text(
            "Repositories",
            style: styleBaslik,
          ),
          Divider(thickness: 2),
          Container(height: 500, child: buildRepos())
        ],
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
      Container(height: 30, child: VerticalDivider(thickness: 2)),
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

Widget _buildDetailedBox(String title, String date, String description) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: styleAltBaslik,
          ),
          Text(
            date,
            style: styleLight,
          ),
        ],
      ),
      SizedBox(height: 5),
      Text(
        description,
        style: styleLight,
      ),
    ],
  );
}
