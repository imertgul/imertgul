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
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(200.0),
            child: Center(
              child: buildRepos(),
            ),
          )
        ],
      ),
    );
  }
}
