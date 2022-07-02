// ignore: avoid_web_libraries_in_flutter
import '../widgets/boxes.dart';


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
              // buildExperience(),
              // buildEducation(),
              buildProjects(),
              buildPublications(),
              buildRepo('imertgul'),
              buildFooter(),
            ],
          ),
        ),
      ],
    ),
  );
}
