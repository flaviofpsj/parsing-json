import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './../../models/advanced_model.dart';
import './../../services/services.dart';
import './../../widgets/widgets.dart';

class AdvancedParse extends StatefulWidget {

  final String title;

  AdvancedParse({Key key, this.title}) : super(key: key);

  static String route = 'advancedParse';

  @override
  _AdvancedParseState createState() => _AdvancedParseState();
}

Future<List<Users>> fetch() async {
  final response = await http.get(Services.advanced);

  if(response.statusCode == 200) {
    List usersList = json.decode(response.body);
    return usersList.map((i) => Users.fromJson(i)).toList();
  } else {
    throw Exception('Failed to load');
  }
}

class _AdvancedParseState extends State<AdvancedParse> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new FutureBuilder<List<Users>>(
          future: fetch(),
          builder: (BuildContext context, AsyncSnapshot<List<Users>> snapshot) {
            if(snapshot.hasData) {
              List<Users> usersData = snapshot.data;
              return new ListView(
                padding: new EdgeInsets.only(top: 25, left: 30, right: 30),
                children: usersData.map((i) =>
                  advancedListViewBuilder(
                    i.name, i.email, i.phone, i.address.street,
                    i.address.suite, i.address.geo.lat, i.address.geo.lng
                  ),
                ).toList(),
              );
            } else {
              return circularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
