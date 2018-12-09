import 'package:flutter/material.dart';
import './../widgets/widgets.dart';

class ParsingJson extends StatefulWidget {
  @override
  _ParsingJsonState createState() => _ParsingJsonState();
}

class _ParsingJsonState extends State<ParsingJson> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Parsing Json'),
        centerTitle: true,
      ),
      body: new Container(
        padding: new EdgeInsets.only(top: 30, left: 70, right: 70),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buttonBuilder(() { Navigator.of(context).pushNamed('basicParse'); }, Icons.filter_1, 'Basic Parse'),
              buttonBuilder(() { Navigator.of(context).pushNamed('advancedParse'); }, Icons.filter_2, 'Advanced Parse'),
              buttonBuilder(() { Navigator.of(context).pushNamed('complexParse'); }, Icons.filter_3, 'Complex Parse'),
            ],
          ),
        ),
      ),
    );
  }
}
