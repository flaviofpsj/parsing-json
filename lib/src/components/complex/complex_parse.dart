import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './../../models/complex_model.dart';
import './../../services/services.dart';
import './../../widgets/widgets.dart';

class ComplexParse extends StatefulWidget {

  final String title;

  ComplexParse({Key key, this.title}) : super(key: key);

  static String route = 'complexParse';

  @override
  _ComplexParseState createState() => _ComplexParseState();
}

Future<UsersList> fetch() async {
  final response = await http.get(Services.complex);

  if(response.statusCode == 200) {
    var decoded = json.decode(response.body);
    return UsersList.fromJson(decoded);
  } else {
    throw Exception('Failed to load');
  }
}

class _ComplexParseState extends State<ComplexParse> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new FutureBuilder<UsersList>(
          future: fetch(),
          builder: (BuildContext context, AsyncSnapshot<UsersList> snapshot) {
            if(snapshot.hasData) {
              List<Data> dataList = snapshot.data.data;
              return new ListView(
                padding: new EdgeInsets.only(top: 30, left: 30, right: 30),
                children: dataList.map((i) =>
                  complexListBuilder(i.avatar, i.firstName, i.lastName),
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
