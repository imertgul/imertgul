import 'package:flutter/material.dart';
import './pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İbrahim Mert Gül',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
          primarySwatch: Colors.white10,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'RobotoCondensed'),
      home: HomePage(),
    );
  }
}
