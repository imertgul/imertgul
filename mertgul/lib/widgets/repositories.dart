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
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => window.open(url, 'Link'),
                    child: Text(
                      "$name",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Renkler.blueL,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "$description",
                    style: TextStyle(fontSize: 12.0, color: Renkler.darkL),
                  ),
                ],
              )),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$star',
                        style: TextStyle(fontSize: 30.0, color: Renkler.darkL),
                      ),
                      Text(
                        'Stars',
                        style: TextStyle(fontSize: 14.0, color: Renkler.darkL),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Divider(thickness: 1)
      ],
    ),
  );
}
