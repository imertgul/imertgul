// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:async';
import 'dart:convert';
import '../utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Widget buildRepos() {
  return FutureBuilder(
    builder: (context, projectSnap) {
      if (projectSnap.connectionState == ConnectionState.none &&
          projectSnap.hasData == false) {
        return Container();
      } else if (projectSnap.data == null) {
        return Container(
          child: Text("Veri bekleniyor..."),
        );
      }
      return ListView.builder(
        reverse: true,
        itemCount: projectSnap.data.length,
        itemBuilder: (context, index) {
          var repos = projectSnap.data.asMap();
          var repo = repos[index];
          var repoName = repo['name'];
          return repoCard(context, repoName, repo['stargazers_count'],
              repo['description'], repo['html_url']);
        },
      );
    },
    future: fetchApi(),
  );
}

Future<List> fetchApi() async {
  final response =
      await http.get('https://api.github.com/users/imertgul/repos');
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body);
    return parsed;
  } else {
    throw Exception('Failed to load repos');
  }
}

Widget repoCard(context, name, star, description, url) {
  return new Container(
    // height: unit * 10,
    margin: new EdgeInsets.all(5.0),
    decoration: new BoxDecoration(
      borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
      gradient: new LinearGradient(
        colors: [Renkler.green, Renkler.darkD],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        tileMode: TileMode.clamp,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 2,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(left: 10.0, right: 10.0),
            child: GestureDetector(
              onTap: () => window.open(url, 'Link'),
              child: Icon(
                Icons.link,
                color: Renkler.beyaz,
              ),
            ),
          ),
          new Expanded(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "$name",
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              new SizedBox(
                height: 8.0,
              ),
              new Text(
                "$description",
                style: new TextStyle(fontSize: 12.0, color: Colors.white70),
              ),
            ],
          )),
          new Padding(
              padding: new EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    '$star',
                    style: new TextStyle(fontSize: 30.0, color: Colors.white70),
                  ),
                  new Text(
                    'Stars',
                    style: new TextStyle(fontSize: 14.0, color: Colors.white70),
                  ),
                ],
              ))
        ],
      ),
    ),
  );
}
