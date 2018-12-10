import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './../../models/basic_model.dart';
import './../../services/services.dart';
import './../../widgets/widgets.dart';

class BasicParseList extends StatefulWidget {
  @override
  _BasicParseListState createState() => _BasicParseListState();
}

Future<List<Photos>> fetch() async {
  final response = await http.get(Services.basicList);

  if(response.statusCode == 200) {
    List photosList = json.decode(response.body);
    return photosList.map((i) => new Photos.fromJson(i)).toList();
  } else {
    throw Exception('Failed to load');
  }
}

class _BasicParseListState extends State<BasicParseList> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new FutureBuilder<List<Photos>>(
        future: fetch(),
        builder: (BuildContext context, AsyncSnapshot<List<Photos>> snapshot) {
          if(snapshot.hasData) {
            List<Photos> photos = snapshot.data;
            return new GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              padding: new EdgeInsets.all(20),
              children: photos.map((i) =>
                basicListBuilder(i.url, i.title),
              ).toList(),
            );
          } else {
            return circularProgressIndicator();
          }
        },
      ),
    );
  }
}
