import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './../../models/basic_model.dart';
import './../../services/services.dart';
import './../../widgets/widgets.dart';

class BasicParseSimple extends StatefulWidget {
  @override
  _BasicParseSimpleState createState() => _BasicParseSimpleState();
}

Future<Photos> fetch() async {
  final response = await http.get(Services.basicSimple);

  if(response.statusCode == 200) {
    var decoded = json.decode(response.body);
    return Photos.fromJson(decoded);
  } else {
    throw Exception('Failed to load');
  }
}

class _BasicParseSimpleState extends State<BasicParseSimple> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new FutureBuilder<Photos>(
        future: fetch(),
        builder: (BuildContext context, AsyncSnapshot<Photos> snapshot) {
          if(snapshot.hasData) {
            return basicSimpleBuilder(snapshot.data.url, snapshot.data.title);
          } else {
            return circularProgressIndicator();
          }
        },
      ),
    );
  }
}
